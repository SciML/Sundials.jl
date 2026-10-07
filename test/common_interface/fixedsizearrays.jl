using Sundials, FixedSizeArrays, Test
using LinearAlgebra: diagind

# User functions only accept `FixedSizeArray`s, so passing `Array`s would throw a `MethodError`
f!(du::FixedSizeArray, u::FixedSizeArray, p, t) = (du .= p .* u; nothing)
f(u::FixedSizeArray, p, t) = p .* u
jac!(J, u::FixedSizeArray, p, t) = (fill!(J, 0); J[diagind(J)] .= p; nothing)
resid!(r::FixedSizeArray, du::FixedSizeArray, u::FixedSizeArray, p, t) = (r .= du .- p .* u; nothing)

const p = -0.5
const tspan = (0.0, 1.0)

@testset "ODE: $(nameof(typeof(alg)))" for alg in (CVODE_BDF(), CVODE_Adams(), ARKODE(), ARKODE(Sundials.Explicit()))
    @testset "u0::$(typeof(u0)), iip = $iip" for u0 in (FixedSizeVector([1.0, 2.0]), FixedSizeMatrix([1.0 2.0; 3.0 4.0])), iip in (true, false)
        sol = solve(ODEProblem(iip ? f! : f, u0, tspan, p), alg)
        @test sol.retcode == ReturnCode.Success
        @test eltype(sol.u) === typeof(u0)
        @test sol.u[end] ≈ exp(p) .* u0 rtol = 1.0e-2
        @test sol(0.5) isa typeof(u0)
        @test sol(0.5) ≈ exp(0.5p) .* u0 rtol = 1.0e-2
    end
end

@testset "ODE: vector abstol and Jacobian" begin
    u0 = FixedSizeVector([1.0, 2.0])
    prob = ODEProblem(ODEFunction(f!; jac = jac!), u0, tspan, p)
    sol = solve(prob, CVODE_BDF(); abstol = FixedSizeVector([1.0e-8, 1.0e-10]))
    @test sol.retcode == ReturnCode.Success
    @test sol.u[end] ≈ exp(p) .* u0 rtol = 1.0e-2
end

@testset "ODE: callbacks" begin
    u0 = FixedSizeVector([1.0, 2.0])
    affect!(integrator) = (@test integrator.u isa typeof(u0); integrator.u .*= 2; nothing)
    cb = DiscreteCallback((u, t, integrator) -> t == 0.5, affect!)
    sol = solve(ODEProblem(f!, u0, tspan, p), CVODE_BDF(); callback = cb, tstops = [0.5])
    @test sol.retcode == ReturnCode.Success
    @test eltype(sol.u) === typeof(u0)
    @test sol.u[end] ≈ 2 .* exp(p) .* u0 rtol = 1.0e-2
end

@testset "DAE: IDA" begin
    u0 = FixedSizeVector([1.0, 2.0])
    prob = DAEProblem(resid!, p .* u0, u0, tspan, p; differential_vars = [true, true])
    sol = solve(prob, IDA())
    @test sol.retcode == ReturnCode.Success
    @test eltype(sol.u) === typeof(u0)
    @test sol.u[end] ≈ exp(p) .* u0 rtol = 1.0e-2
    @test sol(0.5) isa typeof(u0)
end

@testset "NVector and unsafe_wrap_nvector" begin
    ctx_handle = Sundials.ContextHandle()

    # NVectors alias the memory of FixedSizeArrays
    fsa = FixedSizeVector([1.0, 2.0, 3.0])
    nv = Sundials.NVector(fsa, ctx_handle.ctx)
    @test pointer(nv) == pointer(fsa)

    # The package extension wraps N_Vector data without copying (using internal API)
    @test isdefined(FixedSizeArrays, :new_fixed_size_array)
    wrapped = Sundials.unsafe_wrap_nvector(similar(fsa), nv.n_v)
    @test wrapped isa typeof(fsa)
    @test pointer(wrapped) == pointer(fsa)
end

# Generic fallback for dense non-`Array` states: data is copied into user-typed buffers
struct WrappedVector <: DenseVector{Float64}
    data::Vector{Float64}
end
Base.size(x::WrappedVector) = size(x.data)
Base.getindex(x::WrappedVector, i::Int) = x.data[i]
Base.setindex!(x::WrappedVector, v, i::Int) = (x.data[i] = v)
Base.similar(x::WrappedVector, ::Type{Float64}, dims::Tuple{Int}) = WrappedVector(similar(x.data, dims))
Base.unsafe_convert(::Type{Ptr{Float64}}, x::WrappedVector) = pointer(x.data)

@testset "generic DenseVector state: $(nameof(typeof(alg)))" for alg in (CVODE_BDF(), ARKODE())
    g!(du::WrappedVector, u::WrappedVector, p, t) = (du .= p .* u; nothing)
    u0 = WrappedVector([1.0, 2.0])
    sol = solve(ODEProblem(g!, u0, tspan, p), alg)
    @test sol.retcode == ReturnCode.Success
    @test eltype(sol.u) === WrappedVector
    @test sol.u[end] ≈ exp(p) .* u0 rtol = 1.0e-2
end
