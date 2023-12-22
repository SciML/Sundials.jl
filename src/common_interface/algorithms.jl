# Sundials.jl algorithms

# Abstract Types
abstract type SundialsODEAlgorithm{Method, LinearSolver} <: DiffEqBase.AbstractODEAlgorithm end
abstract type SundialsDAEAlgorithm{LinearSolver} <: DiffEqBase.AbstractDAEAlgorithm end
abstract type SundialsNonlinearSolveAlgorithm{LinearSolver} end

SciMLBase.alg_order(alg::Union{SundialsODEAlgorithm, SundialsDAEAlgorithm}) = alg.max_order

# ODE Algorithms
"""
```julia
CVODE_BDF(;method=:Newton,linear_solver=:Dense,
          jac_upper=0,jac_lower=0,
          stored_upper = jac_upper + jac_lower,
          non_zero=0,krylov_dim=0,
          stability_limit_detect=false,
          max_hnil_warns = 10,
          max_order = 5,
          max_error_test_failures = 7,
          max_nonlinear_iters = 3,
          max_convergence_failures = 10,
          prec = nothing, prec_side = 0)
```

CVODE_BDF: CVode Backward Differentiation Formula (BDF) solver.

### Method Choices

* method - This is the method for solving the implicit equation. For BDF this defaults to
    :Newton while for Adams this defaults to :Functional. These choices match the
    recommended pairing in the Sundials.jl manual. However, note that using the :Newton
    method may take less iterations but requires more memory than the :Function iteration
    approach.
* linear_solver - This is the linear solver which is used in the :Newton method.

### Linear Solver Choices

The choices for the linear solver are:

* :Dense - A dense linear solver.
* :Band - A solver specialized for banded Jacobians. If used, you must set the position of the upper and lower non-zero diagonals via jac_upper and jac_lower.
* :LapackDense - A version of the dense linear solver that uses the Julia-provided OpenBLAS-linked LAPACK for multithreaded operations. This will be faster than :Dense on larger systems but has noticable overhead on smaller (<100 ODE) systems.
* :LapackBand - A version of the banded linear solver that uses the Julia-provided OpenBLAS-linked LAPACK for multithreaded operations. This will be faster than :Band on larger systems but has noticable overhead on smaller (<100 ODE) systems.
* :Diagonal - This method is specialized for diagonal Jacobians.
* :GMRES - A GMRES method. Recommended first choice Krylov method
* :BCG - A Biconjugate gradient method.
* :PCG - A preconditioned conjugate gradient method. Only for symmetric linear systems.
* :TFQMR - A TFQMR method.
* :KLU - A sparse factorization method. Requires that the user specifies a Jacobian. The Jacobian must be set as a sparse matrix in the ODEProblem type.

Example:

```julia
CVODE_BDF() # BDF method using Newton + Dense solver
CVODE_BDF(method=:Functional) # BDF method using Functional iterations
CVODE_BDF(linear_solver=:Band,jac_upper=3,jac_lower=3) # Banded solver with nonzero diagonals 3 up and 3 down
CVODE_BDF(linear_solver=:BCG) # Biconjugate gradient method
```

### Preconditioners

Note that here `prec` is a preconditioner function
`prec(z,r,p,t,y,fy,gamma,delta,lr)` where:

- `z`: the computed output vector
- `r`: the right-hand side vector of the linear system
- `p`: the parameters
- `t`: the current independent variable
- `du`: the current value of `f(u,p,t)`
- `gamma`: the `gamma` of `W = M - gamma*J`
- `delta`: the iterative method tolerance
- `lr`: a flag for whether `lr=1` (left) or `lr=2` (right)
  preconditioning

and `psetup` is the preconditioner setup function for pre-computing Jacobian
information `psetup(p, t, u, du, jok, jcurPtr, gamma)`. Where:

- `p`: the parameters
- `t`: the current independent variable
- `u`: the current state
- `du`: the current `f(u,p,t)`
- `jok`: a bool indicating whether the Jacobian needs to be updated
- `jcurPtr`: a reference to an Int for whether the Jacobian was updated.
  `jcurPtr[]=true` should be set if the Jacobian was updated, and
  `jcurPtr[]=false` should be set if the Jacobian was not updated.
- `gamma`: the `gamma` of `W = M - gamma*J`

`psetup` is optional when `prec` is set.

### Additional Options

See [the CVODE manual](https://computing.llnl.gov/sites/default/files/cv_guide-5.7.0.pdf)
for details on the additional options.
"""
struct CVODE_BDF{Method, LinearSolver, P, PS} <: SundialsODEAlgorithm{Method, LinearSolver}
    jac_upper::Int
    jac_lower::Int
    krylov_dim::Int
    stability_limit_detect::Bool
    max_hnil_warns::Int
    max_order::Int
    max_error_test_failures::Int
    max_nonlinear_iters::Int
    max_convergence_failures::Int
    prec::P
    psetup::PS
    prec_side::Int
