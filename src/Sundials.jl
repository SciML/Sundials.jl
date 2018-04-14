__precompile__()

module Sundials

using Reexport, DataStructures, Roots
@reexport using DiffEqBase
using DiffEqBase: check_error!
import DiffEqBase: solve

const warnkeywords =
    (:save_idxs, :d_discontinuities, :isoutofdomain, :unstable_check,
     :calck, :progress, :timeseries_steps,
     :internalnorm, :gamma, :beta1, :beta2, :qmax, :qmin, :qoldinit)

function __init__()
    const global warnlist = Set(warnkeywords)
    const global warnida  = union(warnlist, Set((:dtmin,)))
end

const depsfile = joinpath(dirname(dirname(@__FILE__)),"deps","deps.jl")
if isfile(depsfile)
    include(depsfile)
else
    error("Sundials is not properly installed. Please run Pkg.build(\"Sundials\")")
end

export solve, SundialsODEAlgorithm, SundialsDAEAlgorithm, ARKODE, CVODE_BDF, CVODE_Adams, IDA

# some definitions from the system C headers wrapped into the types_and_consts.jl
const DBL_MAX = prevfloat(Inf)
const DBL_MIN = nextfloat(-Inf)
const DBL_EPSILON = eps(Cdouble)

const FILE = Void
const __builtin_va_list = Ptr{Void}

include("wrapped_api/types_and_consts.jl")
include("types_and_consts_additions.jl")

include("handle.jl")
include("nvector_wrapper.jl")

include("wrapped_api/nvector.jl")
include("wrapped_api/libsundials.jl")
include("wrapped_api/sunmatrix.jl")
include("wrapped_api/sunlinsol.jl")
if isdefined(:libsundials_cvodes)
    include("wrapped_api/cvodes.jl")
else
    include("wrapped_api/cvode.jl")
end
include("wrapped_api/arkode.jl")
if isdefined(:libsundials_idas)
    include("wrapped_api/idas.jl")
else
    include("wrapped_api/ida.jl")
end
include("wrapped_api/kinsol.jl")

include("simple.jl")
include("common_interface/verbosity.jl")
include("common_interface/integrator_types.jl")
include("common_interface/integrator_utils.jl")
include("common_interface/callbacks.jl")
include("common_interface/algorithms.jl")
include("common_interface/solve.jl")

##################################################################
# Deprecations
##################################################################

end # module
