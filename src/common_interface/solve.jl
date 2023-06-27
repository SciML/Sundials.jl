## Common Interface Solve Functions

function DiffEqBase.__solve(prob::Union{DiffEqBase.AbstractODEProblem,
                                        DiffEqBase.AbstractDAEProblem},
                            alg::algType,
                            timeseries = [],
                            ts = [],
                            ks = [],
                            recompile::Type{Val{recompile_flag}} = Val{true};
                            calculate_error = true,
                            kwargs...) where {
                                              algType <: Union{SundialsODEAlgorithm,
                                                    SundialsDAEAlgorithm},
                                              recompile_flag}
    integrator = DiffEqBase.__init(prob, alg, timeseries, ts, ks; kwargs...)
    if integrator.sol.retcode == ReturnCode.Default
        solve!(integrator; early_free = true, calculate_error = calculate_error)
    end
    integrator.sol
end

function DiffEqBase.__solve(prob::Union{
                                        DiffEqBase.AbstractSteadyStateProblem{uType,
                                                                              isinplace},
                                        DiffEqBase.AbstractNonlinearProblem{uType,
                                                                            isinplace}},
                            alg::algType,
                            timeseries = [],
                            ts = [],
                            ks = [],
                            recompile::Type{Val{recompile_flag}} = Val{true};
                            kwargs...) where {algType <: SundialsNonlinearSolveAlgorithm,
                                              recompile_flag, uType, isinplace}
    if prob.u0 isa Number
        u0 = [prob.u0]
    else
        u0 = deepcopy(prob.u0)
    end

    p = prob.p
    userdata = alg.userdata
    linsolve = linear_solver(alg)
    jac_upper = alg.jac_upper
    jac_lower = alg.jac_lower

    ### Fix the more general function to Sundials allowed style
    if prob.f isa ODEFunction
        t = Inf
        if !isinplace && prob.u0 isa Number
            f! = (du, u) -> (du .= prob.f(first(u), p, t); Cint(0))
        elseif !isinplace
            f! = (du, u) -> (du .= prob.f(u, p, t); Cint(0))
        else # Then it's an in-place function on an abstract array
            f! = (du, u) -> prob.f(du, u, p, t)
        end
    elseif prob.f isa NonlinearFunction
        if !isinplace && prob.u0 isa Number
            f! = (du, u) -> (du .= prob.f(first(u), p); Cint(0))
        elseif !isinplace
            f! = (du, u) -> (du .= prob.f(u, p); Cint(0))
        else # Then it's an in-place function on an abstract array
            f! = (du, u) -> prob.f(du, u, p)
        end
    end
    u = zero(u0)
    resid = similar(u)
    u = kinsol(f!, u0;
               userdata = userdata,
               linear_solver = linsolve,
               jac_upper = jac_upper,
               jac_lower = jac_lower)

    f!(resid, u)
    DiffEqBase.build_solution(prob, alg, u, resid; retcode = ReturnCode.Success)
end

