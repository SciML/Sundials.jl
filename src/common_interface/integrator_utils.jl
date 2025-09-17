function handle_callbacks!(integrator)
    discrete_callbacks = integrator.opts.callback.discrete_callbacks
    continuous_callbacks = integrator.opts.callback.continuous_callbacks
    atleast_one_callback = false

    continuous_modified = false
    discrete_modified = false
    saved_in_cb = false
    if !(continuous_callbacks isa Tuple{})
        time, upcrossing,
        event_occurred,
        event_idx,
        idx,
        counter = DiffEqBase.find_first_continuous_callback(integrator,
            continuous_callbacks...)
        if event_occurred
            integrator.event_last_time = idx
            integrator.vector_event_last_time = event_idx
            continuous_modified,
            saved_in_cb = DiffEqBase.apply_callback!(integrator,
                continuous_callbacks[idx],
                time,
                upcrossing,
                event_idx)
        else
            integrator.event_last_time = 0
            integrator.vector_event_last_time = 1
        end
    end
    if !(discrete_callbacks isa Tuple{})
        discrete_modified,
        saved_in_cb = DiffEqBase.apply_discrete_callback!(integrator,
            discrete_callbacks...)
    end

    integrator.u_modified = continuous_modified || discrete_modified
    if integrator.u_modified
        handle_callback_modifiers!(integrator)
    end

    if !saved_in_cb
        savevalues!(integrator)
    end

    integrator.u_modified = false
end

function DiffEqBase.savevalues!(integrator::AbstractSundialsIntegrator,
        force_save = false)::Tuple{Bool, Bool}
    saved, savedexactly = false, false
    !integrator.opts.save_on && return saved, savedexactly
    uType = typeof(integrator.sol.prob.u0)
    # The call to first is an overload of Base.first implemented in DataStructures
    while !isempty(integrator.opts.saveat) &&
        first(integrator.opts.saveat) <= integrator.tdir * integrator.t
        saved = true
        curt = integrator.tdir * pop!(integrator.opts.saveat)
        tmp = integrator(curt)
        save_value!(integrator.sol.u, tmp, uType,
            integrator.opts.save_idxs, false)
        push!(integrator.sol.t, curt)
        if integrator.opts.dense
            tmp = integrator(curt, Val{1})
            save_value!(integrator.sol.interp.du, tmp, uType,
                integrator.opts.save_idxs, false)
        end
    end

    if force_save || integrator.opts.save_everystep ||
       (integrator.opts.save_everystep && (isempty(integrator.sol.t) ||
         (integrator.t !== integrator.sol.t[end])))
        saved = true
        save_value!(integrator.sol.u, integrator.u, uType,
            integrator.opts.save_idxs)
        push!(integrator.sol.t, integrator.t)
        if integrator.opts.dense
            tmp = DiffEqBase.get_du(integrator)
            save_value!(integrator.sol.interp.du, tmp, uType,
                integrator.opts.save_idxs)
        end
    end
    savedexactly = !isempty(integrator.sol.t) && last(integrator.sol.t) == integrator.t
    return saved, savedexactly
end

function save_value!(save_array, val, ::Type{<:Number}, save_idxs, make_copy::Bool = true)
    push!(save_array, first(val))
end
function save_value!(save_array,
        val,
        ::Type{<:AbstractArray},
        save_idxs,
        make_copy::Bool = true)
    save = if save_idxs !== nothing
        val[save_idxs]
    else
        make_copy ? copy(val) : val
    end
    push!(save_array, save)
end

function handle_callback_modifiers!(integrator::CVODEIntegrator)
    CVodeReInit(integrator.mem, integrator.t, integrator.u_nvec)
end

# Dispatch for ARKStep (implicit methods)
function handle_callback_modifiers!(integrator::ARKODEIntegrator{N,
        pType,
        solType,
        algType,
        fType,
        UFType,
        JType,
        oType,
        LStype,
        Atype,
        MLStype,
        Mtype,
        CallbackCacheType,
        ARKStepMem}) where {N, pType, solType, algType, fType, UFType, JType, oType,
        LStype, Atype, MLStype, Mtype, CallbackCacheType}
    ARKStepReInit(integrator.mem, integrator.userfun.fun2, integrator.userfun.fun,
        integrator.t, integrator.u)
end

