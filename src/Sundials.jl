__precompile__()

module Sundials

using Compat, DiffEqBase
import DiffEqBase: solve

const depsfile = joinpath(dirname(dirname(@__FILE__)),"deps","deps.jl")
if isfile(depsfile)
    include(depsfile)
else
    error("Sundials is not properly installed. Please run Pkg.build(\"Sundials\")")
end

export solve

# some definitions from the system C headers wrapped into the types_and_consts.jl
const DBL_MAX = prevfloat(Inf)
const DBL_MIN = nextfloat(-Inf)
const DBL_EPSILON = eps(Cdouble)

typealias FILE Void
typealias __builtin_va_list Ptr{Void}

include("types_and_consts.jl")

include("handle.jl")
include("nvector_wrapper.jl")

include("nvector.jl")
include("libsundials.jl")
if isdefined(:libsundials_cvodes)
    include("cvodes.jl")
else
    include("cvode.jl")
end
if isdefined(:libsundials_idas)
    include("idas.jl")
else
    include("ida.jl")
end
include("kinsol.jl")

include("simple.jl")
include("common.jl")

##################################################################
# Deprecations
##################################################################

@deprecate nvlength length
@deprecate asarray convert
@deprecate nvector NVector

function cvode_fulloutput(f::Function, y0::Vector{Float64}, tspan::Vector{Float64}, userdata::Any = nothing;
                          integrator=:BDF, reltol::Float64=1e-3, abstol::Float64=1e-6,kwargs...)
      Base.depwarn("cvode_fulloutput has been deprecated for the common interface `solve`.", :cvode_fulloutput)
      new_tspan = (tspan[1],tspan[end])
      prob = ODEProblem(f,y0,new_tspan)
      if integrator == :BDF
          alg = CVODE_BDF
      elseif integrator == :Adams
          alg = CVODE_Adams
      else
          error("Integrator must be `:BDF` or `:Adams`")
      end
      sol = solve(prob,alg;userdata=userdata,reltol=reltol,abstol=abstol,kwargs...)
      sol.t,sol.u
  end

end # module
