using SafeTestsets, Test
@testset "Sundials" begin
    @safetestset "Quality Assurance" include("qa.jl")
    @safetestset "Generator" include("generator.jl")

    @testset "CVODE" begin
        @safetestset "Roberts CVODE Simplified" include("cvode_Roberts_simplified.jl")
        @safetestset "Roberts CVODE Direct" include("cvode_Roberts_dns.jl")
        # @safetestset "CVODES Direct" include("cvodes_dns.jl")
    end

    @testset "IDA" begin
        @safetestset "Roberts IDA Simplified" include("ida_Roberts_simplified.jl")
        @safetestset "Roberts IDA Direct" include("ida_Roberts_dns.jl")
        @safetestset "Heat IDA Direct" include("ida_Heat2D.jl")
        # Commented out because still uses the syntax from Grid which is a deprecated package
        # @safetestset "Cable IDA Direct" include("ida_Cable.jl")
    end

    @testset "ARK" begin
        @safetestset "Roberts ARKStep Direct" include("arkstep_Roberts_dns.jl")
        @safetestset "NonLinear ERKStep Direct" include("erkstep_nonlin.jl")
        # @safetestset "MRI two way couple" include("mri_twowaycouple.jl")
    end

    @testset "Kinsol" begin
        @safetestset "Kinsol Simplified" include("kinsol_mkin_simplified.jl")
        @safetestset "Kinsol MKin" include("kinsol_mkinTest.jl")
        @safetestset "Kinsol Banded" include("kinsol_banded.jl")
        @safetestset "Kinsol NonlinearSolve" include("kinsol_nonlinear_solve.jl")
    end

    @safetestset "Handle Tests" include("handle_tests.jl")

    @testset "Common Interface" begin
        @safetestset "CVODE" include("common_interface/cvode.jl")
        @safetestset "ARKODE" include("common_interface/arkode.jl")
        @safetestset "IDA" include("common_interface/ida.jl")
        @safetestset "Jacobians" include("common_interface/jacobians.jl")
        @safetestset "Callbacks" include("common_interface/callbacks.jl")
        @safetestset "Iterator" include("common_interface/iterators.jl")
        @safetestset "Errors" include("common_interface/errors.jl")
        @safetestset "Mass Matrix" include("common_interface/mass_matrix.jl")
        @safetestset "Preconditioners" include("common_interface/precs.jl")
    end

    @safetestset "Interpolation" include("interpolation.jl")
end