end
Base.@pure function CVODE_BDF(;
    method = :Newton,
    linear_solver = :Dense,
    jac_upper = 0,
    jac_lower = 0,
    non_zero = 0,
    krylov_dim = 0,
    stability_limit_detect = false,
    max_hnil_warns = 10,
    max_order = 5,
    max_error_test_failures = 7,
    max_nonlinear_iters = 3,
    max_convergence_failures = 10,
    prec = nothing,
    psetup = nothing,
    prec_side = 0)
    if linear_solver == :Band && (jac_upper == 0 || jac_lower == 0)
        error("Banded solver must set the jac_upper and jac_lower")
    end
    if !(linear_solver in (:None,
        :Diagonal,
        :Dense,
        :LapackDense,
        :Band,
        :LapackBand,
        :BCG,
        :GMRES,
        :FGMRES,
        :PCG,
        :TFQMR,
        :KLU))
        error("Linear solver choice not accepted.")
    end
    CVODE_BDF{method, linear_solver, typeof(prec), typeof(psetup)}(jac_upper,
        jac_lower,
        krylov_dim,
        stability_limit_detect,
        max_hnil_warns,
        max_order,
        max_error_test_failures,
        max_nonlinear_iters,
        max_convergence_failures,
        prec,
        psetup,
        prec_side)
end
"""
```julia
CVODE_Adams(;method=:Functional,linear_solver=:None,
            jac_upper=0,jac_lower=0,
            stored_upper = jac_upper + jac_lower,
            krylov_dim=0,
            stability_limit_detect=false,
            max_hnil_warns = 10,
            max_order = 12,
            max_error_test_failures = 7,
            max_nonlinear_iters = 3,
            max_convergence_failures = 10,
            prec = nothing, psetup = nothing, prec_side = 0)
```

CVODE_Adams: CVode Adams-Moulton solver.

### Method Choices

* method - This is the method for solving the implicit equation. For BDF this defaults to
    :Newton while for Adams this defaults to :Functional. These choices match the
    recommended pairing in the Sundials.jl manual. However, note that using the :Newton
    method may take less iterations but requires more memory than the :Function iteration
    approach.
* linear_solver - This is the linear solver which is used in the :Newton method.

### Linear Solver Choices

The choices for the linear solver are:

* :Dense - A dense linear solver.
* :Band - A solver specialized for banded Jacobians. If used, you must set the position of the upper and lower non-zero diagonals via jac_upper and jac_lower.
* :LapackDense - A version of the dense linear solver that uses the Julia-provided OpenBLAS-linked LAPACK for multithreaded operations. This will be faster than :Dense on larger systems but has noticable overhead on smaller (<100 ODE) systems.
* :LapackBand - A version of the banded linear solver that uses the Julia-provided OpenBLAS-linked LAPACK for multithreaded operations. This will be faster than :Band on larger systems but has noticable overhead on smaller (<100 ODE) systems.
* :Diagonal - This method is specialized for diagonal Jacobians.
* :GMRES - A GMRES method. Recommended first choice Krylov method
* :BCG - A Biconjugate gradient method.
* :PCG - A preconditioned conjugate gradient method. Only for symmetric linear systems.
* :TFQMR - A TFQMR method.
* :KLU - A sparse factorization method. Requires that the user specifies a Jacobian. The Jacobian must be set as a sparse matrix in the ODEProblem type.

Example:

```julia
CVODE_Adams() # Adams method using Newton + Dense solver
CVODE_Adams(method=:Functional) # Adams method using Functional iterations
CVODE_Adams(linear_solver=:Band,jac_upper=3,jac_lower=3) # Banded solver with nonzero diagonals 3 up and 3 down
CVODE_Adams(linear_solver=:BCG) # Biconjugate gradient method
```

### Preconditioners

Note that here `prec` is a preconditioner function
`prec(z,r,p,t,y,fy,gamma,delta,lr)` where:

- `z`: the computed output vector
- `r`: the right-hand side vector of the linear system
- `p`: the parameters
- `t`: the current independent variable
- `du`: the current value of `f(u,p,t)`
- `gamma`: the `gamma` of `W = M - gamma*J`
- `delta`: the iterative method tolerance
- `lr`: a flag for whether `lr=1` (left) or `lr=2` (right)
  preconditioning

and `psetup` is the preconditioner setup function for pre-computing Jacobian
information `psetup(p, t, u, du, jok, jcurPtr, gamma)`. Where:

- `p`: the parameters
- `t`: the current independent variable
- `u`: the current state
- `du`: the current `f(u,p,t)`
- `jok`: a bool indicating whether the Jacobian needs to be updated
- `jcurPtr`: a reference to an Int for whether the Jacobian was updated.
  `jcurPtr[]=true` should be set if the Jacobian was updated, and
  `jcurPtr[]=false` should be set if the Jacobian was not updated.
- `gamma`: the `gamma` of `W = M - gamma*J`

`psetup` is optional when `prec` is set.

### Additional Options

See [the CVODE manual](https://computing.llnl.gov/sites/default/files/cv_guide-5.7.0.pdf)
for details on the additional options.
"""
struct CVODE_Adams{Method, LinearSolver, P, PS} <:
       SundialsODEAlgorithm{Method, LinearSolver}
    jac_upper::Int
    jac_lower::Int
    krylov_dim::Int
    stability_limit_detect::Bool
    max_hnil_warns::Int
    max_order::Int
    max_error_test_failures::Int
    max_nonlinear_iters::Int
    max_convergence_failures::Int
    prec::P
    psetup::PS
    prec_side::Int
