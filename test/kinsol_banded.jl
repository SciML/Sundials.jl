function f!(resid, x)
    for i in eachindex(x)
        resid[i] = sin(x[i]) + x[i]^3
    end
end
x = ones(5)
@test Sundials.kinsol(f!, x; linear_solver = :Band, jac_upper = 0, jac_lower = 0) ==
      Sundials.kinsol(f!, x)

@test Sundials.kinsol(f!, x; linear_solver = :LapackBand, jac_upper = 0, jac_lower = 0) ==
      Sundials.kinsol(f!, x)

function f_iip(du, u, p, t)
    @. du = sin(u) + u^3
end
function f_iip(du, u, p)
    @. du = sin(u) + u^3
end
function f_oop(u, p, t)
    return @. sin(u) + u^3
end
function f_oop(u, p)
    return @. sin(u) + u^3
end

#Testing KINSOL()
u0 = ones(5)
prob_iip = SteadyStateProblem(f_iip, u0)
prob_oop = SteadyStateProblem(f_oop, u0)

@test maximum(solve(prob_iip, KINSOL(); abstol = 1e-6).u) ≥ 1e-10
@test maximum(solve(prob_iip, KINSOL(); abstol = 1e-12).u) ≤ 1e-10

@test solve(prob_iip, KINSOL()) ==
      solve(prob_iip, KINSOL(; linear_solver = :Band, jac_upper = 0, jac_lower = 0))
@test solve(prob_oop, KINSOL()) ==
      solve(prob_oop, KINSOL(; linear_solver = :Band, jac_upper = 0, jac_lower = 0))
@test solve(prob_iip, KINSOL(); abstol = 1e-12) ==
      solve(prob_iip, KINSOL(; linear_solver = :Band, jac_upper = 0, jac_lower = 0);
    abstol = 1e-12)
@test solve(prob_oop, KINSOL()) ==
      solve(prob_oop, KINSOL(; linear_solver = :Band, jac_upper = 0, jac_lower = 0))
prob_iip = NonlinearProblem(f_iip, u0)
prob_oop = NonlinearProblem(f_oop, u0)
@test solve(prob_iip, KINSOL()) ==
      solve(prob_iip, KINSOL(; linear_solver = :Band, jac_upper = 0, jac_lower = 0))
@test solve(prob_oop, KINSOL()) ==
      solve(prob_oop, KINSOL(; linear_solver = :Band, jac_upper = 0, jac_lower = 0))
