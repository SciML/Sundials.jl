mutable struct DEOptions{SType,TstopType,CType}
    saveat::SType
    tstops::TstopType
    save_everystep::Bool
    dense::Bool
    timeseries_errors::Bool
    dense_errors::Bool
    save_end::Bool
    callback::CType
end

mutable struct SundialsIntegrator{uType,memType,solType,algType,fType,JType,oType,toutType,sizeType,tmpType} <: AbstractODEIntegrator
    u::uType
    t::Float64
    tprev::Float64
    mem::memType
    sol::solType
    alg::algType
    f::fType
    jac::JType
    opts::oType
    tout::toutType
    tdir::Float64
    sizeu::sizeType
    u_modified::Bool
    tmp::tmpType
    uprev::tmpType
end

function (integrator::SundialsIntegrator)(t::Number,deriv::Type{Val{T}}=Val{0}) where T
    out = similar(integrator.u)
    CVodeGetDky(integrator.mem, t, Cint(T), out)
    out
end

function (integrator::SundialsIntegrator)(out,t::Number,
                                          deriv::Type{Val{T}}=Val{0}) where T
    CVodeGetDky(integrator.mem, t, Cint(T), out)
end
