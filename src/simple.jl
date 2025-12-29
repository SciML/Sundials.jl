##################################################################
#
# Simplified interfaces that only uses Julia vectors and functions.
#
##################################################################

"""
    Insert a check that the given function call returns 0,
    throw an error otherwise. Only apply directly to function calls.
"""
macro checkflag(ex, throw_error = false)
    @assert Base.Meta.isexpr(ex, :call)
    fname = ex.args[1]
    quote
        flag = $(esc(ex))
        if flag < 0
            if $(esc(throw_error))
                @error($(string(fname, " failed with error code = ")), flag)
            else
                @warn($(string(fname, " failed with error code = ")), flag)
            end
        end
        flag
    end
end

mutable struct UserFunctionAndData{F}
    func::F
    data::Any

    UserFunctionAndData{F}(func, data) where {F} = new{F}(func, data)
end

UserFunctionAndData(func) = func
UserFunctionAndData(func, data::Nothing) = func

# Enable accessing the struct via userfun[] syntax
Base.getindex(userfun::UserFunctionAndData) = userfun

function kinsolfun(y::N_Vector, fy::N_Vector, userfun::UserFunctionAndData)
    userfun[].func(convert(Vector, fy), convert(Vector, y), userfun[].data)
    return KIN_SUCCESS
end

function kinsolfun(y::N_Vector, fy::N_Vector, userfun)
    userfun(convert(Vector, fy), convert(Vector, y))
    return KIN_SUCCESS
end

