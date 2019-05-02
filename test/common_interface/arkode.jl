using Sundials, Test
using DiffEqProblemLibrary
using DiffEqProblemLibrary.ODEProblemLibrary: importodeproblems; importodeproblems()
import DiffEqProblemLibrary.ODEProblemLibrary: prob_ode_linear, prob_ode_2Dlinear

prob = prob_ode_linear
dt = 1//2^(4)
sol = solve(prob,ARKODE())
@test sol.errors[:l2] < 5e-2
sol = solve(prob,ARKODE(),abstol=[1e-7])

f1 = (du,u,p,t) -> du .= u
f2 = (du,u,p,t) -> du .= u

prob = prob_ode_2Dlinear
dt = 1//2^(4)
sol = solve(prob,ARKODE())

prob = SplitODEProblem(SplitFunction(f1,f2,analytic=(u0,p,t)->exp(2t)*u0),
                       rand(4,2),(0.0,1.0))

sol = solve(prob,ARKODE())
@test sol.errors[:l2] < 1e-2
sol = solve(prob,ARKODE(),reltol=1e-12,abstol=1e-12)
@test sol.errors[:l2] < 1e-6
