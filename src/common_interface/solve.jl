## Common Interface Solve Functions

function DiffEqBase.solve(
  prob::Union{DiffEqBase.AbstractODEProblem,DiffEqBase.AbstractDAEProblem},
  alg::algType,timeseries=[],ts=[],ks=[],
  recompile::Type{Val{recompile_flag}}=Val{true};
  kwargs...) where {algType<:Union{SundialsODEAlgorithm,SundialsDAEAlgorithm},
                    recompile_flag}

  integrator = DiffEqBase.init(prob,alg,timeseries,ts,ks;kwargs...)
  if integrator.sol.retcode == :Default
    solve!(integrator)
  end
  integrator.sol
end

function DiffEqBase.init(
    prob::DiffEqBase.AbstractODEProblem{uType, tupType, isinplace},
    alg::SundialsODEAlgorithm{Method,LinearSolver},
    timeseries=[], ts=[], ks=[];

    verbose=true,
    callback=nothing, abstol=1/10^6, reltol=1/10^3,
    saveat=Float64[], tstops=Float64[],
    maxiters=Int(1e5),
    dt = nothing, dtmin = 0.0, dtmax = 0.0,
    timeseries_errors=true,
    dense_errors = false,
    save_everystep=isempty(saveat), 
    save_start = save_everystep || isempty(saveat) || typeof(saveat) <: Number ? true : prob.tspan[1] in saveat,
    save_end = save_everystep || isempty(saveat) || typeof(saveat) <: Number ? true : prob.tspan[2] in saveat,
    dense = save_everystep && isempty(saveat),
    save_timeseries = nothing,
    advance_to_tstop = false,stop_at_next_tstop=false,
    userdata=nothing,
    kwargs...) where {uType, tupType, isinplace, Method, LinearSolver}

    tType = eltype(tupType)

    if verbose
        warned = !isempty(kwargs) && check_keywords(alg, kwargs, warnlist)
        if !(typeof(prob.f) <: DiffEqBase.AbstractParameterizedFunction) && typeof(alg) <: CVODE_BDF
            if DiffEqBase.has_tgrad(prob.f)
                @warn("Explicit t-gradient given to this stiff solver is ignored.")
                warned = true
            end
        end
        warned && warn_compat()
    end

    if prob.mass_matrix != I
        error("This solver is not able to use mass matrices.")
    end

    callbacks_internal = CallbackSet(callback,prob.callback)

    tspan = prob.tspan
    t0 = tspan[1]

    tdir = sign(tspan[2]-tspan[1])

    tstops_internal, saveat_internal =
      tstop_saveat_disc_handling(tstops,saveat,tdir,tspan,tType)

    if typeof(prob.u0) <: Number
        u0 = [prob.u0]
    else
        u0 = vec(copy(prob.u0))
    end

    sizeu = size(prob.u0)

    ### Fix the more general function to Sundials allowed style
    if !isinplace && typeof(prob.u0)<:Number
        f! = (du, u, p, t) -> (du .= prob.f(first(u), p, t); Cint(0))
    elseif !isinplace && typeof(prob.u0)<:Vector{Float64}
        f! = (du, u, p, t) -> (du .= prob.f(u, p, t); Cint(0))
    elseif !isinplace && typeof(prob.u0)<:AbstractArray
        f! = (du, u, p, t) -> (du .= vec(prob.f(reshape(u, sizeu), p, t)); Cint(0))
    elseif typeof(prob.u0)<:Vector{Float64}
        f! = prob.f
    else # Then it's an in-place function on an abstract array
        f! = (du, u, p, t) -> (prob.f(reshape(du, sizeu), reshape(u, sizeu), p, t);
                               du=vec(du); 0)
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

    !verbose && CVodeSetErrHandlerFn(mem,cfunction(null_error_handler, Nothing,
                                    (Cint, Char,
                                    Char, Ptr{Cvoid})),C_NULL)

    ures  = Vector{uType}()
    dures = Vector{uType}()
    save_start ? ts = [t0] : ts = Float64[]

    userfun = FunJac(f!,(J,u,p,t) -> f!(Val{:jac},J,u,p,t),prob.p,prob.jac_prototype)
    u0nv = NVector(u0)
    flag = CVodeInit(mem,
                    old_cfunction(cvodefunjac, Cint,
                              Tuple{realtype, N_Vector,
                               N_Vector, Ref{typeof(userfun)}}),
                    t0, convert(N_Vector, u0nv))

    dt != nothing && (flag = CVodeSetInitStep(mem, dt))
    flag = CVodeSetMinStep(mem, dtmin)
    flag = CVodeSetMaxStep(mem, dtmax)
    flag = CVodeSetUserData(mem, userfun)
    flag = CVodeSStolerances(mem, reltol, abstol)
    flag = CVodeSetMaxNumSteps(mem, maxiters)
    flag = CVodeSetMaxOrd(mem, alg.max_order)
    flag = CVodeSetMaxHnilWarns(mem, alg.max_hnil_warns)
    flag = CVodeSetStabLimDet(mem, alg.stability_limit_detect)
    flag = CVodeSetMaxErrTestFails(mem, alg.max_error_test_failures)
    flag = CVodeSetMaxNonlinIters(mem, alg.max_nonlinear_iters)
    flag = CVodeSetMaxConvFails(mem, alg.max_convergence_failures)

    if Method == :Newton # Only use a linear solver if it's a Newton-based method
        if LinearSolver == :Dense
            A = SUNDenseMatrix(length(u0),length(u0))
            LS = SUNDenseLinearSolver(u0,A)
            flag = CVDlsSetLinearSolver(mem, LS, A)
            _A = MatrixHandle(A,DenseMatrix())
            _LS = LinSolHandle(LS,Dense())
        elseif LinearSolver == :Band
            A = SUNBandMatrix(length(u0), alg.jac_upper, alg.jac_lower,
                                       alg.stored_upper)
            LS = SUNBandLinearSolver(u0,A)
            flag = CVDlsSetLinearSolver(mem, LS, A)
            _A = MatrixHandle(A,BandMatrix())
            _LS = LinSolHandle(LS,Band())
        elseif LinearSolver == :Diagonal
            flag = CVDiag(mem)
            _A = nothing
            _LS = nothing
        elseif LinearSolver == :GMRES
            LS = SUNSPGMR(u0, PREC_NONE, alg.krylov_dim)
            flag = CVSpilsSetLinearSolver(mem, LS)
            _A = nothing
            _LS = Sundials.LinSolHandle(LS,Sundials.SPGMR())
        elseif LinearSolver == :FGMRES
            LS = SUNSPFGMR(u0, PREC_NONE, alg.krylov_dim)
            flag = CVSpilsSetLinearSolver(mem, LS)
            _A = nothing
            _LS = LinSolHandle(LS,SPFGMR())
        elseif LinearSolver == :BCG
            LS = SUNSPBCGS(u0, PREC_NONE, alg.krylov_dim)
            flag = CVSpilsSetLinearSolver(mem, LS)
            _A = nothing
            _LS = LinSolHandle(LS,SPBCGS())
        elseif LinearSolver == :PCG
            LS = SUNPCG(u0, PREC_NONE, alg.krylov_dim)
            flag = CVSpilsSetLinearSolver(mem, LS)
            _A = nothing
            _LS = LinSolHandle(LS,PCG())
        elseif LinearSolver == :TFQMR
            LS = SUNSPTFQMR(u0, PREC_NONE, alg.krylov_dim)
            flag = CVSpilsSetLinearSolver(mem, LS)
            _A = nothing
            _LS = LinSolHandle(LS,PTFQMR())
	    elseif LinearSolver == :KLU
	        nnz = length(nonzeros(prob.jac_prototype))
	        A = SUNSparseMatrix(length(u0),length(u0), nnz, CSC_MAT)
            LS = SUNKLU(u0, A)
            flag = CVDlsSetLinearSolver(mem, LS, A)
            _A = MatrixHandle(A,SparseMatrix())
            _LS = LinSolHandle(LS,KLU())
        end
    else
        _A = nothing
        _LS = nothing
    end

    if DiffEqBase.has_jac(prob.f)
      jac = old_cfunction(cvodejac,
                      Cint,
                      Tuple{realtype,
                       N_Vector,
                       N_Vector,
                       SUNMatrix,
                       Ref{typeof(userfun)},
                       N_Vector,
                       N_Vector,
                       N_Vector})
      flag = CVodeSetUserData(mem, userfun)
      flag = CVDlsSetJacFn(mem, jac)
    else
        jac = nothing
    end

    _u0 = copy(u0)
    utmp = NVector(_u0)
    callback == nothing ? tmp = nothing : tmp = similar(u0)
    callback == nothing ? uprev = nothing : uprev = similar(u0)
    tout = [tspan[1]]

    if save_start
      save_value!(ures,u0,uType,sizeu)
      if dense
        f!(_u0,u0,prob.p,tspan[1])
        save_value!(dures,utmp,uType,sizeu)
      end
    end

    sol = DiffEqBase.build_solution(prob, alg, ts, ures,
                   dense = dense,
                   du = dures,
                   interp = dense ? DiffEqBase.HermiteInterpolation(ts,ures,dures) :
                                    DiffEqBase.LinearInterpolation(ts,ures),
                   timeseries_errors = timeseries_errors,
                   calculate_error = false)
    opts = DEOptions(saveat_internal,tstops_internal,save_everystep,dense,
                     timeseries_errors,dense_errors,save_end,
                     callbacks_internal,verbose,advance_to_tstop,stop_at_next_tstop)
    CVODEIntegrator(utmp,prob.p,t0,t0,mem,_LS,_A,sol,alg,f!,userfun,jac,opts,
                       tout,tdir,sizeu,false,tmp,uprev,Cint(flag),false,false)