function DiffEqBase.__init(prob::DiffEqBase.AbstractODEProblem{uType, tupType, isinplace},
                           alg::SundialsODEAlgorithm{Method, LinearSolver},
                           timeseries = [],
                           ts = [],
                           ks = [];
                           verbose = true,
                           callback = nothing,
                           abstol = 1 / 10^6,
                           reltol = 1 / 10^3,
                           saveat = Float64[],
                           tstops = Float64[],
                           maxiters = Int(1e5),
                           dt = nothing,
                           dtmin = 0.0,
                           dtmax = 0.0,
                           timeseries_errors = true,
                           dense_errors = false,
                           save_everystep = isempty(saveat), save_idxs = nothing,
                           save_on = true,
                           save_start = save_everystep || isempty(saveat) ||
                                            saveat isa Number ? true :
                                        prob.tspan[1] in saveat,
                           save_end = save_everystep || isempty(saveat) ||
                                          saveat isa Number ? true :
                                      prob.tspan[2] in saveat,
                           dense = save_everystep && isempty(saveat),
                           progress = false,
                           progress_name = "ODE",
                           progress_message = DiffEqBase.ODE_DEFAULT_PROG_MESSAGE,
                           save_timeseries = nothing,
                           advance_to_tstop = false,
                           stop_at_next_tstop = false,
                           userdata = nothing,
                           alias_u0 = false,
                           kwargs...) where {uType, tupType, isinplace, Method, LinearSolver
                                             }
    tType = eltype(tupType)

    if verbose
        warned = !isempty(kwargs) && DiffEqBase.check_keywords(alg, kwargs, warnlist)
        warned && DiffEqBase.warn_compat()
    end

    if prob.f.mass_matrix != LinearAlgebra.I
        error("This solver is not able to use mass matrices.")
    end

    if reltol isa AbstractArray
        error("Sundials only allows scalar reltol.")
    end

    if length(prob.u0) <= 0
        error("Sundials requires at least one state variable.")
    end

    progress && Logging.@logmsg(-1, progress_name, _id=_id = :Sundials, progress=0)

    callbacks_internal = DiffEqBase.CallbackSet(callback)

    max_len_cb = DiffEqBase.max_vector_callback_length(callbacks_internal)
    if max_len_cb isa VectorContinuousCallback
        callback_cache = DiffEqBase.CallbackCache(max_len_cb.len, Float64, Float64)
    else
        callback_cache = nothing
    end

    tspan = Float64.(prob.tspan)
    t0 = tspan[1]

    tdir = sign(tspan[2] - tspan[1])

    tstops_internal, saveat_internal = tstop_saveat_disc_handling(tstops, saveat, tdir,
                                                                  tspan, tType)

    if prob.u0 isa Number
        u0 = [prob.u0]
    else
        if alias_u0
            u0 = prob.u0
        else
            u0 = copy(prob.u0)
        end
    end

    ### Fix the more general function to Sundials allowed style
    if !isinplace && prob.u0 isa Number
        f! = (du, u, p, t) -> (du .= prob.f(first(u), p, t); Cint(0))
    elseif !isinplace
        f! = (du, u, p, t) -> (du .= prob.f(u, p, t); Cint(0))
    else # Then it's an in-place function on an abstract array
        f! = prob.f
    end

    if alg isa CVODE_BDF
        alg_code = CV_BDF
    elseif alg isa CVODE_Adams
        alg_code = CV_ADAMS
    end

    #if Method == :Newton
    #    method_code = CV_NEWTON
    #elseif Method ==  :Functional
    #    method_code = CV_FUNCTIONAL
    #end

    mem_ptr = CVodeCreate(alg_code)
    (mem_ptr == C_NULL) && error("Failed to allocate CVODE solver object")
    mem = Handle(mem_ptr)

    !verbose && CVodeSetErrHandlerFn(mem,
                         @cfunction(null_error_handler, Nothing,
                                    (Cint, Char, Char, Ptr{Cvoid})),
                         C_NULL)

    save_start ? ts = [t0] : ts = Float64[]

    out = copy(u0)
    uvec = vec(u0) # aliases u0
    utmp = NVector(uvec) # aliases u0

    use_jac_prototype = (isa(prob.f.jac_prototype, SparseArrays.SparseMatrixCSC) &&
                         LinearSolver ∈ SPARSE_SOLVERS) ||
                        prob.f.jac_prototype isa AbstractSciMLOperator
    userfun = FunJac(f!,
                     prob.f.jac,
                     prob.p,
                     nothing,
                     use_jac_prototype ? prob.f.jac_prototype : nothing,
                     alg.prec,
                     alg.psetup,
                     u0,
                     out)

    function getcfunf(::T) where {T}
        @cfunction(cvodefunjac, Cint, (realtype, N_Vector, N_Vector, Ref{T}))
    end

    flag = CVodeInit(mem, getcfunf(userfun), t0, utmp)

    dt !== nothing && (flag = CVodeSetInitStep(mem, Float64(dt)))
    flag = CVodeSetMinStep(mem, Float64(dtmin))
    flag = CVodeSetMaxStep(mem, Float64(dtmax))
    flag = CVodeSetUserData(mem, userfun)
    if abstol isa Array
        flag = CVodeSVtolerances(mem, reltol, abstol)
    else
        flag = CVodeSStolerances(mem, reltol, abstol)
    end
    flag = CVodeSetMaxNumSteps(mem, maxiters)
    flag = CVodeSetMaxOrd(mem, alg.max_order)
    flag = CVodeSetMaxHnilWarns(mem, alg.max_hnil_warns)
    flag = CVodeSetStabLimDet(mem, alg.stability_limit_detect)
    flag = CVodeSetMaxErrTestFails(mem, alg.max_error_test_failures)
    flag = CVodeSetMaxNonlinIters(mem, alg.max_nonlinear_iters)
    flag = CVodeSetMaxConvFails(mem, alg.max_convergence_failures)

    nojacobian = true

    if Method == :Newton # Only use a linear solver if it's a Newton-based method
        if LinearSolver in (:Dense, :LapackDense)
            nojacobian = false
            A = SUNDenseMatrix(length(uvec), length(uvec))
            _A = MatrixHandle(A, DenseMatrix())
            if LinearSolver === :Dense
                LS = SUNLinSol_Dense(uvec, A)
                _LS = LinSolHandle(LS, Dense())
            else
                LS = SUNLinSol_LapackDense(uvec, A)
                _LS = LinSolHandle(LS, LapackDense())
            end
        elseif LinearSolver in (:Band, :LapackBand)
            nojacobian = false
            A = SUNBandMatrix(length(uvec), alg.jac_upper, alg.jac_lower)
            _A = MatrixHandle(A, BandMatrix())
            if LinearSolver === :Band
                LS = SUNLinSol_Band(uvec, A)
                _LS = LinSolHandle(LS, Band())
            else
                LS = SUNLinSol_LapackBand(uvec, A)
                _LS = LinSolHandle(LS, LapackBand())
            end
        elseif LinearSolver == :Diagonal
            nojacobian = false
            flag = CVDiag(mem)
            _A = nothing
            _LS = nothing
        elseif LinearSolver == :GMRES
            LS = SUNLinSol_SPGMR(uvec, alg.prec_side, alg.krylov_dim)
            _A = nothing
            _LS = Sundials.LinSolHandle(LS, Sundials.SPGMR())
        elseif LinearSolver == :FGMRES
            LS = SUNLinSol_SPFGMR(uvec, alg.prec_side, alg.krylov_dim)
            _A = nothing
            _LS = LinSolHandle(LS, SPFGMR())
        elseif LinearSolver == :BCG
            LS = SUNLinSol_SPBCGS(uvec, alg.prec_side, alg.krylov_dim)
            _A = nothing
            _LS = LinSolHandle(LS, SPBCGS())
        elseif LinearSolver == :PCG
            LS = SUNLinSol_PCG(uvec, alg.prec_side, alg.krylov_dim)
            _A = nothing
            _LS = LinSolHandle(LS, PCG())
        elseif LinearSolver == :TFQMR
            LS = SUNLinSol_SPTFQMR(uvec, alg.prec_side, alg.krylov_dim)
            _A = nothing
            _LS = LinSolHandle(LS, PTFQMR())
        elseif LinearSolver == :KLU
            nojacobian = false
            nnz = length(SparseArrays.nonzeros(prob.f.jac_prototype))
            A = SUNSparseMatrix(length(uvec), length(uvec), nnz, CSC_MAT)
            LS = SUNLinSol_KLU(uvec, A)
            _A = MatrixHandle(A, SparseMatrix())
            _LS = LinSolHandle(LS, KLU())
        end
        if LinearSolver !== :Diagonal
            flag = CVodeSetLinearSolver(mem, LS, _A === nothing ? C_NULL : A)
        end
        NLS = SUNNonlinSol_Newton(uvec)
    else
        _A = nothing
        _LS = nothing
        # TODO: Anderson Acceleration
        anderson_m = 0
        NLS = SUNNonlinSol_FixedPoint(uvec, anderson_m)
    end
    CVodeSetNonlinearSolver(mem, NLS)

    if DiffEqBase.has_jac(prob.f) && Method == :Newton
        function getcfunjac(::T) where {T}
            @cfunction(cvodejac,
                       Cint,
                       (realtype,
                        N_Vector,
                        N_Vector,
                        SUNMatrix,
                        Ref{T},
                        N_Vector,
                        N_Vector,
                        N_Vector))
        end
        jac = getcfunjac(userfun)
        flag = CVodeSetUserData(mem, userfun)
        nojacobian || (flag = CVodeSetJacFn(mem, jac))
    else
        jac = nothing
    end

    if prob.f.jac_prototype isa AbstractSciMLOperator
        "here!!!!"
        function getcfunjtimes(::T) where {T}
            @cfunction(jactimes,
                       Cint,
                       (N_Vector, N_Vector, realtype, N_Vector, N_Vector, Ref{T}, N_Vector))
        end
        jtimes = getcfunjtimes(userfun)
        CVodeSetJacTimes(mem, C_NULL, jtimes)
    end

    if alg.prec !== nothing
        function getpercfun(::T) where {T}
            @cfunction(precsolve,
                       Cint,
                       (Float64,
                        N_Vector,
                        N_Vector,
                        N_Vector,
                        N_Vector,
                        Float64,
                        Float64,
                        Int,
                        Ref{T}))
        end
        precfun = getpercfun(userfun)

        function getpsetupfun(::T) where {T}
            @cfunction(precsetup,
                       Cint,
                       (Float64, N_Vector, N_Vector, Int, Ptr{Int}, Float64, Ref{T}))
        end
        psetupfun = alg.psetup === nothing ? C_NULL : getpsetupfun(userfun)

        CVodeSetPreconditioner(mem, psetupfun, precfun)
    end

    tmp = isnothing(callbacks_internal) ? u0 : similar(u0)
    uprev = isnothing(callbacks_internal) ? u0 : similar(u0)
    tout = [tspan[1]]

    if save_start
        if save_idxs === nothing
            ures = Vector{uType}()
            dures = Vector{uType}()
            save_value!(ures, u0, uType, save_idxs)
            if dense
                f!(out, u0, prob.p, tspan[1])
                save_value!(dures, out, uType, save_idxs)
            end
        else
            ures = [u0[save_idxs]]
            if dense
                f!(out, u0, prob.p, tspan[1])
                dures = [out[save_idxs]]
            end
        end
    else
        ures = Vector{uType}()
        dures = Vector{uType}()
    end

    sol = DiffEqBase.build_solution(prob,
                                    alg,
                                    ts,
                                    ures;
                                    dense = dense,
                                    interp = dense ?
                                             DiffEqBase.HermiteInterpolation(ts, ures,
                                                                             dures) :
                                             DiffEqBase.LinearInterpolation(ts, ures),
                                    timeseries_errors = timeseries_errors,
                                    stats = DiffEqBase.Stats(0),
                                    calculate_error = false)
    opts = DEOptions(saveat_internal,
                     tstops_internal,
                     saveat, tstops, save_start,
                     save_everystep, save_idxs,
                     dense,
                     timeseries_errors,
                     dense_errors,
                     save_on,
                     save_end,
                     callbacks_internal,
                     abstol,
                     reltol,
                     verbose,
                     advance_to_tstop,
                     stop_at_next_tstop,
                     progress,
                     progress_name,
                     progress_message,
                     maxiters)
    integrator = CVODEIntegrator(u0,
                                 utmp,
                                 prob.p,
                                 t0,
                                 t0,
                                 mem,
                                 _LS,
                                 _A,
                                 sol,
                                 alg,
                                 f!,
                                 userfun,
                                 jac,
                                 opts,
                                 tout,
                                 tdir,
                                 false,
                                 tmp,
                                 uprev,
                                 Cint(flag),
                                 false,
                                 0,
                                 1,
                                 callback_cache,
                                 0.0)
    initialize_callbacks!(integrator)
    integrator
