function handle_callbacks!(integrator)
  discrete_callbacks = integrator.opts.callback.discrete_callbacks
  continuous_callbacks = integrator.opts.callback.continuous_callbacks
  atleast_one_callback = false

  continuous_modified = false
  discrete_modified = false
  saved_in_cb = false
  if !(typeof(continuous_callbacks)<:Tuple{})
    time,upcrossing,event_occured,idx,counter =
              DiffEqBase.find_first_continuous_callback(integrator,continuous_callbacks...)
    if event_occured
      integrator.event_last_time = idx
      continuous_modified,saved_in_cb = DiffEqBase.apply_callback!(integrator,continuous_callbacks[idx],time,upcrossing)
    else
      integrator.event_last_time = 0
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

function DiffEqBase.savevalues!(integrator::AbstractSundialsIntegrator,force_save=false)
  if integrator.opts.save_on
    uType = eltype(integrator.sol.u)
    while !isempty(integrator.opts.saveat) &&
        integrator.tdir*top(integrator.opts.saveat) < integrator.tdir*first(integrator.tout)

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
        save_value!(integrator.sol.u,integrator.u,uType,integrator.sizeu)
        push!(integrator.sol.t, integrator.t)
        if integrator.opts.dense
          tmp = integrator(integrator.t,Val{1})
          save_value!(integrator.sol.interp.du,tmp,uType,integrator.sizeu)
        end
    end
  end
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

function handle_callback_modifiers!(integrator::IDAIntegrator)
  IDAReInit(integrator.mem,integrator.t,integrator.u,integrator.du)
end

@inline function DiffEqBase.add_tstop!(integrator::AbstractSundialsIntegrator,t)
  t < integrator.t && error("Tried to add a tstop that is behind the current time. This is strictly forbidden")
  push!(integrator.opts.tstops,t)
end

function DiffEqBase.add_saveat!(integrator::AbstractSundialsIntegrator,t)
  integrator.tdir * (t - integrator.t) < 0 && error("Tried to add a saveat that is behind the current time. This is strictly forbidden")
  push!(integrator.opts.saveat,t)
end

@inline DiffEqBase.get_tmp_cache(integrator::AbstractSundialsIntegrator) = (integrator.tmp,)

@inline function DiffEqBase.u_modified!(integrator::AbstractSundialsIntegrator,bool::Bool)
  integrator.u_modified = bool
end

@inline function DiffEqBase.terminate!(integrator::AbstractSundialsIntegrator)
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

@inline function DiffEqBase.change_t_via_interpolation!(integrator::AbstractSundialsIntegrator,t)
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
