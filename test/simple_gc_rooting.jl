# SUNDIALS holds a raw pointer to the user function for the whole solve. An immutable
# callable struct reaches `*SetUserData` unboxed, so the box handed to C must stay
# rooted while a GC runs inside the callback.
using Sundials, Test

mutable struct Sentinel
    alive::Bool
end

const FINALIZED_DURING_SOLVE = Ref(0)

function check_sentinel(s::Sentinel)
    GC.gc()
    s.alive || (FINALIZED_DURING_SOLVE[] += 1)
    return nothing
end

struct KinRes
    s::Sentinel
end
function (r::KinRes)(fy, y)
    check_sentinel(r.s)
    fy[1] = y[1]^2 + y[2]^2 - 1.0
    fy[2] = y[2] - y[1]^2
    return nothing
end

struct IdaRes <: Function
    s::Sentinel
end
function (r::IdaRes)(t, y, yp, res)
    check_sentinel(r.s)
    res[1] = yp[1] + y[1]
    return Sundials.IDA_SUCCESS
end

function new_sentinel()
    s = Sentinel(true)
    finalizer(x -> (x.alive = false), s)
    return s
end

@noinline kin_solve() = Sundials.kinsol(KinRes(new_sentinel()), [10.0, 10.0])
@noinline ida_solve() = Sundials.idasol(IdaRes(new_sentinel()), [1.0], [-1.0], [0.0, 0.5, 1.0])

@testset "kinsol" begin
    for _ in 1:5
        kin_solve()
    end
    @test FINALIZED_DURING_SOLVE[] == 0
    @test kin_solve() ≈ [sqrt((sqrt(5) - 1) / 2), (sqrt(5) - 1) / 2] atol = 1.0e-6
end

@testset "idasol" begin
    for _ in 1:5
        ida_solve()
    end
    @test FINALIZED_DURING_SOLVE[] == 0
    @test ida_solve()[1][end, 1] ≈ exp(-1.0) rtol = 1.0e-2
end