end # function solve

function DiffEqBase.__init(prob::DiffEqBase.AbstractODEProblem{uType, tupType, isinplace},
                           alg::ARKODE{Method, LinearSolver, MassLinearSolver},
                           timeseries = [],
                           ts = [],
                           ks = [];
                           verbose = true,
                           callback = nothing,
                           abstol = 1 / 10^6,
                           reltol = 1 / 10^3,
                           saveat = Float64[],
                           tstops = Float64[],
                           maxiters = Int(1e5),
                           dt = nothing,
                           dtmin = 0.0,
                           dtmax = 0.0,
                           timeseries_errors = true,
                           dense_errors = false,
                           save_everystep = isempty(saveat), save_idxs = nothing,
                           dense = save_everystep,
                           save_on = true,
                           save_start = true,
                           save_end = true,
                           save_timeseries = nothing,
                           progress = false,
                           progress_name = "ODE",
                           progress_message = DiffEqBase.ODE_DEFAULT_PROG_MESSAGE,
                           advance_to_tstop = false,
                           stop_at_next_tstop = false,
                           userdata = nothing,
                           alias_u0 = false,
                           kwargs...) where {uType, tupType, isinplace, Method,
                                             LinearSolver,
                                             MassLinearSolver}
    tType = eltype(tupType)

    if verbose
        warned = !isempty(kwargs) && DiffEqBase.check_keywords(alg, kwargs, warnlist)
        warned && DiffEqBase.warn_compat()
    end

    if reltol isa AbstractArray
        error("Sundials only allows scalar reltol.")
    end

    if length(prob.u0) <= 0
        error("Sundials requires at least one state variable.")
    end

    progress && Logging.@logmsg(-1, progress_name, _id=_id = :Sundials, progress=0)

    callbacks_internal = DiffEqBase.CallbackSet(callback)

    max_len_cb = DiffEqBase.max_vector_callback_length(callbacks_internal)
    if max_len_cb isa VectorContinuousCallback
        callback_cache = DiffEqBase.CallbackCache(max_len_cb.len, Float64, Float64)
    else
        callback_cache = nothing
    end

    tspan = prob.tspan
    t0 = tspan[1]

    tdir = sign(tspan[2] - tspan[1])

    tstops_internal, saveat_internal = tstop_saveat_disc_handling(tstops, saveat, tdir,
                                                                  tspan, tType)

    if prob.u0 isa Number
        u0 = [prob.u0]
    else
        if alias_u0
            u0 = prob.u0
        else
            u0 = copy(prob.u0)
        end
    end

    save_start ? ts = [t0] : ts = Float64[]
    out = copy(u0)
    uvec = vec(u0)
    utmp = NVector(uvec)

    function arkodemem(; fe = C_NULL, fi = C_NULL, t0 = t0, u0 = utmp)
        mem_ptr = ARKStepCreate(fe, fi, t0, u0)
        (mem_ptr == C_NULL) && error("Failed to allocate ARKODE solver object")
        mem = Handle(mem_ptr)

        !verbose && ARKStepSetErrHandlerFn(mem,
                               @cfunction(null_error_handler, Nothing,
                                          (Cint, Char, Char, Ptr{Cvoid})),
                               C_NULL)
        return mem
    end

    ### Fix the more general function to Sundials allowed style
    if !isinplace && prob.u0 isa Number
        f! = (du, u, p, t) -> (du .= prob.f(first(u), p, t); Cint(0))
    elseif !isinplace
        f! = (du, u, p, t) -> (du .= prob.f(u, p, t); Cint(0))
    else # Then it's an in-place function on an abstract array
        f! = prob.f
    end

    if prob.problem_type isa SplitODEProblem

        ### Fix the more general function to Sundials allowed style
        if !isinplace && prob.u0 isa Number
            f1! = (du, u, p, t) -> (du .= prob.f.f1(first(u), p, t); Cint(0))
            f2! = (du, u, p, t) -> (du .= prob.f.f2(first(u), p, t); Cint(0))
        elseif !isinplace
            f1! = (du, u, p, t) -> (du .= prob.f.f1(u, p, t); Cint(0))
            f2! = (du, u, p, t) -> (du .= prob.f.f2(u, p, t); Cint(0))
        else # Then it's an in-place function on an abstract array
            f1! = prob.f.f1
            f2! = prob.f.f2
        end

        use_jac_prototype = (isa(prob.f.f1.jac_prototype, SparseArrays.SparseMatrixCSC) &&
                             LinearSolver ∈ SPARSE_SOLVERS)
        userfun = FunJac(f1!,
                         f2!,
                         prob.f.f1.jac,
                         prob.p,
                         prob.f.mass_matrix,
                         use_jac_prototype ? prob.f.f1.jac_prototype : nothing,
                         alg.prec,
                         alg.psetup,
                         u0,
                         out,
                         nothing)

        function getcfunjac(::T) where {T}
            @cfunction(cvodefunjac, Cint, (realtype, N_Vector, N_Vector, Ref{T}))
        end
        function getcfunjac2(::T) where {T}
            @cfunction(cvodefunjac2, Cint, (realtype, N_Vector, N_Vector, Ref{T}))
        end
        cfj1 = getcfunjac(userfun)
        cfj2 = getcfunjac2(userfun)

        mem = arkodemem(; fi = cfj1, fe = cfj2)
    else
        use_jac_prototype = (isa(prob.f.jac_prototype, SparseArrays.SparseMatrixCSC) &&
                             LinearSolver ∈ SPARSE_SOLVERS)
        userfun = FunJac(f!,
                         prob.f.jac,
                         prob.p,
                         prob.f.mass_matrix,
                         use_jac_prototype ? prob.f.jac_prototype : nothing,
                         alg.prec,
                         alg.psetup,
                         u0,
                         out)
        if alg.stiffness == Explicit()
            function getcfun1(::T) where {T}
                @cfunction(cvodefunjac, Cint, (realtype, N_Vector, N_Vector, Ref{T}))
            end
            cfj1 = getcfun1(userfun)
            mem = arkodemem(; fe = cfj1)
        elseif alg.stiffness == Implicit()
            function getcfun2(::T) where {T}
                @cfunction(cvodefunjac, Cint, (realtype, N_Vector, N_Vector, Ref{T}))
            end
            cfj2 = getcfun2(userfun)
            mem = arkodemem(; fi = cfj2)
        end
    end

    dt !== nothing && (flag = ARKStepSetInitStep(mem, Float64(dt)))
    flag = ARKStepSetMinStep(mem, Float64(dtmin))
    flag = ARKStepSetMaxStep(mem, Float64(dtmax))
    flag = ARKStepSetUserData(mem, userfun)
    if abstol isa Array
        flag = ARKStepSVtolerances(mem, reltol, abstol)
    else
        flag = ARKStepSStolerances(mem, reltol, abstol)
    end
    flag = ARKStepSetMaxNumSteps(mem, maxiters)
    flag = ARKStepSetMaxHnilWarns(mem, alg.max_hnil_warns)
    flag = ARKStepSetMaxErrTestFails(mem, alg.max_error_test_failures)
    flag = ARKStepSetMaxConvFails(mem, alg.max_convergence_failures)
    flag = ARKStepSetPredictorMethod(mem, alg.predictor_method)
    flag = ARKStepSetNonlinConvCoef(mem, alg.nonlinear_convergence_coefficient)
    flag = ARKStepSetDenseOrder(mem, alg.dense_order)

    #=
    Reference from Manual on ARKODE
    To choose an explicit table, set itable to a negative value. This automatically calls ARKStepSetExplicit(). However, if the problem is posed in explicit form, i.e. 𝑦 ̇ = 𝑓 (𝑡, 𝑦), then we recommend that the ERKStep time- stepper module be used instead of ARKStep.
    To select an implicit table, set etable to a negative value. This automatically calls ARKStepSetImplicit(). If both itable and etable are non-negative, then these should match an existing implicit/explicit pair, listed in the section Additive Butcher tables. This automatically calls ARKStepSetImEx().
    =#
    if alg.itable === nothing && alg.etable === nothing
        flag = ARKStepSetOrder(mem, alg.order)
    elseif alg.itable === nothing && alg.etable !== nothing
        flag = ARKStepSetTableNum(mem, -1, alg.etable)
    elseif alg.itable !== nothing && alg.etable === nothing
        flag = ARKStepSetTableNum(mem, alg.itable, -1)
    else
        flag = ARKStepSetTableNum(mem, alg.itable, alg.etable)
    end

    flag = ARKStepSetNonlinCRDown(mem, alg.crdown)
    flag = ARKStepSetNonlinRDiv(mem, alg.rdiv)
    flag = ARKStepSetDeltaGammaMax(mem, alg.dgmax)
    flag = ARKStepSetMaxStepsBetweenLSet(mem, alg.msbp)
    #flag = ARKStepSetAdaptivityMethod(mem,alg.adaptivity_method,1,0)

    #flag = ARKStepSetFixedStep(mem,)
    alg.set_optimal_params && (flag = ARKStepSetOptimalParams(mem))

    if Method == :Newton && alg.stiffness !== Explicit() # Only use a linear solver if it's a Newton-based method
        if LinearSolver in (:Dense, :LapackDense)
            nojacobian = false
            A = SUNDenseMatrix(length(uvec), length(uvec))
            _A = MatrixHandle(A, DenseMatrix())
            if LinearSolver === :Dense
                LS = SUNLinSol_Dense(uvec, A)
                _LS = LinSolHandle(LS, Dense())
            else
                LS = SUNLinSol_LapackDense(uvec, A)
                _LS = LinSolHandle(LS, LapackDense())
            end
        elseif LinearSolver in (:Band, :LapackBand)
            nojacobian = false
            A = SUNBandMatrix(length(uvec), alg.jac_upper, alg.jac_lower)
            _A = MatrixHandle(A, BandMatrix())
            if LinearSolver === :Band
                LS = SUNLinSol_Band(uvec, A)
                _LS = LinSolHandle(LS, Band())
            else
                LS = SUNLinSol_LapackBand(uvec, A)
                _LS = LinSolHandle(LS, LapackBand())
            end
        elseif LinearSolver == :GMRES
            LS = SUNLinSol_SPGMR(uvec, alg.prec_side, alg.krylov_dim)
            _A = nothing
            _LS = Sundials.LinSolHandle(LS, Sundials.SPGMR())
        elseif LinearSolver == :FGMRES
            LS = SUNLinSol_SPFGMR(uvec, alg.prec_side, alg.krylov_dim)
            _A = nothing
            _LS = LinSolHandle(LS, SPFGMR())
        elseif LinearSolver == :BCG
            LS = SUNLinSol_SPBCGS(uvec, alg.prec_side, alg.krylov_dim)
            _A = nothing
            _LS = LinSolHandle(LS, SPBCGS())
        elseif LinearSolver == :PCG
            LS = SUNLinSol_PCG(uvec, alg.prec_side, alg.krylov_dim)
            _A = nothing
            _LS = LinSolHandle(LS, PCG())
        elseif LinearSolver == :TFQMR
            LS = SUNLinSol_SPTFQMR(uvec, alg.prec_side, alg.krylov_dim)
            _A = nothing
            _LS = LinSolHandle(LS, PTFQMR())
        elseif LinearSolver == :KLU
            nnz = length(SparseArrays.nonzeros(prob.f.jac_prototype))
            A = SUNSparseMatrix(length(uvec), length(uvec), nnz, CSC_MAT)
            LS = SUNLinSol_KLU(uvec, A)
            _A = MatrixHandle(A, SparseMatrix())
            _LS = LinSolHandle(LS, KLU())
        end
        flag = ARKStepSetLinearSolver(mem, LS, _A === nothing ? C_NULL : A)
        flag = ARKStepSetMaxNonlinIters(mem, alg.max_nonlinear_iters)
    elseif Method == :Functional && alg.stiffness !== Explicit()
        ARKStepSetFixedPoint(mem, Clong(alg.krylov_dim))
    else
        _A = nothing
        _LS = nothing
    end

    if (prob.problem_type isa SplitODEProblem &&
        prob.f.f1.jac_prototype isa AbstractSciMLOperator) ||
       (!(prob.problem_type isa SplitODEProblem) &&
        prob.f.jac_prototype isa AbstractSciMLOperator) &&
       alg.stiffness !== Explicit()
        function getcfunjtimes(::T) where {T}
            @cfunction(jactimes,
                       Cint,
                       (N_Vector, N_Vector, realtype, N_Vector, N_Vector, Ref{T}, N_Vector))
        end
        jtimes = getcfunjtimes(userfun)
        ARKStepSetJacTimes(mem, C_NULL, jtimes)
    end

    if prob.f.mass_matrix != LinearAlgebra.I && alg.stiffness !== Explicit()
        if MassLinearSolver in (:Dense, :LapackDense)
            nojacobian = false
            M = SUNDenseMatrix(length(uvec), length(uvec))
            _M = MatrixHandle(M, DenseMatrix())
            if MassLinearSolver === :Dense
                MLS = SUNLinSol_Dense(uvec, M)
                _MLS = LinSolHandle(MLS, Dense())
            else
                MLS = SUNLinSol_LapackDense(uvec, M)
                _MLS = LinSolHandle(MLS, LapackDense())
            end
        elseif MassLinearSolver in (:Band, :LapackBand)
            nojacobian = false
            M = SUNBandMatrix(length(uvec), alg.jac_upper, alg.jac_lower)
            _M = MatrixHandle(M, BandMatrix())
            if MassLinearSolver === :Band
                MLS = SUNLinSol_Band(uvec, M)
                _MLS = LinSolHandle(MLS, Band())
            else
                MLS = SUNLinSol_LapackBand(uvec, M)
                _MLS = LinSolHandle(MLS, LapackBand())
            end
        elseif MassLinearSolver == :GMRES
            MLS = SUNLinSol_SPGMR(uvec, alg.prec_side, alg.mass_krylov_dim)
            _M = nothing
            _MLS = LinSolHandle(MLS, SPGMR())
        elseif MassLinearSolver == :FGMRES
            MLS = SUNLinSol_SPGMR(uvec, alg.prec_side, alg.mass_krylov_dim)
            _M = nothing
            _MLS = LinSolHandle(MLS, SPFGMR())
        elseif MassLinearSolver == :BCG
            MLS = SUNLinSol_SPGMR(uvec, alg.prec_side, alg.mass_krylov_dim)
            _M = nothing
            _MLS = LinSolHandle(MLS, SPBCGS())
        elseif MassLinearSolver == :PCG
            MLS = SUNLinSol_SPGMR(uvec, alg.prec_side, alg.mass_krylov_dim)
            _M = nothing
            _MLS = LinSolHandle(MLS, PCG())
        elseif MassLinearSolver == :TFQMR
            MLS = SUNLinSol_SPGMR(uvec, alg.prec_side, alg.mass_krylov_dim)
            _M = nothing
            _MLS = LinSolHandle(MLS, PTFQMR())
        elseif MassLinearSolver == :KLU
            nnz = length(SparseArrays.nonzeros(prob.f.mass_matrix))
            M = SUNSparseMatrix(length(uvec), length(uvec), nnz, CSC_MAT)
            MLS = SUNLinSol_KLU(uvec, M)
            _M = MatrixHandle(M, SparseMatrix())
            _MLS = LinSolHandle(MLS, KLU())
        end
        flag = ARKStepSetMassLinearSolver(mem, MLS, _M === nothing ? C_NULL : M, false)
        function getmatfun(::T) where {T}
            @cfunction(massmat,
                       Cint,
                       (realtype, SUNMatrix, Ref{T}, N_Vector, N_Vector, N_Vector))
        end
        matfun = getmatfun(userfun)
        ARKStepSetMassFn(mem, matfun)
    else
        _M = nothing
        _MLS = nothing
    end

    if DiffEqBase.has_jac(prob.f) && alg.stiffness !== Explicit()
        function getfunjac(::T) where {T}
            @cfunction(cvodejac,
                       Cint,
                       (realtype,
                        N_Vector,
                        N_Vector,
                        SUNMatrix,
                        Ref{T},
                        N_Vector,
                        N_Vector,
                        N_Vector))
        end
        jac = getfunjac(userfun)
        flag = ARKStepSetUserData(mem, userfun)
        flag = ARKStepSetJacFn(mem, jac)
    else
        jac = nothing
    end

    if alg.prec !== nothing && alg.stiffness !== Explicit()
        function getpercfun(::T) where {T}
            @cfunction(precsolve,
                       Cint,
                       (Float64,
                        N_Vector,
                        N_Vector,
                        N_Vector,
                        N_Vector,
                        Float64,
                        Float64,
                        Int,
                        Ref{T}))
        end
        precfun = getpercfun(userfun)

        function getpsetupfun(::T) where {T}
            @cfunction(precsetup,
                       Cint,
                       (Float64, N_Vector, N_Vector, Int, Ptr{Int}, Float64, Ref{T}))
        end
        psetupfun = alg.psetup === nothing ? C_NULL : getpsetupfun(userfun)

        ARKStepSetPreconditioner(mem, psetupfun, precfun)
    end

    tmp = isnothing(callbacks_internal) ? u0 : similar(u0)
    uprev = isnothing(callbacks_internal) ? u0 : similar(u0)
    tout = [tspan[1]]

    if save_start
        if save_idxs === nothing
            ures = Vector{uType}()
            dures = Vector{uType}()
            save_value!(ures, u0, uType, save_idxs)
            if dense
                f!(out, u0, prob.p, tspan[1])
                save_value!(dures, out, uType, save_idxs)
            end
        else
            ures = [u0[save_idxs]]
            if dense
                f!(out, u0, prob.p, tspan[1])
                dures = [out[save_idxs]]
            end
        end
    else
        ures = Vector{uType}()
        dures = Vector{uType}()
    end

    sol = DiffEqBase.build_solution(prob,
                                    alg,
                                    ts,
                                    ures;
                                    dense = dense,
                                    interp = dense ?
                                             DiffEqBase.HermiteInterpolation(ts, ures,
                                                                             dures) :
                                             DiffEqBase.LinearInterpolation(ts, ures),
                                    timeseries_errors = timeseries_errors,
                                    stats = DiffEqBase.Stats(0),
                                    calculate_error = false)
    opts = DEOptions(saveat_internal,
                     tstops_internal,
                     saveat, tstops, save_start,
                     save_everystep, save_idxs,
                     dense,
                     timeseries_errors,
                     dense_errors,
                     save_on,
                     save_end,
                     callbacks_internal,
                     abstol,
                     reltol,
                     verbose,
                     advance_to_tstop,
                     stop_at_next_tstop,
                     progress,
                     progress_name,
                     progress_message,
                     maxiters)
    integrator = ARKODEIntegrator(u0,
                                  utmp,
                                  prob.p,
                                  t0,
                                  t0,
                                  mem,
                                  _LS,
                                  _A,
                                  _MLS,
                                  _M,
                                  sol,
                                  alg,
                                  f!,
                                  userfun,
                                  jac,
                                  opts,
                                  tout,
                                  tdir,
                                  false,
                                  tmp,
                                  uprev,
                                  Cint(flag),
                                  false,
                                  0,
                                  1,
                                  callback_cache,
                                  0.0)

    initialize_callbacks!(integrator)
    integrator
