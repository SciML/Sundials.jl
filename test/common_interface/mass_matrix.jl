using Sundials, Test, LinearAlgebra

# create mass matrix problems
function make_mm_probs(mm_A, ::Type{Val{iip}}) where iip
  # iip
  mm_b = vec(sum(mm_A; dims=2))
  function mm_f(du,u,p,t)
    mul!(du,mm_A,u)
    du .+= t * mm_b
    nothing
  end
  mm_g(du,u,p,t) = (@. du = u + t; nothing)

  # oop
  mm_f(u,p,t) = mm_A * (u .+ t)
  mm_g(u,p,t) = u .+ t

  mm_analytic(u0, p, t) = @. 2 * u0 * exp(t) - t - 1

  u0 = ones(3)
  tspan = (0.0, 1.0)

  prob = ODEProblem(ODEFunction{iip,true}(mm_f, analytic=mm_analytic, mass_matrix=mm_A), u0, tspan)
  prob2 = ODEProblem(ODEFunction{iip,true}(mm_g, analytic=mm_analytic), u0, tspan)

  prob, prob2
end

mm_A = Float64[-2 1 4; 4 -2 1; 2 1 3]
prob, prob2 = make_mm_probs(mm_A, Val{true})

sol = solve(prob,  ARKODE(),abstol=1e-8,reltol=1e-8)
sol2 = solve(prob2,ARKODE(),abstol=1e-8,reltol=1e-8)

@test norm(sol .- sol2) ≈ 0 atol=1e-7
