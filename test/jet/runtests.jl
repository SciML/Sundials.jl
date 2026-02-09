using Sundials
using Test

@testset "Quality Assurance" begin
    using Aqua
    @testset "Aqua tests" begin
        Aqua.test_ambiguities(Sundials; recursive = false)
        Aqua.test_deps_compat(Sundials)
        Aqua.test_piracies(
            Sundials;
            treat_as_own = [Sundials.NVector],
        )
        Aqua.test_project_extras(Sundials)
        Aqua.test_stale_deps(Sundials)
        Aqua.test_unbound_args(Sundials)
        Aqua.test_undefined_exports(Sundials)
    end

    using ExplicitImports
    @testset "ExplicitImports tests" begin
        @test check_no_implicit_imports(Sundials) === nothing
        @test check_no_stale_explicit_imports(Sundials) === nothing
        # AbstractSciMLOperator is re-exported from SciMLBase, so allow it
        @test check_all_explicit_imports_via_owners(
            Sundials;
            ignore = (:AbstractSciMLOperator,),
        ) === nothing
    end
end

@testset "JET Static Analysis" begin
    using JET
    # Test algorithm constructors for type stability
    @testset "Algorithm constructors" begin
        rep = JET.report_call(Sundials.CVODE_BDF, ())
        @test length(JET.get_reports(rep)) == 0

        rep = JET.report_call(Sundials.CVODE_Adams, ())
        @test length(JET.get_reports(rep)) == 0

        rep = JET.report_call(Sundials.IDA, ())
        @test length(JET.get_reports(rep)) == 0

        rep = JET.report_call(Sundials.ARKODE, ())
        @test length(JET.get_reports(rep)) == 0

        rep = JET.report_call(Sundials.KINSOL, ())
        @test length(JET.get_reports(rep)) == 0
    end
end
