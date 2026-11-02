using Sundials, SciMLBase, Test

function c_bytes_in_use()
    mi = zeros(Csize_t, 10)
    ccall(:mallinfo2, Cvoid, (Ptr{Csize_t},), mi)
    return Float64(mi[8] + mi[5])
end

has_mallinfo2 = Sys.islinux() && try
    c_bytes_in_use()
    true
catch
    false
end

function c_bytes_per_solve(solve_once; warmup = 100, n = 500)
    for _ in 1:warmup
        solve_once()
    end
    GC.gc(true)
    GC.gc(true)
    before = c_bytes_in_use()
    for _ in 1:n
        solve_once()
    end
    GC.gc(true)
    GC.gc(true)
    GC.gc(true)
    return (c_bytes_in_use() - before) / n
end

neq = 200
prob = ODEProblem(
    (du, u, p, t) -> (du .= .-p .* u), ones(neq), (0.0, 1.0), collect(1.0:neq)
)
kw = (abstol = 1.0e-8, reltol = 1.0e-8, save_everystep = false)

if has_mallinfo2
    @testset "No C heap growth across repeated solves" begin
        # The leaked nonlinear solver is ~2.5 kB per solve at this size; allocator noise is far below this threshold.
        threshold = 300.0
        algs = Dict(
            "CVODE_BDF" => CVODE_BDF(),
            "CVODE_BDF Functional" => CVODE_BDF(; method = :Functional),
            "CVODE_Adams" => CVODE_Adams(),
            "ARKODE Functional" => ARKODE(Sundials.Implicit(); method = :Functional),
        )
        for (name, alg) in algs
            bytes = c_bytes_per_solve(() -> solve(prob, alg; kw...))
            @info "C bytes per solve" name bytes
            @test bytes < threshold
        end
    end
end

@testset "Nonlinear solver is owned by the integrator" begin
    for alg in (
            CVODE_BDF(), CVODE_BDF(; method = :Functional), CVODE_Adams(),
            ARKODE(Sundials.Implicit(); method = :Functional),
        )
        integrator = init(prob, alg; kw...)
        @test !isempty(integrator.NLS)
        solve!(integrator; early_free = true)
        @test isempty(integrator.NLS)
        @test isempty(integrator.mem)
        empty!(integrator.NLS)
        @test isempty(integrator.NLS)
        integrator = nothing
        GC.gc(true)
    end

    integrator = init(prob, ARKODE(); kw...)
    @test integrator.NLS === nothing
    solve!(integrator; early_free = true)
    @test isempty(integrator.mem)
end

@testset "Repeated solves, early free and GC" begin
    for alg in (CVODE_BDF(), CVODE_BDF(; method = :Functional), CVODE_Adams())
        for _ in 1:20
            integrator = init(prob, alg; kw...)
            solve!(integrator; early_free = true)
            GC.gc(true)
        end
        sol = solve(prob, alg; kw...)
        @test SciMLBase.successful_retcode(sol)
    end

    integrator = init(prob, CVODE_BDF(); kw...)
    solve!(integrator)
    SciMLBase.reinit!(integrator, prob.u0)
    solve!(integrator)
    @test SciMLBase.successful_retcode(integrator.sol)
    integrator = nothing
    GC.gc(true)
end
