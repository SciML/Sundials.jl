function handle_callbacks!(integrator)
  discrete_callbacks = integrator.opts.callback.discrete_callbacks
  continuous_callbacks = integrator.opts.callback.continuous_callbacks
  atleast_one_callback = false

  continuous_modified = false
  discrete_modified = false
  saved_in_cb = false
  if !(typeof(continuous_callbacks)<:Tuple{})
    time,upcrossing,idx,counter = find_first_continuous_callback(integrator,continuous_callbacks...)
    if time != zero(typeof(integrator.t)) && upcrossing != 0 # if not, then no events
      continuous_modified,saved_in_cb = apply_callback!(integrator,continuous_callbacks[idx],time,upcrossing)
    end
  end
  if !(typeof(discrete_callbacks)<:Tuple{})
    discrete_modified,saved_in_cb = apply_discrete_callback!(integrator,discrete_callbacks...)
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

function DiffEqBase.savevalues!(integrator::SundialsIntegrator)
    uType = eltype(integrator.sol.u)
    while !isempty(integrator.opts.saveat) &&
        integrator.tdir*top(integrator.opts.saveat) < integrator.tdir*first(integrator.tout)

        curt = pop!(integrator.opts.saveat)
        tmp = integrator(curt)
        save_value!(integrator.sol.u,tmp,uType,integrator.sizeu,Val{false})
        push!(integrator.sol.t,curt)
        if integrator.opts.dense
          tmp = integrator(curt,Val{1})
          save_value!(integrator.sol.k,tmp,uType,integrator.sizeu,Val{false})
        end
    end
    if integrator.opts.save_everystep
        tmp = integrator(first(integrator.tout))
        save_value!(integrator.sol.u,tmp,uType,integrator.sizeu,Val{false})
        push!(integrator.sol.t, first(integrator.tout))
        if integrator.opts.dense
          tmp = integrator(first(integrator.tout),Val{1})
          save_value!(integrator.sol.k,tmp,uType,integrator.sizeu)
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

function handle_callback_modifiers!(integrator)
  CVodeReInit(integrator.mem,integrator.t,integrator.u)
end
