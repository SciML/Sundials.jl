##################################################################
#
# Simplified interfaces that only uses Julia vectors and functions.
#
##################################################################

"""
    Insert a check that the given function call returns 0,
    throw an error otherwise. Only apply directly to function calls.
"""
macro checkflag(ex)
    @assert Base.Meta.isexpr(ex, :call)
    fname = ex.args[1]
    quote
        flag = $(esc(ex))
        if flag != 0
            error($(string(fname, " failed with error code = ")), flag)
        end
        flag
    end
end

type UserFunctionAndData
    func::Function
    data::Any

    UserFunctionAndData(func::Function, data::Any) = new(func, data)
end

UserFunctionAndData(func::Function) = func
UserFunctionAndData(func::Function, data::Void) = func

function kinsolfun(y::N_Vector, fy::N_Vector, userfun::UserFunctionAndData)
    userfun[].func(convert(Vector, y), convert(Vector, fy), userfun[].data)
    return KIN_SUCCESS
end

function kinsolfun(y::N_Vector, fy::N_Vector, userfun::Function)
    userfun(convert(Vector, y), convert(Vector, fy))
    return KIN_SUCCESS
end

function kinsol(f::Function, y0::Vector{Float64}, userdata::Any = nothing)
    # f, Function to be optimized of the form f(y::Vector{Float64}, fy::Vector{Float64})
    #    where `y` is the input vector, and `fy` is the result of the function
    # y0, Vector of initial values
    # return: the solution vector
    kmem = KINCreate()
    if kmem == C_NULL
        error("Failed to allocate KINSOL solver object")
    end

    y = copy(y0)
    try
        # use the user_data field to pass a function
        #   see: https://github.com/JuliaLang/julia/issues/2554
        userfun = UserFunctionAndData(f, userdata)
        flag = @checkflag KINInit(kmem, cfunction(kinsolfun, Cint, (N_Vector, N_Vector, Ref{typeof(userfun)})), NVector(y0))
        flag = @checkflag KINDense(kmem, length(y0))
        flag = @checkflag KINSetUserData(kmem, userfun)
        ## Solve problem
        scale = ones(length(y0))
        strategy = KIN_NONE
        flag = @checkflag KINSol(kmem, y, strategy, scale, scale)
    finally
        KINFree(Ref{KINMemPtr}(kmem))
    end

    return y
end

function cvodefun(t::Float64, y::N_Vector, yp::N_Vector, userfun::UserFunctionAndData)
    userfun.func(t, convert(Vector, y), convert(Vector, yp), userfun.data)
    return CV_SUCCESS
end

function cvodefun(t::Float64, y::N_Vector, yp::N_Vector, userfun::Function)
    userfun(t, convert(Vector, y), convert(Vector, yp))
    return CV_SUCCESS
end

"""
`cvode(f::Function, y0::Vector{Float64}, t::Vector{Float64}, userdata::Any=nothing;
       integrator=:BDF, reltol::Float64=1e-3, abstol::Float64=1e-6, callback::Function=(mem,t,y)->true)`

* `f`, Function of the form
  `f(t, y::Vector{Float64}, yp::Vector{Float64})`
  where `y` is the input state vector, and `yp` is the output vector
  of time derivatives for the states `y`
* `y0`, Vector of initial values
* `t`, Vector of time values at which to record integration results
* `integrator`, the chosen integration algorithm. Default is `:BDF`
  , other option is `:Adams`
* `reltol`, Relative Tolerance to be used (default=1e-3)
* `abstol`, Absolute Tolerance to be used (default=1e-6)
* `callback`, Callback function of the form
  `callback(mem, t_k::Float64, y_k::Vector{Float64})::Bool`
  where `mem` is the integrator and `t_k`/`y_k` the time/state at timestep `k`.
  A return value of `false` exits the integrator at timestep `k` and returns the all the timesteps preceding `k`.
  (default=(mem,t_k,y_k)->true)

return: a solution matrix with time steps in `t` along rows and
        state variable `y` along columns
"""
function cvode(f::Function, y0::Vector{Float64}, t::Vector{Float64}, userdata::Any=nothing;
               integrator=:BDF, reltol::Float64=1e-3, abstol::Float64=1e-6, callback::Function=(x,y,z)->true)
    if integrator==:BDF
        mem = CVodeCreate(CV_BDF, CV_NEWTON)
    elseif integrator==:Adams
        mem = CVodeCreate(CV_ADAMS, CV_FUNCTIONAL)
    end
    if mem == C_NULL
        error("Failed to allocate CVODE solver object")
    end

    yres = zeros(length(t), length(y0))
    c = 1
    try
        userfun = UserFunctionAndData(f, userdata)
        y0nv = NVector(y0)
        flag = @checkflag CVodeInit(mem, cfunction(cvodefun, Cint, (realtype, N_Vector, N_Vector, Ref{typeof(userfun)})), t[1], convert(N_Vector, y0nv))
        flag = @checkflag CVodeSetUserData(mem, userfun)
        flag = @checkflag CVodeSStolerances(mem, reltol, abstol)
        flag = @checkflag CVDense(mem, length(y0))
        yres[1,:] = y0
        ynv = NVector(copy(y0))
        tout = [0.0]
        for k in 2:length(t)
            flag = @checkflag CVode(mem, t[k], ynv, tout, CV_NORMAL)
            if !callback(mem, t[k], ynv)
                break
            end
            yres[k,:] = convert(Vector, ynv)
            c = c + 1
        end
    finally
        CVodeFree(Ref{CVODEMemPtr}(mem))
    end
    return yres[1:c,:]
end

