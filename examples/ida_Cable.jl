using Sundials
using Grid ## for interpolating grids

##
## Solving the 1D cable equation with IDA.
##
## The DAE system solved is a spatial discretization of the PDE
##
##  C_m dV/dt = d/R d^2V/x^2 - G_m V - R_m J
##
## The PDE is treated with central differences on a uniform M x 1
## grid. The values of u at the interior points satisfy ODEs, and
## equations u = 0 at the boundaries are appended, to form a DAE
## system of size M.
##

## Length of cable in um
L = 4000

## Number of space steps to simulate
dx = 10
xsteps = round(Int,L/dx)

## Number of timesteps to simulate
tf = 10.0
dt = 0.1
timesteps = round(Int, tf/dt)
t = 0.0:dt:(dt*(timesteps-1))

d = 4.0 * 1e-4 ## Cable diameter in cm
R_m = 2.5e11 ## Membrane resistance in Ohms/cm^2
G_m = 1.0/R_m ## Membrane conductance
R_i = 30.0  ## Longitudinal resistivity in Ohms*cm
C_m = 1e-6  ## Membrane capacitance in F/cm^2


## Define the injected current J
J = zeros(timesteps,xsteps)
I_in = 0.1
## When to start injecting current
I_delay = 1.0
## Duration of injected current
I_dur = 5.0
J[max(1,round(Int,(I_delay)/dt)):round(Int,(I_delay+I_dur)/dt),round(Int,1*xsteps/2)] = I_in

G_J = map(i -> CoordInterpGrid(t, vec(J[:,i]), 0.0, InterpQuadratic),1:xsteps)


##
## cableres: cable equation system residual function. This uses
## central differencing on the interior points, and includes algebraic
## equations for the boundary values.
##

function cableres(t, u, up, r)
    r[:] = u ## Initialize r to u, to take care of boundary equations.

    ## Loop over segments; set res = up - (central difference).
    for i = 2:(xsteps-2)
        loc = i
        r[loc] = C_m * up[loc] - (d/(4*R_i)) * (u[loc-1] + u[loc+1] -
                                                2.0 * u[loc]) +
                 G_m * u[loc] - R_m * (G_J[loc])[t]

    end

    return Sundials.CV_SUCCESS
end


function initial()
    u = zeros(xsteps)

    u[2:xsteps-2] = -60.0 ## initial value -60 mV

    id = ones(xsteps)

    up = zeros(xsteps)
    r  = zeros(xsteps)

    cableres(0.0, u, up, r)

    ## Copy -res into up to get correct interior initial up values.
    up[:] = -1.0 * r

    return (u,up,id)
end

nvector = Sundials.nvector
function idabandsol(f::Function, y0::Vector{Float64}, yp0::Vector{Float64},
                    id::Vector{Float64}, t::Vector{Float64};
                    reltol::Float64=1e-4, abstol::Float64=1e-6)

    neq = length(y0)
    mem = Sundials.IDACreate()
    flag = Sundials.IDAInit(mem, cfunction(Sundials.idasolfun, Int32,
                                           (Sundials.realtype, Sundials.N_Vector, Sundials.N_Vector, Sundials.N_Vector, Ref{Function})),
                            t[1], nvector(y0), nvector(yp0))
    assert(flag == Sundials.CV_SUCCESS)
    flag = Sundials.IDASetId(mem,nvector(id))
    assert(flag == Sundials.CV_SUCCESS)
    flag = Sundials.IDASetUserData(mem, f)
    assert(flag == Sundials.CV_SUCCESS)
    flag = Sundials.IDASStolerances(mem, reltol, abstol)
    assert(flag == Sundials.CV_SUCCESS)
    mu = xsteps-1
    ml = xsteps-1
    flag = Sundials.IDABand(mem, neq, mu, ml)
    ##flag = Sundials.IDADense(mem, neq)
    assert(flag == Sundials.CV_SUCCESS)
    rtest = zeros(neq)
    flag = Sundials.IDACalcIC(mem, Sundials.IDA_YA_YDP_INIT, t[2])
    assert(flag == Sundials.CV_SUCCESS)
    yres = zeros(length(t), length(y0))
    ypres = zeros(length(t), length(y0))
    yres[1,:] = y0
    ypres[1,:] = yp0
    y = copy(y0)
    yp = copy(yp0)
    tout = [0.0]
    for k in 2:length(t)
        retval = Sundials.IDASolve(mem, t[k], tout, y, yp, Sundials.IDA_NORMAL)
        yres[k,:] = y[:]
        ypres[k,:] = yp[:]
    end
    return yres, ypres
end

u0, up0, id = initial()

yout, ypout = @time idabandsol(cableres, u0, up0, id, map(x -> x, t),
                               reltol = 1e-3, abstol = 1e-4)