function ___kinsol(f,
        y0::Vector{Float64};
        userdata::Any = nothing,
        linear_solver::Symbol = :Dense,
        jac_upper::Int = 0,
        jac_lower::Int = 0,
        abstol::Float64 = eps(Float64) ^ (4 // 5),
        prec_side::Int = 0,
        krylov_dim::Int = 0,
        jac_prototype = nothing,
        maxiters = 1000,
        strategy = :None,
        maxsetupcalls = 0)
    # f, Function to be optimized of the form f(y::Vector{Float64}, fy::Vector{Float64})
    #    where `y` is the input vector, and `fy` is the result of the function
    # y0, Vector of initial values
    # return: the solution vector
    ctx_ptr = Ref{SUNContext}(C_NULL)
    SUNContext_Create(C_NULL, Base.unsafe_convert(Ptr{SUNContext}, ctx_ptr))
    ctx = ctx_ptr[]
    mem_ptr = KINCreate(ctx)
    (mem_ptr == C_NULL) && error("Failed to allocate KINSOL solver object")
    kmem = Handle(mem_ptr)

    y = copy(y0)

    # use the user_data field to pass a function
    #   see: https://github.com/JuliaLang/julia/issues/2554
    userfun = UserFunctionAndData(f, userdata)
    function getcfun(userfun::T) where {T}
        @cfunction(kinsolfun, Cint, (N_Vector, N_Vector, Ref{T}))
    end
    y0_nvec = NVector(y0, ctx)
    flag = @checkflag KINInit(kmem, getcfun(userfun), y0_nvec) true
    if linear_solver == :Dense
        A = Sundials.SUNDenseMatrix(length(y0), length(y0), ctx)
        LS = Sundials.SUNLinSol_Dense(y0_nvec, A, ctx)
    elseif linear_solver == :LapackDense
        A = Sundials.SUNDenseMatrix(length(y0), length(y0), ctx)
        LS = Sundials.SUNLinSol_LapackDense(y0_nvec, A, ctx)
    elseif linear_solver == :Band
        A = Sundials.SUNBandMatrix(length(y0), jac_upper, jac_lower, ctx)
        LS = Sundials.SUNLinSol_Band(y0_nvec, A, ctx)
    elseif linear_solver == :LapackBand
        A = Sundials.SUNBandMatrix(length(y0), jac_upper, jac_lower, ctx)
        LS = Sundials.SUNLinSol_LapackBand(y0_nvec, A, ctx)
    elseif linear_solver == :GMRES
        A = C_NULL
        LS = Sundials.SUNLinSol_SPGMR(y0_nvec, Cint(prec_side), Cint(krylov_dim), ctx)
    elseif linear_solver == :FGMRES
        A = C_NULL
        LS = Sundials.SUNLinSol_SPFGMR(y0_nvec, Cint(prec_side), Cint(krylov_dim), ctx)
    elseif linear_solver == :BCG
        A = C_NULL
        LS = Sundials.SUNLinSol_SPBCGS(y0_nvec, Cint(prec_side), Cint(krylov_dim), ctx)
    elseif linear_solver == :PCG
        A = C_NULL
        LS = Sundials.SUNLinSol_PCG(y0_nvec, Cint(prec_side), Cint(krylov_dim), ctx)
    elseif linear_solver == :TFQMR
        A = C_NULL
        LS = Sundials.SUNLinSol_SPTFQMR(y0_nvec, Cint(prec_side), Cint(krylov_dim), ctx)
    elseif linear_solver == :KLU
        nnz = length(SparseArrays.nonzeros(jac_prototype))
        A = Sundials.SUNSparseMatrix(length(y0), length(y0), nnz, CSC_MAT, ctx)
        LS = SUNLinSol_KLU(y0_nvec, A, ctx)
    else
        error("Unknown linear solver")
    end
    flag = @checkflag KINSetFuncNormTol(kmem, abstol) true
    flag = @checkflag KINSetLinearSolver(kmem, LS, A) true
    flag = @checkflag KINSetUserData(kmem, userfun) true
    flag = @checkflag KINSetNumMaxIters(kmem, maxiters) true
    flag = @checkflag KINSetMaxSetupCalls(kmem, maxsetupcalls) true
    ## Solve problem
    scale = ones(length(y0))
    scale_nvec = NVector(scale, ctx)
    if strategy == :None
        strategy = KIN_NONE
    elseif strategy == :LineSearch
        strategy = KIN_LINESEARCH
    else
        error("Unknown strategy")
    end
    ynv = NVector(y, ctx)
    flag = @checkflag KINSol(kmem, ynv, strategy, scale_nvec, scale_nvec) true
    y = convert(Vector, ynv)

    # Clean up context
    SUNContext_Free(ctx)

    return y, flag
end
kinsol(args...; kwargs...) = first(___kinsol(args...; kwargs...))

function cvodefun(t::Float64, y::N_Vector, yp::N_Vector, userfun::UserFunctionAndData)
    userfun.func(t, convert(Vector, y), convert(Vector, yp), userfun.data)
    return CV_SUCCESS
end

function cvodefun(t::Float64, y::N_Vector, yp::N_Vector, userfun)
    userfun(t, convert(Vector, y), convert(Vector, yp))
    return CV_SUCCESS
end

"""
`cvode(f, y0::Vector{Float64}, t::Vector{Float64}, userdata::Any=nothing;
       integrator=:BDF, reltol::Float64=1e-3, abstol::Float64=1e-6, callback=(mem,t,y)->true)`

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
function cvode(f::Function,
        y0::Vector{Float64},
        t::AbstractVector,
        userdata::Any = nothing;
        kwargs...)
    y = zeros(length(t), length(y0))
    n = cvode!(f, y, y0, t, userdata; kwargs...)
    return y[1:n, :]
end

function cvode!(f::Function,
        y::Matrix{Float64},
        y0::Vector{Float64},
        t::AbstractVector,
        userdata::Any = nothing;
        integrator = :BDF,
        reltol::Float64 = 1e-3,
        abstol::Float64 = 1e-6,
        callback = (x, y, z) -> true)
    ctx_ptr = Ref{SUNContext}(C_NULL)
    SUNContext_Create(C_NULL, Base.unsafe_convert(Ptr{SUNContext}, ctx_ptr))
    ctx = ctx_ptr[]
    if integrator == :BDF
        mem_ptr = CVodeCreate(CV_BDF, ctx)
    elseif integrator == :Adams
        mem_ptr = CVodeCreate(CV_ADAMS, ctx)
    else
        error("integrator must be :BDF or :Adams, got: $integrator")
    end

    (mem_ptr == C_NULL) && error("Failed to allocate CVODE solver object")
    mem = Handle(mem_ptr)

    c = 1

    userfun = UserFunctionAndData(f, userdata)
    y0nv = NVector(y0, ctx)

    function getcfun(userfun::T) where {T}
        @cfunction(cvodefun, Cint, (realtype, N_Vector, N_Vector, Ref{T}))
    end
    flag = @checkflag CVodeInit(mem, getcfun(userfun), t[1], y0nv) true

    flag = @checkflag CVodeSetUserData(mem, userfun) true
    flag = @checkflag CVodeSStolerances(mem, reltol, abstol) true
    A = Sundials.SUNDenseMatrix(length(y0), length(y0), ctx)
    LS = Sundials.SUNLinSol_Dense(y0nv, A, ctx)
    flag = Sundials.@checkflag Sundials.CVDlsSetLinearSolver(mem, LS, A) true

    y[1, :] = y0
    ynv = NVector(copy(y0), ctx)
    tout = [0.0]
    for k in 2:length(t)
        flag = @checkflag CVode(mem, t[k], ynv, tout, CV_NORMAL) true
        if !callback(mem, t[k], ynv)
            break
        end
        y[k, :] = convert(Vector, ynv)
        c = c + 1
    end

    Sundials.SUNLinSolFree_Dense(LS)
    Sundials.SUNMatDestroy_Dense(A)
    SUNContext_Free(ctx)

    return c
end

function idasolfun(t::Float64,
        y::N_Vector,
        yp::N_Vector,
        r::N_Vector,
        userfun::UserFunctionAndData)
    userfun.func(t,
        convert(Vector, y),
        convert(Vector, yp),
        convert(Vector, r),
        userfun.data)
    return IDA_SUCCESS
end

function idasolfun(t::Float64, y::N_Vector, yp::N_Vector, r::N_Vector, userfun)
    userfun(t, convert(Vector, y), convert(Vector, yp), convert(Vector, r))
    return IDA_SUCCESS
end

"""
`idasol(f, y0::Vector{Float64}, yp0::Vector{Float64}, t::Vector{Float64}, userdata::Any=nothing;
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
function idasol(f,
        y0::Vector{Float64},
        yp0::Vector{Float64},
        t::Vector{Float64},
        userdata::Any = nothing;
        reltol::Float64 = 1e-3,
        abstol::Float64 = 1e-6,
        diffstates::Union{Vector{Bool}, Nothing} = nothing)
    ctx_ptr = Ref{SUNContext}(C_NULL)
    SUNContext_Create(C_NULL, Base.unsafe_convert(Ptr{SUNContext}, ctx_ptr))
    ctx = ctx_ptr[]
    mem_ptr = IDACreate(ctx)
    (mem_ptr == C_NULL) && error("Failed to allocate IDA solver object")
    mem = Handle(mem_ptr)

    yres = zeros(length(t), length(y0))
    ypres = zeros(length(t), length(y0))

    userfun = UserFunctionAndData(f, userdata)

    function getcfun(userfun::T) where {T}
        @cfunction(idasolfun, Cint, (realtype, N_Vector, N_Vector, N_Vector, Ref{T}))
    end
    y0nv = NVector(y0, ctx)
    yp0nv = NVector(yp0, ctx)
    flag = @checkflag IDAInit(mem, getcfun(userfun), t[1], y0nv, yp0nv) true
    flag = @checkflag IDASetUserData(mem, userfun) true
    flag = @checkflag IDASStolerances(mem, reltol, abstol) true

    A = Sundials.SUNDenseMatrix(length(y0), length(y0), ctx)
    LS = Sundials.SUNLinSol_Dense(y0nv, A, ctx)
    flag = Sundials.@checkflag Sundials.IDADlsSetLinearSolver(mem, LS, A) true

    rtest = zeros(length(y0))
    f(t[1], y0, yp0, rtest)
    if any(abs.(rtest) .>= reltol)
        if diffstates === nothing
            error("Must supply diffstates argument to use IDA initial value solver.")
        end
        flag = @checkflag IDASetId(mem, collect(Float64, diffstates)) true
        flag = @checkflag IDACalcIC(mem, IDA_YA_YDP_INIT, t[2]) true
    end
    yres[1, :] = y0
    ypres[1, :] = yp0
    ynv = NVector(copy(y0), ctx)
    ypnv = NVector(copy(yp0), ctx)
    tout = [0.0]
    for k in 2:length(t)
        retval = @checkflag IDASolve(mem, t[k], tout, ynv, ypnv, IDA_NORMAL) true
        yres[k, :] = convert(Vector, ynv)
        ypres[k, :] = convert(Vector, ypnv)
    end

    Sundials.SUNLinSolFree_Dense(LS)
    Sundials.SUNMatDestroy_Dense(A)
    SUNContext_Free(ctx)

    return yres, ypres
end
