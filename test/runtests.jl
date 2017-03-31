using Sundials
using Base.Test

examples_path = joinpath(dirname(@__FILE__), "..", "examples")

# run cvode example
println("== start cvode Roberts example (simplified)")
let
include(joinpath(examples_path, "cvode_Roberts_simplified.jl"))
println("result at t=$(t[end]):")
println(res[:,end], "\n")
end

println("== start cvode Roberts example")
let
include(joinpath(examples_path, "cvode_Roberts_dns.jl"))
end

# run ida examples
println("== start ida_Roberts example (simplified)")
let
include(joinpath(examples_path, "ida_Roberts_simplified.jl"))
end

println("== start ida_Roberts example")
let
include(joinpath(examples_path, "ida_Roberts_dns.jl"))
println("result at t=$(t[end]):")
println(yout[:,end], "\n")
end

println("== start ida_Heat2D example")
let
include(joinpath(examples_path, "ida_Heat2D.jl"))
println("result at t=$(t[end]):")
println(yout[:,end], "\n")
end

#= requires Grid package
println("== start ida_Cable example")
let
include(joinpath(examples_path, "ida_Cable.jl"))
end
=#

# run kinsol example
println("== start kinsol example (simplified)")
let
include(joinpath(examples_path, "kinsol_mkin_simplified.jl"))
println("solution:")
println(res)
residual = ones(2)
sysfn(res, residual)
println("residual:")
println(residual, "\n")
end

println("== start kinsol example")
let
include(joinpath(examples_path, "kinsol_mkinTest.jl"))
@test abs(minimum(residual)) < 1e-5
end

println("== handle tests")
let
@testset "Handle Tests" begin include("handle_tests.jl") end
end

println("== test common interface")
let
@testset "Common Interface" begin include(joinpath(examples_path, "common_interface.jl")) end
end
