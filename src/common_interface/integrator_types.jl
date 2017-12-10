mutable struct DEOptions{SType,TstopType}
    saveat::SType
    tstops::TstopType
    save_everystep::Bool
    dense::Bool
    timeseries_errors::Bool
    dense_errors::Bool
    save_end::Bool
end

mutable struct SundialsIntegrator{uType,memType,solType,algType,fType,oType,toutType,sizeType} <: AbstractODEIntegrator
    u::uType
    t::Float64
    mem::memType
    sol::solType
    alg::algType
    f::fType
    opts::oType
    tout::toutType
    tdir::Float64
    sizeu::sizeType
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
