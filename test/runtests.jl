using Sundials
using Base.Test

# run cvode example
println("== start cvode example")
include("../examples/cvode_Roberts_simplified.jl")

println("result at t=$(t[end]):")
println(res[end,:], "\n")


# run ida example
println("== start ida example")
include("../examples/ida_Roberts_simplified.jl")

println("result at t=$(t[end]):")
println(yout[end,:], "\n")


# run kinsol example
println("== start kinsol example")
include("../examples/kinsol_mkin_simplified.jl")

println("solution:")
println(res)
residual = ones(2)
sysfn(res, residual)
println("residual:")
println(residual, "\n")

@test abs(minimum(residual)) < 1e-5