end # function solve

function DiffEqBase.init(
    prob::DiffEqBase.AbstractODEProblem{uType, tupType, isinplace},
    alg::ARKODE{Method,LinearSolver},
    timeseries=[], ts=[], ks=[];

    verbose=true,
    callback=nothing, abstol=1/10^6, reltol=1/10^3,
    saveat=Float64[], tstops=Float64[],
    maxiters=Int(1e5),
    dt = nothing, dtmin = 0.0, dtmax = 0.0,
    timeseries_errors=true,
    dense_errors = false,
    save_everystep=isempty(saveat), dense = save_everystep,
    save_start = true, save_end = true,
    save_timeseries = nothing,
    advance_to_tstop = false,stop_at_next_tstop=false,
    userdata=nothing,
    kwargs...) where {uType, tupType, isinplace, Method, LinearSolver}

    tType = eltype(tupType)

    if verbose
        warned = !isempty(kwargs) && check_keywords(alg, kwargs, warnlist)
        if !(typeof(prob.f) <: DiffEqBase.AbstractParameterizedFunction) && typeof(alg) <: CVODE_BDF
            if DiffEqBase.has_tgrad(prob.f)
                @warn("Explicit t-gradient given to this stiff solver is ignored.")
                warned = true
            end
        end
        warned && warn_compat()
    end

    if prob.mass_matrix != I
        error("This solver is not able to use mass matrices.")
    end

    callbacks_internal = CallbackSet(callback,prob.callback)

    tspan = prob.tspan
    t0 = tspan[1]

    tdir = sign(tspan[2]-tspan[1])

    tstops_internal, saveat_internal =
      tstop_saveat_disc_handling(tstops,saveat,tdir,tspan,tType)

    if typeof(prob.u0) <: Number
        u0 = [prob.u0]
    else
        u0 = vec(copy(prob.u0))
    end

    sizeu = size(prob.u0)



    mem_ptr = ARKodeCreate()
    (mem_ptr == C_NULL) && error("Failed to allocate ARKODE solver object")
    mem = Handle(mem_ptr)

    !verbose && ARKodeSetErrHandlerFn(mem,cfunction(null_error_handler, Nothing,
                                    (Cint, Char,
                                    Char, Ptr{Cvoid})),C_NULL)

    ures  = Vector{uType}()
    dures = Vector{uType}()
    save_start ? ts = [t0] : ts = Float64[]
    u0nv = NVector(u0)

    ### Fix the more general function to Sundials allowed style
    if !isinplace && typeof(prob.u0)<:Number
        f! = (du, u, p, t) -> (du .= prob.f(first(u), p, t); Cint(0))
    elseif !isinplace && typeof(prob.u0)<:Vector{Float64}
        f! = (du, u, p, t) -> (du .= prob.f(u, p, t); Cint(0))
    elseif !isinplace && typeof(prob.u0)<:AbstractArray
        f! = (du, u, p, t) -> (du .= vec(prob.f(reshape(u, sizeu), p, t)); Cint(0))
    elseif typeof(prob.u0)<:Vector{Float64}
        f! = prob.f
    else # Then it's an in-place function on an abstract array
        f! = (du, u, p, t) -> (prob.f(reshape(du, sizeu), reshape(u, sizeu), p, t);
                               du=vec(du); Cint(0))
    end

    if typeof(prob.problem_type) <: SplitODEProblem

        ### Fix the more general function to Sundials allowed style
        if !isinplace && typeof(prob.u0)<:Number
            f1! = (du, u, p, t) -> (du .= prob.f.f1(first(u), p, t); Cint(0))
            f2! = (du, u, p, t) -> (du .= prob.f.f2(first(u), p, t); Cint(0))
        elseif !isinplace && typeof(prob.u0)<:Vector{Float64}
            f1! = (du, u, p, t) -> (du .= prob.f.f1(u, p, t); Cint(0))
            f2! = (du, u, p, t) -> (du .= prob.f.f2(u, p, t); Cint(0))
        elseif !isinplace && typeof(prob.u0)<:AbstractArray
            f1! = (du, u, p, t) -> (du .= vec(prob.f.f1(reshape(u, sizeu), p, t)); Cint(0))
            f2! = (du, u, p, t) -> (du .= vec(prob.f.f2(reshape(u, sizeu), p, t)); Cint(0))
        elseif typeof(prob.u0)<:Vector{Float64}
            f1! = prob.f.f1
            f2! = prob.f.f2
        else # Then it's an in-place function on an abstract array
            f1! = (du, u, p, t) -> (prob.f.f1(reshape(du, sizeu), reshape(u, sizeu), p, t);
                                   du=vec(du); Cint(0))
            f2! = (du, u, p, t) -> (prob.f.f2(reshape(du, sizeu), reshape(u, sizeu), p, t);
                                  du=vec(du); Cint(0))
        end

        userfun = FunJac(f1!,f2!,(J,u,p,t) -> f!(Val{:jac},J,u,p,t),prob.p,prob.jac_prototype)
        flag = ARKodeInit(mem,
                    old_cfunction(cvodefunjac, Cint,
                             Tuple{realtype, N_Vector,
                             N_Vector, Ref{typeof(userfun)}}),
                    old_cfunction(cvodefunjac2, Cint,
                             Tuple{realtype, N_Vector,
                             N_Vector, Ref{typeof(userfun)}}),
                    t0, convert(N_Vector, u0nv))
    else
        userfun = FunJac(f!,(J,u,p,t) -> f!(Val{:jac},J,u,p,t),prob.p,prob.jac_prototype)
        if alg.stiffness == Explicit()
            flag = ARKodeInit(mem,
                        old_cfunction(cvodefunjac, Cint,
                                 Tuple{realtype, N_Vector,
                                 N_Vector, Ref{typeof(userfun)}}),
                        C_NULL,
                        t0, convert(N_Vector, u0nv))
        elseif alg.stiffness == Implicit()
            flag = ARKodeInit(mem,
                        C_NULL,
                        old_cfunction(cvodefunjac, Cint,
                                  Tuple{realtype, N_Vector,
                                   N_Vector, Ref{typeof(userfun)}}),
                        t0, convert(N_Vector, u0nv))
        end
    end

    dt != nothing && (flag = ARKodeSetInitStep(mem, dt))
    flag = ARKodeSetMinStep(mem, dtmin)
    flag = ARKodeSetMaxStep(mem, dtmax)
    flag = ARKodeSetUserData(mem, userfun)
    flag = ARKodeSStolerances(mem, reltol, abstol)
    flag = ARKodeSetMaxNumSteps(mem, maxiters)
    flag = ARKodeSetMaxHnilWarns(mem, alg.max_hnil_warns)
    flag = ARKodeSetMaxErrTestFails(mem, alg.max_error_test_failures)
    flag = ARKodeSetMaxNonlinIters(mem, alg.max_nonlinear_iters)
    flag = ARKodeSetMaxConvFails(mem, alg.max_convergence_failures)
    flag = ARKodeSetPredictorMethod(mem, alg.predictor_method)
    flag = ARKodeSetNonlinConvCoef(mem, alg.nonlinear_convergence_coefficient)
    flag = ARKodeSetDenseOrder(mem,alg.dense_order)

    if alg.itable == nothing && alg.etable == nothing
        flag = ARKodeSetOrder(mem,alg.order)
    elseif alg.itable == nothing && alg.etable != nothing
        flag = ARKodeSetERKTableNum(mem, alg.etable)
    elseif alg.itable != nothing && alg.etable == nothing
        flag = ARKodeSetIRKTableNum(mem, alg.itable)
    else
        flag = ARKodeSetARKTableNum(mem, alg.itable, alg.etable)
    end

    flag = ARKodeSetNonlinCRDown(mem,alg.crdown)
    flag = ARKodeSetNonlinRDiv(mem, alg.rdiv)
    flag = ARKodeSetDeltaGammaMax(mem, alg.dgmax)
    flag = ARKodeSetMaxStepsBetweenLSet(mem, alg.msbp)
    #flag = ARKodeSetAdaptivityMethod(mem,alg.adaptivity_method,1,0)


    #flag = ARKodeSetFixedStep(mem,)
    alg.set_optimal_params && (flag = ARKodeSetOptimalParams(mem))

    if Method == :Newton # Only use a linear solver if it's a Newton-based method
        if LinearSolver == :Dense
            A = SUNDenseMatrix(length(u0),length(u0))
            LS = SUNDenseLinearSolver(u0,A)
            flag = ARKDlsSetLinearSolver(mem, LS, A)
            _A = MatrixHandle(A,DenseMatrix())
            _LS = LinSolHandle(LS,Dense())
        elseif LinearSolver == :Band
            A = SUNBandMatrix(length(u0), alg.jac_upper, alg.jac_lower,
                                       alg.stored_upper)
            LS = SUNBandLinearSolver(u0,A)
            flag = ARKDlsSetLinearSolver(mem, LS, A)
            _A = MatrixHandle(A,BandMatrix())
            _LS = LinSolHandle(LS,Band())
        elseif LinearSolver == :GMRES
            LS = SUNSPGMR(u0, PREC_NONE, alg.krylov_dim)
            flag = ARKSpilsSetLinearSolver(mem, LS)
            _A = nothing
            _LS = Sundials.LinSolHandle(LS,Sundials.SPGMR())
        elseif LinearSolver == :FGMRES
            LS = SUNSPFGMR(u0, PREC_NONE, alg.krylov_dim)
            flag = ARKSpilsSetLinearSolver(mem, LS)
            _A = nothing
            _LS = LinSolHandle(LS,SPFGMR())
        elseif LinearSolver == :BCG
            LS = SUNSPBCGS(u0, PREC_NONE, alg.krylov_dim)
            flag = ARKSpilsSetLinearSolver(mem, LS)
            _A = nothing
            _LS = LinSolHandle(LS,SPBCGS())
        elseif LinearSolver == :PCG
            LS = SUNPCG(u0, PREC_NONE, alg.krylov_dim)
            flag = ARKSpilsSetLinearSolver(mem, LS)
            _A = nothing
            _LS = LinSolHandle(LS,PCG())
        elseif LinearSolver == :TFQMR
            LS = SUNSPTFQMR(u0, PREC_NONE, alg.krylov_dim)
            flag = ARKSpilsSetLinearSolver(mem, LS)
            _A = nothing
            _LS = LinSolHandle(LS,PTFQMR())
        elseif LinearSolver == :KLU
            nnz = length(nonzeros(prob.jac_prototype))
            A = SUNSparseMatrix(length(u0),length(u0), nnz, CSC_MAT)
            LS = SUNKLU(u0, A)
            flag = ARKDlsSetLinearSolver(mem, LS, A)
            _A = MatrixHandle(A,SparseMatrix())
            _LS = LinSolHandle(LS,KLU())
        end
    elseif Method == :Functional
        ARKodeSetFixedPoint(mem, Clong(alg.krylov_dim))
    else
        _A = nothing
        _LS = nothing
    end

    if DiffEqBase.has_jac(prob.f)
      jac = old_cfunction(cvodejac,
                      Cint,
                      Tuple{realtype,
                       N_Vector,
                       N_Vector,
                       SUNMatrix,
                       Ref{typeof(userfun)},
                       N_Vector,
                       N_Vector,
                       N_Vector})
      flag = ARKodeSetUserData(mem, userfun)
      flag = ARKDlsSetJacFn(mem, jac)
    else
        jac = nothing
    end

    _u0 = copy(u0)
    utmp = NVector(_u0)
    callback == nothing ? tmp = nothing : tmp = similar(u0)
    callback == nothing ? uprev = nothing : uprev = similar(u0)
    tout = [tspan[1]]

    if save_start
      save_value!(ures,u0,uType,sizeu)
      if dense
        f!(_u0,u0,prob.p,tspan[1])
        save_value!(dures,utmp,uType,sizeu)
      end
    end

    sol = DiffEqBase.build_solution(prob, alg, ts, ures,
                   dense = dense,
                   du = dures,
                   interp = dense ? DiffEqBase.HermiteInterpolation(ts,ures,dures) :
                                    DiffEqBase.LinearInterpolation(ts,ures),
                   timeseries_errors = timeseries_errors,
                   calculate_error = false)
    opts = DEOptions(saveat_internal,tstops_internal,save_everystep,dense,
                     timeseries_errors,dense_errors,save_end,
                     callbacks_internal,verbose,advance_to_tstop,stop_at_next_tstop)
    ARKODEIntegrator(utmp,prob.p,t0,t0,mem,_LS,_A,sol,alg,f!,userfun,jac,opts,
                       tout,tdir,sizeu,false,tmp,uprev,Cint(flag),false,false)
