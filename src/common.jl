## Common Interface Solve Functions

function solve{uType, tType, isinplace, Method, LinearSolver}(
    prob::AbstractODEProblem{uType, tType, isinplace},
    alg::SundialsODEAlgorithm{Method,LinearSolver},
    timeseries=[], ts=[], ks=[];
    dt = nothing, dense = true,
    callback=nothing, abstol=1/10^6, reltol=1/10^3,
    saveat=Float64[], tstops=Float64[],
    maxiter=Int(1e5),
    dtmin = 0.0, dtmax = 0.0,
    timeseries_errors=true, save_everystep=isempty(saveat),
    save_start = true,
    save_timeseries = nothing,
    userdata=nothing, kwargs...)

    if save_timeseries != nothing
        warn("save_timeseries is deprecated. Use save_everystep instead")
        save_everystep = save_timeseries
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
      saveat_vec = convert(Vector{tType},saveat+tspan[1]:saveat:(tspan[end]-saveat))
      # Exclude the endpoint because of floating point issues
    else
      saveat_vec =  convert(Vector{tType},collect(saveat))
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
        f! = (t, u, du) -> (du[:] = prob.f(t, u); 0)
    elseif !isinplace && typeof(prob.u0)<:AbstractArray
        f! = (t, u, du) -> (du[:] = vec(prob.f(t, reshape(u, sizeu))); 0)
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

    ures  = Vector{Vector{Float64}}()
    dures = Vector{Vector{Float64}}()
    save_start ? ts = [t0] : ts = Float64[]

    userfun = UserFunctionAndData(f!, userdata)
    u0nv = NVector(u0)
    flag = @checkflag CVodeInit(mem,
                          cfunction(cvodefun, Cint,
                          (realtype, N_Vector,
                          N_Vector, Ref{typeof(userfun)})),
                          t0, convert(N_Vector, u0nv))
    dt != nothing && (flag = @checkflag CVodeSetInitStep(mem,dt))
    flag = @checkflag CVodeSetMinStep(mem,dtmin)
    flag = @checkflag CVodeSetMaxStep(mem,dtmax)
    flag = @checkflag CVodeSetUserData(mem, userfun)
    flag = @checkflag CVodeSStolerances(mem, reltol, abstol)
    flag = @checkflag CVodeSetMaxNumSteps(mem, maxiter)
    flag = @checkflag CVodeSetMaxOrd(mem,alg.max_order)
    flag = @checkflag CVodeSetMaxHnilWarns(mem,alg.max_hnil_warns)
    flag = @checkflag CVodeSetStabLimDet(mem,alg.stability_limit_detect)
    flag = @checkflag CVodeSetMaxErrTestFails(mem,alg.max_error_test_failures)
    flag = @checkflag CVodeSetMaxNonlinIters(mem,alg.max_nonlinear_iters)
    flag = @checkflag CVodeSetMaxConvFails(mem,alg.max_convergence_failures)

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

    utmp = NVector(copy(u0))
    tout = [tspan[1]]

    if save_start
      push!(ures, copy(u0))
      if dense
        f!(tspan[1],u0,utmp)
        push!(dures,utmp)
      end
    end

    # The Inner Loops : Style depends on save_everystep
    if save_everystep
        for k in 1:length(save_ts)
            save_ts[k] ∈ tstops && CVodeSetStopTime(mem,save_ts[k])
            looped = false
            while tdir*tout[end] < tdir*save_ts[k]
                looped = true
                flag = @checkflag CVode(mem,
                                save_ts[k], utmp, tout, CV_ONE_STEP)
                push!(ures, copy(utmp))
                push!(ts, tout...)
                if dense
                  flag = @checkflag CVodeGetDky(
                                          mem, tout[1], Cint(1), utmp)
                  push!(dures, copy(utmp))
                end
                (flag < 0) && break
            end
            (flag < 0) && break
            if looped
                # Fix the end
                flag = @checkflag CVodeGetDky(
                                        mem, save_ts[k], Cint(0), ures[end])
                ts[end] = save_ts[k]
            else # Just push another value
                flag = @checkflag CVodeGetDky(
                                        mem, save_ts[k], Cint(0), utmp)
                push!(ures, copy(utmp))
                push!(ts, save_ts[k]...)
                if dense
                  flag = @checkflag CVodeGetDky(
                                          mem, save_ts[k], Cint(1), utmp)
                  push!(dures, copy(utmp))
                end
            end
            (flag < 0) && break
        end
    else # save_everystep == false, so use CV_NORMAL style
        for k in 1:length(save_ts)
            save_ts[k] ∈ tstops && CVodeSetStopTime(mem,save_ts[k])
            flag = @checkflag CVode(mem,
                                save_ts[k], utmp, tout, CV_NORMAL)
            push!(ures,copy(utmp))
            push!(ts, save_ts[k]...)
            if dense
              flag = @checkflag CVodeGetDky(
                                      mem, save_ts[k], Cint(1), utmp)
              push!(dures, copy(utmp))
            end
            (flag < 0) && break
        end
    end

    ### Finishing Routine

    timeseries = Vector{uType}(0)
    if typeof(prob.u0)<:Number
        for i=1:length(ures)
            push!(timeseries, ures[i][1])
        end
    else
        for i=1:length(ures)
            push!(timeseries, reshape(ures[i], sizeu))
        end
    end

    if dense
      du_timeseries = Vector{uType}(0)
      if typeof(prob.u0)<:Number
          for i=1:length(ures)
              push!(du_timeseries, dures[i][1])
          end
      else
          for i=1:length(ures)
              push!(du_timeseries, reshape(dures[i], sizeu))
          end
      end
    else
      du_timeseries = dures
    end

    empty!(mem);

    build_solution(prob, alg, ts, timeseries,
                      dense = dense,
                      du = du_timeseries,
                      timeseries_errors = timeseries_errors,
                      retcode = :Success)