# Dispatch for ERKStep (explicit methods)
function handle_callback_modifiers!(integrator::ARKODEIntegrator{N,
        pType,
        solType,
        algType,
        fType,
        UFType,
        JType,
        oType,
        LStype,
        Atype,
        MLStype,
        Mtype,
        CallbackCacheType,
        ERKStepMem}) where {N, pType, solType, algType, fType, UFType, JType, oType,
        LStype, Atype, MLStype, Mtype, CallbackCacheType}
    # ERKStepReInit only takes one function (explicit RHS)
    ERKStepReInit(integrator.mem, integrator.userfun.fun, integrator.t, integrator.u)
end

"""
    IDAReinit!(integrator)

The `integrator` object keeps a shadow copy of `u`, `du` and `t`. If these are
modified, this function needs to be called in order to update the solver's
internal datastructures to re-gain consistency.
"""
function IDAReinit!(integrator::IDAIntegrator)
    IDAReInit(integrator.mem, integrator.t, integrator.u_nvec, integrator.du_nvec)
    integrator.u_modified = false
end

function handle_callback_modifiers!(integrator::IDAIntegrator)
    # Implicitly does IDAReinit!
    DiffEqBase.initialize_dae!(integrator, DiffEqBase.BrownFullBasicInit())
end

function DiffEqBase.add_tstop!(integrator::AbstractSundialsIntegrator, t)
    integrator.tdir * (t - integrator.t) < 0 &&
        error("Tried to add a tstop that is behind the current time. This is strictly forbidden")
    push!(integrator.opts.tstops, integrator.tdir * t)
end

function DiffEqBase.add_saveat!(integrator::AbstractSundialsIntegrator, t)
    integrator.tdir * (t - integrator.t) < 0 &&
        error("Tried to add a saveat that is behind the current time. This is strictly forbidden")
    push!(integrator.opts.saveat, integrator.tdir * t)
end

DiffEqBase.get_tmp_cache(integrator::AbstractSundialsIntegrator) = (integrator.tmp,)

@inline function DiffEqBase.u_modified!(integrator::AbstractSundialsIntegrator, bool::Bool)
    integrator.u_modified = bool
end

function DiffEqBase.terminate!(integrator::AbstractSundialsIntegrator,
        retcode = ReturnCode.Terminated)
    integrator.sol = DiffEqBase.solution_new_retcode(integrator.sol, retcode)
    integrator.opts.tstops.valtree = typeof(integrator.opts.tstops.valtree)()
end

@inline function DiffEqBase.get_du(integrator::AbstractSundialsIntegrator)
    integrator(integrator.t, Val{1})
end

@inline function DiffEqBase.get_du!(out, integrator::AbstractSundialsIntegrator)
    integrator(out, integrator.t, Val{1})
end

@inline function DiffEqBase.get_du(integrator::IDAIntegrator)
    integrator.du
end

@inline function DiffEqBase.get_du!(out, integrator::IDAIntegrator)
    out .= integrator.du
end

function DiffEqBase.change_t_via_interpolation!(integrator::AbstractSundialsIntegrator, t,
        modify_save_endpoint::Type{Val{T}} = Val{false},
        reinitialize_alg = nothing) where {T}
    integrator.t = t
    integrator(integrator.u, integrator.t)
    return nothing
end

@inline function Base.getproperty(integrator::AbstractSundialsIntegrator, sym::Symbol)
    if sym == :dt
        return integrator.t - integrator.tprev
    elseif sym == :ps
        return ParameterIndexingProxy(integrator)
    else
        return getfield(integrator, sym)
    end
end

function DiffEqBase.reeval_internals_due_to_modification!(integrator::AbstractSundialsIntegrator)
    integrator.userfun.p = integrator.p
    nothing
end
function DiffEqBase.reeval_internals_due_to_modification!(integrator::IDAIntegrator)
    integrator.userfun.p = integrator.p
    handle_callback_modifiers!(integrator::IDAIntegrator)
end

# Required for callbacks
DiffEqBase.set_proposed_dt!(i::AbstractSundialsIntegrator, dt) = nothing

# DAE Initialization
DiffEqBase.initialize_dae!(integrator::AbstractSundialsIntegrator) = nothing