end # function solve

function tstop_saveat_disc_handling(tstops,saveat,tdir,tspan,tType)

  if isempty(tstops) # TODO: Specialize more
    tstops_vec = [tspan[2]]
  else
    tstops_vec = vec(collect(tType,Iterators.filter(x->tdir*tspan[1]<tdir*x≤tdir*tspan[end],Iterators.flatten((tstops,tspan[end])))))
  end

  if tdir>0
    tstops_internal = binary_minheap(tstops_vec)
  else
    tstops_internal = binary_maxheap(tstops_vec)
  end

  if typeof(saveat) <: Number
    if (tspan[1]:saveat:tspan[end])[end] == tspan[end]
      saveat_vec = convert(Vector{tType},collect(tType,tspan[1]+saveat:saveat:tspan[end]))
    else
      saveat_vec = convert(Vector{tType},collect(tType,tspan[1]+saveat:saveat:(tspan[end]-saveat)))
    end
  elseif isempty(saveat)
    saveat_vec = saveat
  else
    saveat_vec = vec(collect(tType,Iterators.filter(x->tdir*tspan[1]<tdir*x<tdir*tspan[end],saveat)))
  end

  if tdir>0
    saveat_internal = binary_minheap(saveat_vec)
  else
    saveat_internal = binary_maxheap(saveat_vec)
  end

  tstops_internal,saveat_internal