end

## Solve for DAEs uses IDA

function solve{uType, duType, tType, isinplace, LinearSolver}(
    prob::AbstractDAEProblem{uType, duType, tType, isinplace},
    alg::SundialsDAEAlgorithm{LinearSolver},
    timeseries=[], ts=[], ks=[];
    dt = nothing, dense = true,
    dtmax = 0.0,
    save_start = true,
    callback=nothing, abstol=1/10^6, reltol=1/10^3,
    saveat=Float64[], tstops=Float64[], maxiter=Int(1e5),
    timeseries_errors=true, save_everystep=isempty(saveat),
    save_timeseries = nothing,
    userdata=nothing, kwargs...)

    if save_timeseries != nothing
        warn("save_timeseries is deprecated. Use save_everystep instead")
        save_everystep = save_timeseries
    end

    if callback != nothing || prob.callback != nothing
        error("Sundials is not compatible with callbacks.")
    end

    tspan = prob.tspan
    t0 = tspan[1]

    tdir = sign(tspan[2]-tspan[1])

    if typeof(saveat) <: Number
      saveat_vec = convert(Vector{tType},saveat:saveat:(tspan[end]-saveat))
      # Exclude the endpoint because of floating point issues
    else
      saveat_vec =  convert(Vector{tType},collect(saveat))
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
        f! = (t, u, du, out) -> (out[:] = vec(prob.f(t, reshape(u, sizeu), reshape(du, sizedu))); 0)
    elseif typeof(prob.u0)<:Vector{Float64}
        f! = prob.f
    else # Then it's an in-place function on an abstract array
        f! = (t, u, du, out) -> (prob.f(t, reshape(u, sizeu), reshape(du, sizedu), out);
                          u = vec(u); du=vec(du); 0)
    end

    mem_ptr = IDACreate()
    (mem_ptr == C_NULL) && error("Failed to allocate IDA solver object")
    mem = Handle(mem_ptr)

    ures = Vector{Vector{Float64}}()
    dures = Vector{Vector{Float64}}()
    ts   = [t0]

    userfun = UserFunctionAndData(f!, userdata)
    u0nv = NVector(u0)
    flag = @checkflag IDAInit(mem, cfunction(idasolfun,
                              Cint, (realtype, N_Vector, N_Vector,
                              N_Vector, Ref{typeof(userfun)})),
                              t0, convert(N_Vector, u0),
                              convert(N_Vector, du0))
    dt != nothing && (flag = @checkflag IDASetInitStep(mem,dt))
    flag = @checkflag IDASetUserData(mem, userfun)
    flag = @checkflag IDASetMaxStep(mem,dtmax)
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
        flag = @checkflag IDACalcIC(mem, IDA_YA_YDP_INIT, save_ts[2])
    end

    if save_start
      push!(ures, copy(u0))
      if dense
        push!(dures,du0) # Does this need to update for IDACalcIC?
      end
    end

    # The Inner Loops : Style depends on save_everystep
    if save_everystep
        for k in 1:length(save_ts)
            save_ts[k] ∈ tstops && IDASetStopTime(mem,save_ts[k])
            looped = false
            while tdir*tout[end] < tdir*save_ts[k]
                looped = true
                flag = @checkflag IDASolve(mem,
                                save_ts[k], tout, utmp, dutmp, IDA_ONE_STEP)
                (flag < 0) && break
                push!(ures,copy(utmp))
                push!(ts, tout...)
                if dense
                    push!(dures,copy(dutmp))
                end
            end
            (flag < 0) && break
            if looped
                # Fix the end
                flag = @checkflag IDAGetDky(
                                        mem, save_ts[k], Cint(0), ures[end])
                ts[end] = save_ts[k]
            else # Just push another value
                flag = @checkflag IDAGetDky(
                                        mem, save_ts[k], Cint(0), utmp)
                push!(ures, copy(utmp))
                if dense
                    flag = @checkflag IDAGetDky(
                                          mem, save_ts[k], Cint(1), dutmp)
                    push!(dures,copy(dutmp))
                end
                push!(ts, save_ts[k]...)
            end
            (flag < 0) && break
        end
    else # save_everystep == false, so use IDA_NORMAL style
        for k in 1:length(save_ts)
            flag = @checkflag IDASolve(mem,
                                save_ts[k], tout, utmp, dutmp, IDA_NORMAL)
            (flag < 0) && break
            push!(ures, copy(utmp))
            if dense
                push!(dures,copy(dutmp))
            end
            push!(ts, save_ts[k]...)
        end
    end

    ### Finishing Routine

    timeseries = Vector{uType}(0)
    if typeof(prob.u0)<:Number
        for i=1:length(ures)
            push!(timeseries, ures[i][1])
        end
    else
        for i=1:length(ures)
            push!(timeseries, reshape(ures[i], sizeu))
        end
    end

    if dense
      du_timeseries = Vector{uType}(0)
      if typeof(prob.u0)<:Number
          for i=1:length(ures)
              push!(du_timeseries, dures[i][1])
          end
      else
          for i=1:length(ures)
              push!(du_timeseries, reshape(dures[i], sizeu))
          end
      end
    else
      du_timeseries = dures
    end
    empty!(mem);

    build_solution(prob, alg, ts, timeseries,
                      dense = dense,
                      du = du_timeseries,
                      timeseries_errors = timeseries_errors,
                      retcode = :Success)
end