end
Base.@pure function CVODE_Adams(;
    method = :Functional,
    linear_solver = :None,
    jac_upper = 0,
    jac_lower = 0,
    krylov_dim = 0,
    stability_limit_detect = false,
    max_hnil_warns = 10,
    max_order = 12,
    max_error_test_failures = 7,
    max_nonlinear_iters = 3,
    max_convergence_failures = 10,
    prec = nothing,
    psetup = nothing,
    prec_side = 0)
    if linear_solver == :Band && (jac_upper == 0 || jac_lower == 0)
        error("Banded solver must set the jac_upper and jac_lower")
    end
    if !(linear_solver in (:None,
        :Diagonal,
        :Dense,
        :LapackDense,
        :Band,
        :LapackBand,
        :BCG,
        :GMRES,
        :FGMRES,
        :PCG,
        :TFQMR,
        :KLU))
        error("Linear solver choice not accepted.")
    end
    CVODE_Adams{method, linear_solver, typeof(prec), typeof(psetup)}(jac_upper,
        jac_lower,
        krylov_dim,
        stability_limit_detect,
        max_hnil_warns,
        max_order,
        max_error_test_failures,
        max_nonlinear_iters,
        max_convergence_failures,
        prec,
        psetup,
        prec_side)
end
"""
```julia
ARKODE(stiffness=Sundials.Implicit();
      method=:Newton,linear_solver=:Dense,
      jac_upper=0,jac_lower=0,stored_upper = jac_upper+jac_lower,
      non_zero=0,krylov_dim=0,
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
      prec = nothing, psetup = nothing, prec_side = 0
      )
```

ARKODE: Explicit and ESDIRK Runge-Kutta methods of orders 2-8 depending on choice of options.

### Tableau Choices

The main options for ARKODE are the choice between explicit and implicit and the method
order, given via:

ARKODE(Sundials.Explicit()) # Solve with explicit tableau of default order 4
ARKODE(Sundials.Implicit(),order = 3) # Solve with explicit tableau of order 3

The order choices for explicit are 2 through 8 and for implicit 3 through 5. Specific
methods can also be set through the etable and itable options for explicit and implicit
tableaus respectively. The available tableaus are:

etable:

* HEUN_EULER_2_1_2: 2nd order Heun's method
* BOGACKI_SHAMPINE_4_2_3:
* ARK324L2SA_ERK_4_2_3: explicit portion of Kennedy and Carpenter's 3rd order method
* ZONNEVELD_5_3_4: 4th order explicit method
* ARK436L2SA_ERK_6_3_4: explicit portion of Kennedy and Carpenter's 4th order method
* SAYFY_ABURUB_6_3_4: 4th order explicit method
* CASH_KARP_6_4_5: 5th order explicit method
* FEHLBERG_6_4_5: Fehlberg's classic 5th order method
* DORMAND_PRINCE_7_4_5: the classic 5th order Dormand-Prince method
* ARK548L2SA_ERK_8_4_5: explicit portion of Kennedy and Carpenter's 5th order method
* VERNER_8_5_6: Verner's classic 5th order method
* FEHLBERG_13_7_8: Fehlberg's 8th order method

itable:

* SDIRK_2_1_2: An A-B-stable 2nd order SDIRK method
* BILLINGTON_3_3_2: A second order method with a 3rd order error predictor of less stability
* TRBDF2_3_3_2: The classic TR-BDF2 method
* KVAERNO_4_2_3: an L-stable 3rd order ESDIRK method
* ARK324L2SA_DIRK_4_2_3: implicit portion of Kennedy and Carpenter's 3th order method
* CASH_5_2_4: Cash's 4th order L-stable SDIRK method
* CASH_5_3_4: Cash's 2nd 4th order L-stable SDIRK method
* SDIRK_5_3_4: Hairer's 4th order SDIRK method
* KVAERNO_5_3_4: Kvaerno's 4th order ESDIRK method
* ARK436L2SA_DIRK_6_3_4: implicit portion of Kennedy and Carpenter's 4th order method
* KVAERNO_7_4_5: Kvaerno's 5th order ESDIRK method
* ARK548L2SA_DIRK_8_4_5: implicit portion of Kennedy and Carpenter's 5th order method

These can be set for example via:

```julia
ARKODE(Sundials.Explicit(),etable = Sundials.DORMAND_PRINCE_7_4_5)
ARKODE(Sundials.Implicit(),itable = Sundials.KVAERNO_4_2_3)
```

### Method Choices

* method - This is the method for solving the implicit equation. For BDF this defaults to
    :Newton while for Adams this defaults to :Functional. These choices match the
    recommended pairing in the Sundials.jl manual. However, note that using the :Newton
    method may take less iterations but requires more memory than the :Function iteration
    approach.
* linear_solver - This is the linear solver which is used in the :Newton method.

### Linear Solver Choices

The choices for the linear solver are:

* :Dense - A dense linear solver.
* :Band - A solver specialized for banded Jacobians. If used, you must set the position of the upper and lower non-zero diagonals via jac_upper and jac_lower.
* :LapackDense - A version of the dense linear solver that uses the Julia-provided OpenBLAS-linked LAPACK for multithreaded operations. This will be faster than :Dense on larger systems but has noticable overhead on smaller (<100 ODE) systems.
* :LapackBand - A version of the banded linear solver that uses the Julia-provided OpenBLAS-linked LAPACK for multithreaded operations. This will be faster than :Band on larger systems but has noticable overhead on smaller (<100 ODE) systems.
* :Diagonal - This method is specialized for diagonal Jacobians.
* :GMRES - A GMRES method. Recommended first choice Krylov method
* :BCG - A Biconjugate gradient method.
* :PCG - A preconditioned conjugate gradient method. Only for symmetric linear systems.
* :TFQMR - A TFQMR method.
* :KLU - A sparse factorization method. Requires that the user specifies a Jacobian. The Jacobian must be set as a sparse matrix in the ODEProblem type.

### Preconditioners

Note that here `prec` is a preconditioner function
`prec(z,r,p,t,y,fy,gamma,delta,lr)` where:

- `z`: the computed output vector
- `r`: the right-hand side vector of the linear system
- `p`: the parameters
- `t`: the current independent variable
- `du`: the current value of `f(u,p,t)`
- `gamma`: the `gamma` of `W = M - gamma*J`
- `delta`: the iterative method tolerance
- `lr`: a flag for whether `lr=1` (left) or `lr=2` (right)
  preconditioning

and `psetup` is the preconditioner setup function for pre-computing Jacobian
information `psetup(p, t, u, du, jok, jcurPtr, gamma)`. Where:

- `p`: the parameters
- `t`: the current independent variable
- `u`: the current state
- `du`: the current `f(u,p,t)`
- `jok`: a bool indicating whether the Jacobian needs to be updated
- `jcurPtr`: a reference to an Int for whether the Jacobian was updated.
  `jcurPtr[]=true` should be set if the Jacobian was updated, and
  `jcurPtr[]=false` should be set if the Jacobian was not updated.
- `gamma`: the `gamma` of `W = M - gamma*J`

`psetup` is optional when `prec` is set.

### Additional Options

See the [ARKODE manual](https://computing.llnl.gov/sites/default/files/ark_guide-4.7.0.pdf)
for details on the additional options.
"""
struct ARKODE{Method, LinearSolver, MassLinearSolver, T, T1, T2, P, PS} <:
       SundialsODEAlgorithm{Method, LinearSolver}
    stiffness::T
    jac_upper::Int
    jac_lower::Int
    mass_upper::Int
    mass_lower::Int
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
    psetup::PS
    prec_side::Int
