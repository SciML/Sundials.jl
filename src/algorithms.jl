# Sundials.jl algorithms

# Abstract Types
@compat abstract type SundialsODEAlgorithm{Method,LinearSolver} <: AbstractODEAlgorithm end
@compat abstract type SundialsDAEAlgorithm{LinearSolver} <: AbstractDAEAlgorithm end

# ODE Algorithms
immutable CVODE_BDF{Method,LinearSolver} <: SundialsODEAlgorithm{Method,LinearSolver}
    jac_upper::Int
    jac_lower::Int
    krylov_dim::Int
    stability_limit_detect::Bool
    max_hnil_warns::Int
    max_order::Int
    max_error_test_failures::Int
    max_nonlinear_iters::Int
    max_convergence_failures::Int
end
Base.@pure function CVODE_BDF(;method=:Newton,linear_solver=:Dense,
                    jac_upper=0,jac_lower=0,non_zero=0,krylov_dim=0,
                    stability_limit_detect=false,
                    max_hnil_warns = 10,
                    max_order = 5,
                    max_error_test_failures = 7,
                    max_nonlinear_iters = 3,
                    max_convergence_failures = 10)
    if linear_solver == :Banded && (jac_upper==0 || jac_lower==0)
        error("Banded solver must set the jac_upper and jac_lower")
    end
    CVODE_BDF{method,linear_solver}(jac_upper,jac_lower,krylov_dim,
                                    stability_limit_detect,
                                    max_hnil_warns,
                                    max_order,
                                    max_error_test_failures,
                                    max_nonlinear_iters,
                                    max_convergence_failures)
end

immutable CVODE_Adams{Method,LinearSolver} <: SundialsODEAlgorithm{Method,LinearSolver}
    jac_upper::Int
    jac_lower::Int
    krylov_dim::Int
    stability_limit_detect::Bool
    max_hnil_warns::Int
    max_order::Int
    max_error_test_failures::Int
    max_nonlinear_iters::Int
    max_convergence_failures::Int
end
Base.@pure function CVODE_Adams(;method=:Functional,linear_solver=:None,
                      jac_upper=0,jac_lower=0,krylov_dim=0,
                      stability_limit_detect=false,
                      max_hnil_warns = 10,
                      max_order = 12,
                      max_error_test_failures = 7,
                      max_nonlinear_iters = 3,
                      max_convergence_failures = 10)
    if linear_solver == :Banded && (jac_upper==0 || jac_lower==0)
        error("Banded solver must set the jac_upper and jac_lower")
    end
    CVODE_Adams{method,linear_solver}(jac_upper,jac_lower,krylov_dim,
                                      stability_limit_detect,
                                      max_hnil_warns,
                                      max_order,
                                      max_error_test_failures,
                                      max_nonlinear_iters,
                                      max_convergence_failures)
end

# DAE Algorithms
immutable IDA{LinearSolver} <: SundialsDAEAlgorithm{LinearSolver}
  jac_upper::Int
  jac_lower::Int
  krylov_dim::Int
  max_order::Int
  max_error_test_failures::Int
  nonlinear_convergence_coefficient::Float64
  max_nonlinear_iters::Int
  max_convergence_failures::Int
  nonlinear_convergence_coefficient_ic::Float64
  max_num_steps_ic::Int
  max_num_jacs_ic::Int
  max_num_iters_ic::Int
  max_num_backs_ic::Int
  use_linesearch_ic::Bool
end
Base.@pure function IDA(;linear_solver=:Dense,jac_upper=0,jac_lower=0,krylov_dim=0,
                        max_order = 5,
                        max_error_test_failures = 7,
                        max_nonlinear_iters = 3,
                        nonlinear_convergence_coefficient = 0.33,
                        nonlinear_convergence_coefficient_ic = 0.0033,
                        max_num_steps_ic = 5,
                        max_num_jacs_ic = 4,
                        max_num_iters_ic = 10,
                        max_num_backs_ic = 100,
                        use_linesearch_ic = true,
                        max_convergence_failures = 10)
  if linear_solver == :Banded && (jac_upper==0 || jac_lower==0)
      error("Banded solver must set the jac_upper and jac_lower")
  end
  IDA{linear_solver}(jac_upper,jac_lower,krylov_dim,
                      max_order,
                      max_error_test_failures,
                      nonlinear_convergence_coefficient,
                      max_nonlinear_iters,
                      max_convergence_failures,
                      nonlinear_convergence_coefficient_ic,
                      max_num_steps_ic,
                      max_num_jacs_ic,
                      max_num_iters_ic,
                      max_num_backs_ic,
                      use_linesearch_ic)
end
