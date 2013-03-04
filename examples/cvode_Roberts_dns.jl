
using Sundials

## f routine. Compute function f(t,y). 

function f(t, y, ydot, user_data)
    y = Sundials.asarray(y)
    ydot = Sundials.asarray(ydot)
    ydot[1] = -0.04*y[1] + 1.0e4*y[2]*y[3]
    ydot[3] = 3.0e7*y[2]*y[2]
    ydot[2] = -ydot[1] - ydot[3]
    return int32(0)
end


## g routine. Compute functions g_i(t,y) for i = 0,1. 

function g(t, y, gout, user_data)
    y = Sundials.asarray(y)
    gout = Sundials.asarray(gout, (2,))
    gout[1] = y[1] - 0.0001
    gout[2] = y[3] - 0.01
    return int32(0)
end

## Jacobian routine. Compute J(t,y) = df/dy.  

# Using StrPack
# -- it works
# -- it's clunky and dependent on Sundials version
# Note: this is for Sundials v 2.4; the structure changed for v 2.5
# Because of this, I'm commenting this out.
## using StrPack
## @struct type J_DlsMat    
##     typ::Int32
##     M::Int32
##     N::Int32
##     ldim::Int32
##     mu::Int32
##     ml::Int32
##     s_mu::Int32
##     data::Ptr{Float64}
##     ldata::Int32
##     cols::Ptr{Ptr{Float64}}
## end
# Note: Here is the (untested) structure for v 2.5
## using StrPack
## @struct type J_DlsMat    
##     typ::Int32
##     M::Int
##     N::Int
##     ldim::Int
##     mu::Int
##     ml::Int
##     s_mu::Int
##     data::Ptr{Float64}
##     ldata::Int
##     cols::Ptr{Ptr{Float64}}
## end

# The following works if the code above is uncommented.
function Jac(N, t, y, fy, Jptr, user_data,
             tmp1, tmp2, tmp3)
    y = Sundials.asarray(y)
    dlsmat = unpack(IOString(pointer_to_array(convert(Ptr{Uint8}, Jptr),
                                              (sum(map(sizeof, J_DlsMat.types))+10,))),
                    J_DlsMat)
    J = pointer_to_array(unsafe_ref(dlsmat.cols), (int(neq), int(neq)), false)
    J[1,1] = -0.04
    J[1,2] = 1.0e4*y[3]
    J[1,3] = 1.0e4*y[2]
    J[2,1] = 0.04 
    J[2,2] = -1.0e4*y[3] - 6.0e7*y[2]
    J[2,3] = -1.0e4*y[2]
    J[3,2] = 6.0e7*y[2]
    return int32(0)
end

neq = int32(3)

t0 = 0.0
t1 = 0.4
tmult = 10.0
nout = 12
y = [1.0,0.0,0.0]
reltol = 1e-4
abstol = [1e-8, 1e-14, 1e-6]

cvode_mem = Sundials.CVodeCreate(Sundials.CV_BDF, Sundials.CV_NEWTON)
flag = Sundials.CVodeInit(cvode_mem, f, t0, y)
flag = Sundials.CVodeSVtolerances(cvode_mem, reltol, abstol)
flag = Sundials.CVodeRootInit(cvode_mem, int32(2), g)
flag = Sundials.CVDense(cvode_mem, neq)
## flag = Sundials.CVDlsSetDenseJacFn(cvode_mem, Jac)  # works, but clunky, see above

iout = 0
tout = t1

rootsfound = int32([0, 0])
t = [t0]

while true
    flag = Sundials.CVode(cvode_mem, tout, y, t, Sundials.CV_NORMAL)
    println("T = ", tout, ", Y = ", y)
    if flag == Sundials.CV_ROOT_RETURN
        flagr = Sundials.CVodeGetRootInfo(cvode_mem, rootsfound)
        println("roots = ", rootsfound)
    end
    if flag == Sundials.CV_SUCCESS
      iout += 1
      tout *= tmult
    end
    if iout == nout break end
end
