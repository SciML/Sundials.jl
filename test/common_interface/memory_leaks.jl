using Sundials, SciMLBase, Test

function c_bytes_in_use()
    mi = ccall(:mallinfo2, NTuple{10, Csize_t}, ())
    return Float64(mi[8] + mi[5])
end

has_mallinfo2 = Sys.islinux() && Sys.WORD_SIZE == 64 && try
    c_bytes_in_use()
    true
catch
    false
end

# A leak grows in every window; allocator noise is a one-off, so the smaller window is reported.
function c_bytes_per_solve(solve_once; warmup = 200, n = 1000, windows = 3)
    for _ in 1:warmup
        solve_once()
    end
    growth = Float64[]
    for _ in 1:windows
        GC.gc(true)
        GC.gc(true)
        before = c_bytes_in_use()
        for _ in 1:n
            solve_once()
        end
        GC.gc(true)
        GC.gc(true)
        GC.gc(true)
        push!(growth, (c_bytes_in_use() - before) / n)
    end
    return minimum(growth)
end

neq = 200
prob = ODEProblem(
    (du, u, p, t) -> (du .= .-p .* u), ones(neq), (0.0, 1.0), collect(range(0.1, 1.0; length = neq))
)
kw = (abstol = 1.0e-8, reltol = 1.0e-8, save_everystep = false)

if has_mallinfo2
    @testset "No C heap growth across repeated solves" begin
        # The leaked nonlinear solver is at least 2.4 kB per solve at this size.
        threshold = 600.0
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
    @test isconcretetype(fieldtype(typeof(integrator), :NLS))
    @test integrator.NLS.ptr == C_NULL
    @test isempty(integrator.NLS)
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