function DiffEqBase.initialize_dae!(integrator::IDAIntegrator,
        initializealg::DiffEqBase.DefaultInit)
    # DefaultInit intelligently chooses the actual initialization algorithm
    prob = integrator.sol.prob
    if haskey(prob.kwargs, :initialization_data) && prob.kwargs[:initialization_data] !== nothing
        # Use OverrideInit for ModelingToolkit problems with initialization_data
        DiffEqBase.initialize_dae!(integrator, SciMLBase.OverrideInit())
    else
        # Default to CheckInit - require opt-in for initialization
        DiffEqBase.initialize_dae!(integrator, SciMLBase.CheckInit())
    end
end

function DiffEqBase.initialize_dae!(integrator::IDAIntegrator,
        initializealg::DiffEqBase.BrownFullBasicInit)
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
        initializealg::DiffEqBase.ShampineCollocationInit)
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
           - Optional: specify tolerance with BrownFullBasicInit(abstol=1e-8)
        3. Use Shampine's collocation initialization: initializealg = DiffEqBase.ShampineCollocationInit()
           - Optional: specify initial dt with ShampineCollocationInit(0.001)
        4. If using ModelingToolkit, use: initializealg = SciMLBase.OverrideInit()

        Example for automatic initialization:
        solve(prob, IDA(); initializealg = DiffEqBase.BrownFullBasicInit())
        """)
    end
end

# Implementation of OverrideInit for IDAIntegrator - delegate to supertype
function DiffEqBase.initialize_dae!(integrator::IDAIntegrator,
        initializealg::SciMLBase.OverrideInit)
    # Call the generic implementation from SciMLBase
    invoke(DiffEqBase.initialize_dae!, Tuple{Any, SciMLBase.OverrideInit}, integrator, initializealg)
end

DiffEqBase.has_reinit(integrator::AbstractSundialsIntegrator) = true
function DiffEqBase.reinit!(integrator::AbstractSundialsIntegrator,
        u0 = integrator.sol.prob.u0;
        t0 = integrator.sol.prob.tspan[1],
        tf = integrator.sol.prob.tspan[2],
        erase_sol = true,
        tstops = integrator.opts.tstops_cache,
        saveat = integrator.opts.saveat_cache,
        reinit_callbacks = true, initialize_save = true,
        reinit_retcode = true,
        reinit_cache = true)
    if isinplace(integrator.sol.prob)
        copyto!(integrator.u, u0)
        copyto!(integrator.uprev, integrator.u)
    else
        integrator.u = u0
        integrator.uprev = integrator.u
    end

    integrator.t = t0
    integrator.tprev = t0

    tType = typeof(integrator.t)
    tspan = (tType(t0), tType(tf))
    tdir = sign(tspan[2] - tspan[1])

    tstops_internal,
    saveat_internal = tstop_saveat_disc_handling(tstops, saveat, tdir,
        tspan,
        eltype(integrator.t))

    integrator.opts.tstops = tstops_internal
    integrator.opts.saveat = saveat_internal

    if erase_sol
        if integrator.opts.save_start
            resize_start = 1
        else
            resize_start = 0
        end
        resize!(integrator.sol.u, resize_start)
        resize!(integrator.sol.t, resize_start)
        if integrator.opts.save_start
            integrator.sol.t[1] = t0
            if integrator.opts.save_idxs === nothing
                integrator.sol.u[1] = u0
            else
                u_initial = u0[integrator.opts.save_idxs]
                integrator.sol.u[1] = u_initial
            end
        end
        if integrator.sol.u_analytic !== nothing
            resize!(integrator.sol.u_analytic, 0)
        end
    end

    integrator.u_modified = false
    handle_callback_modifiers!(integrator)

    if reinit_callbacks
        initialize_callbacks!(integrator, initialize_save)
    end

    if reinit_retcode
        integrator.sol = SciMLBase.solution_new_retcode(integrator.sol, ReturnCode.Default)
    end

    nothing
end

DiffEqBase.get_tstops(integ::AbstractSundialsIntegrator) = integ.opts.tstops
DiffEqBase.get_tstops_array(integ::AbstractSundialsIntegrator) = get_tstops(integ).valtree
function DiffEqBase.get_tstops_max(integ::AbstractSundialsIntegrator)
    maximum(get_tstops_array(integ))
end

# SII
SII.symbolic_container(integ::AbstractSundialsIntegrator) = integ.sol