end # function solve

function tstop_saveat_disc_handling(tstops, saveat, tdir, tspan, tType)
    if isempty(tstops) # TODO: Specialize more
        tstops_vec = [tspan[2]]
    else
        tstops_vec = vec(collect(tType,
                                 Iterators.filter(x -> tdir * tspan[1] < tdir * x ≤
                                                       tdir * tspan[end],
                                                  Iterators.flatten((tstops, tspan[end])))))
    end

    if tdir > 0
        tstops_internal = DataStructures.BinaryMinHeap(tstops_vec)
    else
        tstops_internal = DataStructures.BinaryMaxHeap(tstops_vec)
    end

    if saveat isa Number
        if (tspan[1]:saveat:tspan[end])[end] == tspan[end]
            saveat_vec = convert(Vector{tType},
                                 collect(tType, (tspan[1] + saveat):saveat:tspan[end]))
        else
            saveat_vec = convert(Vector{tType},
                                 collect(tType,
                                         (tspan[1] + saveat):saveat:(tspan[end] - saveat)))
        end
    elseif isempty(saveat)
        saveat_vec = saveat
    else
        saveat_vec = vec(collect(tType,
                                 Iterators.filter(x -> tdir * tspan[1] < tdir * x <
                                                       tdir * tspan[end], saveat)))
    end

    if tdir > 0
        saveat_internal = DataStructures.BinaryMinHeap(saveat_vec)
    else
        saveat_internal = DataStructures.BinaryMaxHeap(saveat_vec)
    end

    tstops_internal, saveat_internal
