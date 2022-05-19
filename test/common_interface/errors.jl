using Sundials, Test

println("Test error handling")

f_error(u, p, t) = u / t
u0 = [1.0]
prob = ODEProblem(f_error, u0, (0.0, 1.0))
sol = solve(prob, CVODE_BDF())
sol = solve(prob, CVODE_BDF(); verbose = false)

f_error2(du, u, p, t) = du .= u ./ t .- 1
u0 = [1.0];
du0 = [1.0];
prob = DAEProblem(f_error2, u0, du0, (0.0, 1.0); differential_vars = [1])
sol = solve(prob, IDA())
sol = solve(prob, IDA(); verbose = false)

@test sol.retcode == :InitialFailure

u = zeros(Float64, 0)
du = zeros(Float64, 0)
function F(du, u, p, t) end
prob = DAEProblem{false}(F, du,
                         u,
                         (0.0, 1e-7);
                         differential_vars = fill(true, 0))
@test_throws Any sol = solve(prob, IDA())
