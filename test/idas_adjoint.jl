using Sundials, Test
using Sundials: N_Vector

ctx_ref = Ref{Sundials.SUNContext}(C_NULL)
Sundials.SUNContext_Create(C_NULL, Base.unsafe_convert(Ptr{Sundials.SUNContext}, ctx_ref))
ctx = ctx_ref[]

# Index-1 DAE used to exercise the IDAS adjoint sensitivity pathway:
#
#     F1 = y1' + a*y1 = 0      (differential)
#     F2 = y2 - y1   = 0       (algebraic)
#
# with y1(0) = 1 gives y1(t) = y2(t) = exp(-a*t). We compute the gradient of
# the terminal functional G(a) = y2(tf) with respect to a via adjoints.
#
# The adjoint DAE (λ = (λ1, λ2)) derived for this problem is
#
#     λ1' - a*λ1 + λ2 = 0      with  λ1(tf) = 1
#     λ2            = 0
#
# and the parameter gradient is  dG/da = ∫_{t0}^{tf} -λ1*y1 dt, which IDAS
# accumulates as a backward quadrature qB with  qB' = λ1*y1,  qB(tf) = 0, so
# that qB(t0) = dG/da. Analytically λ1(t) = exp(a*(t-tf)) and y1(t) = exp(-a*t)
# give λ1(t0) = exp(-a*tf) and dG/da = -tf*exp(-a*tf).

mutable struct IDASAdjointData
    a::Float64
end

function idas_res(t::Float64, yy::N_Vector, yp::N_Vector, rr::N_Vector, data::IDASAdjointData)
    yyv = convert(Vector, yy)
    ypv = convert(Vector, yp)
    rrv = convert(Vector, rr)
    rrv[1] = ypv[1] + data.a * yyv[1]
    rrv[2] = yyv[2] - yyv[1]
    return Sundials.IDA_SUCCESS
end

function idas_resB(
        t::Float64, yy::N_Vector, yp::N_Vector, yB::N_Vector, ypB::N_Vector,
        rrB::N_Vector, data::IDASAdjointData
    )
    yBv = convert(Vector, yB)
    ypBv = convert(Vector, ypB)
    rrBv = convert(Vector, rrB)
    rrBv[1] = ypBv[1] - data.a * yBv[1] + yBv[2]
    rrBv[2] = yBv[2]
    return Sundials.IDA_SUCCESS
end

function idas_quadB(
        t::Float64, yy::N_Vector, yp::N_Vector, yB::N_Vector, ypB::N_Vector,
        qBdot::N_Vector, data::IDASAdjointData
    )
    yyv = convert(Vector, yy)
    yBv = convert(Vector, yB)
    qBdotv = convert(Vector, qBdot)
    qBdotv[1] = yBv[1] * yyv[1]
    return Sundials.IDA_SUCCESS
end

