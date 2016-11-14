using DiffEqProblemLibrary, DiffEqBase

prob = prob_ode_linear
dt = 1//2^(4)
saveat = float(collect(0:dt:1))
@time sol = solve(prob,CVODE_BDF)
@time sol = solve(prob,CVODE_Adams)
@time sol = solve(prob,CVODE_Adams,saveat=saveat)
bool1 = intersect(sol.t,saveat) == saveat
@time sol = solve(prob,CVODE_Adams,saveat=saveat,save_timeseries=false)
bool2 = sol.t == saveat

prob = prob_ode_2Dlinear
@time sol = solve(prob,CVODE_BDF)
@time sol = solve(prob,CVODE_Adams)
@time sol = solve(prob,CVODE_Adams,saveat=saveat)
bool3 = intersect(sol.t,saveat) == saveat
@time sol = solve(prob,CVODE_Adams,saveat=saveat,save_timeseries=false)
bool4 = sol.t == saveat

# Test the other function conversions
k = (t,u,du) -> du[1] = u[1]
prob = ODEProblem(k,[1.0],(0.0,1.0))
@time sol = solve(prob,CVODE_BDF)
h = (t,u) -> u
u0 = [1.0 2.0
      3.0 2.0]
prob = ODEProblem(h,u0,(0.0,1.0))
@time sol = solve(prob,CVODE_BDF)
