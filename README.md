Sundials.jl
===========

[![Join the chat at https://gitter.im/JuliaDiffEq/Lobby](https://badges.gitter.im/JuliaDiffEq/Lobby.svg)](https://gitter.im/JuliaDiffEq/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Travis](https://travis-ci.org/JuliaDiffEq/Sundials.jl.svg?branch=master)](https://travis-ci.org/JuliaDiffEq/Sundials.jl)
[![AppVoyer](https://ci.appveyor.com/api/projects/status/s14c4i1sd322x6ko/branch/master?svg=true)](https://ci.appveyor.com/project/ChrisRackauckas/sundials-jl/branch/master)
[![Coveralls](https://coveralls.io/repos/github/JuliaDiffEq/Sundials.jl/badge.svg?branch=master)](https://coveralls.io/github/JuliaDiffEq/Sundials.jl?branch=master)
[![Sundials](http://pkg.julialang.org/badges/Sundials_0.4.svg)](http://pkg.julialang.org/?pkg=Sundials)
[![Sundials](http://pkg.julialang.org/badges/Sundials_0.5.svg)](http://pkg.julialang.org/?pkg=Sundials)
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
push!(Sys.DL_LOAD_PATH, "/opt/local/lib")
```
before you install the package. Downloading and/or re-building of the library can be triggered by `Pkg.build("Sundials")`
if anything goes wrong.

To test the installation use
```julia
Pkg.test("Sundials")
```
which currently runs some of the examples in the `examples` directory.

Direct API
---

This package closely follows the Sundials C API. At a slightly higher
level, many (but not all) Sundials.jl functions support passing Julia
objects (like `Array`s) instead of Sundials objects (like `N_Vector`s).
See
[src/Sundials.jl](https://github.com/JuliaLang/Sundials.jl/blob/master/src/Sundials.jl)
for examples of how the higher-level interfacing works.

The Julia package [Clang.jl](https://github.com/ihnorton/Clang.jl) was
used to wrap Sundials. This directly uses Sundials' headers sort-of
like SWIG. This is great work by Isaiah--it didn't take me much work
to package a pretty complete interface to Sundials. For the wrapping
code, see
[src/wrap_sundials.jl](https://github.com/JuliaLang/Sundials.jl/blob/master/src/wrap_sundials.jl).

Because of Clang.jl, Sundials.jl provides good coverage of the Sundials
library (the serial version).

Common Interface API
--------------------

This package is part of the JuliaDiffEq common interface. This is documented in [the DifferentialEquaitons.jl documentation](http://docs.juliadiffeq.org/latest/index.html). Thus [the ODE tutorial](http://docs.juliadiffeq.org/latest/tutorials/ode_example.html) applies. For example, the Lorenz attractor can be solved with `CVODE_Adams` as follows:

```juila
using Sundials
function lorenz(t,u,du)
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

Sundials.jl exports the `CVODE_BDF` and `CVODE_Adams` methods for ODEs which are documented [in the ODE Solvers page](http://docs.juliadiffeq.org/latest/solvers/ode_solve.html#Sundials.jl-1), and `IDA` which is documented [in the DAE solvers page](http://docs.juliadiffeq.org/latest/solvers/dae_solve.html).

Simplified Functions
--------------------

Three functions `kinsol`, `cvode`, and `idasol` are provided as high-level,
very simple functions. *Note that the latter two functions were previously
called `ode` and `ida`.* Here is an example for `cvode`:

```julia
using Sundials

function f(t, y, ydot)
    ydot[1] = -0.04*y[1] + 1.0e4*y[2]*y[3]
    ydot[3] = 3.0e7*y[2]*y[2]
    ydot[2] = -ydot[1] - ydot[3]
end

t = [0.0; 4 * logspace(-1., 7., 9)]
res = Sundials.cvode(f, [1.0, 0.0, 0.0], t)
```

For `cvode`, there is an optional positional argument `integrator` to choose
between the two provided integration options: `:BDF` for a Backwards Differentiation
Formula method and `:Adams` for an Adams-Moulton method. There are two supported
keyword arguments, `reltol`, and `abstol`, for `cvode` and `idasol`. For more
details, please see the docstrings.

Examples
--------

See the [examples directory](https://github.com/JuliaLang/Sundials.jl/blob/master/examples).

[Three-Body Problem](http://nbviewer.ipython.org/github/pjpmarques/Julia-Modeling-the-World/blob/master/Three-Body%20Problem.ipynb) is a notebook with a more thoroughly explained example.


Status
------

Please note that this is a developer preview. There could be bugs, and
everything is subject to change. Of note are:

* The API that matches the Sundials C API should be stable.
* The simplified API is not stable.
* There is no documentation for this package. Please see the general
  [C documentation](https://computation.llnl.gov/casc/sundials/documentation/documentation.html)
  for Sundials. The API should be identical.
* Macros like `DENSE_ELEM` are not available.
* Nothing is (yet) exported from the module. You need to put `Sundials.`
  in front of everything.
* Parts of the Sundials API that access C structures are difficult.
  One can use the [StrPack package](https://github.com/pao/StrPack.jl)
  to read or write to these structures, but nothing is built into this
  package. See this CVODE
  [example](https://github.com/JuliaLang/Sundials.jl/blob/master/examples/cvode_Roberts_dns.jl#L26).
* The parallel versions of Sundials have been wrapped, but I doubt
  that they are usable from Julia. They need to be integrated with
  [MPI.jl](https://github.com/JuliaParallel/MPI.jl)
* More work could be done to provide a better interface to `N_Vector`s.