end

Base.@pure function ARKODE(stiffness = Implicit();
    method = :Newton,
    linear_solver = :Dense,
    mass_linear_solver = :Dense,
    jac_upper = 0,
    jac_lower = 0,
    mass_upper = 0,
    mass_lower = 0,
    non_zero = 0,
    krylov_dim = 0,
    mass_krylov_dim = 0,
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
    prec = nothing,
    psetup = nothing,
    prec_side = 0)
    if linear_solver == :Band && (jac_upper == 0 || jac_lower == 0)
        error("Banded solver must set the jac_upper and jac_lower")
    end
    if !(linear_solver in (:None,
        :Diagonal,
        :Dense,
        :LapackDense,
        :Band,
        :LapackBand,
        :BCG,
        :GMRES,
        :FGMRES,
        :PCG,
        :TFQMR,
        :KLU))
        error("Linear solver choice not accepted.")
    end
    if !(mass_linear_solver in (:None,
        :Diagonal,
        :Dense,
        :LapackDense,
        :Band,
        :LapackBand,
        :BCG,
        :GMRES,
        :FGMRES,
        :PCG,
        :TFQMR,
        :KLU))
        error("Mass Matrix Linear solver choice not accepted.")
    end
    ARKODE{method,
        linear_solver,
        mass_linear_solver,
        typeof(stiffness),
        typeof(itable),
        typeof(etable),
        typeof(prec),
        typeof(psetup)}(stiffness,
        jac_upper,
        jac_lower,
        mass_upper,
        mass_lower,
        krylov_dim,
        mass_krylov_dim,
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
        prec,
        psetup,
        prec_side)
