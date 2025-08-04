using Sundials
using Test

println("🔍 DEBUG: Starting Sundials.jl test suite")
println("🔍 DEBUG: Julia version: ", VERSION)
println("🔍 DEBUG: Sundials loaded successfully")

@testset "Generator" begin
    println("🔍 DEBUG: Starting Generator tests")
    include("generator.jl")
    println("✅ DEBUG: Generator tests completed")
end

@testset "CVODE" begin
    println("🔍 DEBUG: Starting CVODE tests")
    @testset "Roberts CVODE Simplified" begin
        println("🔍 DEBUG: Starting Roberts CVODE Simplified")
        include("cvode_Roberts_simplified.jl")
        println("✅ DEBUG: Roberts CVODE Simplified completed")
    end
    @testset "Roberts CVODE Direct" begin
        println("🔍 DEBUG: Starting Roberts CVODE Direct")
        include("cvode_Roberts_dns.jl")
        println("✅ DEBUG: Roberts CVODE Direct completed")
    end
    #@testset "CVODES Direct" begin include("cvodes_dns.jl") end
    println("✅ DEBUG: All CVODE tests completed")
end

@testset "IDA" begin
    println("🔍 DEBUG: Starting IDA tests")
    @testset "Roberts IDA Simplified" begin
        println("🔍 DEBUG: Starting Roberts IDA Simplified")
        include("ida_Roberts_simplified.jl")
        println("✅ DEBUG: Roberts IDA Simplified completed")
    end
    @testset "Roberts IDA Direct" begin
        println("🔍 DEBUG: Starting Roberts IDA Direct")
        include("ida_Roberts_dns.jl")
        println("✅ DEBUG: Roberts IDA Direct completed")
    end
    @testset "Heat IDA Direct" begin
        println("🔍 DEBUG: Starting Heat IDA Direct")
        include("ida_Heat2D.jl")
        println("✅ DEBUG: Heat IDA Direct completed")
    end
    # Commented out because still uses the syntax from Grid which is a deprecated package
    #@testset "Cable IDA Direct" begin include("ida_Cable.jl") end
    println("✅ DEBUG: All IDA tests completed")
end

@testset "ARK" begin
    println("🔍 DEBUG: Starting ARK tests")
    @testset "Roberts ARKStep Direct" begin
        println("🔍 DEBUG: Starting Roberts ARKStep Direct")
        include("arkstep_Roberts_dns.jl")
        println("✅ DEBUG: Roberts ARKStep Direct completed")
    end
    @testset "NonLinear ERKStep Direct" begin
        println("🔍 DEBUG: Starting NonLinear ERKStep Direct")
        include("erkstep_nonlin.jl")
        println("✅ DEBUG: NonLinear ERKStep Direct completed")
    end
    #@testset "MRI two way couple" begin include("mri_twowaycouple.jl") end
    println("✅ DEBUG: All ARK tests completed")
end

@testset "Kinsol" begin
    println("🔍 DEBUG: Starting Kinsol tests")
    @testset "Kinsol Simplified" begin
        println("🔍 DEBUG: Starting Kinsol Simplified")
        include("kinsol_mkin_simplified.jl")
        println("✅ DEBUG: Kinsol Simplified completed")
    end
    @testset "Kinsol MKin" begin
        println("🔍 DEBUG: Starting Kinsol MKin")
        include("kinsol_mkinTest.jl")
        println("✅ DEBUG: Kinsol MKin completed")
    end
    @testset "Kinsol Banded" begin
        println("🔍 DEBUG: Starting Kinsol Banded")
        include("kinsol_banded.jl")
        println("✅ DEBUG: Kinsol Banded completed")
    end
    @testset "Kinsol NonlinearSolve" begin
        println("🔍 DEBUG: Starting Kinsol NonlinearSolve")
        include("kinsol_nonlinear_solve.jl")
        println("✅ DEBUG: Kinsol NonlinearSolve completed")
    end
    println("✅ DEBUG: All Kinsol tests completed")
end
@testset "Handle Tests" begin
    println("🔍 DEBUG: Starting Handle Tests")
    include("handle_tests.jl")
    println("✅ DEBUG: Handle Tests completed")
end

@testset "Common Interface" begin
    println("🔍 DEBUG: Starting Common Interface tests")
    @testset "CVODE" begin
        println("🔍 DEBUG: Starting Common Interface CVODE")
        include("common_interface/cvode.jl")
        println("✅ DEBUG: Common Interface CVODE completed")
    end
    @testset "ARKODE" begin
        println("🔍 DEBUG: Starting Common Interface ARKODE")
        include("common_interface/arkode.jl")
        println("✅ DEBUG: Common Interface ARKODE completed")
    end
    @testset "IDA" begin
        println("🔍 DEBUG: Starting Common Interface IDA")
        include("common_interface/ida.jl")
        println("✅ DEBUG: Common Interface IDA completed")
    end
    @testset "Jacobians" begin
        println("🔍 DEBUG: Starting Common Interface Jacobians")
        include("common_interface/jacobians.jl")
        println("✅ DEBUG: Common Interface Jacobians completed")
    end
    @testset "Callbacks" begin
        println("🔍 DEBUG: Starting Common Interface Callbacks")
        include("common_interface/callbacks.jl")
        println("✅ DEBUG: Common Interface Callbacks completed")
    end
    @testset "Iterator" begin
        println("🔍 DEBUG: Starting Common Interface Iterator")
        include("common_interface/iterators.jl")
        println("✅ DEBUG: Common Interface Iterator completed")
    end
    @testset "Errors" begin
        println("🔍 DEBUG: Starting Common Interface Errors")
        include("common_interface/errors.jl")
        println("✅ DEBUG: Common Interface Errors completed")
    end
    @testset "Mass Matrix" begin
        println("🔍 DEBUG: Starting Common Interface Mass Matrix")
        include("common_interface/mass_matrix.jl")
        println("✅ DEBUG: Common Interface Mass Matrix completed")
    end
    @testset "Preconditioners" begin
        println("🔍 DEBUG: Starting Common Interface Preconditioners")
        include("common_interface/precs.jl")
        println("✅ DEBUG: Common Interface Preconditioners completed")
    end
    println("✅ DEBUG: All Common Interface tests completed")
end

@testset "Interpolation" begin
    println("🔍 DEBUG: Starting Interpolation tests")
    include("interpolation.jl")
    println("✅ DEBUG: Interpolation tests completed")
end

println("🎉 DEBUG: All test suites completed successfully!")
