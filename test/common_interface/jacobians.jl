using Sundials, Test, SparseArrays, SparseDiffTools

# Test for Jacobian usage
function Lotka(du, u, p, t)
    du[1] = u[1] - u[1] * u[2] # REPL[7], line 3:
    du[2] = -3 * u[2] + 1 * u[1] * u[2]
    nothing
end

jac_called = false
function Lotka_jac(J, u, p, t)
    global jac_called
    jac_called = true
    J[1, 1] = 1.0 - u[2]
    J[1, 2] = -u[1]
    J[2, 1] = 1 * u[2]
    J[2, 2] = -3 + u[1]
    nothing
end

Lotka_f = ODEFunction(Lotka; jac = Lotka_jac)
prob = ODEProblem(Lotka_f, ones(2), (0.0, 10.0))
good_sol = solve(prob, CVODE_BDF())
testsol = solve(prob, CVODE_BDF(), saveat = 0.1, abstol = 1e-12, reltol = 1e-12)
@test jac_called == true

Lotka_f = ODEFunction(Lotka;
    jac = Lotka_jac,
    jac_prototype = sparse([1, 2, 1, 2], [1, 1, 2, 2], zeros(4)))

prob = ODEProblem(Lotka_f, ones(2), (0.0, 10.0))
jac_called = false
sol9 = solve(prob, CVODE_BDF(; linear_solver = :KLU))
@test jac_called == true
@test Array(sol9) ≈ Array(good_sol)

Lotka_fj = ODEFunction(Lotka;
    jac_prototype = JacVec((du, u) -> Lotka(du, u, (), 0.0), ones(2)))

prob = ODEProblem(Lotka_fj, ones(2), (0.0, 10.0))
sol9 = solve(prob, CVODE_BDF(; linear_solver = :GMRES), saveat = 0.1, abstol = 1e-12,
    reltol = 1e-12)
@test Array(sol9) ≈ Array(testsol)

function f2!(res, du, u, p, t)
    res[1] = 1.01du[1]
    return
end

jac_called = false
function f2_jac!(out, du, u, p, gamma, t)
    global jac_called
    jac_called = true
    out[1] = 1.01
end

f2_f = DAEFunction(f2!; jac = f2_jac!)

u0 = [0.0]
tspan = (0.0, 10.0)
du0 = [0.0]
dae_prob = DAEProblem(f2_f, du0, u0, tspan; differential_vars = [true])
good_sol = solve(dae_prob, IDA())
@test jac_called == true

function testjac(res, du, u, p, t)
    res[1] = du[1] - 1.5 * u[1] + 1.0 * u[1] * u[2]
    res[2] = du[2] + 3 * u[2] - u[1] * u[2]
end

jac_called = false
function testjac_jac(J, du, u, p, gamma, t)
    global jac_called
    jac_called = true
    J[1, 1] = gamma - 1.5 + 1.0 * u[2]
    J[1, 2] = 1.0 * u[1]
    J[2, 1] = -1 * u[2]
    J[2, 2] = gamma + 3 - u[1]
    nothing
end

testjac_f = DAEFunction(testjac; jac = testjac_jac)

prob3 = DAEProblem(testjac_f,
    [0.5, -2.0],
    ones(2),
    (0.0, 10.0);
    differential_vars = [true, true])
sol3 = solve(prob3, IDA())

@test jac_called == true
jac_called = false
prob4 = DAEProblem(testjac, [0.5, -2.0], ones(2), (0.0, 10.0))
sol4 = solve(prob4, IDA())

@test jac_called == false

println("Jacobian vs no Jacobian difference:")
println(maximum(sol3 - sol4))
@test maximum(sol3 - sol4) < 1e-6

function testjac(res, du, u, p, t)
    res[1] = du[1] - 1.5 * u[1] + 1.0 * u[1] * u[2]
    res[2] = du[2] + 3 * u[2] - u[1] * u[2]
end

jac_called = false
function testjac_jac(J, du, u, p, gamma, t)
    global jac_called
    jac_called = true
    J[1, 1] = gamma - 1.5 + 1.0 * u[2]
    J[1, 2] = 1.0 * u[1]
    J[2, 1] = -1 * u[2]
    J[2, 2] = gamma + 3 - u[1]
    nothing
end

testjac_f = DAEFunction(testjac;
    jac = testjac_jac,
    jac_prototype = sparse([1, 2, 1, 2], [1, 1, 2, 2], zeros(4)))

prob5 = DAEProblem(testjac_f,
    [0.5, -2.0],
    ones(2),
    (0.0, 10.0);
    differential_vars = [true, true])
sol5 = solve(prob5, IDA())

testjac_f = DAEFunction(testjac;
    jac = testjac_jac,
    jac_prototype = sparse([1, 2, 1, 2], [1, 1, 2, 2], zeros(4)))
prob6 = DAEProblem(testjac_f,
    [0.5, -2.0],
    ones(2),
    (0.0, 10.0);
    differential_vars = [true, true])
sol6 = solve(prob6, IDA(; linear_solver = :KLU))
@test maximum(sol5 - sol6) < 1e-6
