## Common Interface Solve Functions

function DiffEqBase.solve{algType<:SundialsODEAlgorithm,recompile_flag}(
  prob::AbstractODEProblem,
  alg::algType,timeseries=[],ts=[],ks=[],
  recompile::Type{Val{recompile_flag}}=Val{true};
  kwargs...)

  integrator = DiffEqBase.init(prob,alg,timeseries,ts,ks;kwargs...)
  solve!(integrator)
end

function DiffEqBase.init{uType, tType, isinplace, Method, LinearSolver}(
    prob::AbstractODEProblem{uType, tType, isinplace},
    alg::SundialsODEAlgorithm{Method,LinearSolver},
    timeseries=[], ts=[], ks=[];

    verbose=true,
    callback=nothing, abstol=1/10^6, reltol=1/10^3,
    saveat=Float64[], tstops=Float64[],
    maxiter=Int(1e5),
    dt = nothing, dtmin = 0.0, dtmax = 0.0,
    timeseries_errors=true,
    dense_errors = false,
    save_everystep=isempty(saveat), dense = save_everystep,
    save_start = true,
    save_timeseries = nothing,
    userdata=nothing,
    kwargs...)

    if verbose
        warned = !isempty(kwargs) && check_keywords(alg, kwargs, warnlist)
        if !(typeof(prob.f) <: AbstractParameterizedFunction) && typeof(alg) <: CVODE_BDF
            if has_tgrad(prob.f)
                warn("Explicit t-gradient given to this stiff solver is ignored.")
                warned = true
            end
        end
        warned && warn_compat()
    end

    if prob.mass_matrix != I
        error("This solver is not able to use mass matrices.")
    end

    if callback != nothing || prob.callback != nothing
        error("Sundials is not compatible with callbacks.")
    end

    tspan = prob.tspan
    t0 = tspan[1]

    tdir = sign(tspan[2]-tspan[1])

    if typeof(saveat) <: Number
        if (tspan[1]:saveat:tspan[end])[end] == tspan[end]
          saveat_vec = collect(tType,tspan[1]+saveat:saveat:tspan[end])
        else
          saveat_vec = collect(tType,tspan[1]+saveat:saveat:(tspan[end]-saveat))
        end
    else
        saveat_vec = convert(Vector{tType}, collect(saveat))
    end

    if !isempty(saveat_vec) && saveat_vec[end] == tspan[2]
        pop!(saveat_vec)
    end

    if !isempty(saveat_vec) && saveat_vec[1] == tspan[1]
        save_ts = sort(unique([saveat_vec[2:end];tspan[2];tstops]))
    else
        save_ts = sort(unique([saveat_vec;tspan[2];tstops]))
    end

    if typeof(prob.u0) <: Number
        u0 = [prob.u0]
    else
        u0 = vec(deepcopy(prob.u0))
    end

    sizeu = size(prob.u0)

    ### Fix the more general function to Sundials allowed style
    if !isinplace && (typeof(prob.u0)<:Vector{Float64} || typeof(prob.u0)<:Number)
        f! = (t, u, du) -> (du .= prob.f(t, u); 0)
    elseif !isinplace && typeof(prob.u0)<:AbstractArray
        f! = (t, u, du) -> (du .= vec(prob.f(t, reshape(u, sizeu))); 0)
    elseif typeof(prob.u0)<:Vector{Float64}
        f! = prob.f
    else # Then it's an in-place function on an abstract array
        f! = (t, u, du) -> (prob.f(t, reshape(u, sizeu),reshape(du, sizeu));
                            u = vec(u); du=vec(du); 0)
    end

    if typeof(alg) <: CVODE_BDF
        alg_code = CV_BDF
    elseif typeof(alg) <:  CVODE_Adams
        alg_code = CV_ADAMS
    end

    if Method == :Newton
        method_code = CV_NEWTON
    elseif Method ==  :Functional
        method_code = CV_FUNCTIONAL
    end

    mem_ptr = CVodeCreate(alg_code, method_code)
    (mem_ptr == C_NULL) && error("Failed to allocate CVODE solver object")
    mem = Handle(mem_ptr)

    ures  = Vector{uType}()
    dures = Vector{uType}()
    save_start ? ts = [t0] : ts = Float64[]

    userfun = FunJac(f!,(t,u,J) -> f!(Val{:jac},t,u,J))
    u0nv = NVector(u0)
    flag = @checkflag CVodeInit(mem,
                                cfunction(cvodefunjac, Cint,
                                          (realtype, N_Vector,
                                           N_Vector, Ref{typeof(userfun)})),
                                t0, convert(N_Vector, u0nv))

    dt != nothing && (flag = @checkflag CVodeSetInitStep(mem, dt))
    flag = @checkflag CVodeSetMinStep(mem, dtmin)
    flag = @checkflag CVodeSetMaxStep(mem, dtmax)
    flag = @checkflag CVodeSetUserData(mem, userfun)
    flag = @checkflag CVodeSStolerances(mem, reltol, abstol)
    flag = @checkflag CVodeSetMaxNumSteps(mem, maxiter)
    flag = @checkflag CVodeSetMaxOrd(mem, alg.max_order)
    flag = @checkflag CVodeSetMaxHnilWarns(mem, alg.max_hnil_warns)
    flag = @checkflag CVodeSetStabLimDet(mem, alg.stability_limit_detect)
    flag = @checkflag CVodeSetMaxErrTestFails(mem, alg.max_error_test_failures)
    flag = @checkflag CVodeSetMaxNonlinIters(mem, alg.max_nonlinear_iters)
    flag = @checkflag CVodeSetMaxConvFails(mem, alg.max_convergence_failures)

    if Method == :Newton # Only use a linear solver if it's a Newton-based method
        if LinearSolver == :Dense
            flag = @checkflag CVDense(mem, length(u0))
        elseif LinearSolver == :Banded
            flag = @checkflag CVBand(mem,length(u0), alg.jac_upper, alg.jac_lower)
        elseif LinearSolver == :Diagonal
            flag = @checkflag CVDiag(mem)
        elseif LinearSolver == :GMRES
            flag = @checkflag CVSpgmr(mem, PREC_NONE, alg.krylov_dim)
        elseif LinearSolver == :BCG
            flag = @checkflag CVSpgmr(mem, PREC_NONE, alg.krylov_dim)
        elseif LinearSolver == :TFQMR
            flag = @checkflag CVSptfqmr(mem, PREC_NONE, alg.krylov_dim)
        end
    end

    if has_jac(prob.f)
      jac = cfunction(cvodejac,
                      Cint,
                      (Clong,
                       realtype,
                       N_Vector,
                       N_Vector,
                       DlsMat,
                       Ref{typeof(userfun)},
                       N_Vector,
                       N_Vector,
                       N_Vector))
      flag = @checkflag CVodeSetUserData(mem, userfun)
      flag = @checkflag CVDlsSetDenseJacFn(mem, jac)
    end

    utmp = NVector(copy(u0))
    tout = [tspan[1]]

    if save_start
      save_value!(ures,u0,uType,sizeu)
      if dense
        f!(tspan[1],u0,utmp)
        save_value!(dures,utmp,uType,sizeu)
      end
    end

    sol = build_solution(prob, alg, ts, ures,
                   dense = dense,
                   du = dures,
                   timeseries_errors = timeseries_errors,
                   calculate_error = false)
    opts = DEOptions(save_ts,tstops,save_everystep,dense,timeseries_errors,
                     dense_errors)
    SundialsIntegrator(utmp,t0,mem,sol,alg,f!,opts,tout,tdir,sizeu)
