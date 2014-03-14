Sundials for Julia
==================

Introduction
------------

Sundials.jl is a Julia package that interfaces to the
[Sundials](https://computation.llnl.gov/casc/sundials/main.html)
library. Sundials (the C library and this package) provides the
following:

* *CVODE*  - for integration of ordinary differential equation systems (ODEs).
          CVODE treats stiff and nonstiff ODE systems of the form
          `y' = f(t,y), y(t0) = y0`
* *CVODES* - for integration and sensitivity analysis of ODEs.
          CVODES treats stiff and nonstiff ODE systems of the form
          `y' = f(t,y,p), y(t0) = y0(p)`
* *IDA*    - for integration of differential-algebraic equation systems (DAEs).
          IDA treats DAE systems of the form
          `F(t,y,y') = 0, y(t0) = y0, y'(t0) = y0'`
* *IDAS*   - for integration and sensitivity analysis of DAEs.
          IDAS treats DAE systems of the form
          `F(t,y,y',p) = 0, y(t0) = y0(p), y'(t0) = y0'(p)`
* *KINSOL* - for solution of nonlinear algebraic systems.
          KINSOL treats nonlinear systems of the form
          `F(u) = 0`

[Julia](http://julialang.org) is a fast, Matlab-like language that is
well suited to modeling and simulations. It's particularly suited for
use with Sundials because the functions representing the system will
run at nearly the speed of C functions. Julia functions are compiled
on the fly (JIT), so it is also possible to quickly recompile a system
to model structural changes to the system.

I use Sundials in [Sims](https://github.com/tshort/Sims.jl), a Julia
package to support equation-based modeling for simulations. Sims is
like a lite version of Modelica. Sims can currently use Sundials or
DASSL.

API
---

This package closely follows the Sundials C API. At a slightly higher
level, many (but not all) Sundials.jl functions support passing Julia
objects (like Arrays) instead of Sundials objects (like N_Vectors).
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

Simplified Functions
--------------------

Three functions `kinsol`, `ode`, and `dae` are provided as high-level,
very simple functions. Here is an example for `ode`:

```julia
using Sundials

function f(t, y, ydot)
    ydot[1] = -0.04*y[1] + 1.0e4*y[2]*y[3]
    ydot[3] = 3.0e7*y[2]*y[2]
    ydot[2] = -ydot[1] - ydot[3]
end

t = [0.0, 4 * logspace(-1., 7., 9)]
res = Sundials.ode(f, [1.0, 0.0, 0.0], t)
```

There are two supported keyword arguments, `reltol`, and `abstol`, for `ode` and `dae`. 
Theese functions will probably be deprecated, in order to create a unified API for
ODE solvers under [ODE.jl](https://github.com/JuliaLang/ODE.jl)

Examples
--------

See the [examples directory](https://github.com/JuliaLang/Sundials.jl/blob/master/examples).

[Three-Body Problem](http://nbviewer.ipython.org/github/pjpmarques/Julia-Modeling-the-World/blob/master/Three-Body%20Problem.ipynb) is a notebook with a more thoroughly explained example.


Status
------

Please note that this is a developer preview. There could be bugs, and
everything is subject to change. Of note are:

* You must have the Sundials installed.
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
  that they are useable from Julia. Julia doesn't have an MPI
  interface that I am aware of.  
* More work could be done to provide a better interface to N_Vectors.