end

## Solve for DAEs uses IDA

function DiffEqBase.__init(prob::DiffEqBase.AbstractDAEProblem{uType, duType, tupType,
                                                               isinplace},
                           alg::SundialsDAEAlgorithm{LinearSolver},
                           timeseries = [],
                           ts = [],
                           ks = [];
                           verbose = true,
                           dt = nothing,
                           dtmax = 0.0,
                           save_on = true,
                           save_start = true,
                           callback = nothing,
                           abstol = 1 / 10^6,
                           reltol = 1 / 10^3,
                           saveat = Float64[],
                           tstops = Float64[],
                           maxiters = Int(1e5),
                           timeseries_errors = true,
                           dense_errors = false,
                           save_everystep = isempty(saveat), save_idxs = nothing,
                           dense = save_everystep,
                           save_timeseries = nothing,
                           save_end = true,
                           progress = false,
                           progress_name = "DAE IDA",
                           progress_message = DiffEqBase.ODE_DEFAULT_PROG_MESSAGE,
                           advance_to_tstop = false,
                           stop_at_next_tstop = false,
                           userdata = nothing,
                           initializealg = IDADefaultInit(),
                           kwargs...) where {uType, duType, tupType, isinplace, LinearSolver
                                             }
    tType = eltype(tupType)

    if verbose
        warned = !isempty(kwargs) && DiffEqBase.check_keywords(alg, kwargs, warnida)
        warned && DiffEqBase.warn_compat()
    end

    if reltol isa AbstractArray
        error("Sundials only allows scalar reltol.")
    end

    if length(prob.u0) == 0
        error("Sundials requires at least one state variable.")
    end

    progress && Logging.@logmsg(-1, progress_name, _id=_id = :Sundials, progress=0)

    callbacks_internal = DiffEqBase.CallbackSet(callback)

    max_len_cb = DiffEqBase.max_vector_callback_length(callbacks_internal)
    if max_len_cb isa VectorContinuousCallback
        callback_cache = DiffEqBase.CallbackCache(max_len_cb.len, Float64, Float64)
    else
        callback_cache = nothing
    end

    tspan = prob.tspan
    t0 = tspan[1]

    tdir = sign(tspan[2] - tspan[1])

    tstops_internal, saveat_internal = tstop_saveat_disc_handling(tstops, saveat, tdir,
                                                                  tspan, tType)
    @assert size(prob.u0) == size(prob.du0)
    if prob.u0 isa Number
        u0 = [prob.u0]
        du0 = [prob.du0]
    else
        u0 = copy(prob.u0)
        du0 = copy(prob.du0)
    end

    ### Fix the more general function to Sundials allowed style
    if !isinplace && prob.u0 isa Number
        f! = (out, du, u, p, t) -> (out .= prob.f(first(du), first(u), p, t); Cint(0))
    elseif !isinplace
        f! = (out, du, u, p, t) -> (out .= prob.f(du, u, p, t); Cint(0))
    else # Then it's an in-place function on an abstract array
        f! = prob.f
    end

    mem_ptr = IDACreate()
    (mem_ptr == C_NULL) && error("Failed to allocate IDA solver object")
    mem = Handle(mem_ptr)

    !verbose && IDASetErrHandlerFn(mem,
                       @cfunction(null_error_handler, Nothing,
                                  (Cint, Char, Char, Ptr{Cvoid})),
                       C_NULL)

    ts = [t0]

    # vec shares memory
    utmp = NVector(vec(u0))
    dutmp = NVector(vec(du0))
    rtest = zeros(size(u0))

    use_jac_prototype = (isa(prob.f.jac_prototype, SparseArrays.SparseMatrixCSC) &&
                         LinearSolver ∈ SPARSE_SOLVERS)
    userfun = FunJac(f!,
                     prob.f.jac,
                     prob.p,
                     nothing,
                     use_jac_prototype ? prob.f.jac_prototype : nothing,
                     alg.prec,
                     alg.psetup,
                     u0,
                     du0,
                     rtest)

    function getcfun(::T) where {T}
        @cfunction(idasolfun, Cint, (realtype, N_Vector, N_Vector, N_Vector, Ref{T}))
    end
    cfun = getcfun(userfun)
    flag = IDAInit(mem, cfun, t0, utmp, dutmp)
    dt !== nothing && (flag = IDASetInitStep(mem, dt))
    flag = IDASetUserData(mem, userfun)
    flag = IDASetMaxStep(mem, dtmax)
    if abstol isa Array
        flag = IDASVtolerances(mem, reltol, abstol)
    else
        flag = IDASStolerances(mem, reltol, abstol)
    end
    flag = IDASetMaxNumSteps(mem, maxiters)
    flag = IDASetMaxOrd(mem, alg.max_order)
    flag = IDASetMaxErrTestFails(mem, alg.max_error_test_failures)
    flag = IDASetNonlinConvCoef(mem, alg.nonlinear_convergence_coefficient)
    flag = IDASetMaxNonlinIters(mem, alg.max_nonlinear_iters)
    flag = IDASetMaxConvFails(mem, alg.max_convergence_failures)
    flag = IDASetNonlinConvCoefIC(mem, alg.nonlinear_convergence_coefficient_ic)
    flag = IDASetMaxNumStepsIC(mem, alg.max_num_steps_ic)
    flag = IDASetMaxNumJacsIC(mem, alg.max_num_jacs_ic)
    flag = IDASetMaxNumItersIC(mem, alg.max_num_iters_ic)
    #flag = IDASetMaxBacksIC(mem,alg.max_num_backs_ic) # Needs newer version?
    flag = IDASetLineSearchOffIC(mem, alg.use_linesearch_ic)

    prec_side = isnothing(alg.prec) ? 0 : 1  # IDA only supports left preconditioning (prec_side = 1)
    if LinearSolver in (:Dense, :LapackDense)
        nojacobian = false
        A = SUNDenseMatrix(length(u0), length(u0))
        _A = MatrixHandle(A, DenseMatrix())
        if LinearSolver === :Dense
            LS = SUNLinSol_Dense(utmp, A)
            _LS = LinSolHandle(LS, Dense())
        else
            LS = SUNLinSol_LapackDense(u0, A)
            _LS = LinSolHandle(LS, LapackDense())
        end
    elseif LinearSolver in (:Band, :LapackBand)
        nojacobian = false
        A = SUNBandMatrix(length(u0), alg.jac_upper, alg.jac_lower)
        _A = MatrixHandle(A, BandMatrix())
        if LinearSolver === :Band
            LS = SUNLinSol_Band(utmp, A)
            _LS = LinSolHandle(LS, Band())
        else
            LS = SUNLinSol_LapackBand(utmp, A)
            _LS = LinSolHandle(LS, LapackBand())
        end
    elseif LinearSolver == :GMRES
        LS = SUNLinSol_SPGMR(utmp, prec_side, alg.krylov_dim)
        _A = nothing
        _LS = LinSolHandle(LS, SPGMR())
    elseif LinearSolver == :FGMRES
        LS = SUNLinSol_SPFGMR(utmp, prec_side, alg.krylov_dim)
        _A = nothing
        _LS = LinSolHandle(LS, SPFGMR())
    elseif LinearSolver == :BCG
        LS = SUNLinSol_SPBCGS(utmp, prec_side, alg.krylov_dim)
        _A = nothing
        _LS = LinSolHandle(LS, SPBCGS())
    elseif LinearSolver == :PCG
        LS = SUNLinSol_PCG(utmp, prec_side, alg.krylov_dim)
        _A = nothing
        _LS = LinSolHandle(LS, PCG())
    elseif LinearSolver == :TFQMR
        LS = SUNLinSol_SPTFQMR(utmp, prec_side, alg.krylov_dim)
        _A = nothing
        _LS = LinSolHandle(LS, PTFQMR())
    elseif LinearSolver == :KLU
        nnz = length(SparseArrays.nonzeros(prob.f.jac_prototype))
        A = SUNSparseMatrix(length(u0), length(u0), nnz, Sundials.CSC_MAT)
        LS = SUNLinSol_KLU(utmp, A)
        _A = MatrixHandle(A, SparseMatrix())
        _LS = LinSolHandle(LS, KLU())
    end
    flag = IDASetLinearSolver(mem, LS, _A === nothing ? C_NULL : A)

    if prob.f.jac_prototype isa AbstractSciMLOperator
        function getcfunjtimes(::T) where {T}
            @cfunction(idajactimes,
                       Cint,
                       (realtype,
                        N_Vector,
                        N_Vector,
                        N_Vector,
                        N_Vector,
                        N_Vector,
                        realtype,
                        Ref{T},
                        N_Vector,
                        N_Vector))
        end
        jtimes = getcfunjtimes(userfun)
        IDASetJacTimes(mem, C_NULL, jtimes)
    end

    if alg.prec !== nothing
        function getprecfun(::T) where {T}
            @cfunction(idaprecsolve,
                       Cint,
                       (Float64,
                        N_Vector,
                        N_Vector,
                        N_Vector,
                        N_Vector,
                        N_Vector,
                        Float64,
                        Float64,
                        Ref{T}))
        end
        precfun = getprecfun(userfun)

        function getpsetupfun(::T) where {T}
            @cfunction(idaprecsetup,
                       Cint,
                       (Float64, N_Vector, N_Vector, N_Vector, Float64, Ref{T}))
        end
        psetupfun = alg.psetup === nothing ? C_NULL : getpsetupfun(userfun)

        IDASetPreconditioner(mem, psetupfun, precfun)
    end

    if DiffEqBase.has_jac(prob.f)
        function getcfunjacc(::T) where {T}
            @cfunction(idajac,
                       Cint,
                       (realtype,
                        realtype,
                        N_Vector,
                        N_Vector,
                        N_Vector,
                        SUNMatrix,
                        Ref{T},
                        N_Vector,
                        N_Vector,
                        N_Vector))
        end
        jac = getcfunjacc(userfun)
        flag = IDASetUserData(mem, userfun)
        flag = IDASetJacFn(mem, jac)
    else
        jac = nothing
    end

    tout = [tspan[1]]
    if save_start
        if save_idxs === nothing
            ures = Vector{uType}()
            dures = Vector{uType}()
            save_value!(ures, u0, uType, save_idxs)
            if dense
                save_value!(dures, du0, uType, save_idxs)
            end
        else
            ures = [u0[save_idxs]]
            if dense
                dures = [du0[save_idxs]]
            end
        end
    else
        ures = Vector{uType}()
        dures = Vector{uType}()
    end

    tmp = isnothing(callbacks_internal) ? u0 : similar(u0)
    uprev = isnothing(callbacks_internal) ? u0 : similar(u0)
    retcode = flag >= 0 ? ReturnCode.Default : ReturnCode.InitialFailure
    sol = DiffEqBase.build_solution(prob,
                                    alg,
                                    ts,
                                    ures;
                                    dense = dense,
                                    interp = dense ?
                                             DiffEqBase.HermiteInterpolation(ts, ures,
                                                                             dures) :
                                             DiffEqBase.LinearInterpolation(ts, ures),
                                    calculate_error = false,
                                    timeseries_errors = timeseries_errors,
                                    retcode = retcode,
                                    stats = DiffEqBase.Stats(0),
                                    dense_errors = dense_errors)

    opts = DEOptions(saveat_internal,
                     tstops_internal,
                     saveat, tstops, save_start,
                     save_everystep, save_idxs,
                     dense,
                     timeseries_errors,
                     dense_errors,
                     save_on,
                     save_end,
                     callbacks_internal,
                     abstol,
                     reltol,
                     verbose,
                     advance_to_tstop,
                     stop_at_next_tstop,
                     progress,
                     progress_name,
                     progress_message,
                     maxiters)

    integrator = IDAIntegrator(u0,
                               du0,
                               prob.p,
                               t0,
                               t0,
                               mem,
                               _LS,
                               _A,
                               sol,
                               alg,
                               f!,
                               userfun,
                               jac,
                               opts,
                               tout,
                               tdir,
                               false,
                               tmp,
                               uprev,
                               Cint(flag),
                               false,
                               0,
                               1,
                               callback_cache,
                               0.0,
                               utmp,
                               dutmp,
                               initializealg)

    DiffEqBase.initialize_dae!(integrator, initializealg)
    initialize_callbacks!(integrator)
    integrator
