using Sundials, Base.Test

# Test for Jacobian usage
function Lotka(du, u, p, t)
  du[1] = u[1] - u[1] * u[2] # REPL[7], line 3:
  du[2] = -3 * u[2] + 1 * u[1] * u[2]
  nothing
end

jac_called = false
function Lotka(::Type{Val{:jac}},J,u,p,t)
  global jac_called
  jac_called = true
  J[1,1] = 1.0 - u[2]
  J[1,2] = -u[1]
  J[2,1] = 1 * u[2]
  J[2,2] = -3 + u[1]
  nothing
end

prob = ODEProblem(Lotka,ones(2),(0.0,10.0))
good_sol = solve(prob,CVODE_BDF())
@test jac_called == true

function f2!(res, du, u, p, t)
    res[1] = 1.01du[1]
    return
end

jac_called = false
function f2!(::Type{Val{:jac}},out, du, u, p, gamma, t)
    global jac_called
    jac_called = true
    out[1] = 1.01
end

u0 = [0.]
tspan = (0.0, 10.)
du0 = [0.]
dae_prob = DAEProblem(f2!,du0, u0,tspan, differential_vars=[true])
good_sol = solve(dae_prob,IDA())
@test jac_called == true

function testjac(res, du, u, p, t)
  res[1] = du[1] - 1.5 * u[1] + 1.0 * u[1]*u[2]
  res[2] = du[2] +3 * u[2] - u[1]*u[2]
end

jac_called = false
function testjac(::Type{Val{:jac}},J, du, u, p, gamma, t)
  global jac_called
  jac_called = true
  J[1,1] = gamma - 1.5 + 1.0 * u[2]
  J[1,2] = 1.0 * u[1]
  J[2,1] = - 1 * u[2]
  J[2,2] = gamma + 3 - u[1]
  nothing
end

prob3 = DAEProblem(testjac,[0.5,-2.0],ones(2),(0.0,10.0),differential_vars=[true,true])
sol3 = solve(prob3, IDA())

@test jac_called == true
jac_called = false
prob4 = DAEProblem((res, du, u, p, t) -> testjac(res, du, u, p, t),
                    [0.5,-2.0],ones(2),(0.0,10.0))
sol4 = solve(prob4, IDA())

@test jac_called == false

println("Jacobian vs no Jacobian difference:")
println(maximum(sol3-sol4))
@test maximum(sol3-sol4) < 1e-6