end

SciMLBase.alg_order(alg::ARKODE) = 5

# DAE Algorithms
"""
```julia
IDA(;linear_solver=:Dense,jac_upper=0,jac_lower=0,krylov_dim=0,
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
    max_convergence_failures = 10,
    init_all = false,
    prec = nothing, psetup = nothing)
```

IDA: This is the IDA method from the Sundials.jl package.

### Linear Solvers

Note that the constructors for the Sundials algorithms take a main argument:
linearsolver - This is the linear solver which is used in the Newton iterations. The
choices are:

* :Dense - A dense linear solver.
* :Band - A solver specialized for banded Jacobians. If used, you must set the position of the upper and lower non-zero diagonals via jac_upper and jac_lower.
* :LapackDense - A version of the dense linear solver that uses the Julia-provided OpenBLAS-linked LAPACK for multithreaded operations. This will be faster than :Dense on larger systems but has noticable overhead on smaller (<100 ODE) systems.
* :LapackBand - A version of the banded linear solver that uses the Julia-provided OpenBLAS-linked LAPACK for multithreaded operations. This will be faster than :Band on larger systems but has noticable overhead on smaller (<100 ODE) systems.
* :GMRES - A GMRES method. Recommended first choice Krylov method
* :BCG - A Biconjugate gradient method.
* :PCG - A preconditioned conjugate gradient method. Only for symmetric linear systems.
* :TFQMR - A TFQMR method.
* :KLU - A sparse factorization method. Requires that the user specifies a Jacobian. The Jacobian must be set as a sparse matrix in the ODEProblem type.

Note that the preconditioner for iterative linear solvers (if supplied) should be a left
preconditioner.

Example:

```julia
IDA() # Newton + Dense solver
IDA(linear_solver=:Band,jac_upper=3,jac_lower=3) # Banded solver with nonzero diagonals 3 up and 3 down
IDA(linear_solver=:BCG) # Biconjugate gradient method
```

### Preconditioners

Note that here `prec` is a (left) preconditioner function
`prec(z,r,p,t,y,fy,gamma,delta)` where:

- `z`: the computed output vector
- `r`: the right-hand side vector of the linear system
- `p`: the parameters
- `t`: the current independent variable
- `du`: the current value of `f(u,p,t)`
- `gamma`: the `gamma` of `W = M - gamma*J`
- `delta`: the iterative method tolerance

and `psetup` is the preconditioner setup function for pre-computing Jacobian
information. Where:

- `p`: the parameters
- `t`: the current independent variable
- `resid`: the current residual
- `u`: the current state
- `du`: the current derivative of the state
- `gamma`: the `gamma` of `W = M - gamma*J`

`psetup` is optional when `prec` is set.

### Additional Options

See [the Sundials manual](https://computing.llnl.gov/sites/default/files/ida_guide-5.7.0.pdf)
for details on the additional options. The option `init_all` controls the initial condition
consistency routine. If the initial conditions are inconsistent (i.e. they do not satisfy the
implicit equation), `init_all=false` means that the algebraic variables and derivatives will
be modified in order to satisfy the DAE. If `init_all=true`, all initial conditions will be
modified to satisfy the DAE.
"""
struct IDA{LinearSolver, P, PS} <: SundialsDAEAlgorithm{LinearSolver}
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
    init_all::Bool
    prec::P
    psetup::PS
