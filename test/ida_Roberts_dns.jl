## Adapted from  doc/libsundials-serial-dev/examples/ida/serial/idaRoberts_dns.c and
##               sundialsTB/ida/examples_ser/midasRoberts_dns.m

## /*
##  * -----------------------------------------------------------------
##  * $Revision: 1.2 $
##  * $Date: 2009/01/21 21:46:40 $
##  * -----------------------------------------------------------------
##  * Programmer(s): Allan Taylor, Alan Hindmarsh and
##  *                Radu Serban @ LLNL
##  * -----------------------------------------------------------------
##  * This simple example problem for IDA, due to Robertson,
##  * is from chemical kinetics, and consists of the following three
##  * equations:
##  *
##  *      dy1/dt = -.04*y1 + 1.e4*y2*y3
##  *      dy2/dt = .04*y1 - 1.e4*y2*y3 - 3.e7*y2**2
##  *         0   = y1 + y2 + y3 - 1
##  *
##  * on the interval from t = 0.0 to t = 4.e10, with initial
##  * conditions: y1 = 1, y2 = y3 = 0.
##  *
##  * While integrating the system, we also use the rootfinding
##  * feature to find the points at which y1 = 1e-4 or at which
##  * y3 = 0.01.
##  *
##  * The problem is solved with IDA using IDADENSE for the linear
##  * solver, with a user-supplied Jacobian. Output is printed at
##  * t = .4, 4, 40, ..., 4e10.
##  * -----------------------------------------------------------------
##  */

using Sundials

## Define the system residual function.
function resrob(tres, yy_nv, yp_nv, rr_nv, user_data)
    yy = convert(Vector, yy_nv)
    yp = convert(Vector, yp_nv)
    rr = convert(Vector, rr_nv)
    rr[1] = -0.04 * yy[1] + 1.0e4 * yy[2] * yy[3]
    rr[2] = -rr[1] - 3.0e7 * yy[2] * yy[2] - yp[2]
    rr[1] -= yp[1]
    rr[3] = yy[1] + yy[2] + yy[3] - 1.0
    return Sundials.IDA_SUCCESS
end

## Root function routine. Compute functions g_i(t,y) for i = 0,1.
function grob(t, yy_nv, yp_nv, gout_ptr, user_data)
    yy = convert(Vector, yy_nv)
    gout = Sundials.asarray(gout_ptr, (2,))
    gout[1] = yy[1] - 0.0001
    gout[2] = yy[3] - 0.01
    return Sundials.IDA_SUCCESS
end

## Define the Jacobian function. BROKEN - JJ is wrong
function jacrob(Neq, tt, cj, yy, yp, resvec, JJ, user_data, tempv1, tempv2, tempv3)
    JJ = pointer_to_array(convert(Ptr{Float64}, JJ), (3, 3))
    JJ[1, 1] = -0.04 - cj
    JJ[2, 1] = 0.04
    JJ[3, 1] = 1.0
    JJ[1, 2] = 1.0e4 * yy[3]
    JJ[2, 2] = -1.0e4 * yy[3] - 6.0e7 * yy[2] - cj
    JJ[3, 2] = 1.0
    JJ[1, 3] = 1.0e4 * yy[2]
    JJ[2, 3] = -1.0e4 * yy[2]
    JJ[3, 3] = 1.0
    return Sundials.IDA_SUCCESS
end

neq = 3
nout = 12
t0 = 0.0
yy0 = [1.0, 0.0, 0.0]
yp0 = [-0.04, 0.04, 0.0]
rtol = 1e-4
avtol = [1e-8, 1e-14, 1e-6]
tout1 = 0.4

mem = Sundials.IDACreate()
Sundials.@checkflag Sundials.IDAInit(mem, resrob, t0, yy0, yp0)
Sundials.@checkflag Sundials.IDASVtolerances(mem, rtol, avtol)

## Call IDARootInit to specify the root function grob with 2 components
Sundials.@checkflag Sundials.IDARootInit(mem, 2, grob)

## Call IDADense and set up the linear solver.
A = Sundials.SUNDenseMatrix(length(y0), length(y0))
LS = Sundials.SUNLinSol_Dense(y0, A)
Sundials.@checkflag Sundials.IDADlsSetLinearSolver(mem, LS, A)

iout = 0
tout = tout1
tret = [1.0]

while iout < nout
    yy = similar(yy0)
    yp = similar(yp0)
    retval = Sundials.IDASolve(mem, tout, tret, yy, yp, Sundials.IDA_NORMAL)
    println("T=", tout, ", Y=", yy)
    if retval == Sundials.IDA_ROOT_RETURN
        rootsfound = zeros(Cint, 2)
        Sundials.@checkflag Sundials.IDAGetRootInfo(mem, rootsfound)
        println("roots=", rootsfound)
    elseif retval == Sundials.IDA_SUCCESS
        global iout += 1
        global tout *= 10.0
    end
end

Sundials.SUNLinSolFree_Dense(LS)
Sundials.SUNMatDestroy_Dense(A)
