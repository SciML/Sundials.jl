using Sundials
using Aqua
using ExplicitImports
using Test

@testset "Quality Assurance" begin
    @testset "Aqua tests" begin
        Aqua.test_ambiguities(Sundials; recursive = false)
        Aqua.test_deps_compat(Sundials)
        Aqua.test_piracies(
            Sundials;
            treat_as_own = [Sundials.NVector]
        )
        Aqua.test_project_extras(Sundials)
        Aqua.test_stale_deps(Sundials)
        Aqua.test_unbound_args(Sundials)
        Aqua.test_undefined_exports(Sundials)
    end

    @testset "ExplicitImports tests" begin
        @test check_no_implicit_imports(Sundials) === nothing
        @test check_no_stale_explicit_imports(Sundials) === nothing
        # AbstractSciMLOperator is re-exported from SciMLBase, so allow it
        @test check_all_explicit_imports_via_owners(
            Sundials;
            ignore = (:AbstractSciMLOperator,)
        ) === nothing
    end
end