end # function solve

## Common calls

function interpret_sundials_retcode(flag)
    flag >= 0 && return ReturnCode.Success
    flag == -1 && return ReturnCode.MaxIters
    (flag == -2 || flag == -3) && return ReturnCode.Unstable
    flag == -4 && return ReturnCode.ConvergenceFailure
    return ReturnCode.Failure
end

function solver_step(integrator::CVODEIntegrator, tstop)
    integrator.flag = CVode(integrator.mem, tstop, integrator.u_nvec, integrator.tout,
                            CV_ONE_STEP)
    if integrator.opts.progress
        Logging.@logmsg(-1,
                        integrator.opts.progress_name,
                        _id=:Sundials,
                        message=integrator.opts.progress_message(integrator.dt,
                                                                 integrator.u,
                                                                 integrator.p,
                                                                 integrator.t),
                        progress=integrator.t / integrator.sol.prob.tspan[2])
    end
end
function solver_step(integrator::ARKODEIntegrator, tstop)
    integrator.flag = ARKStepEvolve(integrator.mem, tstop, integrator.u_nvec,
                                    integrator.tout, ARK_ONE_STEP)
    if integrator.opts.progress
        Logging.@logmsg(-1,
                        integrator.opts.progress_name,
                        _id=:Sundials,
                        message=integrator.opts.progress_message(integrator.dt,
                                                                 integrator.u_nvec,
                                                                 integrator.p,
                                                                 integrator.t),
                        progress=integrator.t / integrator.sol.prob.tspan[2])
    end
