using Sundials
using SafeTestsets
using Test

@testset "Quality Assurance" begin
    include("qa_test.jl")
end

@testset "JET Static Analysis" begin
    include("jet_test.jl")
end

@testset "Generator" begin
    include("generator.jl")
end

@testset "CVODE" begin
    @safetestset "Roberts CVODE Simplified" begin
        include("cvode_Roberts_simplified.jl")
    end
    @safetestset "Roberts CVODE Direct" begin
        include("cvode_Roberts_dns.jl")
    end
    #@testset "CVODES Direct" begin include("cvodes_dns.jl") end
end

@testset "IDA" begin
    @safetestset "Roberts IDA Simplified" begin
        include("ida_Roberts_simplified.jl")
    end
    @safetestset "Roberts IDA Direct" begin
        include("ida_Roberts_dns.jl")
    end
    @safetestset "Heat IDA Direct" begin
        include("ida_Heat2D.jl")
    end
    # Commented out because still uses the syntax from Grid which is a deprecated package
    #@testset "Cable IDA Direct" begin include("ida_Cable.jl") end
end

@testset "ARK" begin
    @safetestset "Roberts ARKStep Direct" begin
        include("arkstep_Roberts_dns.jl")
    end
    @safetestset "NonLinear ERKStep Direct" begin
        include("erkstep_nonlin.jl")
    end
    #@testset "MRI two way couple" begin include("mri_twowaycouple.jl") end
end

@testset "Kinsol" begin
    @safetestset "Kinsol Simplified" begin
        include("kinsol_mkin_simplified.jl")
    end
    @safetestset "Kinsol MKin" begin
        include("kinsol_mkinTest.jl")
    end
    @safetestset "Kinsol Banded" begin
        include("kinsol_banded.jl")
    end
    @safetestset "Kinsol NonlinearSolve" begin
        include("kinsol_nonlinear_solve.jl")
    end
end

@testset "Handle Tests" begin
    include("handle_tests.jl")
end

@testset "Common Interface" begin
    @safetestset "CVODE" begin
        include("common_interface/cvode.jl")
    end
    @safetestset "ARKODE" begin
        include("common_interface/arkode.jl")
    end
    @safetestset "IDA" begin
        include("common_interface/ida.jl")
    end
    @safetestset "Jacobians" begin
        include("common_interface/jacobians.jl")
    end
    @safetestset "Callbacks" begin
        include("common_interface/callbacks.jl")
    end
    @safetestset "Iterator" begin
        include("common_interface/iterators.jl")
    end
    @safetestset "Errors" begin
        include("common_interface/errors.jl")
    end
    @safetestset "Mass Matrix" begin
        include("common_interface/mass_matrix.jl")
    end
    @safetestset "Preconditioners" begin
        include("common_interface/precs.jl")
    end
    @safetestset "Initialization" begin
        include("common_interface/initialization.jl")
    end
end

@testset "Interpolation" begin
    include("interpolation.jl")
end
