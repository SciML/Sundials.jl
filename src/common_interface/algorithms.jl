# Sundials.jl algorithms

# Abstract Types
abstract type SundialsODEAlgorithm{Method,LinearSolver} <: DiffEqBase.AbstractODEAlgorithm end
abstract type SundialsDAEAlgorithm{LinearSolver} <: DiffEqBase.AbstractDAEAlgorithm end

# ODE Algorithms
struct CVODE_BDF{Method,LinearSolver,P} <: SundialsODEAlgorithm{Method,LinearSolver}
    jac_upper::Int
    jac_lower::Int
    stored_upper::Int
    krylov_dim::Int
    stability_limit_detect::Bool
    max_hnil_warns::Int
    max_order::Int
    max_error_test_failures::Int
    max_nonlinear_iters::Int
    max_convergence_failures::Int
    prec::P
    prec_side::Int
end
Base.@pure function CVODE_BDF(;method=:Newton,linear_solver=:Dense,
                    jac_upper=0,jac_lower=0,stored_upper = jac_upper+jac_lower, non_zero=0,krylov_dim=0,
                    stability_limit_detect=false,
                    max_hnil_warns = 10,
                    max_order = 5,
                    max_error_test_failures = 7,
                    max_nonlinear_iters = 3,
                    max_convergence_failures = 10,
                    prec = nothing, prec_side = 0)
    if linear_solver == :Band && (jac_upper==0 || jac_lower==0)
        error("Banded solver must set the jac_upper and jac_lower")
    end
    if linear_solver != :None && linear_solver != :Diagonal && linear_solver != :Dense && linear_solver != :Band && linear_solver != :BCG && linear_solver != :GMRES && linear_solver != :FGMRES && linear_solver != :PCG && linear_solver != :TFQMR && linear_solver != :KLU
        error("Linear solver choice not accepted.")
    end
    CVODE_BDF{method,linear_solver, typeof(prec)}(jac_upper,jac_lower,
                                    stored_upper,krylov_dim,
                                    stability_limit_detect,
                                    max_hnil_warns,
                                    max_order,
                                    max_error_test_failures,
                                    max_nonlinear_iters,
                                    max_convergence_failures, prec, prec_side)
end

struct CVODE_Adams{Method,LinearSolver,P} <: SundialsODEAlgorithm{Method,LinearSolver}
    jac_upper::Int
    jac_lower::Int
    stored_upper::Int
    krylov_dim::Int
    stability_limit_detect::Bool
    max_hnil_warns::Int
    max_order::Int
    max_error_test_failures::Int
    max_nonlinear_iters::Int
    max_convergence_failures::Int
    prec::P
    prec_side::Int
end
Base.@pure function CVODE_Adams(;method=:Functional,linear_solver=:None,
                      jac_upper=0,jac_lower=0,
                      stored_upper = jac_upper+jac_lower,
                      krylov_dim=0,
                      stability_limit_detect=false,
                      max_hnil_warns = 10,
                      max_order = 12,
                      max_error_test_failures = 7,
                      max_nonlinear_iters = 3,
                      max_convergence_failures = 10,
                      prec = nothing, prec_side = 0
                      )
    if linear_solver == :Band && (jac_upper==0 || jac_lower==0)
        error("Banded solver must set the jac_upper and jac_lower")
    end
    if linear_solver != :None && linear_solver != :Diagonal && linear_solver != :Dense && linear_solver != :Band && linear_solver != :BCG && linear_solver != :GMRES && linear_solver != :FGMRES && linear_solver != :PCG && linear_solver != :TFQMR
        error("Linear solver choice not accepted.")
    end
    CVODE_Adams{method,linear_solver,typeof(prec)}(jac_upper,jac_lower,
                                      stored_upper,krylov_dim,
                                      stability_limit_detect,
                                      max_hnil_warns,
                                      max_order,
                                      max_error_test_failures,
                                      max_nonlinear_iters,
                                      max_convergence_failures,prec,prec_side)
end

struct ARKODE{Method,LinearSolver,MassLinearSolver,T,T1,T2,P} <: SundialsODEAlgorithm{Method,LinearSolver}
    stiffness::T
    jac_upper::Int
    jac_lower::Int
    stored_upper::Int
    mass_upper::Int
    mass_lower::Int
    mass_stored_upper::Int
    krylov_dim::Int
    mass_krylov_dim::Int
    max_hnil_warns::Int
    max_error_test_failures::Int
    max_nonlinear_iters::Int
    max_convergence_failures::Int
    predictor_method::Int
    nonlinear_convergence_coefficient::Float64
    dense_order::Int
    order::Int
    set_optimal_params::Bool
    crdown::Float64
    dgmax::Float64
    rdiv::Float64
    msbp::Int
    itable::T1
    etable::T2
    prec::P
    prec_side::Int
