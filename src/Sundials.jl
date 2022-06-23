# __precompile__()

module Sundials

import Reexport
Reexport.@reexport using DiffEqBase
import DataStructures
import Logging
import DiffEqBase
import SparseArrays
import LinearAlgebra

import Libdl
using CEnum

const warnkeywords = (:d_discontinuities,
                      :isoutofdomain,
                      :unstable_check,
                      :calck,
                      :internalnorm,
                      :gamma,
                      :beta1,
                      :beta2,
                      :qmax,
                      :qmin,
                      :qoldinit)

warnlist = Set(warnkeywords)
warnida = union(warnlist, Set((:dtmin,)))

using Sundials_jll

export solve,
       SundialsODEAlgorithm, SundialsDAEAlgorithm, ARKODE, CVODE_BDF, CVODE_Adams, IDA,
       KINSOL

# some definitions from the system C headers wrapped into the types_and_consts.jl
const DBL_MAX = prevfloat(Inf)
const DBL_MIN = nextfloat(-Inf)
const DBL_EPSILON = eps(Cdouble)
const int64_t = Int64
const MPI_DOUBLE = nothing
const MPI_INT64_T = nothing
macro SUNDIALS_F77_FUNC(name, NAME)
    Symbol(string(name) * "_64_")
end

# Issue 328: these symbols exist in other libraries
const libsundials_sundials = libsundials_cvode
const libsundials_sunlinsol = libsundials_cvode
const libsundials_sunnonlinsol = libsundials_cvode
# sunmatrix has been renamed to sunmatrix[dense/sparse/band]
# const libsundials_sunmatrix = libsundials_cvode

const SPARSE_SOLVERS = (:KLU,)

include("../lib/libsundials_common.jl")
include("types_and_consts_additions.jl")

include("handle.jl")
include("nvector_wrapper.jl")

include("../lib/libsundials_api.jl")

for ff in names(@__MODULE__; all = true)
    fname = string(ff)
    if occursin("SetLinearSolver", fname) &&
       !occursin("#", fname) && # filter out compiler generated names
       !occursin("Dls", fname) && !occursin("Spils", fname) # filter out old names
        @eval function $ff(mem, LS::SUNLinearSolver, A::Ptr, args...)
            $ff(mem, LS,
                convert(SUNMatrix, A),
                args...)
        end
    end
end

include("simple.jl")
include("common_interface/function_types.jl")
include("common_interface/verbosity.jl")
include("common_interface/algorithms.jl")
include("common_interface/integrator_types.jl")
include("common_interface/integrator_utils.jl")
include("common_interface/solve.jl")

##################################################################
# Deprecations
##################################################################

end # module
