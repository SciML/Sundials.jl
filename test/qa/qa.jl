using SciMLTesting, Sundials, Test
using JET

# The SciML common interface Sundials deliberately reexports so that `using Sundials`
# is enough to build and solve a problem. Owned and documented upstream; kept in sync
# with the reexport `export` block in src/Sundials.jl.
const REEXPORTS = (
    :BrownFullBasicInit, :CallbackSet, :CheckInit, :ContinuousCallback, :DAEFunction,
    :DAEProblem, :DAESolution, :DECallback, :DEIntegrator, :DEStats,
    :DefaultInit, :DiscreteCallback, :EnsembleAnalysis,
    :EnsembleDistributed, :EnsembleProblem, :EnsembleSerial, :EnsembleSolution,
    :EnsembleSplitThreads, :EnsembleSummary, :EnsembleThreads, :NoInit,
    :NonlinearFunction, :NonlinearProblem, :NonlinearSolution, :NullParameters,
    :ODEFunction, :ODEProblem, :ODESolution, :OverrideInit, :ReturnCode,
    :ShampineCollocationInit, :SplitFunction, :SplitODEProblem, :SteadyStateProblem,
    :SteadyStateSolution, :VectorContinuousCallback, :add_saveat!, :add_tstop!,
    :addsteps!, :change_t_via_interpolation!, :check_error, :check_error!, :get_du,
    :get_du!, :get_tmp_cache, :init, :last_step_failed,
    :reeval_internals_due_to_modification!, :reinit!, :remake, :savevalues!,
    :set_proposed_dt!, :solve, :solve!, :step!, :successful_retcode, :terminate!,
    :u_modified!,
)

run_qa(Sundials; reexports_allow = REEXPORTS)

@testset "Reexport surface" begin
    # Every approved reexport must actually be reachable from `using Sundials`, so the
    # allow-list cannot drift into approving names the package no longer provides.
    # `isdefined(@__MODULE__, ...)` tests the property directly: this file's `using
    # Sundials` is what has to bring the name into scope.
    @testset "$name" for name in REEXPORTS
        @test name in names(Sundials)
        @test isdefined(@__MODULE__, name)
    end
end

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
