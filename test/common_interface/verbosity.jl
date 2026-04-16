using Sundials, SciMLLogging, Test
using DiffEqBase: DEVerbosity
import ODEProblemLibrary: prob_ode_linear

prob = prob_ode_linear

# Default (Standard preset) — should work without warnings
sol = solve(prob, CVODE_BDF())
@test sol.retcode == ReturnCode.Success

# Explicit Standard preset
sol = solve(prob, CVODE_BDF(), verbose = SciMLLogging.Standard())
@test sol.retcode == ReturnCode.Success

# Explicit None preset — no output
sol = solve(prob, CVODE_BDF(), verbose = SciMLLogging.None())
@test sol.retcode == ReturnCode.Success

# Bool true — maps to DEVerbosity(Standard)
sol = solve(prob, CVODE_BDF(), verbose = true)
@test sol.retcode == ReturnCode.Success

# Bool false — maps to DEVerbosity(None)
sol = solve(prob, CVODE_BDF(), verbose = false)
@test sol.retcode == ReturnCode.Success

# DEVerbosity with individual toggle
sol = solve(prob, CVODE_BDF(), verbose = DEVerbosity(checkflag = SciMLLogging.WarnLevel()))
@test sol.retcode == ReturnCode.Success

# DEVerbosity with sundials_specific group
sol = solve(prob, CVODE_BDF(), verbose = DEVerbosity(sundials_specific = SciMLLogging.WarnLevel()))
@test sol.retcode == ReturnCode.Success

# ARKODE
sol = solve(prob, ARKODE(), verbose = false)
@test sol.retcode == ReturnCode.Success

# IDA
function robertson(out, du, u, _, _)
    out[1] = -0.04u[1] + 1.0e4 * u[2] * u[3] - du[1]
    out[2] = +0.04u[1] - 3.0e7 * u[2]^2 - 1.0e4 * u[2] * u[3] - du[2]
    return out[3] = u[1] + u[2] + u[3] - 1.0
end
dae_prob = DAEProblem(
    robertson, [-0.04, 0.04, 0.0], [1.0, 0.0, 0.0], (0.0, 1.0e5),
    differential_vars = [true, true, false]
)
sol = solve(dae_prob, IDA(), verbose = false)
@test sol.retcode == ReturnCode.Success
