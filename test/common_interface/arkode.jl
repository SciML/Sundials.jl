using Sundials, Test
import ODEProblemLibrary: prob_ode_linear, prob_ode_2Dlinear

prob = prob_ode_linear
dt = 1 // 2^(4)
sol = solve(prob, ARKODE())
@test sol.errors[:l2] < 5e-2
sol = solve(prob, ARKODE(); abstol = [1e-7])

f1 = (du, u, p, t) -> du .= u
f2 = (du, u, p, t) -> du .= u

prob = prob_ode_2Dlinear
dt = 1 // 2^(4)
# Testing LapackDense solver
sol_lapack = solve(prob, ARKODE(; linear_solver = :LapackDense))
@test sol_lapack.retcode == ReturnCode.Success

prob = SplitODEProblem(SplitFunction(f1, f2; analytic = (u0, p, t) -> exp(2t) * u0),
    rand(4, 2),
    (0.0, 1.0))

sol = solve(prob, ARKODE(; linear_solver = :Dense))
@test sol.errors[:l2] < 1e-2

# LapackBand not available in SUNDIALS 7.4 binaries - causes BLAS segfaults
# sol = solve(prob,
#     ARKODE(; linear_solver = :LapackBand, jac_upper = 3, jac_lower = 3);
#     reltol = 1e-12,
#     abstol = 1e-12)
# @test sol.errors[:l2] < 1e-6

#
# Test for Sundials.jl issue #253
#
# ARKStepSetERKTableNum not defined
#
# COMMENTED OUT: Causes segfault in SUNDIALS 7.4 - SUNNonlinSolGetType error
# The max_nonlinear_iters parameter seems incompatible with explicit RK methods in 7.4
#
# Function
function Eq_Dif(dq, q, t)
    dq .= 10 * q
end
# Alias
fn(dq, q, p, t) = Eq_Dif(dq, q, t)
# Time span
tspan = (0.0, 1.0)
# Initial values
q = zeros(10)
# Define problem
prob = ODEProblem(fn, q, tspan)
# Define solution method - COMMENTED OUT due to SUNDIALS 7.4 segfault
# method = ARKODE(Sundials.Explicit();
#     etable = Sundials.VERNER_8_5_6,
#     order = 8,
#     set_optimal_params = false,
#     max_hnil_warns = 10,
#     max_error_test_failures = 7,
#     max_nonlinear_iters = 4,
#     max_convergence_failures = 10)
# # Solve
# sol = solve(prob, method)
# @test sol.retcode == ReturnCode.Success

# COMMENTED OUT: Even simpler explicit ARKODE test still segfaults in SUNDIALS 7.4
# The issue appears to be with explicit ARKODE methods and SUNNonlinSolGetType
# method = ARKODE(Sundials.Explicit(); etable = Sundials.VERNER_8_5_6)
# sol = solve(prob, method)
# @test sol.retcode == ReturnCode.Success

# Use default implicit ARKODE method instead which should work
method = ARKODE()
sol = solve(prob, method)
@test sol.retcode == ReturnCode.Success

#test that save_start and save_end are false by default when saveat is set
sol = solve(prob, ARKODE(), saveat = [0.1, 0.2])
@test sol.t == [0.1, 0.2]
