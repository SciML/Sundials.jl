using DiffEqProblemLibrary, Sundials, Test
using DiffEqProblemLibrary.DAEProblemLibrary: importdaeproblems; importdaeproblems()
using DiffEqProblemLibrary.DAEProblemLibrary: prob_dae_resrob

# Test DAE
prob = prob_dae_resrob
dt = 1000
saveat = float(collect(0:dt:100000))
sol = solve(prob,IDA())
@show "Multiple abstol"
sol = solve(prob,IDA(),abstol=[1e-9,1e-8,1e-7])
@show "Band solver"
sol2 = solve(prob,IDA(linear_solver=:Band,jac_upper=2,jac_lower=2))
@show "GMRES solver"
sol3 = solve(prob,IDA(linear_solver=:GMRES))
#sol4 = solve(prob,IDA(linear_solver=:BCG)) # Fails but doesn't throw an error?
@show "TFQMR solver"
sol5 = solve(prob,IDA(linear_solver=:TFQMR))
@show "FGMRES solver"
sol6 = solve(prob,IDA(linear_solver=:FGMRES))
@show "PCG solver"
sol7 = solve(prob,IDA(linear_solver=:PCG)) # Requires symmetric linear

# Test identity preconditioner
global prec_used = false
global psetup_used = false
prec = (z,r,p,t,y,fy,resid,gamma,delta,lr)->(global prec_used=true;z.=r)
psetup = (p,t,resid,u,du,gamma) -> (global psetup_used = true)
@show "GMRES for identity preconditioner"
sol4 = solve(prob,IDA(linear_solver=:GMRES,
             prec_side = 3,
             prec=prec))
@test prec_used
@show "GMRES with pset"
sol4 = solve(prob,IDA(linear_solver=:GMRES,
             prec_side = 3,
             prec=prec,
             psetup=psetup))
@test psetup_used

@show "IDA with saveat"
sol = solve(prob,IDA(),saveat=saveat)

@test sol.t == saveat
@show "IDA with saveat everystep"
sol = solve(prob,IDA(),saveat=saveat,save_everystep=true)

@test sol.t != saveat
@test intersect(sol.t,saveat) == saveat
@show "IDA with tstops"
sol = solve(prob,IDA(),tstops=[0.9])

@test 0.9 ∈ sol.t

prob = deepcopy(prob_dae_resrob)
prob2 = DAEProblem(prob.f,prob.du0,prob.u0,(1.0,0.0))
sol = solve(prob2,IDA())
@test maximum(diff(sol.t)) < 0 # Make sure all go negative

function f!(res, du, u, p ,t)
    res[1] = du[1]-1.01
    return
end

u0 = [0.]
du0 = [1.01]
tspan = (0.0, 10.)

println("With consistent initial conditions:")

dae_prob = DAEProblem(f!,du0,u0,tspan, differential_vars=[true])
sol = solve(dae_prob,IDA())

println("With inconsistent initial conditions:")

du0 = [0.]

dae_prob = DAEProblem(f!,du0, u0,tspan, differential_vars=[true])
sol = solve(dae_prob,IDA())
