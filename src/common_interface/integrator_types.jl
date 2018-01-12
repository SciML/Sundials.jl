mutable struct DEOptions{SType,TstopType,CType}
    saveat::SType
    tstops::TstopType
    save_everystep::Bool
    dense::Bool
    timeseries_errors::Bool
    dense_errors::Bool
    save_end::Bool
    callback::CType
    verbose::Bool
    advance_to_tstop::Bool
    stop_at_next_tstop::Bool
end

abstract type AbstractSundialsIntegrator <: AbstractODEIntegrator end

mutable struct CVODEIntegrator{uType,memType,solType,algType,fType,UFType,JType,oType,toutType,sizeType,tmpType,LStype,Atype} <: AbstractSundialsIntegrator
    u::uType
    t::Float64
    tprev::Float64
    mem::memType
    LS::LStype
    A::Atype
    sol::solType
    alg::algType
    f::fType
    userfun::UFType
    jac::JType
    opts::oType
    tout::toutType
    tdir::Float64
    sizeu::sizeType
    u_modified::Bool
    tmp::tmpType
    uprev::tmpType
    flag::Cint
    just_hit_tstop::Bool
end

function (integrator::CVODEIntegrator)(t::Number,deriv::Type{Val{T}}=Val{0}) where T
    out = similar(integrator.u)
    integrator.flag = @checkflag CVodeGetDky(integrator.mem, t, Cint(T), out)
    out
end

function (integrator::CVODEIntegrator)(out,t::Number,
                                          deriv::Type{Val{T}}=Val{0}) where T
    integrator.flag = @checkflag CVodeGetDky(integrator.mem, t, Cint(T), out)
end

mutable struct IDAIntegrator{uType,duType,memType,solType,algType,fType,UFType,JType,oType,toutType,sizeType,sizeDType,tmpType,LStype,Atype} <: AbstractSundialsIntegrator
    u::uType
    du::duType
    t::Float64
    tprev::Float64
    mem::memType
    LS::LStype
    A::Atype
    sol::solType
    alg::algType
    f::fType
    userfun::UFType
    jac::JType
    opts::oType
    tout::toutType
    tdir::Float64
    sizeu::sizeType
    sizedu::sizeDType
    u_modified::Bool
    tmp::tmpType
    uprev::tmpType
    flag::Cint
    just_hit_tstop::Bool
end

function (integrator::IDAIntegrator)(t::Number,deriv::Type{Val{T}}=Val{0}) where T
    out = similar(integrator.u)
    integrator.flag = @checkflag IDAGetDky(integrator.mem, t, Cint(T), out)
    out
end

function (integrator::IDAIntegrator)(out,t::Number,
                                          deriv::Type{Val{T}}=Val{0}) where T
    integrator.flag = @checkflag IDAGetDky(integrator.mem, t, Cint(T), out)
end


### Iterator interface

function Base.start(integrator::AbstractSundialsIntegrator)
  0
end

@inline function Base.next(integrator::AbstractSundialsIntegrator,state)
  state += 1
  DiffEqBase.step!(integrator) # Iter updated in the step! header
  # Next is callbacks -> iterator  -> top
  integrator,state
end

@inline function Base.done(integrator::AbstractSundialsIntegrator,state)
  #=
  if integrator.opts.unstable_check(integrator.dt,integrator.t,integrator.u)
    if integrator.opts.verbose
      warn("Instability detected. Aborting")
    end
    postamble!(integrator)
    return true
  end
  =#
  if isempty(integrator.opts.tstops)
    return true
  elseif integrator.just_hit_tstop
    integrator.just_hit_tstop = false
    if integrator.opts.stop_at_next_tstop
      return true
    end
  end
  false
end

@inline function DiffEqBase.step!(integrator::AbstractSundialsIntegrator)
  if integrator.opts.advance_to_tstop
    while integrator.tdir*(integrator.t-top(integrator.opts.tstops)) < -1e6eps()
        tstop = top(integrator.opts.tstops)
        set_stop_time(integrator,tstop)
        integrator.tprev = integrator.t
        if !(typeof(integrator.opts.callback.continuous_callbacks)<:Tuple{})
            integrator.uprev .= integrator.u
        end
        solver_step(integrator,tstop)
        integrator.t = first(integrator.tout)
        (integrator.flag < 0) && return
        handle_callbacks!(integrator)
        (integrator.flag < 0) && return
    end
 else
      integrator.tprev = integrator.t
      if !(typeof(integrator.opts.callback.continuous_callbacks)<:Tuple{})
          integrator.uprev .= integrator.u
      end
      if !isempty(integrator.opts.tstops)
          tstop = top(integrator.opts.tstops)
          set_stop_time(integrator,tstop)
          solver_step(integrator,tstop)
      else
          solver_step(integrator,1.0) # fake tstop
      end
      integrator.t = first(integrator.tout)
      (integrator.flag < 0) && return
      handle_callbacks!(integrator)
      (integrator.flag < 0) && return
  end
  handle_tstop!(integrator)
  nothing
end

Base.eltype(integrator::AbstractSundialsIntegrator) = typeof(integrator)