end
function solver_step(integrator::IDAIntegrator, tstop)
    integrator.flag = IDASolve(integrator.mem,
                               tstop,
                               integrator.tout,
                               integrator.u_nvec,
                               integrator.du_nvec,
                               IDA_ONE_STEP)
    if integrator.opts.progress
        Logging.@logmsg(-1,
                        integrator.opts.progress_name,
                        _id=:Sundials,
                        message=integrator.opts.progress_message(integrator.dt,
                                                                 integrator.u,
                                                                 integrator.p,
                                                                 integrator.t),
                        progress=integrator.t / integrator.sol.prob.tspan[2])
    end
end

function set_stop_time(integrator::CVODEIntegrator, tstop)
    CVodeSetStopTime(integrator.mem, tstop)
end
function set_stop_time(integrator::ARKODEIntegrator, tstop)
    ARKStepSetStopTime(integrator.mem, tstop)
end
function set_stop_time(integrator::IDAIntegrator, tstop)
    IDASetStopTime(integrator.mem, tstop)
end

function get_iters!(integrator::CVODEIntegrator, iters)
    CVodeGetNumSteps(integrator.mem, iters)
end
function get_iters!(integrator::ARKODEIntegrator, iters)
    ARKStepGetNumSteps(integrator.mem, iters)
