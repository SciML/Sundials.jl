using Sundials
using Test

# Some tests use @cfunction, but at the moment that isn't supported on non-Intel platforms
const SUPPORT_CFUNCTION = Sys.ARCH ∉ (:aarch64, :ppc64le, :powerpc64le) ||
                          startswith(lowercase(String(Sys.ARCH)), "arm")
@testset "Generator" begin
    include("generator.jl")
end

@testset "CVODE" begin
    @testset "Roberts CVODE Simplified" begin
        include("cvode_Roberts_simplified.jl")
    end
    SUPPORT_CFUNCTION && @testset "Roberts CVODE Direct" begin
        include("cvode_Roberts_dns.jl")
    end
    #@testset "CVODES Direct" begin include("cvodes_dns.jl") end
end

@testset "IDA" begin
    @testset "Roberts IDA Simplified" begin
        include("ida_Roberts_simplified.jl")
    end
    SUPPORT_CFUNCTION && @testset "Roberts IDA Direct" begin
        include("ida_Roberts_dns.jl")
    end
    @testset "Heat IDA Direct" begin
        include("ida_Heat2D.jl")
    end
    # Commented out because still uses the syntax from Grid which is a deprecated package
    #@testset "Cable IDA Direct" begin include("ida_Cable.jl") end
end

SUPPORT_CFUNCTION && @testset "ARK" begin
    @testset "Roberts ARKStep Direct" begin
        include("arkstep_Roberts_dns.jl")
    end
    @testset "NonLinear ERKStep Direct" begin
        include("erkstep_nonlin.jl")
    end
    #@testset "MRI two way couple" begin include("mri_twowaycouple.jl") end
end

@testset "Kinsol" begin
    @testset "Kinsol Simplified" begin
        include("kinsol_mkin_simplified.jl")
    end
    SUPPORT_CFUNCTION && @testset "Kinsol MKin" begin
        include("kinsol_mkinTest.jl")
    end
    @testset "Kinsol Banded" begin
        include("kinsol_banded.jl")
    end
end
@testset "Handle Tests" begin
    include("handle_tests.jl")
end

@testset "Common Interface" begin
    @testset "CVODE" begin
        include("common_interface/cvode.jl")
    end
    @testset "ARKODE" begin
        include("common_interface/arkode.jl")
    end
    @testset "IDA" begin
        include("common_interface/ida.jl")
    end
    @testset "Jacobians" begin
        include("common_interface/jacobians.jl")
    end
    @testset "Callbacks" begin
        include("common_interface/callbacks.jl")
    end
    @testset "Iterator" begin
        include("common_interface/iterators.jl")
    end
    @testset "Errors" begin
        include("common_interface/errors.jl")
    end
    @testset "Mass Matrix" begin
        include("common_interface/mass_matrix.jl")
    end

    @testset "Preconditioners" begin
        include("common_interface/precs.jl")
    end
end
