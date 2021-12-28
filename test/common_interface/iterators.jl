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
