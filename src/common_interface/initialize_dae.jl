struct SundialsDefaultInit <: DiffEqBase.DAEInitializationAlgorithm end

function DiffEqBase.initialize_dae!(integrator::AbstractSundialsIntegrator, initializealg = integrator.initializealg)
    _initialize_dae!(integrator, integrator.sol.prob, initializealg, Val(DiffEqBase.isinplace(integrator.sol.prob)))
end

struct IDADefaultInit <: DiffEqBase.DAEInitializationAlgorithm
end

function _initialize_dae!(integrator::IDAIntegrator, prob,
    initializealg::IDADefaultInit, isinplace)
    if integrator.u_modified
        IDAReinit!(integrator)
    end
    integrator.f(integrator.tmp, integrator.du, integrator.u, integrator.p, integrator.t)
    tstart, tend = integrator.sol.prob.tspan
    if any(abs.(integrator.tmp) .>= integrator.opts.reltol)
        if integrator.sol.prob.differential_vars === nothing && !integrator.alg.init_all
            error("Must supply differential_vars argument to DAEProblem constructor to use IDA initial value solver.")
        end
        if integrator.alg.init_all
            init_type = IDA_Y_INIT
        else
            init_type = IDA_YA_YDP_INIT
            # Use preallocated NVector for differential_vars
            if integrator.diff_vars_nvec !== nothing
                integrator.flag = IDASetId(integrator.mem, integrator.diff_vars_nvec)
            else
                error("differential_vars NVector not preallocated but needed for IDASetId")
            end
        end
        dt = integrator.dt == tstart ? tend : integrator.dt
        integrator.flag = IDACalcIC(integrator.mem, init_type, dt)

        # Reflect consistent initial conditions back into the integrator's
        # shadow copy. N.B.: ({du, u}_nvec are aliased to {du, u}).
        IDAGetConsistentIC(integrator.mem, integrator.u_nvec, integrator.du_nvec)
    end
    if integrator.t == tstart && integrator.flag < 0
        integrator.sol = SciMLBase.solution_new_retcode(integrator.sol,
            ReturnCode.InitialFailure)
    end
end

function _initialize_dae!(integrator, prob, ::SundialsDefaultInit, isinplace)
    if SciMLBase.has_initializeprob(prob.f)
        _initialize_dae!(integrator, prob, SciMLBase.OverrideInit(), isinplace)
    elseif integrator isa IDAIntegrator
        _initialize_dae!(integrator, prob, IDADefaultInit(), isinplace)
    end
end

function _initialize_dae!(integrator, prob, initalg::SciMLBase.NoInit, isinplace) end

function _initialize_dae!(integrator, prob, initalg::SciMLBase.OverrideInit, isinplace::Union{Val{true}, Val{false}})
    nlsolve_alg = KINSOL()
    u0, p, success = SciMLBase.get_initial_values(prob, integrator, prob.f, initalg, isinplace; nlsolve_alg, abstol = integrator.opts.abstol, reltol = integrator.opts.reltol)

    if isinplace === Val{true}()
        integrator.u .= u0
        if length(integrator.sol.u) == 1
            integrator.sol.u[1] .= u0
        end
    else
        integrator.u = u0
        if length(integrator.sol.u) == 1
            integrator.sol.u[1] = u0
        end
    end
    integrator.p = p
    sol = integrator.sol
    @reset sol.prob.p = integrator.p
    integrator.sol = sol

    # For IDA, we need to reinitialize the solver after changing u, du, or p
    if integrator isa IDAIntegrator && success
        integrator.u_modified = true
    end

    if !success
        integrator.sol = SciMLBase.solution_new_retcode(integrator.sol, ReturnCode.InitialFailure)
    end
end

function _initialize_dae!(integrator, prob, initalg::SciMLBase.CheckInit, isinplace::Union{Val{true}, Val{false}})
    SciMLBase.get_initial_values(prob, integrator, prob.f, initalg, isinplace; abstol = integrator.opts.abstol)
end
