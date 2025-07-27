# __precompile__()

module Sundials

import Reexport
Reexport.@reexport using SciMLBase
using DiffEqBase
using SciMLBase: AbstractSciMLOperator
import DataStructures
import Logging
import DiffEqBase
import SparseArrays
import LinearAlgebra

import Libdl
using CEnum

const warnkeywords = (:isoutofdomain,
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
const libsundials_sunmatrixdense = Sundials_jll.libsundials_sunmatrixdense
const libsundials_sunmatrixband = Sundials_jll.libsundials_sunmatrixband
const libsundials_sunmatrixsparse = Sundials_jll.libsundials_sunmatrixsparse
# sunnonlinsol has been split into separate libraries
const libsundials_sunnonlinsolfixedpoint = Sundials_jll.libsundials_sunnonlinsolfixedpoint
const libsundials_sunnonlinsolnewton = Sundials_jll.libsundials_sunnonlinsolnewton
# sunlinsol has been split into separate libraries
const libsundials_sunlinsoldense = Sundials_jll.libsundials_sunlinsoldense
const libsundials_sunlinsolband = Sundials_jll.libsundials_sunlinsolband
const libsundials_sunlinsollapackband = Sundials_jll.libsundials_sunlinsollapackband
const libsundials_sunlinsollapackdense = Sundials_jll.libsundials_sunlinsollapackdense
const libsundials_sunlinsolklu = Sundials_jll.libsundials_sunlinsolklu
const libsundials_sunlinsolpcg = Sundials_jll.libsundials_sunlinsolpcg
const libsundials_sunlinsolspbcgs = Sundials_jll.libsundials_sunlinsolspbcgs
const libsundials_sunlinsolspfgmr = Sundials_jll.libsundials_sunlinsolspfgmr
const libsundials_sunlinsolspgmr = Sundials_jll.libsundials_sunlinsolspgmr
const libsundials_sunlinsolsptfqmr = Sundials_jll.libsundials_sunlinsolsptfqmr

const SPARSE_SOLVERS = (:KLU,)

include("./lib/libsundials_common.jl")
include("types_and_consts_additions.jl")

include("handle.jl")
include("nvector_wrapper.jl")
include("context.jl")

include("./lib/libsundials_api_rewrite.jl")

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

include("context_helpers.jl")
include("api_wrappers.jl")
include("simple.jl")
include("common_interface/function_types.jl")
include("common_interface/verbosity.jl")
include("common_interface/algorithms.jl")
include("common_interface/integrator_types.jl")
include("common_interface/integrator_utils.jl")
include("common_interface/solve.jl")

import PrecompileTools

PrecompileTools.@compile_workload begin
    function lorenz(du, u, p, t)
        du[1] = 10.0(u[2] - u[1])
        du[2] = u[1] * (28.0 - u[3]) - u[2]
        du[3] = u[1] * u[2] - (8 / 3) * u[3]
    end

    function lorenz_oop(u, p, t)
        [10.0(u[2] - u[1]), u[1] * (28.0 - u[3]) - u[2], u[1] * u[2] - (8 / 3) * u[3]]
    end

    solver_list = [
        ARKODE(), CVODE_Adams(), CVODE_BDF()
    ]

    prob_list = [ODEProblem(lorenz, [1.0; 0.0; 0.0], (0.0, 1.0)),
        ODEProblem(lorenz, [1.0; 0.0; 0.0], (0.0, 1.0), Float64[])]

    for prob in prob_list, solver in solver_list

        solve(prob, solver)(0.5)
    end

    prob_list = nothing

    function f(out, du, u, p, t)
        out[1] = -0.04u[1] + 1e4 * u[2] * u[3] - du[1]
        out[2] = +0.04u[1] - 3e7 * u[2]^2 - 1e4 * u[2] * u[3] - du[2]
        out[3] = u[1] + u[2] + u[3] - 1.0
    end
    u₀ = [1.0, 0, 0]
    du₀ = [-0.04, 0.04, 0.0]
    tspan = (0.0, 100000.0)
    differential_vars = [true, true, false]
    prob = DAEProblem(f, du₀, u₀, tspan, differential_vars = differential_vars)
    sol = solve(prob, IDA())

    prob = nothing
end

##################################################################
# Deprecations
##################################################################

end # module