function solve_adjoint(; t0 = 0.0, tf = 2.0, a = 0.3)
    data = IDASAdjointData(a)
    neq = 2

    cres = @cfunction(
        idas_res, Cint,
        (Sundials.realtype, N_Vector, N_Vector, N_Vector, Ref{IDASAdjointData})
    )
    cresB = @cfunction(
        idas_resB, Cint,
        (
            Sundials.realtype, N_Vector, N_Vector, N_Vector, N_Vector, N_Vector,
            Ref{IDASAdjointData},
        )
    )
    cquadB = @cfunction(
        idas_quadB, Cint,
        (
            Sundials.realtype, N_Vector, N_Vector, N_Vector, N_Vector, N_Vector,
            Ref{IDASAdjointData},
        )
    )

    yy0 = [1.0, 1.0]
    yp0 = [-a, -a]
    yy0n = Sundials.NVector(yy0, ctx)
    yp0n = Sundials.NVector(yp0, ctx)

    mem = Sundials.Handle(Sundials.IDACreate(ctx))
    @test Sundials.IDAInit(mem, cres, t0, yy0n, yp0n) == Sundials.IDA_SUCCESS
    @test Sundials.IDASStolerances(mem, 1.0e-10, 1.0e-12) == Sundials.IDA_SUCCESS
    @test Sundials.IDASetUserData(mem, data) == Sundials.IDA_SUCCESS

    A = Sundials.SUNDenseMatrix(neq, neq, ctx)
    LS = Sundials.SUNLinSol_Dense(yy0n, A, ctx)
    @test Sundials.IDASetLinearSolver(mem, LS, A) == Sundials.IDA_SUCCESS

    @test Sundials.IDAAdjInit(mem, 100, Sundials.IDA_HERMITE) == Sundials.IDA_SUCCESS

    yy = similar(yy0)
    yp = similar(yp0)
    yyn = Sundials.NVector(yy, ctx)
    ypn = Sundials.NVector(yp, ctx)
    tret = [t0]
    ncheck = Ref{Cint}(0)

    @test Sundials.IDASolveF(mem, tf, tret, yyn, ypn, Sundials.IDA_NORMAL, ncheck) ==
        Sundials.IDA_SUCCESS

    which = Ref{Cint}(0)
    @test Sundials.IDACreateB(mem, which) == Sundials.IDA_SUCCESS
    w = which[]

    # Terminal conditions of the adjoint DAE: λ(tf) = [1, 0], λ'(tf) = [a, 0].
    yB0 = [1.0, 0.0]
    ypB0 = [a, 0.0]
    yB0n = Sundials.NVector(yB0, ctx)
    ypB0n = Sundials.NVector(ypB0, ctx)

    @test Sundials.IDAInitB(mem, w, cresB, tf, yB0n, ypB0n) == Sundials.IDA_SUCCESS
    @test Sundials.IDASStolerancesB(mem, w, 1.0e-10, 1.0e-12) == Sundials.IDA_SUCCESS
    @test Sundials.IDASetUserDataB(mem, w, data) == Sundials.IDA_SUCCESS

    AB = Sundials.SUNDenseMatrix(neq, neq, ctx)
    LSB = Sundials.SUNLinSol_Dense(yB0n, AB, ctx)
    @test Sundials.IDASetLinearSolverB(mem, w, LSB, AB) == Sundials.IDA_SUCCESS

    qB0 = [0.0]
    qB0n = Sundials.NVector(qB0, ctx)
    @test Sundials.IDAQuadInitB(mem, w, cquadB, qB0n) == Sundials.IDA_SUCCESS
    @test Sundials.IDAQuadSStolerancesB(mem, w, 1.0e-10, 1.0e-12) == Sundials.IDA_SUCCESS

    yBout = [0.0, 0.0]
    ypBout = [0.0, 0.0]
    qBout = [0.0]
    yBoutn = Sundials.NVector(yBout, ctx)
    ypBoutn = Sundials.NVector(ypBout, ctx)
    qBoutn = Sundials.NVector(qBout, ctx)
    tBret = [tf]

    local yf, lambda0, grad_a
    GC.@preserve data yy0n yp0n yyn ypn yB0n ypB0n qB0n yBoutn ypBoutn qBoutn A LS AB LSB begin
        @test Sundials.IDASolveB(mem, t0, Sundials.IDA_NORMAL) >= Sundials.IDA_SUCCESS
        @test Sundials.IDAGetB(mem, w, tBret, yBoutn, ypBoutn) == Sundials.IDA_SUCCESS
        @test Sundials.IDAGetQuadB(mem, w, tBret, qBoutn) == Sundials.IDA_SUCCESS
        yf = copy(convert(Vector, yyn))
        lambda0 = copy(convert(Vector, yBoutn))
        grad_a = copy(convert(Vector, qBoutn))
    end

    Sundials.SUNLinSolFree_Dense(LS)
    Sundials.SUNMatDestroy_Dense(A)
    Sundials.SUNLinSolFree_Dense(LSB)
    Sundials.SUNMatDestroy_Dense(AB)
    empty!(mem)

    return yf, lambda0[1], grad_a[1], tBret[1]
end

yf, lambda0, grad_a, tBret = solve_adjoint()

a = 0.3
tf = 2.0
@test isapprox(yf[1], exp(-a * tf); rtol = 1.0e-7)
@test isapprox(yf[2], exp(-a * tf); rtol = 1.0e-7)
@test isapprox(lambda0, exp(-a * tf); rtol = 1.0e-6)
@test isapprox(grad_a, -tf * exp(-a * tf); rtol = 1.0e-6)
@test isapprox(tBret, 0.0; atol = 1.0e-10)

Sundials.SUNContext_Free(ctx)
