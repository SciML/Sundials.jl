using Sundials

##
## Example problem for IDA: 2D heat equation, serial, banded.
##
## This example solves a discretized 2D heat equation problem.  This
## version uses the band solver IDABand, and IDACalcIC.
##
## The DAE system solved is a spatial discretization of the PDE
##
##          du/dt = d^2u/dx^2 + d^2u/dy^2
##
## on the unit square. The boundary condition is u = 0 on all edges.
## Initial conditions are given by u = 48 x (1 - x) y (1 - y).  The
## PDE is treated with central differences on a uniform M x M
## grid. The values of u at the interior points satisfy ODEs, and
## equations u = 0 at the boundaries are appended, to form a DAE
## system of size N = M^2. Here M = 10.
##
## The system is solved with IDA using the banded linear system
## solver, half-bandwidths equal to M, and default difference-quotient
## Jacobian. For purposes of illustration, IDACalcIC is called to
## compute correct values at the boundary, given incorrect values as
## input initial guesses. The constraints u >= 0 are posed for all
## components.
##

const MGRID = 10
const NEQ = MGRID*MGRID

const dx = 1.0/(MGRID - 1.0)
const coeff = 1.0 / (dx * dx)
const bval = 0.1
##
## heatres: heat equation system residual function This uses 5-point
## central differencing on the interior points, and includes algebraic
## equations for the boundary values.
##
## So for each interior point, the residual component has the form
##    r_i = u'_i - (central difference)_i
## while for each boundary point, it is r_i = u_i.
##

function heatres(t, u, up, r)
    r[:] = u ## Initialize r to u, to take care of boundary equations.

    ## Loop over interior points; set res = up - (central difference).
    for j = 2:(MGRID-2)
        offset = MGRID * j
        for i = 2:(MGRID-2)
            loc = offset + i
            r[loc] = up[loc] - coeff * (u[loc-1] + u[loc+1] +
                                        u[loc-MGRID] + u[loc+MGRID] -
                                        4.0 * u[loc])
        end
    end

    return Sundials.CV_SUCCESS
end


function initial()
    mm = MGRID
    mm1 = mm - 1

    u  = zeros(NEQ)
    id = ones(NEQ)

    ## initialize u on all grid points
    for j = 1:mm-1
        yfact = dx * j
        offset = mm*j
        for i = 1:mm-1
            xfact = dx * i
            loc = offset + i
            u[loc] = 48.0 * xfact * (1.0 - xfact) * yfact * (1.0 - yfact)
        end
    end

    up = zeros(NEQ)
    r  = zeros(NEQ)

    heatres(0.0, u, up, r)

    ## Copy -res into up to get correct interior initial up values.
    up[:] = -1.0 * r

    ## Finally, set values of u, up, and id at boundary points.
    for j = 1:mm-1
        offset = mm * j
        for i = 1:mm-1
            loc = offset + i;
            if j == 1 || j == mm1 || i == 1 || i == mm1
                u[loc] = bval
                up[loc] = 0
                id[loc] = 0
            end
        end
    end

    constraints = ones(NEQ)
    return (u,up,id,constraints)
end

function idabandsol(f::Function, y0::Vector{Float64}, yp0::Vector{Float64},
                    id::Vector{Float64}, constraints::Vector{Float64},
                    t::Vector{Float64};
                    reltol::Float64=1e-4, abstol::Float64=1e-6)
    neq = length(y0)
    mem = Sundials.IDACreate()
    Sundials.@checkflag Sundials.IDAInit(mem, cfunction(Sundials.idasolfun, Cint,
                                         (Sundials.realtype, Sundials.N_Vector, Sundials.N_Vector, Sundials.N_Vector, Ref{Function})),
                                         t[1], y0, yp0)
    Sundials.@checkflag Sundials.IDASetId(mem, id)
    Sundials.@checkflag Sundials.IDASetConstraints(mem, constraints)
    Sundials.@checkflag Sundials.IDASetUserData(mem, f)
    Sundials.@checkflag Sundials.IDASStolerances(mem, reltol, abstol)
    Sundials.@checkflag Sundials.IDABand(mem, neq, MGRID, MGRID)
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

const nsteps = 10
const tstep = 0.005
const t = collect(0.0:tstep:(tstep*nsteps))
u0, up0, id, constraints = initial()

yout, ypout = idabandsol(heatres, u0, up0, id, constraints, map(x -> x, t),
                         reltol = 0.0, abstol = 1e-3)
