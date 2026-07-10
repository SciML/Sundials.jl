# Sundials.jl

Sundials.jl provides SciML common-interface wrappers for the SUNDIALS C library,
including CVODE, ARKODE, IDA, and KINSOL algorithms.

## Installation

```julia
using Pkg
Pkg.add("Sundials")
```

## Usage

```julia
using Sundials

function lorenz!(du, u, p, t)
    du[1] = 10.0 * (u[2] - u[1])
    du[2] = u[1] * (28.0 - u[3]) - u[2]
    du[3] = u[1] * u[2] - (8 / 3) * u[3]
    return nothing
end

prob = ODEProblem(lorenz!, [1.0, 0.0, 0.0], (0.0, 100.0))
sol = solve(prob, CVODE_Adams())
```

## API

```@docs
CVODE_BDF
CVODE_Adams
ARKODE
IDA
KINSOL
SundialsODEAlgorithm
SundialsDAEAlgorithm
solve
DefaultInit
BrownFullBasicInit
ShampineCollocationInit
```
