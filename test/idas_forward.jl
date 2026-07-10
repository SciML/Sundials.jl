using Sundials, Test
using Sundials: N_Vector

ctx_ref = Ref{Sundials.SUNContext}(C_NULL)
Sundials.SUNContext_Create(C_NULL, Base.unsafe_convert(Ptr{Sundials.SUNContext}, ctx_ref))
ctx = ctx_ref[]

# Simple index-1 DAE with a known analytical solution and analytical parameter
# sensitivity, used to exercise the IDAS forward sensitivity pathway.
#
#     F1 = y1' + a*y1 = 0     (differential)
#     F2 = y2 - y1   = 0      (algebraic)
#
# with y1(0) = 1, y2(0) = 1 gives y1(t) = y2(t) = exp(-a*t).
# The sensitivity s = dy/da satisfies s1(t) = s2(t) = -t*exp(-a*t).

mutable struct IDASForwardData
    a::Float64
end

function idas_res(t::Float64, yy::N_Vector, yp::N_Vector, rr::N_Vector, data::IDASForwardData)
    yyv = convert(Vector, yy)
    ypv = convert(Vector, yp)
    rrv = convert(Vector, rr)
    rrv[1] = ypv[1] + data.a * yyv[1]
    rrv[2] = yyv[2] - yyv[1]
    return Sundials.IDA_SUCCESS
end

# Sensitivity residual (IDASensResFn) for Ns = 1 parameter (a):
#   resS1 = a*s1 + sp1 + y1     (dF1/dy·s + dF1/dy'·s' + dF1/da)
#   resS2 = s2 - s1             (dF2/dy·s)
function idas_sens_res(
        Ns::Cint, t::Float64, yy::N_Vector, yp::N_Vector, rr::N_Vector,
        yyS::Ptr{N_Vector}, ypS::Ptr{N_Vector}, rrS::Ptr{N_Vector},
        data::IDASForwardData, tmp1::N_Vector, tmp2::N_Vector, tmp3::N_Vector
    )
    yyv = convert(Vector, yy)
    s = convert(Vector, unsafe_load(yyS, 1))
    sp = convert(Vector, unsafe_load(ypS, 1))
    resS = convert(Vector, unsafe_load(rrS, 1))
    resS[1] = data.a * s[1] + sp[1] + yyv[1]
    resS[2] = s[2] - s[1]
    return Sundials.IDA_SUCCESS
end

function solve_forward(; t0 = 0.0, tf = 2.0, a = 0.3)
    data = IDASForwardData(a)
    neq = 2
    Ns = 1

    cres = @cfunction(
        idas_res, Cint,
        (Sundials.realtype, N_Vector, N_Vector, N_Vector, Ref{IDASForwardData})
    )
    csens = @cfunction(
        idas_sens_res, Cint,
        (
            Cint, Sundials.realtype, N_Vector, N_Vector, N_Vector,
            Ptr{N_Vector}, Ptr{N_Vector}, Ptr{N_Vector},
            Ref{IDASForwardData}, N_Vector, N_Vector, N_Vector,
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

    # Sensitivity initial conditions: s(0) = 0, s'(0) = [-1, -1].
    yS0 = Sundials.NVectorArray([Sundials.NVector([0.0, 0.0], ctx)])
    ypS0 = Sundials.NVectorArray([Sundials.NVector([-1.0, -1.0], ctx)])
    ySout = Sundials.NVectorArray([Sundials.NVector([0.0, 0.0], ctx)])

    @test Sundials.IDASensInit(mem, Ns, Sundials.IDA_SIMULTANEOUS, csens, yS0, ypS0) ==
        Sundials.IDA_SUCCESS
    @test Sundials.IDASensEEtolerances(mem) == Sundials.IDA_SUCCESS
    pbar = [a]
    @test Sundials.IDASetSensParams(mem, C_NULL, pbar, C_NULL) == Sundials.IDA_SUCCESS

    yy = similar(yy0)
    yp = similar(yp0)
    yyn = Sundials.NVector(yy, ctx)
    ypn = Sundials.NVector(yp, ctx)
    tret = [t0]

    local yout, sout
    GC.@preserve data yy0n yp0n yS0 ypS0 ySout pbar A LS begin
        @test Sundials.IDASolve(mem, tf, tret, yyn, ypn, Sundials.IDA_NORMAL) ==
            Sundials.IDA_SUCCESS
        @test Sundials.IDAGetSens(mem, tret, ySout) == Sundials.IDA_SUCCESS
        yout = copy(convert(Vector, yyn))
        sout = copy(convert(Vector, ySout.nvectors[1]))
    end

    Sundials.SUNLinSolFree_Dense(LS)
    Sundials.SUNMatDestroy_Dense(A)
    empty!(mem)

    return yout, sout
end

yout, sout = solve_forward()

a = 0.3
tf = 2.0
@test isapprox(yout[1], exp(-a * tf); rtol = 1.0e-7)
@test isapprox(yout[2], exp(-a * tf); rtol = 1.0e-7)
@test isapprox(sout[1], -tf * exp(-a * tf); rtol = 1.0e-6)
@test isapprox(sout[2], -tf * exp(-a * tf); rtol = 1.0e-6)

Sundials.SUNContext_Free(ctx)
