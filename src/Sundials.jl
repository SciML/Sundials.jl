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

export solve, SundialsODEAlgorithm, SundialsDAEAlgorithm, CVODE_BDF, CVODE_Adams, IDA

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
include("algorithms.jl")
include("common.jl")

##################################################################
# Deprecations
##################################################################

end # module