end # function solve

function solve!(integrator)
    uType = eltype(integrator.sol.u)
    flag = 0

    # The Inner Loops : Style depends on save_everystep
    if integrator.opts.save_everystep
        for k in 1:length(integrator.opts.saveat)
            integrator.opts.saveat[k] ∈ integrator.opts.tstops && CVodeSetStopTime(integrator.mem,integrator.opts.saveat[k])
            looped = false
            while integrator.tdir*integrator.tout[end] < integrator.tdir*integrator.opts.saveat[k]
                looped = true
                flag = @checkflag CVode(integrator.mem, integrator.opts.saveat[k], integrator.u, integrator.tout, CV_ONE_STEP)
                (flag < 0) && break
                if integrator.opts.save_everystep
                    save_value!(integrator.sol.u,integrator.u,uType,integrator.sizeu)
                    push!(integrator.sol.t, integrator.tout...)
                    if integrator.opts.dense
                      flag = @checkflag CVodeGetDky(
                                              integrator.mem, integrator.tout[1], Cint(1), integrator.u)
                      (flag < 0) && break
                      save_value!(integrator.sol.k,integrator.u,uType,integrator.sizeu)
                    end
                end
                (flag < 0) && break
            end
            (flag < 0) && break
            if looped
                # Fix the end
                if uType <: Number
                    integrator.u[1] = integrator.sol.u[end]
                    flag = @checkflag CVodeGetDky(integrator.mem, integrator.opts.saveat[k], Cint(0), integrator.u)
                    integrator.sol.u[end] = first(integrator.u)
                elseif uType <: Vector
                    flag = @checkflag CVodeGetDky(integrator.mem,
                                                 integrator.opts.saveat[k], Cint(0), integrator.sol.u[end])
                else # Array
                    flag = @checkflag CVodeGetDky(integrator.mem,
                                            integrator.opts.saveat[k], Cint(0), vec(integrator.sol.u[end]))
                end
                integrator.sol.t[end] = integrator.opts.saveat[k]
            else # Just push another value
                flag = @checkflag CVodeGetDky(integrator.mem, integrator.opts.saveat[k], Cint(0), integrator.u)
                save_value!(integrator.sol.u,integrator.u,uType,integrator.sizeu)
                push!(integrator.sol.t, integrator.opts.saveat[k]...)
                if integrator.opts.dense
                    flag = @checkflag CVodeGetDky(integrator.mem, integrator.opts.saveat[k], Cint(1), integrator.u)
                    save_value!(integrator.sol.k,integrator.u,uType,integrator.sizeu)
                end
            end
            (flag < 0) && break
        end
    else # save_everystep == false, so use CV_NORMAL style
        for k in 1:length(integrator.opts.saveat)
            integrator.opts.saveat[k] ∈ integrator.opts.tstops && CVodeSetStopTime(integrator.mem,integrator.opts.saveat[k])
            flag = @checkflag CVode(integrator.mem, integrator.opts.saveat[k], integrator.u, integrator.tout, CV_NORMAL)
            save_value!(integrator.sol.u,integrator.u,uType,integrator.sizeu)
            push!(integrator.sol.t, integrator.opts.saveat[k]...)
            if integrator.opts.dense
              flag = @checkflag CVodeGetDky(integrator.mem, integrator.opts.saveat[k], Cint(1), integrator.u)
              save_value!(integrator.sol.k,integrator.u,uType,integrator.sizeu)
              push!(integrator.sol.k, integrator.u)
            end
            (flag < 0) && break
        end
    end

    empty!(integrator.mem);
    if has_analytic(integrator.sol.prob.f)
        calculate_solution_errors!(integrator.sol;
        timeseries_errors=integrator.opts.timeseries_errors,
        dense_errors=integrator.opts.dense_errors)
    end
    solution_new_retcode(integrator.sol,interpret_sundials_retcode(flag))
