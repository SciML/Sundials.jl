# __precompile__()

module Sundials

import Reexport
Reexport.@reexport using SciMLBase
using DiffEqBase: DiffEqBase, NonlinearFunction, ODEFunction, add_saveat!,
                  add_tstop!, change_t_via_interpolation!, check_error,
                  check_keywords, get_du, get_du!, get_tmp_cache, get_tstops,
                  get_tstops_array, initialize!, isinplace,
                  reeval_internals_due_to_modification!, reinit!, savevalues!,
                  set_proposed_dt!, solve, solve!, step!, terminate!, u_modified!,
                  update_coefficients!, warn_compat
using SciMLBase: AbstractSciMLOperator, DAEProblem, ODEProblem, ReturnCode,
                 SciMLBase, SplitODEProblem, VectorContinuousCallback
using DataStructures: DataStructures
using Logging: Logging
using SparseArrays: SparseArrays
using LinearAlgebra: LinearAlgebra

using Libdl: Libdl
using CEnum: CEnum, @cenum

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

using Sundials_jll: Sundials_jll, libsundials_arkode, libsundials_cvode,
                    libsundials_cvodes, libsundials_idas, libsundials_kinsol,
                    libsundials_nvecserial, libsundials_sunlinsolband,
                    libsundials_sunlinsoldense, libsundials_sunlinsolklu,
                    libsundials_sunlinsollapackband,
                    libsundials_sunlinsollapackdense, libsundials_sunlinsolpcg,
                    libsundials_sunlinsolspbcgs, libsundials_sunlinsolspfgmr,
                    libsundials_sunlinsolspgmr, libsundials_sunlinsolsptfqmr,
                    libsundials_sunmatrixband, libsundials_sunmatrixdense,
                    libsundials_sunmatrixsparse, libsundials_sunnonlinsolfixedpoint,
                    libsundials_sunnonlinsolnewton

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

using PrecompileTools: PrecompileTools

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
