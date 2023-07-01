using Sundials, Test, DiffEqBase
using ForwardDiff
import ODEProblemLibrary: prob_ode_linear, prob_ode_2Dlinear

function regression_test(alg, tol_ode_linear, tol_ode_2Dlinear)
    sol = solve(prob_ode_linear, alg, dense = true, abstol = 1e-8, reltol = 1e-8)
    @inferred sol(0.5)
    u0 = sol[1]
    p = sol.prob.p
    for t in 0.0:(1 / 16):1.0
        @test isapprox(u0 * exp(p * t), sol(t), rtol = tol_ode_linear)
    end

    sol = solve(prob_ode_2Dlinear, alg, dt = 1 / 2^(2), dense = true)
    sol2 = solve(prob_ode_2Dlinear, alg, dense = true, abstol = 1e-8, reltol = 1e-8)
    u0 = sol[1]
    p = sol.prob.p
    for t in 0.0:(1 / 16):1.0
        @test isapprox(u0 .* exp(p * t), sol(t), rtol = tol_ode_2Dlinear)
    end
end

regression_test(ARKODE(), 1e-5, 1e-4)
regression_test(CVODE_BDF(), 1e-6, 1e-2)
regression_test(CVODE_Adams(), 1e-6, 1e-3)
