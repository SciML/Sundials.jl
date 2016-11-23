# Sundials.jl algorithms

# Abstract Types
abstract SundialsODEAlgorithm{Method,LinearSolver} <: AbstractODEAlgorithm
abstract SundialsDAEAlgorithm{LinearSolver} <: AbstractDAEAlgorithm

# ODE Algorithms
immutable CVODE_BDF{Method,LinearSolver} <: SundialsODEAlgorithm{Method,LinearSolver}
  jac_upper::Int
  jac_lower::Int
end
function CVODE_BDF(;method=:Newton,linear_solver=:Dense,
                    jac_upper=0,jac_lower=0)
    if linear_solver == :Band && (jac_upper==0 || jac_lower==0)
        error("Banded solver must set the jac_upper and jac_lower")
    end
    CVODE_BDF{method,linear_solver}(jac_upper,jac_lower)
end

immutable CVODE_Adams{Method,LinearSolver} <: SundialsODEAlgorithm{Method,LinearSolver}
  jac_upper::Int
  jac_lower::Int
end
function CVODE_Adams(;method=:Functional,linear_solver=:None,
                      jac_upper=0,jac_lower=0)
    if linear_solver == :Band && (jac_upper==0 || jac_lower==0)
        error("Banded solver must set the jac_upper and jac_lower")
    end
    CVODE_Adams{method,linear_solver}(jac_upper,jac_lower)
end

# DAE Algorithms
immutable IDA{LinearSolver} <: SundialsDAEAlgorithm{LinearSolver}
  jac_upper::Int
  jac_lower::Int
end
function IDA(;linear_solver=:Dense,jac_upper=0,jac_lower=0)
  if linear_solver == :Band && (jac_upper==0 || jac_lower==0)
      error("Banded solver must set the jac_upper and jac_lower")
  end
  IDA{linear_solver}(jac_upper,jac_lower)
end
