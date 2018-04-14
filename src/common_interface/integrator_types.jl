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

mutable struct CVODEIntegrator{uType,pType,memType,solType,algType,fType,UFType,JType,oType,toutType,sizeType,tmpType,LStype,Atype} <: AbstractSundialsIntegrator
    u::uType
    p::pType
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
    event_last_time::Bool
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

mutable struct ARKODEIntegrator{uType,pType,memType,solType,algType,fType,UFType,JType,oType,toutType,sizeType,tmpType,LStype,Atype} <: AbstractSundialsIntegrator
    u::uType
    p::pType
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
    event_last_time::Bool
end

function (integrator::ARKODEIntegrator)(t::Number,deriv::Type{Val{T}}=Val{0}) where T
    out = similar(integrator.u)
    integrator.flag = @checkflag ARKodeGetDky(integrator.mem, t, Cint(T), out)
    out
end

function (integrator::ARKODEIntegrator)(out,t::Number,
                                          deriv::Type{Val{T}}=Val{0}) where T
    integrator.flag = @checkflag ARKodeGetDky(integrator.mem, t, Cint(T), out)
end

mutable struct IDAIntegrator{uType,duType,pType,memType,solType,algType,fType,UFType,JType,oType,toutType,sizeType,sizeDType,tmpType,LStype,Atype} <: AbstractSundialsIntegrator
    u::uType
    du::duType
    p::pType
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
    event_last_time::Bool
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

###  Error check (retcode)

DiffEqBase.check_error(integrator::AbstractSundialsIntegrator) =
    interpret_sundials_retcode(integrator.flag)

DiffEqBase.postamble!(integrator::AbstractSundialsIntegrator) = nothing
# No-op postamble! to make check_error! (and hence iterator interface
# implemented in DiffEqBase) work.

### Iterator interface

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
        check_error!(integrator) != :Success && return
        handle_callbacks!(integrator)
        check_error!(integrator) != :Success && return
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
      check_error!(integrator) != :Success && return
      handle_callbacks!(integrator)
      check_error!(integrator) != :Success && return
  end
  handle_tstop!(integrator)
  nothing
end
