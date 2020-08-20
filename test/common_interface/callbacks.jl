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

sol = solve(prob, CVODE_Adams(), callback = callback)
@test sol(4.0)[1] > 0
sol = solve(prob, CVODE_BDF(), callback = callback)
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
sol = solve(prob, CVODE_Adams(), callback = callback)
@test sol(4.0)[1] > 0
sol = solve(prob, CVODE_BDF(), callback = callback)
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
sol = solve(prob, CVODE_BDF(), callback = cb)
@test sol.t[end] < 3.5

condition3(u, t, integrator) = u[2]
affect3!(integrator) = terminate!(integrator)
cb = ContinuousCallback(condition3, affect3!)
sol = solve(prob, CVODE_Adams(), callback = cb, abstol = 1e-12, reltol = 1e-12)
@test sol.t[end] ≈ pi