"""
`cvode_fulloutput(f::Function, y0::Vector{Float64}, tspan::Vector{Float64}, userdata::Any = nothing;
                  integrator=:BDF, reltol::Float64=1e-3, abstol::Float64=1e-6)`

* `f`, Function of the form
  `f(t, y::Vector{Float64}, yp::Vector{Float64})`
  where `y` is the input state vector, and `yp` is the output vector
  of time derivatives for the states `y`
* `y0`, Vector of initial values
* `tspan`, a vector where `tspan[1]` is the starting time and the other values are
  time values which are guaranteed in the output
* `integrator`, the chosen integration algorithm. Default is `:BDF`
  , other option is `:Adams`
* `reltol`, Relative Tolerance to be used (default=1e-3)
* `abstol`, Absolute Tolerance to be used (default=1e-6)

return: a vector with the timepoints `t` and a vector with the outputs `y0`
"""
function cvode_fulloutput(f::Function, y0::Vector{Float64}, tspan::Vector{Float64}, userdata::Any = nothing;
                          integrator=:BDF, reltol::Float64=1e-3, abstol::Float64=1e-6)
    t0 = tspan[1]
    Ts = tspan[2:end]
    if integrator==:BDF
        mem = CVodeCreate(CV_BDF, CV_NEWTON)
    elseif integrator==:Adams
        mem = CVodeCreate(CV_ADAMS, CV_FUNCTIONAL)
    end
    if mem == C_NULL
        error("Failed to allocate CVODE solver object")
    end

    yres = Vector{Vector{Float64}}()
    ts   = [t0]
    try
        userfun = UserFunctionAndData(f, userdata)
        y0nv = NVector(y0)
        flag = @checkflag CVodeInit(mem, cfunction(cvodefun, Cint, (realtype, N_Vector, N_Vector, Ref{typeof(userfun)})), t0, convert(N_Vector, y0nv))
        flag = @checkflag CVodeSetUserData(mem, userfun)
        flag = @checkflag CVodeSStolerances(mem, reltol, abstol)
        flag = @checkflag CVDense(mem, length(y0))
        push!(yres, y0)
        y = copy(y0)
        tout = [0.0]
        for t in Ts
            while tout[end] < t
                flag = @checkflag CVode(mem, t, y, tout, CV_ONE_STEP)
                push!(yres,copy(y))
                push!(ts, tout...)
            end
            # Fix the end
            flag = @checkflag CVodeGetDky(mem, t, Cint(0), yres[end])
            ts[end] = t
        end
    finally
        CVodeFree(Ref{CVODEMemPtr}(mem))
    end
    return ts, yres
end

function idasolfun(t::Float64, y::N_Vector, yp::N_Vector, r::N_Vector, userfun::UserFunctionAndData)
    userfun.func(t, convert(Vector, y), convert(Vector, yp), convert(Vector, r), userfun.data)
    return IDA_SUCCESS
end

function idasolfun(t::Float64, y::N_Vector, yp::N_Vector, r::N_Vector, userfun::Function)
    userfun(t, convert(Vector, y), convert(Vector, yp), convert(Vector, r))
    return IDA_SUCCESS
end

"""
`idasol(f::Function, y0::Vector{Float64}, yp0::Vector{Float64}, t::Vector{Float64}, userdata::Any=nothing;
        reltol::Float64=1e-3, abstol::Float64=1e-6, diffstates::Union{Vector{Bool},Void}=nothing)`

* `f`, Function of the form
  `f(t, y::Vector{Float64}, yp::Vector{Float64}, r::Vector{Float64})``
  where `y` and `yp` are the input state and derivative vectors,
  and `r` is the output residual vector
* `y0`, Vector of initial values
* `yp0`, Vector of initial values of the derivatives
* `reltol`, Relative Tolerance to be used (default=1e-3)
* `abstol`, Absolute Tolerance to be used (default=1e-6)
* `diffstates`, Boolean vector, true for the positions such that `r` depends on `yp[k]`

return: (y,yp) two solution matrices representing the states and state derivatives
         with time steps in `t` along rows and state variable `y` or `yp` along columns
"""
function idasol(f::Function, y0::Vector{Float64}, yp0::Vector{Float64}, t::Vector{Float64}, userdata::Any=nothing;
                reltol::Float64=1e-3, abstol::Float64=1e-6, diffstates::Union{Vector{Bool},Void}=nothing)
    mem = IDACreate()
    if mem == C_NULL
        error("Failed to allocate IDA solver object")
    end

    yres = zeros(length(t), length(y0))
    ypres = zeros(length(t), length(y0))
    try
        userfun = UserFunctionAndData(f, userdata)
        flag = @checkflag IDAInit(mem, cfunction(idasolfun, Cint, (realtype, N_Vector, N_Vector, N_Vector, Ref{typeof(userfun)})),
                                  t[1], y0, yp0)
        flag = @checkflag IDASetUserData(mem, userfun)
        flag = @checkflag IDASStolerances(mem, reltol, abstol)
        flag = @checkflag IDADense(mem, length(y0))
        rtest = zeros(length(y0))
        f(t[1], y0, yp0, rtest)
        if any(abs(rtest) .>= reltol)
            if diffstates === nothing
                error("Must supply diffstates argument to use IDA initial value solver.")
            end
            flag = @checkflag IDASetId(mem, collect(Float64, diffstates))
            flag = @checkflag IDACalcIC(mem, IDA_YA_YDP_INIT, t[2])
        end
        yres[1,:] = y0
        ypres[1,:] = yp0
        y = copy(y0)
        yp = copy(yp0)
        tout = [0.0]
        for k in 2:length(t)
            retval = @checkflag IDASolve(mem, t[k], tout, y, yp, IDA_NORMAL)
            yres[k,:] = y
            ypres[k,:] = yp
        end
    finally
        IDAFree(Ref{IDAMemPtr}(mem))
    end

    return yres, ypres
end