end

## Solve for DAEs uses IDA

function DiffEqBase.init(
    prob::DiffEqBase.AbstractDAEProblem{uType, duType, tupType, isinplace},
    alg::SundialsDAEAlgorithm{LinearSolver},
    timeseries=[], ts=[], ks=[];

    verbose=true,
    dt=nothing, dtmax=0.0,
    save_start=true,
    callback=nothing, abstol=1/10^6, reltol=1/10^3,
    saveat=Float64[], tstops=Float64[], maxiters=Int(1e5),
    timeseries_errors=true,
    dense_errors = false,
    save_everystep=isempty(saveat), dense=save_everystep,
    save_timeseries=nothing, save_end = true,
    advance_to_tstop = false, stop_at_next_tstop = false,
    userdata=nothing,
    kwargs...) where {uType, duType, tupType, isinplace, LinearSolver}

    tType = eltype(tupType)

    if verbose
        warned = !isempty(kwargs) && check_keywords(alg, kwargs, warnida)
        if !(typeof(prob.f) <: DiffEqBase.AbstractParameterizedFunction)
            if DiffEqBase.has_tgrad(prob.f)
                @warn("Explicit t-gradient given to this stiff solver is ignored.")
                warned = true
            end
        end
        warned && warn_compat()
    end

    callbacks_internal = CallbackSet(callback,prob.callback)

    tspan = prob.tspan
    t0 = tspan[1]

    tdir = sign(tspan[2]-tspan[1])

    tstops_internal, saveat_internal =
      tstop_saveat_disc_handling(tstops,saveat,tdir,tspan,tType)

    if typeof(prob.u0) <: Number
        u0 = [prob.u0]
    else
        u0 = vec(copy(prob.u0))
    end

    if typeof(prob.du0) <: Number
        du0 = [prob.du0]
    else
        du0 = vec(copy(prob.du0))
    end

    sizeu = size(prob.u0)
    sizedu = size(prob.du0)

    ### Fix the more general function to Sundials allowed style
    if !isinplace && typeof(prob.u0)<:Number
        f! = (out, du, u, p, t) -> (out .= prob.f(first(du),first(u), p, t); Cint(0))
    elseif !isinplace && typeof(prob.u0)<:Vector{Float64}
        f! = (out, du, u, p, t) -> (out .= prob.f(du, u, p, t); Cint(0))
    elseif !isinplace && typeof(prob.u0)<:AbstractArray
        f! = (out, du, u, p, t) -> (out .= vec(
                            prob.f(reshape(du, sizedu), reshape(u, sizeu), p, t)
                                 );Cint(0))
    elseif typeof(prob.u0)<:Vector{Float64}
        f! = prob.f
    else # Then it's an in-place function on an abstract array
        f! = (out, du, u, p, t) -> (prob.f(reshape(out, sizeu), reshape(du, sizedu),
                                    reshape(u, sizeu), p, t); Cint(0))
    end

    mem_ptr = IDACreate()
    (mem_ptr == C_NULL) && error("Failed to allocate IDA solver object")
    mem = Handle(mem_ptr)

    !verbose && IDASetErrHandlerFn(mem,cfunction(null_error_handler, Nothing,
                                    (Cint, Char,
                                    Char, Ptr{Cvoid})),C_NULL)

    ures = Vector{uType}()
    dures = Vector{uType}()
    ts   = [t0]


    userfun = FunJac(f!,(J,du,u,p,gamma,t) -> f!(Val{:jac},J,du,u,p,gamma,t),
                     prob.p,prob.jac_prototype)
    u0nv = NVector(u0)
    flag = IDAInit(mem, old_cfunction(idasolfun,
                     Cint, Tuple{realtype, N_Vector, N_Vector,
                            N_Vector, Ref{typeof(userfun)}}),
                              t0, convert(N_Vector, u0),
                              convert(N_Vector, du0))
    dt != nothing && (flag = IDASetInitStep(mem, dt))
    flag = IDASetUserData(mem, userfun)
    flag = IDASetMaxStep(mem, dtmax)
    flag = IDASStolerances(mem, reltol, abstol)
    flag = IDASetMaxNumSteps(mem, maxiters)
    flag = IDASetMaxOrd(mem,alg.max_order)
    flag = IDASetMaxErrTestFails(mem,alg.max_error_test_failures)
    flag = IDASetNonlinConvCoef(mem,alg.nonlinear_convergence_coefficient)
    flag = IDASetMaxNonlinIters(mem,alg.max_nonlinear_iters)
    flag = IDASetMaxConvFails(mem,alg.max_convergence_failures)
    flag = IDASetNonlinConvCoefIC(mem,alg.nonlinear_convergence_coefficient_ic)
    flag = IDASetMaxNumStepsIC(mem,alg.max_num_steps_ic)
    flag = IDASetMaxNumJacsIC(mem,alg.max_num_jacs_ic)
    flag = IDASetMaxNumItersIC(mem,alg.max_num_iters_ic)
    #flag = IDASetMaxBacksIC(mem,alg.max_num_backs_ic) # Needs newer version?
    flag = IDASetLineSearchOffIC(mem,alg.use_linesearch_ic)

    if LinearSolver == :Dense
        A = SUNDenseMatrix(length(u0),length(u0))
        LS = SUNDenseLinearSolver(u0,A)
        flag = IDADlsSetLinearSolver(mem, LS, A)
        _A = MatrixHandle(A,DenseMatrix())
        _LS = LinSolHandle(LS,Dense())
    elseif LinearSolver == :Band
        A = SUNBandMatrix(length(u0), alg.jac_upper, alg.jac_lower,
                                   alg.stored_upper)
        LS = SUNBandLinearSolver(u0,A)
        flag = IDADlsSetLinearSolver(mem, LS, A)
        _A = MatrixHandle(A,BandMatrix())
        _LS = LinSolHandle(LS,Band())
    elseif LinearSolver == :GMRES
        LS = SUNSPGMR(u0, PREC_NONE, alg.krylov_dim)
        flag = IDASpilsSetLinearSolver(mem, LS)
        _A = nothing
        _LS = LinSolHandle(LS,SPGMR())
    elseif LinearSolver == :FGMRES
        LS = SUNSPFGMR(u0, PREC_NONE, alg.krylov_dim)
        flag = IDASpilsSetLinearSolver(mem, LS)
        _A = nothing
        _LS = LinSolHandle(LS,SPFGMR())
    elseif LinearSolver == :BCG
        LS = SUNSPBCGS(u0, PREC_NONE, alg.krylov_dim)
        flag = IDASpilsSetLinearSolver(mem, LS)
        _A = nothing
        _LS = LinSolHandle(LS,SPBCGS())
    elseif LinearSolver == :PCG
        LS = SUNPCG(u0, PREC_NONE, alg.krylov_dim)
        flag = IDASpilsSetLinearSolver(mem, LS)
        _A = nothing
        _LS = LinSolHandle(LS,PCG())
    elseif LinearSolver == :TFQMR
        LS = SUNSPTFQMR(u0, PREC_NONE, alg.krylov_dim)
        flag = IDASpilsSetLinearSolver(mem, LS)
        _A = nothing
        _LS = LinSolHandle(LS,PTFQMR())
    elseif LinearSolver == :KLU
        nnz = length(nonzeros(prob.jac_prototype))
        A = SUNSparseMatrix(length(u0),length(u0), nnz, CSC_MAT)
        LS = SUNKLU(u0, A)
        flag = IDADlsSetLinearSolver(mem, LS, A)
        _A = MatrixHandle(A,SparseMatrix())
        _LS = LinSolHandle(LS,KLU())
    end

    if DiffEqBase.has_jac(prob.f)
      jac = old_cfunction(idajac,
                      Cint,
                      Tuple{realtype,
                       realtype,
                       N_Vector,
                       N_Vector,
                       N_Vector,
                       SUNMatrix,
                       Ref{typeof(userfun)},
                       N_Vector,
                       N_Vector,
                       N_Vector})
      flag = IDASetUserData(mem, userfun)
      flag = IDADlsSetJacFn(mem, jac)
    else
      jac = nothing
    end

    _u0 = copy(u0)
    utmp = NVector(_u0)
    _du0 = copy(du0)
    dutmp = NVector(_du0)

    tout = [tspan[1]]

    rtest = zeros(length(u0))

    f!(rtest, du0, u0, prob.p, t0)
    if any(abs.(rtest) .>= reltol)
        if prob.differential_vars === nothing
            error("Must supply differential_vars argument to DAEProblem constructor to use IDA initial value solver.")
        end
        flag = IDASetId(mem, collect(Float64, prob.differential_vars))
        if dt != nothing
            _t = float(dt)
        else
            _t = float(tspan[2])
        end
        if alg.init_all
            init_type = IDA_Y_INIT
        else
            init_type = IDA_YA_YDP_INIT
        end
        flag = IDACalcIC(mem, init_type, _t)
    end

    if save_start
      save_value!(ures,u0,uType,sizeu)
      if dense
        save_value!(dures,du0,uType,sizedu) # Does this need to update for IDACalcIC?
      end
    end

    callback == nothing ? tmp = nothing : tmp = similar(u0)
    callback == nothing ? uprev = nothing : uprev = similar(u0)

    if flag >= 0
        retcode = :Default
    else
        retcode = :InitialFailure
    end

    sol = DiffEqBase.build_solution(prob, alg, ts, ures,
                   dense = dense,
                   du = dures,
                   interp = dense ? DiffEqBase.HermiteInterpolation(ts,ures,dures) :
                                    DiffEqBase.LinearInterpolation(ts,ures),
                   calculate_error = false,
                   timeseries_errors = timeseries_errors,
                   retcode = retcode,
                   dense_errors = dense_errors)

    opts = DEOptions(saveat_internal,tstops_internal,save_everystep,dense,
                    timeseries_errors,dense_errors,save_end,
                    callbacks_internal,verbose,advance_to_tstop,stop_at_next_tstop)

    IDAIntegrator(utmp,dutmp,prob.p,t0,t0,mem,_LS,_A,sol,alg,f!,userfun,jac,opts,
                   tout,tdir,sizeu,sizedu,false,tmp,uprev,Cint(flag),false,false)
