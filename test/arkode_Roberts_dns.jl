using Sundials, Compat

## f routine. Compute function f(t,y).

function f(t, y_nv, ydot_nv, user_data)
    y = convert(Vector, y_nv)
    ydot = convert(Vector, ydot_nv)
    ydot[1] = -0.04*y[1] + 1.0e4*y[2]*y[3]
    ydot[3] = 3.0e7*y[2]*y[2]
    ydot[2] = -ydot[1] - ydot[3]
    return Sundials.CV_SUCCESS
end

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

mem_ptr = Sundials.ARKodeCreate()
arkode_mem = Sundials.Handle(mem_ptr)
Sundials.@checkflag Sundials.ARKodeInit(arkode_mem, C_NULL, f, t0, y0)
Sundials.@checkflag Sundials.ARKodeSetInitStep(arkode_mem, h0)
Sundials.@checkflag Sundials.ARKodeSetMaxErrTestFails(arkode_mem, 20)
Sundials.@checkflag Sundials.ARKodeSetMaxNonlinIters(arkode_mem, 8)
Sundials.@checkflag Sundials.ARKodeSetNonlinConvCoef(arkode_mem, 1.e-7)
Sundials.@checkflag Sundials.ARKodeSetMaxNumSteps(arkode_mem, 100000)
Sundials.@checkflag Sundials.ARKodeSetPredictorMethod(arkode_mem, 1)

Sundials.@checkflag Sundials.ARKodeSStolerances(arkode_mem, reltol, abstol)
A = Sundials.SUNDenseMatrix(neq,neq)
LS = Sundials.SUNDenseLinearSolver(y0,A)
Sundials.@checkflag Sundials.ARKDlsSetLinearSolver(arkode_mem, LS, A)

iout = 0
tout = t1
t = [t0]

while iout < nout
    y = similar(y0)
    flag = Sundials.ARKode(arkode_mem, tout, y, t, Sundials.ARK_NORMAL)
    println("T=", tout, ", Y=", y)
    global iout += 1
    global tout *= tmult
end

#Sundials.ARKodeFree(mem_ptr)
#Sundials.SUNLinSolFree_Dense(LS)
#Sundials.SUNMatDestroy_Dense(A)