end
function get_iters!(integrator::IDAIntegrator, iters)
    IDAGetNumSteps(integrator.mem, iters)
end

function DiffEqBase.solve!(integrator::AbstractSundialsIntegrator; early_free = false,
                           calculate_error = false)
    uType = eltype(integrator.sol.u)
    iters = Ref(Clong(-1))
    while !isempty(integrator.opts.tstops)
        # Sundials can have floating point issues approaching a tstop if
        # there is a modifying event each
        # The call to first is an overload of Base.first implemented in DataStructures
        while integrator.tdir * (integrator.t - first(integrator.opts.tstops)) < -1e6eps()
            tstop = first(integrator.opts.tstops)
            set_stop_time(integrator, tstop)
            integrator.tprev = integrator.t
            if !(integrator.opts.callback.continuous_callbacks isa Tuple{})
                integrator.uprev .= integrator.u
            end
            integrator.userfun.p = integrator.p
            solver_step(integrator, tstop)
            integrator.t = first(integrator.tout)
            integrator.flag < 0 && break
            handle_callbacks!(integrator) # this also updates the interpolation
            integrator.flag < 0 && break
            if isempty(integrator.opts.tstops)
                break
            end
            get_iters!(integrator, iters)
            if iters[] + 1 > integrator.opts.maxiters
                integrator.flag = -1 # MaxIters: -1
                break
            end
        end
        integrator.flag < 0 && break
        handle_tstop!(integrator)
    end

    tend = integrator.t
    if integrator.opts.save_end &&
       (isempty(integrator.sol.t) || integrator.sol.t[end] != tend)
        save_value!(integrator.sol.u, integrator.u, uType,
                    integrator.opts.save_idxs)
        push!(integrator.sol.t, tend)
        if integrator.opts.dense
            save_value!(integrator.sol.interp.du, get_du(integrator), uType,
                        integrator.opts.save_idxs)
        end
    end

    if integrator.opts.progress
        Logging.@logmsg(-1,
                        integrator.opts.progress_name,
                        _id=:Sundials,
                        message=integrator.opts.progress_message(integrator.dt,
                                                                 integrator.u,
                                                                 integrator.p,
                                                                 integrator.t),
                        progress="done")
    end

    fill_stats!(integrator)

    if early_free
        empty!(integrator.mem)
        integrator.A !== nothing && empty!(integrator.A)
        integrator.LS !== nothing && empty!(integrator.LS)
    end

    if DiffEqBase.has_analytic(integrator.sol.prob.f) && calculate_error
        DiffEqBase.calculate_solution_errors!(integrator.sol;
                                              timeseries_errors = integrator.opts.timeseries_errors,
                                              dense_errors = integrator.opts.dense_errors)
    end

    if integrator.sol.retcode == ReturnCode.Default
        integrator.sol = DiffEqBase.solution_new_retcode(integrator.sol,
                                                         interpret_sundials_retcode(integrator.flag))
    end

    return integrator.sol
end

function handle_tstop!(integrator::AbstractSundialsIntegrator)
    tstops = integrator.opts.tstops
    if !isempty(tstops)
        if integrator.tdir * (integrator.t - first(integrator.opts.tstops)) > -1e6eps()
            pop!(tstops)
            t = integrator.t
            integrator.just_hit_tstop = true
        end
    end
end

function fill_stats!(integrator::AbstractSundialsIntegrator) end

function fill_stats!(integrator::CVODEIntegrator)
    stats = integrator.sol.stats
    mem = integrator.mem
    tmp = Ref(Clong(-1))
    CVodeGetNumRhsEvals(mem, tmp)
    stats.nf = tmp[]
    CVodeGetNumLinSolvSetups(mem, tmp)
    stats.nw = tmp[]
    CVodeGetNumErrTestFails(mem, tmp)
    stats.nreject = tmp[]
    CVodeGetNumSteps(mem, tmp)
    stats.naccept = tmp[] - stats.nreject
    CVodeGetNumNonlinSolvIters(mem, tmp)
    stats.nnonliniter = tmp[]
    CVodeGetNumNonlinSolvConvFails(mem, tmp)
    stats.nnonlinconvfail = tmp[]
    if method_choice(integrator.alg) == :Newton
        CVodeGetNumJacEvals(mem, tmp)
        stats.njacs = tmp[]
    end
end

function fill_stats!(integrator::ARKODEIntegrator)
    stats = integrator.sol.stats
    mem = integrator.mem
    tmp = Ref(Clong(-1))
    tmp2 = Ref(Clong(-1))
    ARKStepGetNumRhsEvals(mem, tmp, tmp2)
    stats.nf = tmp[]
    stats.nf2 = tmp2[]
    integrator.alg.stiffness !== Explicit() && ARKStepGetNumLinSolvSetups(mem, tmp)
    stats.nw = tmp[]
    ARKStepGetNumErrTestFails(mem, tmp)
    stats.nreject = tmp[]
    ARKStepGetNumSteps(mem, tmp)
    stats.naccept = tmp[] - stats.nreject
    integrator.alg.stiffness !== Explicit() && ARKStepGetNumNonlinSolvIters(mem, tmp)
    stats.nnonliniter = tmp[]
    integrator.alg.stiffness !== Explicit() && ARKStepGetNumNonlinSolvConvFails(mem, tmp)
    stats.nnonlinconvfail = tmp[]
    if integrator.alg.stiffness !== Explicit() && method_choice(integrator.alg) == :Newton
        ARKStepGetNumJacEvals(mem, tmp)
        stats.njacs = tmp[]
    end
end

function fill_stats!(integrator::IDAIntegrator)
    stats = integrator.sol.stats
    mem = integrator.mem
    tmp = Ref(Clong(-1))
    IDAGetNumResEvals(mem, tmp)
    stats.nf = tmp[]
    IDAGetNumLinSolvSetups(mem, tmp)
    stats.nw = tmp[]
    IDAGetNumErrTestFails(mem, tmp)
    stats.nreject = tmp[]
    IDAGetNumSteps(mem, tmp)
    stats.naccept = tmp[] - stats.nreject
    IDAGetNumNonlinSolvIters(mem, tmp)
    stats.nnonliniter = tmp[]
    IDAGetNumNonlinSolvConvFails(mem, tmp)
    stats.nnonlinconvfail = tmp[]
    if method_choice(integrator.alg) == :Newton
        IDAGetNumJacEvals(mem, tmp)
        stats.njacs = tmp[]
    end
end

function initialize_callbacks!(integrator, initialize_save = true)
    t = integrator.t
    u = integrator.u
    callbacks = integrator.opts.callback
    integrator.u_modified = true

    u_modified = initialize!(callbacks, u, t, integrator)

    # if the user modifies u, we need to fix current values
    if u_modified
        handle_callback_modifiers!(integrator)

        if initialize_save &&
           (any((c) -> c.save_positions[2], callbacks.discrete_callbacks) ||
            any((c) -> c.save_positions[2], callbacks.continuous_callbacks))
            savevalues!(integrator, true)
        end
    end

    # reset this as it is now handled so the integrators should proceed as normal
    integrator.u_modified = false
end
