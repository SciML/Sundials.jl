using DiffEqProblemLibrary, Sundials, Base.Test

prob = prob_ode_linear
dt = 1//2^(4)
saveat = float(collect(0:dt:1))
sol = solve(prob,ARKODE())
@test sol.errors[:l2] < 1e-3
