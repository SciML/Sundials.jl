using Sundials, Test
using SciMLBase: NoInit
using DAEProblemLibrary: prob_dae_resrob
using DiffEqCallbacks
using DiffEqBase

# Test DAE
mutable struct precflags
    prec_used::Bool
    psetup_used::Bool
end

p = precflags(false, false)
prob = DAEProblem(prob_dae_resrob.f, prob_dae_resrob.du0, prob_dae_resrob.u0,
    prob_dae_resrob.tspan, p)

dt = 1000
saveat = float(collect(0:dt:100000))
sol = solve(prob, IDA())
@info "Multiple abstol"
sol = solve(prob, IDA(); abstol = [1e-9, 1e-8, 1e-7])
@info "Band solver"
sol2 = solve(prob, IDA(; linear_solver = :Band, jac_upper = 2, jac_lower = 2))
@info "GMRES solver"
sol3 = solve(prob, IDA(; linear_solver = :GMRES))
#sol4 = solve(prob,IDA(linear_solver=:BCG)) # Fails but doesn't throw an error?
@info "TFQMR solver"
sol5 = solve(prob, IDA(; linear_solver = :TFQMR))
@info "FGMRES solver"
sol6 = solve(prob, IDA(; linear_solver = :FGMRES))
@info "PCG solver"
sol7 = solve(prob, IDA(; linear_solver = :PCG)) # Requires symmetric linear
#@info "KLU solver"
#sol8 = solve(prob,IDA(linear_solver=:KLU)) # Requires Jacobian

sol9 = solve(prob, IDA(; linear_solver = :LapackBand, jac_upper = 2, jac_lower = 2))
sol10 = solve(prob, IDA(; linear_solver = :LapackDense))
sol11 = solve(prob, IDA(; linear_solver = :Dense))

# Test identity preconditioner
prec = (z, r, p, t, y, fy, resid, gamma, delta) -> (p.prec_used = true; z .= r)
psetup = (p, t, resid, u, du, gamma) -> (p.psetup_used = true)
@info "GMRES for identity preconditioner"
sol4 = solve(prob, IDA(; linear_solver = :GMRES, prec = prec))
@test p.prec_used
@info "GMRES with pset"
sol4 = solve(prob, IDA(; linear_solver = :GMRES, prec = prec, psetup = psetup))
@test p.psetup_used

@info "IDA with save_start=false"
@test SciMLBase.successful_retcode(solve(prob, IDA(); save_start = false))

@info "IDA with saveat"
sol = solve(prob, IDA(); saveat = saveat)

@test sol.t == saveat
@info "IDA with saveat everystep"
sol = solve(prob, IDA(); saveat = saveat, save_everystep = true)

@test sol.t != saveat
@test intersect(sol.t, saveat) == saveat
@info "IDA with tstops"
for tstops in [0.9, [0.9]]
    local sol = solve(prob, IDA(); tstops)
    @test 0.9 ∈ sol.t
end

sol = solve(prob, IDA(); d_discontinuities = [0.9])
@test 0.9 ∈ sol.t

@test solve(prob, IDA(); save_idxs = 1).u isa Vector{Float64}

prob = deepcopy(prob_dae_resrob)
prob2 = DAEProblem(prob.f, prob.du0, prob.u0, (1.0, 0.0))
sol = solve(prob2, IDA())
@test maximum(diff(sol.t)) < 0 # Make sure all go negative

function f!(res, du, u, p, t)
    res[1] = du[1] - 1.01
    return
end

u0 = [0.0]
du0 = [1.01] #consistant
tspan = (0.0, 10.0)

dae_prob = DAEProblem(f!, du0, u0, tspan; differential_vars = [true])
sol = solve(dae_prob, IDA())
@test sol.retcode == ReturnCode.Success

du0 = [0.0] # inconsistant
dae_prob = DAEProblem(f!, du0, u0, tspan; differential_vars = [true])
sol = solve(dae_prob, IDA())

function f!(res, du, u, p, t)
    res[1] = u[1] - 1.01
    return
end

u0 = [0.0] #inconsistant
du0 = [0.0]
tspan = (0.0, 10.0)

dae_prob = DAEProblem(f!, du0, u0, tspan; differential_vars = [false])
#Currently broken because initialize_dae! in OrdiniaryDiffEq specializes on ODEIntegrator
init(dae_prob, IDA(), initializealg = NoInit()).u == [0.0]

# test that initializers which modify states actually modify the states
struct DumbInit <: DiffEqBase.DAEInitializationAlgorithm end
function DiffEqBase.initialize_dae!(integrator::Sundials.IDAIntegrator,
        initializealg::DumbInit)
    integrator.u .= 1
    integrator.u_modified = true
    DiffEqBase.initialize_dae!(integrator, Sundials.IDADefaultInit())
end
f(du, u, p, t) = du - u # u(t) = exp(t)
prob = DAEProblem(f, zeros(1), zeros(1), (0, 1), differential_vars = trues(1))
sol = solve(prob, IDA(), initializealg = DumbInit())
# test that initializealg is refected in the sol
isapprox(only(sol.u[begin]), 1, rtol = 1e-3)
# test that solve produced the right answer.
isapprox(only(sol.u[end]), exp(1), rtol = 1e-3)

f_noconverge(out, du, u, p, t) = out .= [du[1] + u[1] / (t - 1)]
prob = DAEProblem(f_noconverge, [1.0], [1.0], (0, 2); differential_vars = [true])
sol = solve(prob, IDA())
@test !(sol.retcode in (ReturnCode.Success,))

# Test that we're saving the correct initial data for du
function f_inital_data(du, u, p, t)
    return [du[1] - (u[1] + 10.0)]
end
prob = DAEProblem(f_inital_data, [0.0], [1.0], (0.0, 1.0); differential_vars = [true])
sol = solve(prob, IDA())
# If this is one, it incorrectly saved u, if it is 0., it incorrectly solved
# the pre-init value rather than the post-init one.
@test sol(0.0, Val{1})[1] ≈ 11.0

# test that callbacks modifying p get the new p
daefun = (du, u, p, t) -> [du[1] - u[2], u[2] - p]
callback = PresetTimeCallback(0.5, integ -> (integ.p = -integ.p))
prob = DAEProblem(daefun, [0.0, 0.0], [0.0, -1.0], (0.0, 1), 1;
    differential_vars = [true, false], callback)
sol = solve(prob, IDA())
@test sol.retcode == ReturnCode.Success
# test that the callback flipping p caused u[2] to get flipped.
first_t = findfirst(isequal(0.5), sol.t)
@test sol.u[first_t][2] == -sol.u[first_t + 1][2]
