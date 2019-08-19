using Sundials

## f routine. Compute function f(t,y).

function f(t, y_nv, ydot_nv, user_data)
    y = convert(Vector, y_nv)
    ydot = convert(Vector, ydot_nv)
    ydot[1] = -0.04*y[1] + 1.0e4*y[2]*y[3]
    ydot[3] = 3.0e7*y[2]*y[2]
    ydot[2] = -ydot[1] - ydot[3]
    return Sundials.CV_SUCCESS
end


## g routine. Compute functions g_i(t,y) for i = 0,1.

function g(t, y_nv, gout_ptr, user_data)
    y = convert(Vector, y_nv)
    gout = Sundials.asarray(gout_ptr, (2,))
    gout[1] = y[1] - 0.0001
    gout[2] = y[3] - 0.01
    return Sundials.CV_SUCCESS
end

## Jacobian routine. Compute J(t,y) = df/dy.
# broken -- needs a wrapper from Sundials._DlsMat to Matrix and Jac user function wrapper
function Jac(N, t, ny, fy, Jptr, user_data, tmp1, tmp2, tmp3)
    y = convert(Vector, ny)
    dlsmat = unpack(IOString(unsafe_wrap(convert(Ptr{UInt8}, Jptr),
                                                 (sum(map(sizeof, Sundials._DlsMat))+10,), false)),
                    Sundials._DlsMat)
    J = unsafe_wrap(unsafe_ref(dlsmat.cols), (Int(neq), Int(neq)), false)
    J[1,1] = -0.04
    J[1,2] = 1.0e4*y[3]
    J[1,3] = 1.0e4*y[2]
    J[2,1] = 0.04
    J[2,2] = -1.0e4*y[3] - 6.0e7*y[2]
    J[2,3] = -1.0e4*y[2]
    J[3,2] = 6.0e7*y[2]
    return Sundials.CV_SUCCESS
end

neq = 3

t0 = 0.0
t1 = 0.4
tmult = 10.0
nout = 12
y0 = [1.0, 0.0, 0.0]
reltol = 1e-4
abstol = [1e-8, 1e-14, 1e-6]
userdata = nothing
mem_ptr = Sundials.CVodeCreate(Sundials.CV_BDF, Sundials.CV_NEWTON)
cvode_mem = Sundials.Handle(mem_ptr)
userfun = Sundials.UserFunctionAndData(f, userdata)
Sundials.CVodeSetUserData(cvode_mem, userfun)

function getcfunrob(userfun::T) where T
    @cfunction(Sundials.cvodefun,
                    Cint, (Sundials.realtype, Sundials.N_Vector,
                    Sundials.N_Vector, Ref{T}))
end

Sundials.CVodeInit(cvode_mem, getcfunrob(userfun), t1,
                    convert(Sundials.N_Vector, y0))
Sundials.@checkflag Sundials.CVodeInit(cvode_mem, f, t0, y0)
Sundials.@checkflag Sundials.CVodeSVtolerances(cvode_mem, reltol, abstol)
Sundials.@checkflag Sundials.CVodeRootInit(cvode_mem, 2, g)
A = Sundials.SUNDenseMatrix(neq,neq)
mat_handle = Sundials.MatrixHandle(A,Sundials.DenseMatrix())
LS = Sundials.SUNDenseLinearSolver(convert(Sundials.N_Vector,y0),A)
LS_handle = Sundials.LinSolHandle(LS,Sundials.Dense())
Sundials.@checkflag Sundials.CVDlsSetLinearSolver(cvode_mem, LS, A)
#Sundials.@checkflag Sundials.CVDlsSetDenseJacFn(cvode_mem, Jac)

iout = 0
tout = t1
t = [t0]

while iout < nout
    y = similar(y0)
    flag = Sundials.CVode(cvode_mem, tout, y, t, Sundials.CV_NORMAL)
    println("T=", tout, ", Y=", y)
    if flag == Sundials.CV_ROOT_RETURN
        rootsfound = zeros(Cint, 2)
        Sundials.@checkflag Sundials.CVodeGetRootInfo(cvode_mem, rootsfound)
        println("roots=", rootsfound)
    elseif flag == Sundials.CV_SUCCESS
      global iout += 1
      global tout *= tmult
    end
end

empty!(cvode_mem)
empty!(mat_handle)
empty!(LS_handle)