end

function save_value!(save_array,val,::Type{T},sizeu) where T <: Number
    push!(save_array,first(val))
end
function save_value!(save_array,val,::Type{T},sizeu) where T <: Vector
    push!(save_array,copy(val))
end
function save_value!(save_array,val,::Type{T},sizeu) where T <: Array
    push!(save_array,reshape(copy(val),sizeu))
end

## Solve for DAEs uses IDA

function solve{uType, duType, tType, isinplace, LinearSolver}(
    prob::AbstractDAEProblem{uType, duType, tType, isinplace},
    alg::SundialsDAEAlgorithm{LinearSolver},
    timeseries=[], ts=[], ks=[];

    verbose=true,
    dt=nothing, dtmax=0.0,
    save_start=true,
    callback=nothing, abstol=1/10^6, reltol=1/10^3,
    saveat=Float64[], tstops=Float64[], maxiter=Int(1e5),
    timeseries_errors=true,
    dense_errors = false,
    save_everystep=isempty(saveat), dense=save_everystep,
    save_timeseries=nothing,
    userdata=nothing,
    kwargs...)

    if verbose
        warned = !isempty(kwargs) && check_keywords(alg, kwargs, warnida)
        if !(typeof(prob.f) <: AbstractParameterizedFunction)
            if has_tgrad(prob.f)
                warn("Explicit t-gradient given to this stiff solver is ignored.")
                warned = true
            end
        end
        warned && warn_compat()
    end

    if callback != nothing || prob.callback != nothing
        error("Sundials is not compatible with callbacks.")
    end

    tspan = prob.tspan
    t0 = tspan[1]

    tdir = sign(tspan[2]-tspan[1])

    if typeof(saveat) <: Number
        saveat_vec = convert(Vector{tType},saveat+tspan[1]:saveat:(tspan[end]-saveat))
        # Exclude the endpoint because of floating point issues
    else
        saveat_vec = convert(Vector{tType}, collect(saveat))
    end

    if !isempty(saveat_vec) && saveat_vec[end] == tspan[2]
        pop!(saveat_vec)
    end

    if !isempty(saveat_vec) && saveat_vec[1] == tspan[1]
        save_ts = sort(unique([saveat_vec[2:end];tspan[2];tstops]))
    else
        save_ts = sort(unique([saveat_vec;tspan[2];tstops]))
    end

    if typeof(prob.u0) <: Number
        u0 = [prob.u0]
    else
        u0 = vec(deepcopy(prob.u0))
    end

    if typeof(prob.du0) <: Number
        du0 = [prob.du0]
    else
        du0 = vec(deepcopy(prob.du0))
    end

    sizeu = size(prob.u0)
    sizedu = size(prob.du0)

    ### Fix the more general function to Sundials allowed style
    if !isinplace && (typeof(prob.u0)<:Vector{Float64} || typeof(prob.u0)<:Number)
        f! = (t, u, du, out) -> (out[:] = prob.f(t, u, du); 0)
    elseif !isinplace && typeof(prob.u0)<:AbstractArray
        f! = (t, u, du, out) -> (out[:] = vec(prob.f(t, reshape(u, sizeu), reshape(du, sizedu)));
                                 0)
    elseif typeof(prob.u0)<:Vector{Float64}
        f! = prob.f
    else # Then it's an in-place function on an abstract array
        f! = (t, u, du, out) -> (prob.f(t, reshape(u, sizeu), reshape(du, sizedu), out);
                                 u = vec(u); du=vec(du); 0)
    end

    mem_ptr = IDACreate()
    (mem_ptr == C_NULL) && error("Failed to allocate IDA solver object")
    mem = Handle(mem_ptr)

    ures = Vector{uType}()
    dures = Vector{uType}()
    ts   = [t0]


    userfun = FunJac(f!,(t,u,du,gamma,J) -> f!(Val{:jac},t,u,du,gamma,J))
    u0nv = NVector(u0)
    flag = @checkflag IDAInit(mem, cfunction(idasolfun,
                                             Cint, (realtype, N_Vector, N_Vector,
                                                    N_Vector, Ref{typeof(userfun)})),
                              t0, convert(N_Vector, u0),
                              convert(N_Vector, du0))
    dt != nothing && (flag = @checkflag IDASetInitStep(mem, dt))
    flag = @checkflag IDASetUserData(mem, userfun)
    flag = @checkflag IDASetMaxStep(mem, dtmax)
    flag = @checkflag IDASStolerances(mem, reltol, abstol)
    flag = @checkflag IDASetMaxNumSteps(mem, maxiter)
    flag = @checkflag IDASetMaxOrd(mem,alg.max_order)
    flag = @checkflag IDASetMaxErrTestFails(mem,alg.max_error_test_failures)
    flag = @checkflag IDASetNonlinConvCoef(mem,alg.nonlinear_convergence_coefficient)
    flag = @checkflag IDASetMaxNonlinIters(mem,alg.max_nonlinear_iters)
    flag = @checkflag IDASetMaxConvFails(mem,alg.max_convergence_failures)
    flag = @checkflag IDASetNonlinConvCoefIC(mem,alg.nonlinear_convergence_coefficient_ic)
    flag = @checkflag IDASetMaxNumStepsIC(mem,alg.max_num_steps_ic)
    flag = @checkflag IDASetMaxNumJacsIC(mem,alg.max_num_jacs_ic)
    flag = @checkflag IDASetMaxNumItersIC(mem,alg.max_num_iters_ic)
    #flag = @checkflag IDASetMaxBacksIC(mem,alg.max_num_backs_ic) # Needs newer version?
    flag = @checkflag IDASetLineSearchOffIC(mem,alg.use_linesearch_ic)

    if LinearSolver == :Dense
        flag = @checkflag IDADense(mem, length(u0))
    elseif LinearSolver == :Band
        flag = @checkflag IDABand(mem, length(u0), alg.jac_upper, alg.jac_lower)
    elseif LinearSolver == :Diagonal
        flag = @checkflag IDADiag(mem)
    elseif LinearSolver == :GMRES
        flag = @checkflag IDASpgmr(mem, PREC_NONE, alg.krylov_dim)
    elseif LinearSolver == :BCG
        flag = @checkflag IDASpgmr(mem, PREC_NONE, alg.krylov_dim)
    elseif LinearSolver == :TFQMR
        flag = @checkflag IDASptfqmr(mem, PREC_NONE, alg.krylov_dim)
    end

    if has_jac(prob.f)
      jac = cfunction(idajac,
                      Cint,
                      (Clong,
                       realtype,
                       realtype,
                       N_Vector,
                       N_Vector,
                       N_Vector,
                       DlsMat,
                       Ref{typeof(userfun)},
                       N_Vector,
                       N_Vector,
                       N_Vector))
      flag = @checkflag IDASetUserData(mem, userfun)
      flag = @checkflag IDADlsSetDenseJacFn(mem, jac)
    end

    utmp = NVector(copy(u0))
    dutmp = NVector(copy(u0))
    tout = [tspan[1]]

    rtest = zeros(length(u0))
    f!(t0, u0, du0, rtest)
    if any(abs.(rtest) .>= reltol)
        if prob.differential_vars === nothing
            error("Must supply differential_vars argument to DAEProblem constructor to use IDA initial value solver.")
        end
        flag = @checkflag IDASetId(mem, collect(Float64, prob.differential_vars))
        flag = @checkflag IDACalcIC(mem, IDA_YA_YDP_INIT, save_ts[1])
    end

    if save_start
      save_value!(ures,u0,uType,sizeu)
      if dense
        save_value!(dures,du0,uType,sizedu) # Does this need to update for IDACalcIC?
      end
    end

    if flag >= 0
        # The Inner Loops : Style depends on save_everystep
        if save_everystep
            for k in 1:length(save_ts)
                save_ts[k] ∈ tstops && IDASetStopTime(mem,save_ts[k])
                looped = false
                while tdir*tout[end] < tdir*save_ts[k]
                    looped = true
                    flag = @checkflag IDASolve(mem, save_ts[k], tout, utmp, dutmp, IDA_ONE_STEP)
                    (flag < 0) && break
                    save_value!(ures,utmp,uType,sizeu)
                    push!(ts, tout...)
                    if dense
                        save_value!(dures,dutmp,uType,sizedu)
                    end
                end
                (flag < 0) && break
                if looped
                    # Fix the end
                    flag = @checkflag IDAGetDky(mem, save_ts[k], Cint(0), ures[end])
                    ts[end] = save_ts[k]
                else # Just push another value
                    flag = @checkflag IDAGetDky(mem, save_ts[k], Cint(0), utmp)
                    (flag < 0) && break
                    save_value!(ures,utmp,uType,sizeu)
                    if dense
                        flag = @checkflag IDAGetDky(
                                              mem, save_ts[k], Cint(1), dutmp)
                        (flag < 0) && break
                        save_value!(dures,dutmp,uType,sizedu)
                    end
                    push!(ts, save_ts[k]...)
                end
                (flag < 0) && break
            end
        else # save_everystep == false, so use IDA_NORMAL style
            for k in 1:length(save_ts)
                flag = @checkflag IDASolve(mem, save_ts[k], tout, utmp, dutmp, IDA_NORMAL)
                (flag < 0) && break
                save_value!(ures,utmp,uType,sizeu)
                if dense
                    save_value!(dures,dutmp,uType,sizedu)
                end
                push!(ts, save_ts[k]...)
            end
        end
        retcode = interpret_sundials_retcode(flag)
    else
        retcode = :InitialFailure
    end

    ### Finishing Routine

    empty!(mem);

    build_solution(prob, alg, ts, ures,
                   dense = dense,
                   du = dures,
                   timeseries_errors = timeseries_errors,
                   dense_errors = dense_errors,
                   retcode = retcode)
end # function solve

function interpret_sundials_retcode(flag)
  flag == 0 && return :Success
  flag == -1 && return :MaxIters
  (flag == -2 || flag == -3) && return :Unstable
  flag == -4 && return :ConvergenceFailure
  return :Failure
end
