using Sundials
using Base.Test

@testset "CVODE" begin
    @testset "Roberts CVODE Simplified" begin include("cvode_Roberts_simplified.jl") end
    @testset "Roberts CVODE Direct" begin include("cvode_Roberts_dns.jl") end
end
@testset "IDA" begin
    @testset "Roberts IDA Simplified" begin include("ida_Roberts_simplified.jl") end
    @testset "Roberts IDA Direct" begin include("ida_Roberts_dns.jl") end
    @testset "Heat IDA Direct" begin include("ida_Heat2D.jl") end
    #@testset "Cable IDA Direct" begin include("ida_Cable.jl") end # requires Grid
end
@testset "Kinsol" begin
    @testset "Kinsol Simplified" begin include("kinsol_mkin_simplified.jl") end
    @testset "Kinsol MKin" begin include("kinsol_mkinTest.jl") end
    @testset "Kinsol Banded" begin include("kinsol_banded.jl") end
end
@testset "Handle Tests" begin include("handle_tests.jl") end
@testset "Common Interface" begin
    @testset "CVODE" begin include("common_interface/cvode.jl") end
    @testset "IDA" begin include("common_interface/ida.jl") end
    @testset "Jacobians" begin include("common_interface/jacobians.jl") end
    @testset "Callbacks" begin include("common_interface/callbacks.jl") end
    @testset "Iterator" begin include("common_interface/iterators.jl") end
    @testset "Errors" begin include("common_interface/errors.jl") end
end
