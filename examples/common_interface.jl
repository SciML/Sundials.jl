using DiffEqProblemLibrary, DiffEqBase, Sundials

prob = prob_ode_linear
dt = 1//2^(4)
saveat = float(collect(0:dt:1))
@time sol = solve(prob,CVODE_BDF())
@time sol = solve(prob,CVODE_Adams())
@time sol = solve(prob,CVODE_Adams(),saveat=saveat)

@test intersect(sol.t,saveat) == saveat

@time sol = solve(prob,CVODE_Adams(),saveat=saveat,save_timeseries=false)

@test sol.t == saveat

prob = prob_ode_2Dlinear
@time sol = solve(prob,CVODE_BDF())
@time sol = solve(prob,CVODE_Adams())
@time sol = solve(prob,CVODE_Adams(),saveat=saveat)

@test intersect(sol.t,saveat) == saveat

@time sol = solve(prob,CVODE_Adams(),saveat=saveat,save_timeseries=false)

@test sol.t == saveat

# Test the other function conversions
k = (t,u,du) -> du[1] = u[1]
prob = ODEProblem(k,[1.0],(0.0,1.0))
@time sol = solve(prob,CVODE_BDF())
h = (t,u) -> u
u0 = [1.0 2.0
      3.0 2.0]
prob = ODEProblem(h,u0,(0.0,1.0))
@time sol = solve(prob,CVODE_BDF())

# Test Algorithm Choices
@time sol1 = solve(prob,CVODE_BDF(method=:Functional))
@time sol2 = solve(prob,CVODE_BDF(linear_solver=:Banded,jac_upper=3,jac_lower=3))
@time sol3 = solve(prob,CVODE_BDF(linear_solver=:Diagonal))

@test isapprox(sol1[end],sol2[end],rtol=1e-3)
@test isapprox(sol1[end],sol3[end],rtol=1e-3)

# Test DAE
prob = prob_dae_resrob
dt = 1000
saveat = float(collect(0:dt:100000))
sol = solve(prob,IDA())
sol = solve(prob,IDA(),saveat=saveat)

@test intersect(sol.t,saveat) == saveat

sol = solve(prob,IDA(),saveat=saveat,save_timeseries=false)

@test sol.t == saveat
