Sundials.jl
===========

[![Join the chat at https://gitter.im/JuliaDiffEq/Lobby](https://badges.gitter.im/JuliaDiffEq/Lobby.svg)](https://gitter.im/JuliaDiffEq/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Build Status](https://github.com/SciML/Sundials.jl/workflows/CI/badge.svg)](https://github.com/SciML/Sundials.jl/actions?query=workflow%3ACI)
[![Coveralls](https://coveralls.io/repos/github/SciML/Sundials.jl/badge.svg?branch=master)](https://coveralls.io/github/SciML/Sundials.jl?branch=master)


Introduction
------------

Sundials.jl is a Julia package that interfaces to the
[Sundials](https://computing.llnl.gov/projects/sundials)
library (see [source](https://github.com/LLNL/sundials)).
Sundials (the C library and this package) provides the
following:

* *CVODES* - for integration and sensitivity analysis of ODEs.
          CVODES treats stiff and nonstiff ODE systems of the form
          `y' = f(t,y,p), y(t0) = y0(p)`,
          where `p` is a set of parameters.
* *ARKStep* - for integration of non-stiff, stiff, and mixed mode
          ODEs via split, linearly-implicit form, implicit, and IMEX Runge-Kutta
          methods on ODEs of the form `My' = f_E(t,y,p) + f_i(t,y,p), y(t0) = y0(p)`
          for a set of parameters `p`.
* *ERKStep* - for integration of non-stiff, stiff, and mixed mode
          ODEs via split, linearly-implicit form, implicit, and IMEX Runge-Kutta
          methods on ODEs of the form `y' = f(t,y,p), y(t0) = y0(p)`
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

This package is part of the JuliaDiffEq common interface. This is documented in [the DifferentialEquations.jl documentation](http://diffeq.sciml.ai/latest/index.html). Thus [the ODE tutorial](http://diffeq.sciml.ai/latest/tutorials/ode_example.html) applies. For example, the Lorenz attractor can be solved with `CVODE_Adams` as follows:

```julia
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
[in the ODE Solvers page](https://diffeq.sciml.ai/latest/solvers/ode_solve/#ode_solve_sundials-1), and `IDA` which is documented
[in the DAE solvers page](https://diffeq.sciml.ai/latest/solvers/dae_solve/#Sundials.jl-1).
Additionally, the `ARKODE` method can be used
[on `SplitODEProblem`s](https://diffeq.sciml.ai/latest/solvers/split_ode_solve/)
to solve ODEs in IMEX form.

KINSOL High Level API
------------------------

Along with the ODE solvers, Sundials contains the KINSOL nonlinear solver.
It's called via:

```julia
kinsol(f, y0::Vector{Float64};
                userdata::Any = nothing,
                linear_solver=:Dense, jac_upper=0, jac_lower=0)
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

```
@article{rackauckas2017differentialequations,
  title={Differentialequations. jl--a performant and feature-rich ecosystem for solving differential equations in julia},
  author={Rackauckas, Christopher and Nie, Qing},
  journal={Journal of Open Research Software},
  volume={5},
  number={1},
  year={2017},
  publisher={Ubiquity Press}
}

@article{hindmarsh2005sundials,
  title={{SUNDIALS}: Suite of nonlinear and differential/algebraic equation solvers},
  author={Hindmarsh, Alan C and Brown, Peter N and Grant, Keith E and Lee, Steven L and Serban, Radu and Shumaker, Dan E and Woodward, Carol S},
  journal={ACM Transactions on Mathematical Software (TOMS)},
  volume={31},
  number={3},
  pages={363--396},
  year={2005},
  publisher={ACM}
}
```
