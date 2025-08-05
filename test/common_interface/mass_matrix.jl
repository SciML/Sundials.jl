using Sundials, Test, LinearAlgebra

# Test mass matrix functionality - ensure mass matrix problems work correctly
# Test with identity mass matrix: M * du/dt = f(u,t) where M = I should be equivalent to du/dt = f(u,t)
I_mat = [1.0 0.0 0.0; 0.0 1.0 0.0; 0.0 0.0 1.0]
function mm_f(du, u, p, t)
    @. du = u + t
    nothing
end
mm_g(du, u, p, t) = (@. du = u + t; nothing)

u0 = ones(3)
tspan = (0.0, 1.0)
saveat = 0.0:0.1:1.0

prob_identity = ODEProblem(ODEFunction{true, true}(mm_f; mass_matrix = I_mat), u0, tspan)
prob_regular = ODEProblem(ODEFunction{true, true}(mm_g), u0, tspan)

sol_identity = solve(prob_identity, ARKODE(); abstol = 1e-8, reltol = 1e-8, saveat=saveat)
sol_regular = solve(prob_regular, ARKODE(); abstol = 1e-8, reltol = 1e-8, saveat=saveat)

@test norm(sol_identity.u .- sol_regular.u) ≈ 0 atol=1e-7
