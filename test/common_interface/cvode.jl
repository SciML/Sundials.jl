using Sundials, Test
import ODEProblemLibrary: prob_ode_linear, prob_ode_2Dlinear

prob = prob_ode_linear
dt = 1 // 2^(4)
saveat = float(collect(0:dt:1))
sol = solve(prob, CVODE_BDF())
sol = solve(prob, CVODE_Adams())
@test sol.errors[:l2] < 1e-3
sol = solve(prob, CVODE_Adams(); reltol = 1e-5)
@test sol.errors[:l2] < 1e-5
sol = solve(prob, CVODE_Adams(); reltol = 1e-5, abstol = [1e-7])
sol = solve(prob, CVODE_Adams(); saveat = saveat)

@test sol.t == saveat

sol = solve(prob, CVODE_Adams(); saveat = dt)

@test sol.t == saveat

sol = solve(prob, CVODE_Adams(); saveat = saveat, save_everystep = true)

@test sol.t != saveat
@test intersect(sol.t, saveat) == saveat

sol = solve(prob, CVODE_Adams(); saveat = saveat, save_everystep = true, save_start = false)

@test sol.t[1] != 0

sol = solve(prob, CVODE_Adams(); tstops = [0.2, 0.5, 0.7])
@test all(t ∈ sol.t for t in [0.2, 0.5, 0.7])

prob = prob_ode_2Dlinear
sol = solve(prob, CVODE_BDF())
sol = solve(prob, CVODE_Adams())
sol = solve(prob, CVODE_Adams(); saveat = saveat)

@test sol.t == saveat

sol = solve(prob, CVODE_Adams(); saveat = [prob.tspan[2]])

@test sol.t == [prob.tspan[2]]

sol = solve(prob, CVODE_Adams(); saveat = saveat, save_everystep = false)

@test sol.t == saveat

for tstops in [0.9, [0.9]]
    sol = solve(prob,  CVODE_Adams(); tstops)
    @test 0.9 ∈ sol.t
end

sol = solve(prob, CVODE_Adams())
sol_idxs = solve(prob, CVODE_Adams(); save_idxs = [1], timeseries_errors = false)

@test sol[1, :] == sol_idxs[1, :]

sol_idxs = solve(prob, CVODE_Adams(); save_idxs = [1, 2], timeseries_errors = false,
    calculate_error = false)
@test length(sol_idxs[1]) == 2
@test sol[1, :] == sol_idxs[1, :]
@test sol[2, :] == sol_idxs[2, :]

# Test the other function conversions
k = (du, u, p, t) -> du[1] = u[1]
prob = ODEProblem(k, [1.0], (0.0, 1.0))
sol = solve(prob, CVODE_BDF())
h = (u, p, t) -> u
u0 = [1.0 2.0
    3.0 2.0]
prob = ODEProblem(h, u0, (0.0, 1.0))
sol = solve(prob, CVODE_BDF())

# Test Algorithm Choices
sol1 = solve(prob, CVODE_BDF(; method = :Functional))
sol2 = solve(prob, CVODE_BDF(; linear_solver = :Band, jac_upper = 3, jac_lower = 3))
sol3 = solve(prob, CVODE_BDF(; linear_solver = :Diagonal))
sol4 = solve(prob, CVODE_BDF(; linear_solver = :GMRES))
sol5 = solve(prob, CVODE_BDF(; linear_solver = :FGMRES))
sol6 = solve(prob, CVODE_BDF(; linear_solver = :PCG))
sol7 = solve(prob, CVODE_BDF(; linear_solver = :BCG))
sol8 = solve(prob, CVODE_BDF(; linear_solver = :TFQMR))
sol9 = solve(prob, CVODE_BDF(; linear_solver = :Dense))
#sol9 = solve(prob,CVODE_BDF(linear_solver=:KLU)) # Requires Jacobian
sol10 = solve(prob, CVODE_BDF(; linear_solver = :LapackDense))
sol11 = solve(prob, CVODE_BDF(; linear_solver = :LapackBand, jac_upper = 3, jac_lower = 3))

@test isapprox(sol1.u[end], sol2.u[end]; rtol = 1e-3)
@test isapprox(sol1.u[end], sol3.u[end]; rtol = 1e-3)
@test isapprox(sol1.u[end], sol4.u[end]; rtol = 1e-3)
@test isapprox(sol1.u[end], sol5.u[end]; rtol = 1e-3)
@test isapprox(sol1.u[end], sol6.u[end]; rtol = 1e-3)
@test isapprox(sol1.u[end], sol7.u[end]; rtol = 1e-3)
@test isapprox(sol1.u[end], sol8.u[end]; rtol = 1e-3)
#@test isapprox(sol1[end],sol9[end],rtol=1e-3)

# Test identity preconditioner
global prec_used = false
global psetup_used = false
prec = (z, r, p, t, y, fy, gamma, delta, lr) -> (global prec_used = true; z .= r)
psetup = (p, t, u, du, jok, jcurPtr, gamma) -> (global psetup_used = true; jcurPtr[] = false)
sol4 = solve(prob, CVODE_BDF(; linear_solver = :GMRES, prec_side = 3, prec = prec))
@test isapprox(sol1.u[end], sol4.u[end]; rtol = 1e-3)
@test prec_used
sol4 = solve(prob,
    CVODE_BDF(; linear_solver = :GMRES, prec_side = 3, prec = prec,
        psetup = psetup))
@test isapprox(sol1.u[end], sol4.u[end]; rtol = 1e-3)
@test psetup_used

# Backwards
prob = deepcopy(prob_ode_2Dlinear)
prob2 = ODEProblem(prob.f, prob.u0, (1.0, 0.0), 1.01)
sol = solve(prob2, CVODE_BDF())
@test maximum(diff(sol.t)) < 0 # Make sure all go negative

number_test(u, p, t) = -u^2 + (p[1] + t + p[2]) * u + p[2]
u0 = 0.0;
tspan = (0.0, 10)
prob = ODEProblem(number_test, u0, tspan, (2.0, 0.01))
sol = solve(prob, CVODE_BDF())

sol = solve(prob2, CVODE_BDF(); maxiters = 1)
@test length(sol.t) == 2
