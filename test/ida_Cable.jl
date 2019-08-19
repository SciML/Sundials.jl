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
const L = 4000

## Number of space steps to simulate
const dx = 10.0
const xsteps = round(Int, L/dx)

## Number of timesteps to simulate
const tf = 10.0
const dt = 0.1
const timesteps = round(Int, tf/dt)
const t = collect(0.0:dt:(dt*(timesteps-1)))

const d = 4.0 * 1e-4 ## Cable diameter in cm
const R_m = 2.5e11 ## Membrane resistance in Ohms/cm^2
const G_m = 1.0/R_m ## Membrane conductance
const R_i = 30.0  ## Longitudinal resistivity in Ohms*cm
const C_m = 1e-6  ## Membrane capacitance in F/cm^2


## Define the injected current J
const J = zeros(timesteps, xsteps)
const I_in = 0.1
## When to start injecting current
const I_delay = 1.0
## Duration of injected current
const I_dur = 5.0
J[max(1,round(Int,(I_delay)/dt)):round(Int,(I_delay+I_dur)/dt),round(Int,1*xsteps/2)] = I_in

const G_J = map(i -> CoordInterpGrid(t, vec(J[:,i]), 0.0, InterpQuadratic),1:xsteps)


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

function idabandsol(f::Function, y0::Vector{Float64}, yp0::Vector{Float64},
                    id::Vector{Float64}, t::Vector{Float64};
                    reltol::Float64=1e-4, abstol::Float64=1e-6)

    neq = length(y0)
    mem = Sundials.IDACreate()

    function getcfunband(f::T) where T
        @cfunction(Sundials.idasolfun, Cint,
                   (Sundials.realtype, Sundials.N_Vector, Sundials.N_Vector, Sundials.N_Vector, Ref{T}})
     end
    Sundials.@checkflag Sundials.IDAInit(mem, getcfunband(f),
                                         t[1], y0, yp0)
    Sundials.@checkflag Sundials.IDASetId(mem, id)
    Sundials.@checkflag Sundials.IDASetUserData(mem, f)
    Sundials.@checkflag Sundials.IDASStolerances(mem, reltol, abstol)
    Sundials.@checkflag Sundials.IDABand(mem, neq, xsteps-1, xsteps-1)
    ##Sundials.@checkflag Sundials.IDADense(mem, neq)
    rtest = zeros(neq)
    Sundials.@checkflag Sundials.IDACalcIC(mem, Sundials.IDA_YA_YDP_INIT, t[2])
    yres = zeros(Float64, length(y0), length(t))
    ypres = zeros(Float64, length(y0), length(t))
    yres[:, 1] = y0
    ypres[:, 1] = yp0
    y = copy(y0)
    yp = copy(yp0)
    tout = [0.0]
    for k in 2:length(t)
        Sundials.@checkflag Sundials.IDASolve(mem, t[k], tout, y, yp, Sundials.IDA_NORMAL)
        yres[:, k] = y
        ypres[:, k] = yp
    end
    return yres, ypres
end

u0, up0, id = initial()

yout, ypout = @time idabandsol(cableres, u0, up0, id, map(x -> x, t),
                               reltol = 1e-3, abstol = 1e-4)
