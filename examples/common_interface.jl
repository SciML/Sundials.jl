using DiffEqProblemLibrary, DiffEqBase, Sundials, Base.Test

prob = prob_ode_linear
dt = 1//2^(4)
saveat = float(collect(0:dt:1))
sol = solve(prob,CVODE_BDF())
sol = solve(prob,CVODE_Adams())
@test sol.errors[:l2] < 1e-3
sol = solve(prob,CVODE_Adams(),reltol=1e-5)
@test sol.errors[:l2] < 1e-5
sol = solve(prob,CVODE_Adams(),saveat=saveat)

@test sol.t == saveat

sol = solve(prob,CVODE_Adams(),saveat=dt)

@test sol.t == saveat

sol = solve(prob,CVODE_Adams(),saveat=saveat,save_everystep=true)

@test sol.t != saveat
@test intersect(sol.t,saveat) == saveat

sol = solve(prob,CVODE_Adams(),saveat=saveat,save_everystep=true,save_start=false)

@test sol.t[1] != 0

prob = prob_ode_2Dlinear
sol = solve(prob,CVODE_BDF())
sol = solve(prob,CVODE_Adams())
sol = solve(prob,CVODE_Adams(),saveat=saveat)

@test sol.t == saveat

sol = solve(prob,CVODE_Adams(),saveat=saveat,save_everystep=false)

@test sol.t == saveat

sol = solve(prob,CVODE_Adams(),tstops=[0.9])

@test 0.9 ∈ sol.t

# Test the other function conversions
k = (t,u,du) -> du[1] = u[1]
prob = ODEProblem(k,[1.0],(0.0,1.0))
sol = solve(prob,CVODE_BDF())
h = (t,u) -> u
u0 = [1.0 2.0
      3.0 2.0]
prob = ODEProblem(h,u0,(0.0,1.0))
sol = solve(prob,CVODE_BDF())

# Test Algorithm Choices
sol1 = solve(prob,CVODE_BDF(method=:Functional))
sol2 = solve(prob,CVODE_BDF(linear_solver=:Banded,jac_upper=3,jac_lower=3))
sol3 = solve(prob,CVODE_BDF(linear_solver=:Diagonal))
sol4 = solve(prob,CVODE_BDF(linear_solver=:GMRES))
sol5 = solve(prob,CVODE_BDF(linear_solver=:BCG))
sol6 = solve(prob,CVODE_BDF(linear_solver=:TFQMR))

@test isapprox(sol1[end],sol2[end],rtol=1e-3)
@test isapprox(sol1[end],sol3[end],rtol=1e-3)
@test isapprox(sol1[end],sol4[end],rtol=1e-3)
@test isapprox(sol1[end],sol5[end],rtol=1e-3)
@test isapprox(sol1[end],sol6[end],rtol=1e-3)

# Backwards
prob = deepcopy(prob_ode_2Dlinear)
prob.tspan = (1.0,0.0)
sol = solve(prob,CVODE_BDF())
@test maximum(diff(sol.t)) < 0 # Make sure all go negative

# Test DAE
prob = prob_dae_resrob
dt = 1000
saveat = float(collect(0:dt:100000))
sol = solve(prob,IDA())
sol = solve(prob,IDA(),saveat=saveat)

@test sol.t == saveat

sol = solve(prob,IDA(),saveat=saveat,save_everystep=true)

@test sol.t != saveat
@test intersect(sol.t,saveat) == saveat

sol = solve(prob,IDA(),tstops=[0.9])

@test 0.9 ∈ sol.t

prob = deepcopy(prob_dae_resrob)
prob.tspan = (1.0,0.0)
sol = solve(prob,IDA())
@test maximum(diff(sol.t)) < 0 # Make sure all go negative
