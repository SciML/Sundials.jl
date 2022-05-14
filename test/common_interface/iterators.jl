using DiffEqProblemLibrary, Sundials, Test
using DiffEqProblemLibrary.ODEProblemLibrary: importodeproblems;
importodeproblems();
import DiffEqProblemLibrary.ODEProblemLibrary: prob_ode_linear, prob_ode_2Dlinear

prob = prob_ode_2Dlinear
integrator = init(prob, CVODE_BDF())
step!(integrator)
integrator(integrator.t, Val{1})

for i in integrator
    @info i.t
end

integrator.t == 1.0
step!(integrator)
integrator.t > 1.0

reinit!(integrator)
solve!(integrator)
u1 = copy(integrator.u)
reinit!(integrator)
solve!(integrator)
u2 = copy(integrator.u)
@test u1 != vec(prob.u0)
@test u1 == u2

f(u, p, t) = 2 * u
u_positive(u, t, integrator) = u > 0
terminate_if_u_pos = DiscreteCallback(u_positive, terminate!)

prob = ODEProblem(f, [1.0], (0.0, 1.0)) # positive initial condition > positive u > :Terminated
integrator = init(prob, CVODE_BDF(), callback=terminate_if_u_pos)
sol1 = solve!(integrator)
@test sol1.retcode === :Terminated

reinit!(integrator, -1.0) # negative initial condition > negative u > :Success!
sol2 = solve!(integrator)
@test sol2.retcode == :Success

prob = ODEProblem(f, -1.0, (0.0, 1.0)) # negative initial condition > negative u > :Success!
integrator = init(prob, Tsit5(), callback=terminate_if_u_pos)
sol3 = solve!(integrator)
@test sol3.retcode == :Success