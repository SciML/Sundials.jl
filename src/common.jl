function solve{uType,tType,isinplace,algType<:SundialsAlgorithm,F}(
    prob::AbstractODEProblem{uType,tType,Val{isinplace},F},
    alg::Type{algType},timeseries=[],ts=[],ks=[];
    callback=()->nothing,abstol=1/10^6,reltol=1/10^3,
    saveat=Float64[],adaptive=true,
    timeseries_errors=true,save_timeseries=true,
    userdata=nothing,kwargs...)

    tspan = prob.tspan
    t0 = tspan[1]
    T = tspan[end]

    save_ts = sort(unique([t0;saveat;T]))

    if T < save_ts[end]
        error("Final saving timepoint is past the solving timespan")
    end
    if t0 > save_ts[1]
        error("First saving timepoint is before the solving timespan")
    end

    if typeof(prob.u0) <: Number
        u0 = [prob.u0]
    else
        u0 = vec(deepcopy(prob.u0))
    end

    sizeu = size(prob.u0)

    ### Fix the more general function to Sundials allowed style
    if !isinplace && (typeof(prob.u0)<:Vector{Float64} || typeof(prob.u0)<:Number)
        f! = (t,u,du) -> (du[:] = prob.f(t,u); 0)
    elseif !isinplace && typeof(prob.u0)<:AbstractArray
        f! = (t,u,du) -> (du[:] = vec(prob.f(t,reshape(u,sizeu))); 0)
    elseif typeof(prob.u0)<:Vector{Float64}
        f! = prob.f
    else # Then it's an in-place function on an abstract array
        f! = (t,u,du) -> (prob.f(t,reshape(u,sizeu),reshape(du,sizeu));
                          u = vec(u); du=vec(du); 0)
    end

    if alg == CVODE_BDF
        mem = Sundials.CVodeCreate(Sundials.CV_BDF, Sundials.CV_NEWTON)
    elseif alg ==  CVODE_Adams
        mem = Sundials.CVodeCreate(Sundials.CV_ADAMS, Sundials.CV_FUNCTIONAL)
    end

    if mem == Sundials.C_NULL
        error("Failed to allocate CVODE solver object")
    end

    ures = Vector{Vector{Float64}}()
    ts   = [t0]

    try
        userfun = Sundials.UserFunctionAndData(f!, userdata)
        u0nv = Sundials.NVector(u0)
        flag = Sundials.@checkflag Sundials.CVodeInit(mem,
                              cfunction(Sundials.cvodefun, Cint,
                              (Sundials.realtype, Sundials.N_Vector,
                              Sundials.N_Vector, Ref{typeof(userfun)})),
                              t0, convert(Sundials.N_Vector, u0nv))
        flag = Sundials.@checkflag Sundials.CVodeSetUserData(mem, userfun)
        flag = Sundials.@checkflag Sundials.CVodeSStolerances(mem, reltol, abstol)
        flag = Sundials.@checkflag Sundials.CVDense(mem, length(u0))
        push!(ures, copy(u0))
        u = Sundials.NVector(copy(u0))
        utmp = Sundials.NVector(copy(u0))
        tout = [0.0]

        # The Inner Loops : Style depends on save_timeseries
        if save_timeseries
            for k in 2:length(save_ts)
                looped = false
                while tout[end] < save_ts[k]
                    looped = true
                    flag = Sundials.@checkflag Sundials.CVode(mem,
                                    save_ts[k], u, tout, Sundials.CV_ONE_STEP)
                    push!(ures,copy(u))
                    push!(ts, tout...)
                end
                if looped
                    # Fix the end
                    flag = Sundials.@checkflag Sundials.CVodeGetDky(
                                            mem, save_ts[k], Cint(0), ures[end])
                    ts[end] = save_ts[k]
                else # Just push another value
                    flag = Sundials.@checkflag Sundials.CVodeGetDky(
                                            mem, save_ts[k], Cint(0), ures[end])
                    push!(ures,copy(u))
                    push!(ts, save_ts[k]...)
                end
        end
        else # save_timeseries == false, so use CV_NORMAL style
            for k in 2:length(save_ts)
                flag = Sundials.@checkflag Sundials.CVode(mem,
                                    save_ts[k], utmp, tout, Sundials.CV_NORMAL)
                push!(ures,copy(utmp))
            end
            ts = save_ts
        end
    finally
        Sundials.CVodeFree(Ref{Sundials.CVODEMemPtr}(mem))
    end

    ### Finishing Routine

    timeseries = Vector{uType}(0)
    if typeof(prob.u0)<:Number
        for i=1:length(ures)
            push!(timeseries,ures[i][1])
        end
    else
        for i=1:length(ures)
            push!(timeseries,reshape(ures[i],sizeu))
        end
    end

    build_ode_solution(prob,alg,ts,timeseries,
                      timeseries_errors = timeseries_errors)
end
