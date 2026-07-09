using Sundials, Test
using Sundials: N_Vector

ctx_ref = Ref{Sundials.SUNContext}(C_NULL)
Sundials.SUNContext_Create(C_NULL, Base.unsafe_convert(Ptr{Sundials.SUNContext}, ctx_ref))
ctx = ctx_ref[]

mutable struct CVAdjointData
    a::Float64
end

function cv_forward_rhs(t::Float64, y::N_Vector, ydot::N_Vector, data::CVAdjointData)
    ydotv = convert(Vector, ydot)
    yv = convert(Vector, y)
    ydotv[1] = data.a * yv[1]
    return Sundials.CV_SUCCESS
end

function cv_adjoint_rhs(
        t::Float64,
        y::N_Vector,
        yB::N_Vector,
        yBdot::N_Vector,
        data::CVAdjointData
    )
    yBdotv = convert(Vector, yBdot)
    yBv = convert(Vector, yB)
    yBdotv[1] = -data.a * yBv[1]
    return Sundials.CV_SUCCESS
end

function cv_adjoint_quad_rhs(
        t::Float64,
        y::N_Vector,
        yB::N_Vector,
        qBdot::N_Vector,
        data::CVAdjointData
    )
    yv = convert(Vector, y)
    yBv = convert(Vector, yB)
    qBdotv = convert(Vector, qBdot)
    qBdotv[1] = -yBv[1] * yv[1]
    return Sundials.CV_SUCCESS
end

function solve_adjoint(; t0 = 0.0, tf = 2.0, y0 = 2.0, a = 0.3)
    data = CVAdjointData(a)

    cfwd = @cfunction(
        cv_forward_rhs,
        Cint,
        (Sundials.realtype, N_Vector, N_Vector, Ref{CVAdjointData})
    )
    cadj = @cfunction(
        cv_adjoint_rhs,
        Cint,
        (Sundials.realtype, N_Vector, N_Vector, N_Vector, Ref{CVAdjointData})
    )
    cadj_quad = @cfunction(
        cv_adjoint_quad_rhs,
        Cint,
        (Sundials.realtype, N_Vector, N_Vector, N_Vector, Ref{CVAdjointData})
    )

    y0v = [y0]
    yf = similar(y0v)
    y0n = Sundials.NVector(y0v, ctx)
    yfn = Sundials.NVector(yf, ctx)
    tret = [t0]
    ncheck = Ref{Cint}(0)

    cvode_mem = Sundials.Handle(Sundials.CVodeCreate(Sundials.CV_ADAMS, ctx))
    nls = Sundials.SUNNonlinSol_FixedPoint(y0n, Cint(0), ctx)
    nls_handle = Sundials.NonLinSolHandle(nls, Sundials.FixedPoint())

    @test Sundials.CVodeInit(cvode_mem, cfwd, t0, y0n) == Sundials.CV_SUCCESS
    @test Sundials.CVodeSetUserData(cvode_mem, data) == Sundials.CV_SUCCESS
    @test Sundials.CVodeSetNonlinearSolver(cvode_mem, nls) == Sundials.CV_SUCCESS
    @test Sundials.CVodeSStolerances(cvode_mem, 1.0e-10, 1.0e-12) == Sundials.CV_SUCCESS
    @test Sundials.CVodeAdjInit(cvode_mem, 50, Sundials.CV_HERMITE) == Sundials.CV_SUCCESS

    @test Sundials.CVodeF(cvode_mem, tf, yfn, tret, Sundials.CV_NORMAL, ncheck) ==
        Sundials.CV_SUCCESS

    which = Ref{Cint}(0)
    @test Sundials.CVodeCreateB(cvode_mem, Sundials.CV_ADAMS, which) == Sundials.CV_SUCCESS

    yB0 = [1.0]
    yB0n = Sundials.NVector(yB0, ctx)
    yBout = similar(yB0)
    yBoutn = Sundials.NVector(yBout, ctx)
    qB0 = [0.0]
    qB0n = Sundials.NVector(qB0, ctx)
    qBout = similar(qB0)
    qBoutn = Sundials.NVector(qBout, ctx)
    tBret = [tf]
    nlsB = Sundials.SUNNonlinSol_FixedPoint(yB0n, Cint(0), ctx)
    nlsB_handle = Sundials.NonLinSolHandle(nlsB, Sundials.FixedPoint())

    @test Sundials.CVodeInitB(cvode_mem, which[], cadj, tf, yB0n) == Sundials.CV_SUCCESS
    @test Sundials.CVodeSetUserDataB(cvode_mem, which[], data) == Sundials.CV_SUCCESS
    @test Sundials.CVodeSetNonlinearSolverB(cvode_mem, which[], nlsB) == Sundials.CV_SUCCESS
    @test Sundials.CVodeSStolerancesB(cvode_mem, which[], 1.0e-10, 1.0e-12) ==
        Sundials.CV_SUCCESS
    @test Sundials.CVodeQuadInitB(cvode_mem, which[], cadj_quad, qB0n) ==
        Sundials.CV_SUCCESS
    @test Sundials.CVodeQuadSStolerancesB(cvode_mem, which[], 1.0e-10, 1.0e-12) ==
        Sundials.CV_SUCCESS

    GC.@preserve data y0n yfn yB0n yBoutn qB0n qBoutn nls_handle nlsB_handle begin
        @test Sundials.CVodeB(cvode_mem, t0, Sundials.CV_NORMAL) >= Sundials.CV_SUCCESS
        @test Sundials.CVodeGetB(cvode_mem, which[], tBret, yBoutn) == Sundials.CV_SUCCESS
        @test Sundials.CVodeGetQuadB(cvode_mem, which[], tBret, qBoutn) == Sundials.CV_SUCCESS
    end

    empty!(nlsB_handle)
    empty!(nls_handle)
    empty!(cvode_mem)
    Sundials.SUNContext_Free(ctx)

    return yf[1], yBout[1], qBout[1], tBret[1]
end

yf, lambda0, grad_a, tBret = solve_adjoint()

@test isapprox(yf, 2.0 * exp(0.3 * 2.0); rtol = 1.0e-8)
@test isapprox(lambda0, exp(0.3 * 2.0); rtol = 1.0e-8)
@test isapprox(grad_a, 2.0 * yf; rtol = 1.0e-8)
@test isapprox(tBret, 0.0; atol = 1.0e-12)
