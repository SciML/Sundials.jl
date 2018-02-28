Sundials.jl
===========

[![Join the chat at https://gitter.im/JuliaDiffEq/Lobby](https://badges.gitter.im/JuliaDiffEq/Lobby.svg)](https://gitter.im/JuliaDiffEq/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Travis](https://travis-ci.org/JuliaDiffEq/Sundials.jl.svg?branch=master)](https://travis-ci.org/JuliaDiffEq/Sundials.jl)
[![AppVoyer](https://ci.appveyor.com/api/projects/status/s14c4i1sd322x6ko/branch/master?svg=true)](https://ci.appveyor.com/project/ChrisRackauckas/sundials-jl/branch/master)
[![Coveralls](https://coveralls.io/repos/github/JuliaDiffEq/Sundials.jl/badge.svg?branch=master)](https://coveralls.io/github/JuliaDiffEq/Sundials.jl?branch=master)
[![Sundials](http://pkg.julialang.org/badges/Sundials_0.6.svg)](http://pkg.julialang.org/?pkg=Sundials)

Introduction
------------

Sundials.jl is a Julia package that interfaces to the
[Sundials](https://computation.llnl.gov/casc/sundials/main.html)
library. Sundials (the C library and this package) provides the
following:

* *CVODES* - for integration and sensitivity analysis of ODEs.
          CVODES treats stiff and nonstiff ODE systems of the form
          `y' = f(t,y,p), y(t0) = y0(p)`,
          where `p` is a set of parameters.
* *ARKODE* - for integration of non-stiff, stiff, and mixed mode
          ODEs via its explicit, implicit, and IMEX Runge-Kutta
          methods on ODEs of the form `My' = f(t,y,p), y(t0) = y0(p)`
          for a set of parameters `p`.
* *IDAS*   - for integration and sensitivity analysis of DAEs.
          IDAS treats DAE systems of the form
          `F(t,y,y',p) = 0, y(t0) = y0(p), y'(t0) = y0'(p)`
* *KINSOL* - for solution of nonlinear algebraic systems.
          KINSOL treats nonlinear systems of the form
          `F(u) = 0`

Note that *CVODES* and *IDAS* contain all functions provided by *CVODE* and *IDA* (for integration
without sensitivity analysis). If you need to use the latter, you can set `enable_sensitivities=false`
in `deps/build.jl` and (re)build the package.

Installation
---

Within Julia, use the package manager:
```julia
Pkg.add("Sundials")
```
This should download and install the Sundials libraries and register the package. On Windows [precompiled binaries](http://sourceforge.net/projects/juliadeps-win/files)
are used, while on Unix and OSX Sundials is built from its sources (provided the necessary tools are
available). If you have Sundials already installed, make sure that Julia can find it, e.g., via
```julia
push!(Base.DL_LOAD_PATH, "/opt/local/lib")
```
before you install the package. Downloading and/or re-building of the library can be triggered by `Pkg.build("Sundials")`
if anything goes wrong.

To test the installation use
```julia
Pkg.test("Sundials")
```
which currently runs some of the examples in the `examples` directory.

Common Interface API
--------------------

This package is part of the JuliaDiffEq common interface. This is documented in [the DifferentialEquaitons.jl documentation](http://docs.juliadiffeq.org/latest/index.html). Thus [the ODE tutorial](http://docs.juliadiffeq.org/latest/tutorials/ode_example.html) applies. For example, the Lorenz attractor can be solved with `CVODE_Adams` as follows:

```juila
using Sundials
function lorenz(du,u,p,t)
 du[1] = 10.0(u[2]-u[1])
 du[2] = u[1]*(28.0-u[3]) - u[2]
 du[3] = u[1]*u[2] - (8/3)*u[3]
end
u0 = [1.0;0.0;0.0]
tspan = (0.0,100.0)
prob = ODEProblem(lorenz,u0,tspan)
sol = solve(prob,CVODE_Adams())
using Plots; plot(sol,vars=(1,2,3))
```

Sundials.jl exports the `CVODE_BDF`, `CVODE_Adams`, and `ARKODE` methods for
ODEs which are documented
[in the ODE Solvers page](http://docs.juliadiffeq.org/latest/solvers/ode_solve.html#Sundials.jl-1), and `IDA` which is documented
[in the DAE solvers page](http://docs.juliadiffeq.org/latest/solvers/dae_solve.html).
Additionally, the `ARKODE` method can be used
[on `SplitODEProblem`s](http://docs.juliadiffeq.org/latest/solvers/split_ode_solve.html#Implicit-Explicit-(IMEX)-ODE-1)
to solve ODEs in IMEX form.

KINSOL High Level API
------------------------

Along with the ODE solvers, Sundials contains the KINSOL nonlinear solver.
It's called via:

```julia
kinsol(f, y0::Vector{Float64};
                userdata::Any = nothing,
                linear_solver=:Dense, jac_upper=0, jac_lower=0,
                stored_upper = jac_upper + jac_lower)
```

where `f(res,y)` is an in-place function that computes the residual `f(y)-res=0`,
and KINSOL attempts to find `y` such that `res=0`. This method is generally
quite fast and the choice `linear_solver=:Band` is well-suited for problems
with a banded Jacobian (you must specify the upper and lower band sizes). However,
this is not as robust as many other techniques like trust-region methods, and
thus we recommend [NLsolve.jl](https://github.com/JuliaNLSolvers/NLsolve.jl) for
more general nonlinear solving.

Direct API
---

This package closely follows the Sundials C API. At a slightly higher
level, many (but not all) Sundials.jl functions support passing Julia
objects (like `Array`s) instead of Sundials objects (like `N_Vector`s).
The Julia package [Clang.jl](https://github.com/ihnorton/Clang.jl) was
used to wrap Sundials. This directly uses Sundials' headers sort-of
like SWIG. Thus the general
[C documentation](https://computation.llnl.gov/casc/sundials/documentation/documentation.html)
is the documentation for the direct API. See the
[test directory](https://github.com/JuliaLang/Sundials.jl/blob/master/test) for usage examples
of the direct interface.

For the wrapping
code, see
[src/wrap_sundials.jl](https://github.com/JuliaLang/Sundials.jl/blob/master/src/wrap_sundials.jl).
Because of Clang.jl, Sundials.jl provides almost full coverage of the Sundials library
(the serial version). A few things to note:

* Macros like `DENSE_ELEM` are not available.
* Nothing is exported from the module. You need to put `Sundials.`
  in front of everything.
* The parallel versions of Sundials which require different `N_Vector`
  types have not been wrapped.

Citing
------

If you use this library, please cite both Sundials and the JuliaDiffEq project.

* Rackauckas, C. & Nie, Q., (2017). DifferentialEquations.jl – A Performant and Feature-Rich Ecosystem for Solving Differential Equations in Julia. Journal of Open Research Software. 5(1), p.15. DOI: http://doi.org/10.5334/jors.151

* A. C. Hindmarsh, P. N. Brown, K. E. Grant, S. L. Lee, R. Serban, D. E. Shumaker, and C. S. Woodward, “SUNDIALS: Suite of Nonlinear and Differential/Algebraic Equation Solvers,” ACM Transactions on Mathematical Software, 31(3), pp. 363-396, 2005. Also available as LLNL technical report UCRL-JP-200037.
