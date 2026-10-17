# `solve(::NonlinearProblem, KINSOL())` hands `___kinsol` an immutable closure that
# captures `prob` and `p`. `KINSetUserData` takes it as `Any`, so a box made only for that
# ccall must not be what SUNDIALS calls back with: after a GC inside the residual frees it,
# allocating same-sized objects reuses its memory and the next callback reads garbage.
using SciMLBase, Sundials, Test

struct GCRootingParams
    a::Vector{Float64}
end

const JUNK = Any[]

function gc_residual!(du, u, p)
    GC.gc(true)
    for i in 1:20_000
        push!(JUNK, Ref((i, i)))
    end
    du .= u .- p.a
    return nothing
end

@testset "KINSOL user data survives a GC during the solve" begin
    for _ in 1:10
        prob = NonlinearProblem(gc_residual!, zeros(3), GCRootingParams([1.0, 2.0, 3.0]))
        sol = solve(prob, KINSOL())
        empty!(JUNK)
        @test SciMLBase.successful_retcode(sol)
        @test sol.u ≈ [1.0, 2.0, 3.0]
    end
end
