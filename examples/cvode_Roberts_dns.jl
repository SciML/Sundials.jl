
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

## Jacobian routine. Compute J(t,y) = df/dy.   BROKEN - JJ is wrong

## Attempt to use strpack
## type J_DlsMat
##     typ::Int32
##     M::Int32
##     N::Int32
##     ldim::Int32
##     mu::Int32
##     ml::Int32
##     s_mu::Int32
##     data::Vector{Float64}
##     ldata::Int32
##     cols::Array{Float64,2}
## end
## io = IOBuffer()
## dlsmat = pack(io, J_DlsMat(int32(0), int32(0), int32(0), int32(0), int32(0), int32(0), int32(0),
##                   zeros(3), int32(0), zeros(3,3)))
## Ndlsmat = length(io)
## close(io)
    

function Jac(N, t, y, fy, Jptr, user_data,
             tmp1, tmp2, tmp3)
    println("jac0")
    y = Sundials.asarray(y)
    ## global dlsmat = unpack(IOBuffer(pointer_to_array(convert(Ptr{Uint8}, Jptr), Ndlsmat)), J_DlsMat)
    global dlsmat = unpack(IOBuffer(pointer_to_array(convert(Ptr{Uint8}, Jptr), (1000,))), J_DlsMat)
    global J = dlsmat.cols
    
    ## unsafe_ref(convert(Ptr{Float64}, J + 40), (3,3))
    ## global GJ = J
    ## J = pointer_to_array(convert(Ptr{Float64}, J + 40), (3,3))  # the + 40 is funky pointer arithmetic
    ## @show J
    ## JJ = pointer_to_array(convert(Ptr{Float64}, GJ + 40), (3,3))  # the + 40 is funky pointer arithmetic
    ## @show JJ
    ## @show pointer_to_array(convert(Ptr{Int32}, GJ), (12,))  # the + 40 is funky pointer arithmetic
    ## J[1,1] = -0.04
    ## J[1,2] = 1.0e4*y[3]
    ## J[1,3] = 1.0e4*y[2]
    ## J[2,1] = 0.04 
    ## J[2,2] = -1.0e4*y[3] - 6.0e7*y[2]
    ## J[2,3] = -1.0e4*y[2]
    ## J[3,2] = 6.0e7*y[2]
    return int32(0)
end

neq = int32(3)

t0 = 0.0
t1 = 0.4
tmult = 10.0
nout = 12
y = [1.0,0.0,0.0]
## yp = [-0.04,0.04,0.0]
reltol = 1e-4
abstol = [1e-8, 1e-14, 1e-6]


CV_BDF = int32(2)
CV_NEWTON = int32(2)

cvode_mem = Sundials.CVodeCreate(CV_BDF, CV_NEWTON)
flag = Sundials.CVodeInit(cvode_mem, f, t0, y)
flag = Sundials.CVodeSVtolerances(cvode_mem, reltol, abstol)
flag = Sundials.CVodeRootInit(cvode_mem, int32(2), g)
flag = Sundials.CVDense(cvode_mem, neq)
## flag = Sundials.CVDlsSetDenseJacFn(cvode_mem, Jac)

iout = 0
tout = t1

rootsfound = int32([0, 0])
CV_NORMAL = int32(1)
CV_SUCCESS = int32(0)
CV_ROOT_RETURN = int32(2)
t = [t0]

flag = Sundials.CVode(cvode_mem, tout, y, t, CV_NORMAL)
    
while true
    flag = Sundials.CVode(cvode_mem, tout, y, t, CV_NORMAL)
    println("T = ", tout, ", Y = ", y)
    if flag == CV_ROOT_RETURN
        flagr = Sundials.CVodeGetRootInfo(cvode_mem, rootsfound)
        println("roots = ", rootsfound)
    end
    if flag == CV_SUCCESS
      iout += 1
      tout *= tmult
    end
    if iout == nout break end
end