end
Base.@pure function IDA(;
    linear_solver = :Dense,
    jac_upper = 0,
    jac_lower = 0,
    krylov_dim = 0,
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
    prec = nothing,
    psetup = nothing)
    if linear_solver == :Band && (jac_upper == 0 || jac_lower == 0)
        error("Banded solver must set the jac_upper and jac_lower")
    end
    if !(linear_solver in (:None,
        :Diagonal,
        :Dense,
        :LapackDense,
        :Band,
        :LapackBand,
        :BCG,
        :GMRES,
        :FGMRES,
        :PCG,
        :TFQMR,
        :KLU))
        error("Linear solver choice not accepted.")
    end
    IDA{linear_solver, typeof(prec), typeof(psetup)}(jac_upper,
        jac_lower,
        krylov_dim,
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
        init_all,
        prec,
        psetup)
end

"""
KINSOL: Newton-Krylov technique solver

```julia
KINSOL(;
    linear_solver = :Dense,
    jac_upper = 0,
    jac_lower = 0,
    userdata = nothing,
)
```

The choices for the linear solver are:

- `:Dense`: A dense linear solver
- `:Band`: A solver specialized for banded Jacobians. If used, you must set the
  position of the upper and lower non-zero diagonals via `jac_upper` and
  `jac_lower`.
- `:LapackDense`: A version of the dense linear solver that uses the Julia-provided
  OpenBLAS-linked LAPACK for multithreaded operations. This will be faster than
  `:Dense` on larger systems but has noticeable overhead on smaller (<100 ODE) systems.
- `:LapackBand`: A version of the banded linear solver that uses the Julia-provided
  OpenBLAS-linked LAPACK for multithreaded operations. This will be faster than
  `:Band` on larger systems but has noticeable overhead on smaller (<100 ODE) systems.
- `:Diagonal`: This method is specialized for diagonal Jacobians.
- `:GMRES`: A GMRES method. Recommended first choice Krylov method.
- `:BCG`: A biconjugate gradient method
- `:PCG`: A preconditioned conjugate gradient method. Only for symmetric
  linear systems.
- `:TFQMR`: A TFQMR method.
- `:KLU`: A sparse factorization method. Requires that the user specify a
  Jacobian. The Jacobian must be set as a sparse matrix in the `ODEProblem`
  type.
"""
struct KINSOL{LinearSolver} <: SundialsNonlinearSolveAlgorithm{LinearSolver}
    jac_upper::Int
    jac_lower::Int
    userdata::Any
    prec_side::Int
    krylov_dim::Int
end # TODO: Add globalization options
Base.@pure function KINSOL(;
    linear_solver = :Dense,
    jac_upper = 0,
    jac_lower = 0,
    userdata = nothing,
    prec_side = 0,
    krylov_dim = 0)
    if !(linear_solver in (:None,
        :Diagonal,
        :Dense,
        :LapackDense,
        :Band,
        :LapackBand,
        :BCG,
        :GMRES,
        :FGMRES,
        :PCG,
        :TFQMR,
        :KLU))
        error("Linear solver choice not accepted.")
    end
    KINSOL{linear_solver}(jac_upper,
        jac_lower,
        userdata,
        prec_side,
        krylov_dim)
end

method_choice(alg::SundialsODEAlgorithm{Method}) where {Method} = Method
method_choice(alg::SundialsDAEAlgorithm) = :Newton
function linear_solver(alg::SundialsODEAlgorithm{
    Method,
    LinearSolver,
}) where {Method,
    LinearSolver}
    LinearSolver
end
linear_solver(alg::SundialsDAEAlgorithm{LinearSolver}) where {LinearSolver} = LinearSolver
function linear_solver(alg::SundialsNonlinearSolveAlgorithm{
    LinearSolver,
}) where {
    LinearSolver,
}
    LinearSolver
end