end # function solve

## Common calls

function interpret_sundials_retcode(flag)
  flag >= 0 && return :Success
  flag == -1 && return :MaxIters
  (flag == -2 || flag == -3) && return :Unstable
  flag == -4 && return :ConvergenceFailure
  return :Failure
end

function solver_step(integrator::CVODEIntegrator,tstop)
    integrator.flag = CVode(integrator.mem, tstop, integrator.u, integrator.tout, CV_ONE_STEP)
end
function solver_step(integrator::ARKODEIntegrator,tstop)
    integrator.flag = ARKode(integrator.mem, tstop, integrator.u, integrator.tout, ARK_ONE_STEP)
end
function solver_step(integrator::IDAIntegrator,tstop)
    integrator.flag = IDASolve(integrator.mem, tstop, integrator.tout,
                               integrator.u, integrator.du, IDA_ONE_STEP)
end

function set_stop_time(integrator::CVODEIntegrator,tstop)
    CVodeSetStopTime(integrator.mem,tstop)
end
function set_stop_time(integrator::ARKODEIntegrator,tstop)
    ARKodeSetStopTime(integrator.mem,tstop)
end
function set_stop_time(integrator::IDAIntegrator,tstop)
    IDASetStopTime(integrator.mem,tstop)
end

function DiffEqBase.solve!(integrator::AbstractSundialsIntegrator)
    uType = eltype(integrator.sol.u)
    while !isempty(integrator.opts.tstops)
        # Sundials can have floating point issues approaching a tstop if
        # there is a modifying event each
        while integrator.tdir*(integrator.t-top(integrator.opts.tstops)) < -1e6eps()
            tstop = top(integrator.opts.tstops)
            set_stop_time(integrator,tstop)
            integrator.tprev = integrator.t
            if !(typeof(integrator.opts.callback.continuous_callbacks)<:Tuple{})
                integrator.uprev .= integrator.u
            end
            integrator.userfun.p = integrator.p
            solver_step(integrator,tstop)
            integrator.t = first(integrator.tout)
            integrator.flag < 0 && break
            handle_callbacks!(integrator)
            integrator.flag < 0 && break
            if isempty(integrator.opts.tstops)
              break
            end
        end
        (integrator.flag < 0) && break
        handle_tstop!(integrator)
    end

    if integrator.opts.save_end && integrator.sol.t[end] != integrator.t
        save_value!(integrator.sol.u,integrator.u,uType,integrator.sizeu)
        push!(integrator.sol.t, integrator.t)
        if integrator.opts.dense
          integrator(integrator.u,integrator.t,Val{1})
          save_value!(integrator.sol.interp.du,integrator.u,uType,integrator.sizeu)
        end
    end

    empty!(integrator.mem)
    integrator.A != nothing && empty!(integrator.A)
    integrator.LS != nothing && empty!(integrator.LS)

    if DiffEqBase.has_analytic(integrator.sol.prob.f)
        DiffEqBase.calculate_solution_errors!(integrator.sol;
        timeseries_errors=integrator.opts.timeseries_errors,
        dense_errors=integrator.opts.dense_errors)
    end
    integrator.sol = DiffEqBase.solution_new_retcode(integrator.sol,interpret_sundials_retcode(integrator.flag))
    nothing
end

function handle_tstop!(integrator::AbstractSundialsIntegrator)
    tstops = integrator.opts.tstops
    if !isempty(tstops)
      if integrator.tdir*(integrator.t-top(integrator.opts.tstops)) > -1e6eps()
          pop!(tstops)
          t = integrator.t
          integrator.just_hit_tstop = true
      end
    end
end
