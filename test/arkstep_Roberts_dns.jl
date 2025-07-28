using Sundials, Test

## f routine. Compute function f(t,y).

function f(t, y_nv, ydot_nv, user_data)
    y = convert(Vector, y_nv)
    ydot = convert(Vector, ydot_nv)
    ydot[1] = -0.04 * y[1] + 1.0e4 * y[2] * y[3]
    ydot[3] = 3.0e7 * y[2] * y[2]
    ydot[2] = -ydot[1] - ydot[3]
    return convert(Cint, Sundials.ARK_SUCCESS)
end

f_C = @cfunction(f, Cint,
    (Sundials.realtype, Sundials.N_Vector, Sundials.N_Vector, Ptr{Cvoid}))

neq = 3

t0 = 0.0
t1 = 0.4
tmult = 10.0
nout = 12
y0 = [1.0, 0.0, 0.0]
reltol = 1e-4
abstol = 1e-11
userdata = nothing
h0 = 1e-4 * reltol

y0_nv = convert(Sundials.NVector, y0)
mem_ptr = Sundials.ARKStepCreate(C_NULL, f_C, t0, y0_nv.n_v, Sundials.get_default_context())
arkStep_mem = Sundials.Handle(mem_ptr)
Sundials.@checkflag Sundials.ARKStepSetInitStep(arkStep_mem, h0)
Sundials.@checkflag Sundials.ARKStepSetMaxErrTestFails(arkStep_mem, convert(Cint, 20))
Sundials.@checkflag Sundials.ARKStepSetMaxNonlinIters(arkStep_mem, convert(Cint, 8))
Sundials.@checkflag Sundials.ARKStepSetNonlinConvCoef(arkStep_mem, 1.e-7)
Sundials.@checkflag Sundials.ARKStepSetMaxNumSteps(arkStep_mem, convert(Clong, 100000))
Sundials.@checkflag Sundials.ARKStepSetPredictorMethod(arkStep_mem, convert(Cint, 1))

Sundials.@checkflag Sundials.ARKStepSStolerances(arkStep_mem, reltol, abstol)
A = Sundials.SUNDenseMatrix(neq, neq)
LS = Sundials.SUNLinSol_Dense(y0_nv.n_v, A)
Sundials.@checkflag Sundials.ARKStepSetLinearSolver(arkStep_mem, LS, A)

iout = 0
tout = t1
t = [t0]

while iout < nout
    y = similar(y0)
    y_nv = convert(Sundials.NVector, y)
    flag = Sundials.ARKStepEvolve(arkStep_mem, tout, y_nv.n_v, pointer(t), convert(Cint, Sundials.ARK_NORMAL))
    copyto!(y, convert(Vector, y_nv))
    @test flag == 0
    println("T=", tout, ", Y=", y)
    global iout += 1
    global tout *= tmult
end

tmp1 = Ref(Clong(-1))
tmp2 = Ref(Clong(-1))
Sundials.@checkflag Sundials.ARKStepGetNumSteps(arkStep_mem, tmp1);
Sundials.@checkflag Sundials.ARKStepGetNumStepAttempts(arkStep_mem, tmp1);
Sundials.@checkflag Sundials.ARKStepGetNumRhsEvals(arkStep_mem, tmp1, tmp2);
Sundials.@checkflag Sundials.ARKStepGetNumLinSolvSetups(arkStep_mem, tmp1);
Sundials.@checkflag Sundials.ARKStepGetNumErrTestFails(arkStep_mem, tmp1);
Sundials.@checkflag Sundials.ARKStepGetNumNonlinSolvIters(arkStep_mem, tmp1);
Sundials.@checkflag Sundials.ARKStepGetNumNonlinSolvConvFails(arkStep_mem, tmp1);
Sundials.@checkflag Sundials.ARKStepGetNumJacEvals(arkStep_mem, tmp1);
Sundials.@checkflag Sundials.ARKStepGetNumLinRhsEvals(arkStep_mem, tmp2);
