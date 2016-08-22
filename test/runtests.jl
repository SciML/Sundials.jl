using Sundials
using Base.Test

# run cvode example
println("== start cvode Roberts example (simplified)")
include("../examples/cvode_Roberts_simplified.jl")

println("result at t=$(t[end]):")
println(res[end,:], "\n")

println("== start cvode Roberts example")
include("../examples/cvode_Roberts_dns.jl")

# run ida examples
println("== start ida_Roberts example (simplified)")
include("../examples/ida_Roberts_simplified.jl")

println("== start ida_Roberts example")
include("../examples/ida_Roberts_dns.jl")

println("result at t=$(t[end]):")
println(yout[end,:], "\n")

println("== start ida_Heat2D example")
include("../examples/ida_Heat2D.jl")

println("result at t=$(t[end]):")
println(yout[end,:], "\n")

# run kinsol example
println("== start kinsol example (simplified)")
include("../examples/kinsol_mkin_simplified.jl")

println("solution:")
println(res)
residual = ones(2)
sysfn(res, residual)
println("residual:")
println(residual, "\n")

println("== start kinsol example")
include("../examples/kinsol_mkinTest.jl")

@test abs(minimum(residual)) < 1e-5
