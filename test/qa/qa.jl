using SciMLTesting, Sundials, Test
using JET

# ExplicitImports ignore-lists below are all names owned by / non-public in OTHER
# packages that Sundials legitimately uses; they will stop being flagged once those
# upstream packages mark them public. DiffEqBase re-exports SciMLBase, so SciMLBase-
# owned names accessed/imported via DiffEqBase trip the via-owners checks.

# SciMLBase-owned names that Sundials accesses qualified via DiffEqBase (re-export).
const QUALIFIED_VIA_OWNERS_IGNORE = (
    :AbstractDAEAlgorithm, :AbstractDAEProblem, :AbstractNonlinearProblem,
    :AbstractODEAlgorithm, :AbstractODEIntegrator, :AbstractODEProblem,
    :AbstractSteadyStateProblem, :HermiteInterpolation, :LinearInterpolation,
    :__init, :__solve, :build_solution, :calculate_solution_errors!, :check_error!,
    :has_analytic, :has_jac, :has_reinit, :initialize_dae!, :postamble!,
    :solution_new_retcode,
)

# Names accessed qualified that are not (yet) declared public in their import-site
# module. `@pure` is a Base internal; `FasterForward` is non-public in DataStructures.
# The remainder are SciMLBase-owned solver-extension hooks that SciMLBase 3.27 has not
# yet marked public (accessed via DiffEqBase's re-export, except solution_new_retcode
# which is also accessed directly as SciMLBase.solution_new_retcode). They drop out of
# this list once SciMLBase declares them public.
const QUALIFIED_PUBLIC_IGNORE = (
    Symbol("@pure"),
    :FasterForward,
    :AbstractODEIntegrator, :AbstractSteadyStateProblem, :HermiteInterpolation,
    :LinearInterpolation, :__init, :__solve, :calculate_solution_errors!,
    :has_analytic, :has_reinit, :initialize_dae!, :postamble!, :solution_new_retcode,
)

# Aqua + ExplicitImports via the SciMLTesting v1.7 harness. JET is handled by the
# dedicated constructor testset below (`jet = false` here): run_qa's default JET runs
# `report_package` over the whole module, which on JET 0.11 (Julia >= 1.11) reports
# conditionally-assigned locals in the solver-init paths (e.g. the SUNMatrix/
# SUNLinearSolver handles in `__init`) that are correct at runtime but that JET 0.11
# cannot prove defined. JET 0.9 (Julia LTS) does not report them, so neither
# `jet = true` (fails on Julia 1) nor `jet_broken = true` (Unexpected Pass / errors on
# LTS) is green-or-broken on both CI lanes. Tracked in SciML/Sundials.jl#541 for a
# separate solver-init fix.
run_qa(
    Sundials;
    explicit_imports = true,
    jet = false,
    aqua_kwargs = (; piracies = (; treat_as_own = [Sundials.NVector])),
    ei_kwargs = (;
        # AbstractSciMLOperator: owner SciMLOperators, imported via SciMLBase re-export.
        all_explicit_imports_via_owners = (; ignore = (:AbstractSciMLOperator,)),
        all_qualified_accesses_via_owners = (; ignore = QUALIFIED_VIA_OWNERS_IGNORE),
        all_qualified_accesses_are_public = (; ignore = QUALIFIED_PUBLIC_IGNORE),
        # AbstractSciMLOperator: owner SciMLOperators, imported via SciMLBase re-export;
        # not yet declared public in SciMLBase.
        all_explicit_imports_are_public = (; ignore = (:AbstractSciMLOperator,)),
    ),
)

@testset "JET static analysis" begin
    @testset "Algorithm constructors" begin
        for C in (
                Sundials.CVODE_BDF, Sundials.CVODE_Adams, Sundials.IDA,
                Sundials.ARKODE, Sundials.KINSOL,
            )
            rep = JET.report_call(C, ())
            @test length(JET.get_reports(rep)) == 0
        end
    end
end
