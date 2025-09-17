# DefaultInit for all Sundials integrators - handles ModelingToolkit parameter initialization
function DiffEqBase.initialize_dae!(integrator::AbstractSundialsIntegrator,
        initializealg::DefaultInit)
    prob = integrator.sol.prob
    if prob.f.initialization_data !== nothing
        DiffEqBase.initialize_dae!(integrator, SciMLBase.OverrideInit())
    else
        DiffEqBase.initialize_dae!(integrator, SciMLBase.CheckInit())
    end
end

function DiffEqBase.initialize_dae!(integrator::IDAIntegrator,
        initializealg::BrownFullBasicInit)
    if integrator.u_modified
        IDAReinit!(integrator)
    end
    integrator.f(integrator.tmp, integrator.du, integrator.u, integrator.p, integrator.t)
    tstart, tend = integrator.sol.prob.tspan
    # Use abstol from algorithm parameter (defaults to 1e-10)
    if any(abs.(integrator.tmp) .>= initializealg.abstol)
        if integrator.sol.prob.differential_vars === nothing
            error("Must supply differential_vars argument to DAEProblem constructor to use IDA initial value solver.")
        end
        # BrownFullBasicInit only modifies algebraic variables
        init_type = IDA_YA_YDP_INIT
        # Use preallocated NVector for differential_vars
        if integrator.diff_vars_nvec !== nothing
            integrator.flag = IDASetId(integrator.mem, integrator.diff_vars_nvec)
        else
            error("differential_vars NVector not preallocated but needed for IDASetId")
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

function DiffEqBase.initialize_dae!(integrator::IDAIntegrator,
        initializealg::ShampineCollocationInit)
    if integrator.u_modified
        IDAReinit!(integrator)
    end
    integrator.f(integrator.tmp, integrator.du, integrator.u, integrator.p, integrator.t)
    tstart, tend = integrator.sol.prob.tspan
    if any(abs.(integrator.tmp) .>= integrator.opts.reltol)
        # ShampineCollocationInit modifies all variables
        init_type = IDA_Y_INIT
        # Use initdt from algorithm if provided, otherwise fall back to integrator.dt
        dt = if initializealg.initdt !== nothing
            initializealg.initdt
        elseif integrator.dt == tstart
            tend
        else
            integrator.dt
        end
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

function DiffEqBase.initialize_dae!(integrator::AbstractSundialsIntegrator,
        initializealg::SciMLBase.CheckInit)
    # Not allowed to be a DAE, so no-op
end

function DiffEqBase.initialize_dae!(integrator::AbstractSundialsIntegrator, initalg::SciMLBase.NoInit) end

function DiffEqBase.initialize_dae!(integrator::AbstractSundialsIntegrator, initalg::SciMLBase.OverrideInit)
    prob = integrator.sol.prob
    nlsolve_alg = KINSOL()
    u0, p, success = SciMLBase.get_initial_values(prob, integrator, prob.f, initalg, Val(isinplace(prob)); nlsolve_alg, abstol = integrator.opts.abstol, reltol = integrator.opts.reltol)

    if isinplace(prob)
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

    if success
        integrator.u_modified = true
    else
        integrator.sol = SciMLBase.solution_new_retcode(integrator.sol, ReturnCode.InitialFailure)
    end
end

# Implementation of CheckInit for IDAIntegrator
function DiffEqBase.initialize_dae!(integrator::IDAIntegrator,
        initializealg::SciMLBase.CheckInit)
    if integrator.u_modified
        IDAReinit!(integrator)
    end

    # Evaluate the DAE residual at the initial conditions
    integrator.f(integrator.tmp, integrator.du, integrator.u, integrator.p, integrator.t)

    # Check if residuals are within tolerance
    if any(abs.(integrator.tmp) .>= integrator.opts.abstol)
        error("""
        DAE initialization failed with CheckInit: Initial conditions do not satisfy the DAE constraints.

        The residual norm is $(maximum(abs.(integrator.tmp))), which exceeds the tolerance $(integrator.opts.abstol).

        Note that the initial conditions include both `du0` (derivatives) and `u0` (states),
        and the choice of derivatives must be compatible with the states.

        To resolve this issue, you have several options:
        1. Fix your initial conditions (both `du0` and `u0`) to satisfy the DAE constraints
        2. Use Brown's full basic initialization: initializealg = DiffEqBase.BrownFullBasicInit()
           - Optional: specify tolerance with DiffEqBase.BrownFullBasicInit(abstol=1e-8)
        3. Use Shampine's collocation initialization: initializealg = DiffEqBase.ShampineCollocationInit()
           - Optional: specify initial dt with DiffEqBase.ShampineCollocationInit(0.001)
        4. If using ModelingToolkit, use: initializealg = SciMLBase.OverrideInit()

        Example for automatic initialization:
        solve(prob, IDA(); initializealg = DiffEqBase.BrownFullBasicInit())
        """)
    end
end
