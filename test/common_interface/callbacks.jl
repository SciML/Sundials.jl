using Sundials, Base.Test

callback_f = function (t,u,du)
  du[1] = u[2]
  du[2] = -9.81
end

condtion= function (t,u,integrator) # Event when event_f(t,u,k) == 0
  u[1]
end

affect! = nothing
affect_neg! = function (integrator)
  integrator.u[2] = -integrator.u[2]
end

callback = ContinuousCallback(condtion,affect!,affect_neg!)

u0 = [50.0,0.0]
tspan = (0.0,15.0)
prob = ODEProblem(callback_f,u0,tspan)

sol = solve(prob,CVODE_Adams(),callback=callback)
@test sol(4.0)[1] > 0
sol = solve(prob,CVODE_BDF(),callback=callback)
@test sol(4.0)[1] > 0

u0 = [1.,0.]
function fun2(t,u,du)
   du[2] = -u[1]
   du[1] = u[2]
end
tspan = (0.0,10.0)
prob = ODEProblem(fun2,u0,tspan)

function condition2(t,u,integrator)
  get_du(integrator)[1]>0
end
affect2!(integrator) = terminate!(integrator)
cb = DiscreteCallback(condition2,affect2!)
sol = solve(prob,CVODE_BDF(),callback=cb)
@test sol.t[end] < 3.5

condition3(t,u,integrator) = u[2]
affect3!(integrator) = terminate!(integrator)
cb = ContinuousCallback(condition3,affect3!)
sol = solve(prob,CVODE_Adams(),callback=cb,abstol=1e-12,reltol=1e-12)
@test sol.t[end] ≈ pi
