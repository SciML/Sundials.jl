mutable struct DEOptions{SType, TstopType, CType, reltolType, abstolType, F5}
    saveat::SType
    tstops::TstopType
    save_everystep::Bool
    dense::Bool
    timeseries_errors::Bool
    dense_errors::Bool
    save_on::Bool
    save_end::Bool
    callback::CType
    abstol::abstolType
    reltol::reltolType
    verbose::Bool
    advance_to_tstop::Bool
    stop_at_next_tstop::Bool
    progress::Bool
    progress_name::String
    progress_message::F5
    maxiters::Int
end

abstract type AbstractSundialsIntegrator{algType} <:
              DiffEqBase.AbstractODEIntegrator{algType, true, Vector{Float64}, Float64} end

mutable struct CVODEIntegrator{
    uType,
    pType,
    memType,
    solType,
    algType,
    fType,
    UFType,
    JType,
    oType,
    toutType,
    sizeType,
    tmpType,
    LStype,
    Atype,
    CallbackCacheType,
} <: AbstractSundialsIntegrator{algType}
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
    event_last_time::Int
    vector_event_last_time::Int
    callback_cache::CallbackCacheType
    last_event_error::Float64
end

function (integrator::CVODEIntegrator)(
    t::Number,
    deriv::Type{Val{T}} = Val{0};
    idxs = nothing,
) where {T}
    out = similar(integrator.u)
    integrator.flag = @checkflag CVodeGetDky(integrator.mem, t, Cint(T), out)
    return idxs == nothing ? out : out[idxs]
end

function (integrator::CVODEIntegrator)(
    out,
    t::Number,
    deriv::Type{Val{T}} = Val{0};
    idxs = nothing,
) where {T}
    integrator.flag = @checkflag CVodeGetDky(integrator.mem, t, Cint(T), out)
    return idxs == nothing ? out : @view out[idxs]
end

mutable struct ARKODEIntegrator{
    uType,
    pType,
    memType,
    solType,
    algType,
    fType,
    UFType,
    JType,
    oType,
    toutType,
    sizeType,
    tmpType,
    LStype,
    Atype,
    MLStype,
    Mtype,
    CallbackCacheType,
} <: AbstractSundialsIntegrator{ARKODE}
    u::uType
    p::pType
    t::Float64
    tprev::Float64
    mem::memType
    LS::LStype
    A::Atype
    MLS::MLStype
    M::Mtype
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
    event_last_time::Int
    vector_event_last_time::Int
    callback_cache::CallbackCacheType
    last_event_error::Float64
end

function (integrator::ARKODEIntegrator)(
    t::Number,
    deriv::Type{Val{T}} = Val{0};
    idxs = nothing,
) where {T}
    out = similar(integrator.u)
    integrator.flag = @checkflag ARKStepGetDky(integrator.mem, t, Cint(T), out)
    return idxs == nothing ? out : out[idxs]
end

function (integrator::ARKODEIntegrator)(
    out,
    t::Number,
    deriv::Type{Val{T}} = Val{0};
    idxs = nothing,
) where {T}
    integrator.flag = @checkflag ARKStepGetDky(integrator.mem, t, Cint(T), out)
    return idxs == nothing ? out : @view out[idxs]
end

mutable struct IDAIntegrator{
    uType,
    duType,
    pType,
    memType,
    solType,
    algType,
    fType,
    UFType,
    JType,
    oType,
    toutType,
    sizeType,
    sizeDType,
    tmpType,
    LStype,
    Atype,
    CallbackCacheType,
} <: AbstractSundialsIntegrator{IDA}
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
    event_last_time::Int
    vector_event_last_time::Int
    callback_cache::CallbackCacheType
    last_event_error::Float64
end

function (integrator::IDAIntegrator)(
    t::Number,
    deriv::Type{Val{T}} = Val{0};
    idxs = nothing,
) where {T}
    out = similar(integrator.u)
    integrator.flag = @checkflag IDAGetDky(integrator.mem, t, Cint(T), out)
    return idxs == nothing ? out : out[idxs]
end

function (integrator::IDAIntegrator)(
    out,
    t::Number,
    deriv::Type{Val{T}} = Val{0};
    idxs = nothing,
) where {T}
    integrator.flag = @checkflag IDAGetDky(integrator.mem, t, Cint(T), out)
    return idxs == nothing ? out : @view out[idxs]
end

###  Error check (retcode)

DiffEqBase.check_error(integrator::AbstractSundialsIntegrator) =
    interpret_sundials_retcode(integrator.flag)

DiffEqBase.postamble!(integrator::AbstractSundialsIntegrator) = nothing
# No-op postamble! to make DiffEqBase.check_error! (and hence iterator interface
# implemented in DiffEqBase) work.

### Iterator interface

@inline function DiffEqBase.step!(integrator::AbstractSundialsIntegrator)
    if integrator.opts.advance_to_tstop
        # The call to first is an overload of Base.first implemented in DataStructures
        while integrator.tdir * (integrator.t - first(integrator.opts.tstops)) < -1e6eps()
            tstop = first(integrator.opts.tstops)
            set_stop_time(integrator, tstop)
            integrator.tprev = integrator.t
            if !(typeof(integrator.opts.callback.continuous_callbacks) <: Tuple{})
                integrator.uprev .= integrator.u
            end
            solver_step(integrator, tstop)
            integrator.t = first(integrator.tout)
            DiffEqBase.check_error!(integrator) != :Success && return
            handle_callbacks!(integrator)
            DiffEqBase.check_error!(integrator) != :Success && return
        end
    else
        integrator.tprev = integrator.t
        if !(typeof(integrator.opts.callback.continuous_callbacks) <: Tuple{})
            integrator.uprev .= integrator.u
        end
        if !isempty(integrator.opts.tstops)
            tstop = first(integrator.opts.tstops)
            set_stop_time(integrator, tstop)
            solver_step(integrator, tstop)
        else
            solver_step(integrator, 1.0) # fake tstop
        end
        integrator.t = first(integrator.tout)
        DiffEqBase.check_error!(integrator) != :Success && return
        handle_callbacks!(integrator)
        DiffEqBase.check_error!(integrator) != :Success && return
    end
    handle_tstop!(integrator)
    nothing
end
