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

mutable struct DEOptions{SType,TstopType}
    saveat::SType
    tstops::TstopType
    save_everystep::Bool
    dense::Bool
    timeseries_errors::Bool
    dense_errors::Bool
    save_end::Bool
end
