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
function resrob(tres, yy, yp, rr, user_data)
    yval = Sundials.asarray(yy)
    ypval = Sundials.asarray(yp)
    rval = Sundials.asarray(rr)
    rval[1]  = -0.04*yval[1] + 1.0e4*yval[2]*yval[3]
    rval[2]  = -rval[1] - 3.0e7*yval[2]*yval[2] - ypval[2]
    rval[1] -=  ypval[1]
    rval[3]  =  yval[1] + yval[2] + yval[3] - 1.0
    return Cint(0)   # indicates normal return
end

## Root function routine. Compute functions g_i(t,y) for i = 0,1.
function grob(t, yy, yp, gout, user_data)
    yval = Sundials.asarray(yy)
    gval = Sundials.asarray(gout, (2,))
    gval[1] = yval[1] - 0.0001
    gval[2] = yval[3] - 0.01
    return Cint(0)   # indicates normal return
end

## Define the Jacobian function. BROKEN - JJ is wrong
function jacrob(Neq, tt, cj, yy, yp, resvec,
                JJ, user_data, tempv1, tempv2, tempv3)
    yval = Sundials.asarray(yy)
    JJ = pointer_to_array(convert(Ptr{Float64}, JJ), (3,3))
    JJ[1,1] = -0.04 - cj
    JJ[2,1] = 0.04
    JJ[3,1] = 1.0
    JJ[1,2] = 1.0e4*yval[3]
    JJ[2,2] = -1.0e4*yval[3] - 6.0e7*yval[2] - cj
    JJ[3,2] = 1.0
    JJ[1,3] = 1.0e4*yval[2]
    JJ[2,3] = -1.0e4*yval[2]
    JJ[3,3] = 1.0
    return Cint(0)   # indicates normal return
end

neq = 3
nout = 12
t0 = 0.0
yy = [1.0,0.0,0.0]
yp = [-0.04,0.04,0.0]
rtol = 1e-4
avtol = [1e-8, 1e-14, 1e-6]
tout1 = 0.4

mem = Sundials.IDACreate()
retval = Sundials.IDAInit(mem, resrob, t0, yy, yp)
retval = Sundials.IDASVtolerances(mem, rtol, avtol)

## Call IDARootInit to specify the root function grob with 2 components
retval = Sundials.IDARootInit(mem, Cint(2), grob)

## Call IDADense and set up the linear solver.
retval = Sundials.IDADense(mem, neq)
## retval = Sundials.IDADlsSetDenseJacFn(mem, jacrob)

iout = 0
tout = tout1
tret = [1.0]
rootsfound = zeros(Cint, 2)

while true
    retval = Sundials.IDASolve(mem, tout, tret, yy, yp, Sundials.IDA_NORMAL)
    println("T = ", tout, ", Y = ", yy)
    if retval == Sundials.IDA_ROOT_RETURN
        retvalr = Sundials.IDAGetRootInfo(mem, rootsfound)
        println("roots = ", rootsfound)
    end
    if retval == Sundials.IDA_SUCCESS
        iout += 1
        tout *= 10.0
    end
    if iout == nout break end
end
