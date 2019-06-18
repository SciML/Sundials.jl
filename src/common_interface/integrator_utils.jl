function handle_callbacks!(integrator)
  discrete_callbacks = integrator.opts.callback.discrete_callbacks
  continuous_callbacks = integrator.opts.callback.continuous_callbacks
  atleast_one_callback = false

  continuous_modified = false
  discrete_modified = false
  saved_in_cb = false
  if !(typeof(continuous_callbacks)<:Tuple{})
    time,upcrossing,event_occured,event_idx,idx,counter =
              DiffEqBase.find_first_continuous_callback(integrator,continuous_callbacks...)
    if event_occured
      integrator.event_last_time = idx
      integrator.vector_event_last_time = event_idx
      continuous_modified,saved_in_cb = DiffEqBase.apply_callback!(integrator,continuous_callbacks[idx],time,upcrossing,event_idx)
    else
      integrator.event_last_time = 0
      integrator.vector_event_last_time = 1
    end
  end
  if !(typeof(discrete_callbacks)<:Tuple{})
    discrete_modified,saved_in_cb = DiffEqBase.apply_discrete_callback!(integrator,discrete_callbacks...)
  end
  if !saved_in_cb
    savevalues!(integrator)
  end

  integrator.u_modified = continuous_modified || discrete_modified
  if integrator.u_modified
    handle_callback_modifiers!(integrator)
  end
  integrator.u_modified = false
end

function DiffEqBase.savevalues!(integrator::AbstractSundialsIntegrator,force_save=false)::Tuple{Bool,Bool}
  saved, savedexactly = false, false
  !integrator.opts.save_on && return saved, savedexactly
  uType = eltype(integrator.sol.u)
  while !isempty(integrator.opts.saveat) &&
    integrator.tdir*top(integrator.opts.saveat) < integrator.tdir*first(integrator.tout)

    saved = true
    curt = pop!(integrator.opts.saveat)
    tmp = integrator(curt)
    save_value!(integrator.sol.u,tmp,uType,integrator.sizeu,Val{false})
    push!(integrator.sol.t,curt)
    if integrator.opts.dense
      tmp = integrator(curt,Val{1})
      save_value!(integrator.sol.interp.du,tmp,uType,integrator.sizeu,Val{false})
    end
  end

  if integrator.opts.save_everystep || force_save
    saved = true
    save_value!(integrator.sol.u,integrator.u,uType,integrator.sizeu)
    push!(integrator.sol.t, integrator.t)
    if integrator.opts.dense
      tmp = integrator(integrator.t,Val{1})
      save_value!(integrator.sol.interp.du,tmp,uType,integrator.sizeu)
    end
  end
  savedexactly = !isempty(integrator.sol.t) && last(integrator.sol.t) == integrator.t
  return saved, savedexactly
end

function save_value!(save_array,val,::Type{T},sizeu,
                     make_copy::Type{Val{bool}}=Val{true}) where {T <: Number,bool}
    push!(save_array,first(val))
end
function save_value!(save_array,val,::Type{T},sizeu,
                     make_copy::Type{Val{bool}}=Val{true}) where {T <: Vector,bool}
    bool ? save = copy(val) : save = val
    push!(save_array,save)
end
function save_value!(save_array,val,::Type{T},sizeu,
                     make_copy::Type{Val{bool}}=Val{true}) where {T <: Array,bool}
    bool ? save = copy(val) : save = val
    push!(save_array,reshape(save,sizeu))
end

function handle_callback_modifiers!(integrator::CVODEIntegrator)
  CVodeReInit(integrator.mem,integrator.t,integrator.u)
end

function handle_callback_modifiers!(integrator::ARKODEIntegrator)
  ARKodeReInit(integrator.mem,integrator.t,integrator.u)
end

function handle_callback_modifiers!(integrator::IDAIntegrator)
  IDAReInit(integrator.mem,integrator.t,integrator.u,integrator.du)
  integrator.f(integrator.tmp, integrator.du, integrator.u, integrator.p, integrator.t)
  if any(abs.(integrator.tmp) .>= integrator.opts.reltol)
      if integrator.sol.prob.differential_vars === nothing && !integrator.alg.init_all
          error("Must supply differential_vars argument to DAEProblem constructor to use IDA initial value solver.")
      end
      if integrator.alg.init_all
          init_type = IDA_Y_INIT
      else
          init_type = IDA_YA_YDP_INIT
          integrator.flag = IDASetId(integrator.mem, integrator.sol.prob.differential_vars)
      end
      integrator.flag = IDACalcIC(integrator.mem, init_type, integrator.dt)
  end
end

function DiffEqBase.add_tstop!(integrator::AbstractSundialsIntegrator,t)
  t < integrator.t && error("Tried to add a tstop that is behind the current time. This is strictly forbidden")
  push!(integrator.opts.tstops,t)
end

function DiffEqBase.add_saveat!(integrator::AbstractSundialsIntegrator,t)
  integrator.tdir * (t - integrator.t) < 0 && error("Tried to add a saveat that is behind the current time. This is strictly forbidden")
  push!(integrator.opts.saveat,t)
end

DiffEqBase.get_tmp_cache(integrator::AbstractSundialsIntegrator) = (integrator.tmp,)

@inline function DiffEqBase.u_modified!(integrator::AbstractSundialsIntegrator,bool::Bool)
  integrator.u_modified = bool
end

function DiffEqBase.terminate!(integrator::AbstractSundialsIntegrator,
                                       retcode = :Terminated)
  integrator.sol = DiffEqBase.solution_new_retcode(integrator.sol, retcode)
  integrator.opts.tstops.valtree = typeof(integrator.opts.tstops.valtree)()
end

@inline function DiffEqBase.get_du(integrator::CVODEIntegrator)
  integrator(integrator.t,Val{1})
end

@inline function DiffEqBase.get_du!(out,integrator::CVODEIntegrator)
  integrator(out,integrator.t,Val{1})
end

@inline function DiffEqBase.get_du(integrator::IDAIntegrator)
  reshape(integrator.du,integrator.sizedu)
end

@inline function DiffEqBase.get_du!(out,integrator::IDAIntegrator)
  out .= reshape(integrator.du,integrator.sizedu)
end

function DiffEqBase.change_t_via_interpolation!(integrator::AbstractSundialsIntegrator,t)
    integrator.t = t
    integrator(integrator.u,integrator.t)
    return nothing
end

@inline function Base.getproperty(integrator::AbstractSundialsIntegrator, sym::Symbol)
  if sym == :dt
    return integrator.t-integrator.tprev
  else
    return getfield(integrator, sym)
  end
end
