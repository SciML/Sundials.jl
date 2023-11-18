using Sundials, Test

callback_f = function (du, u, p, t)
    du[1] = u[2]
    du[2] = -9.81
end

condtion = function (u, t, integrator) # Event when event_f(u,t,k) == 0
    u[1]
end

affect! = nothing
affect_neg! = function (integrator)
    integrator.u[2] = -integrator.u[2]
end

callback = ContinuousCallback(condtion, affect!, affect_neg!)

u0 = [50.0, 0.0]
tspan = (0.0, 15.0)
prob = ODEProblem(callback_f, u0, tspan)

sol = solve(prob, CVODE_Adams(); callback = callback)
@test sol(4.0)[1] > 0
sol = solve(prob, CVODE_BDF(); callback = callback)
@test sol(4.0)[1] > 0

condition = function (out, u, t, integrator)
    out[1] = u[1]
end

affect! = nothing
affect_neg! = function (integrator, idx)
    if idx == 1
        integrator.u[2] = -integrator.u[2]
    end
end

callback = VectorContinuousCallback(condition, affect!, affect_neg!, 1)
sol = solve(prob, CVODE_Adams(); callback = callback)
@test sol(4.0)[1] > 0
sol = solve(prob, CVODE_BDF(); callback = callback)
@test sol(4.0)[1] > 0

u0 = [1.0, 0.0]
function fun2(du, u, p, t)
    du[2] = -u[1]
    du[1] = u[2]
end
tspan = (0.0, 10.0)
prob = ODEProblem(fun2, u0, tspan)

function condition2(u, t, integrator)
    get_du(integrator)[1] > 0
end
affect2!(integrator) = terminate!(integrator)
cb = DiscreteCallback(condition2, affect2!)
sol = solve(prob, CVODE_BDF(); callback = cb)
@test sol.t[end] < 3.5

condition3(u, t, integrator) = u[2]
affect3!(integrator) = terminate!(integrator)
cb = ContinuousCallback(condition3, affect3!)
sol = solve(prob, CVODE_Adams(); callback = cb, abstol = 1e-12, reltol = 1e-12)
@test sol.t[end] ≈ pi

# test that a BitVector in combination with callback gets converted to a NVector correctly
fbv = function (out, du, u, p, t)
    out[1] = -p[1] * u[1] + p[3] * u[2] * u[3] - du[1]
    out[2] = +p[1] * u[1] - p[2] * u[2]^2 - p[3] * u[2] * u[3] - du[2]
    out[3] = u[1] + u[2] + u[3] - p[4]
end
u₀ = [1.0, 0, 0]
du₀ = [0.0, 0.0, 0.0]
p = [0.04, 3.0e7, 1.0e4, 1.0]
tspan = (0.0, 100.0)
differential_vars = BitVector([true, true, false])
bvcond(u, t, integrator) = t - round(t)
bvaffect!(integrator) = integrator.p[4] = 2.0
cb = ContinuousCallback(bvcond, bvaffect!)
prob = DAEProblem(fbv, du₀, u₀, tspan, p, differential_vars = differential_vars)
sol = solve(prob, IDA(), callback = cb, tstops = [50.0], abstol = 1e-12, reltol = 1e-12)
@test sol.t[end] ≈ 100.0

# Test that SubArrays are not allowed as outputs to the integrator
u_out = similar(u₀)
cb = DiscreteCallback(Returns(true), integ -> integ(@view(u_out), integ.t)
prob = DAEProblem(fbv, du₀, u₀, tspan, p, differential_vars = differential_vars)
@test_throws ArgumentError solve(prob, IDA(), callback = cb)

