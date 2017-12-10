mutable struct SundialsIntegrator{uType,tType,memType,solType,algType,fType,oType} <: AbstractODEIntegrator
    u::uType
    t::tType
    mem::memType
    sol::solType
    alg::algType
    f::fType
    opts::oType
end

mutable struct DEOptions{SType,TstopType}
    saveat::SType
    tstops::TstopType
    save_everystep::Bool
    dense::Bool
end