end

Base.@pure function ARKODE(stiffness=Implicit();method=:Newton,linear_solver=:Dense,
                           mass_linear_solver=:Dense,
                    jac_upper=0,jac_lower=0,stored_upper = jac_upper+jac_lower,
                    mass_upper=0,mass_lower=0,mass_stored_upper = mass_upper+mass_lower,
                    non_zero=0,krylov_dim=0,mass_krylov_dim=0,
                    max_hnil_warns = 10,
                    max_error_test_failures = 7,
                    max_nonlinear_iters = 3,
                    max_convergence_failures = 10,
                    predictor_method = 0,
                    nonlinear_convergence_coefficient = 0.1,
                    dense_order = 3,
                    order = 4,
                    set_optimal_params = false,
                    crdown = 0.3,
                    dgmax = 0.2,
                    rdiv = 2.3,
                    msbp = 20,
                    adaptivity_method = 0,
                    itable = nothing,
                    etable = nothing,
                    prec = nothing, prec_side = 0
                    )
    if linear_solver == :Band && (jac_upper==0 || jac_lower==0)
        error("Banded solver must set the jac_upper and jac_lower")
    end
    if linear_solver != :None && linear_solver != :Dense && linear_solver != :Band && linear_solver != :BCG && linear_solver != :GMRES && linear_solver != :FGMRES && linear_solver != :PCG && linear_solver != :TFQMR
        error("Linear solver choice not accepted.")
    end
    if mass_linear_solver != :Dense && mass_linear_solver != :Band && mass_linear_solver != :BCG && mass_linear_solver != :GMRES && mass_linear_solver != :FGMRES && mass_linear_solver != :PCG && mass_linear_solver != :TFQMR
        error("Mass Matrix Linear solver choice not accepted.")
    end
    ARKODE{method,linear_solver,mass_linear_solver,
                    typeof(stiffness),
                    typeof(itable),typeof(etable),
                    typeof(prec)}(
                                    stiffness,
                                    jac_upper,jac_lower,
                                    stored_upper,
                                    mass_upper,mass_lower,
                                    mass_stored_upper,
                                    krylov_dim,mass_krylov_dim,
                                    max_hnil_warns,
                                    max_error_test_failures,
                                    max_nonlinear_iters,
                                    max_convergence_failures,
                                    predictor_method,
                                    nonlinear_convergence_coefficient,
                                    dense_order,
                                    order,
                                    set_optimal_params,
                                    crdown,
                                    dgmax,
                                    rdiv,
                                    msbp,
                                    itable,
                                    etable,
                                    prec, prec_side)
end

# DAE Algorithms
struct IDA{LinearSolver,P} <: SundialsDAEAlgorithm{LinearSolver}
  jac_upper::Int
  jac_lower::Int
  stored_upper::Int
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
  init_all::Bool
  prec::P
  prec_side::Int
end
Base.@pure function IDA(;linear_solver=:Dense,jac_upper=0,jac_lower=0,
                        stored_upper = jac_upper+jac_lower,
                        krylov_dim=0,
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
                        init_all = false,
                        max_convergence_failures = 10,
                        prec = nothing, prec_side = 0)
  if linear_solver == :Band && (jac_upper==0 || jac_lower==0)
      error("Banded solver must set the jac_upper and jac_lower")
  end
  if linear_solver != :Dense && linear_solver != :Band && linear_solver != :BCG && linear_solver != :GMRES && linear_solver != :FGMRES && linear_solver != :PCG && linear_solver != :TFQMR && linear_solver != :KLU
      error("Linear solver choice not accepted.")
  end
  IDA{linear_solver,typeof(prec)}(jac_upper,jac_lower,stored_upper,krylov_dim,
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
                      use_linesearch_ic,
                      init_all,prec, prec_side)
end

method_choice(alg::SundialsODEAlgorithm{Method}) where Method = Method
method_choice(alg::SundialsDAEAlgorithm) = :Newton
linear_solver(alg::SundialsODEAlgorithm{Method,LinearSolver}) where {Method,LinearSolver}= LinearSolver
linear_solver(alg::SundialsDAEAlgorithm{LinearSolver}) where LinearSolver = LinearSolver
