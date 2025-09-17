# Sundials.jl NEWS

## v5.0.0

### Breaking Changes

#### DAE Initialization Algorithm Changes

The default initialization behavior for DAE problems has changed significantly. This is a **breaking change** that may affect existing code using IDA.

**Previous behavior:**
- IDA would automatically attempt to compute consistent initial conditions by default
- This automatic initialization could sometimes produce incorrect results without warning

**New behavior:**
- The default is now validation-only mode that checks if provided initial conditions are consistent
- If initial conditions are inconsistent, an error is raised with a clear message
- Automatic initialization must be explicitly requested

**Migration Guide:**

If you have existing code that relies on automatic DAE initialization:

```julia
# Old code (v4.x) - automatic initialization was implicit
prob = DAEProblem(f, du0, u0, tspan, differential_vars = differential_vars)
sol = solve(prob, IDA())
```

You now have several options:

1. **Use automatic initialization explicitly (recommended for most users):**
```julia
using DiffEqBase: BrownFullBasicInit
prob = DAEProblem(f, du0, u0, tspan, differential_vars = differential_vars)
sol = solve(prob, IDA(), initializealg = BrownFullBasicInit())
```

2. **Provide consistent initial conditions:**
```julia
# Ensure du0 and u0 satisfy f(du0, u0, p, t0) = 0
prob = DAEProblem(f, du0, u0, tspan, differential_vars = differential_vars)
sol = solve(prob, IDA())  # Will validate and proceed if consistent
```

3. **For problems without differential_vars information:**
```julia
using DiffEqBase: ShampineCollocationInit
prob = DAEProblem(f, du0, u0, tspan)  # No differential_vars
sol = solve(prob, IDA(), initializealg = ShampineCollocationInit())
```

**Available initialization algorithms:**
- `DefaultInit()` - Intelligently chooses initialization based on problem type (new default)
- `BrownFullBasicInit()` - Brown's algorithm for index-1 DAEs (requires differential_vars)
- `ShampineCollocationInit()` - Shampine's collocation method (works without differential_vars)
- `CheckInit()` - Only validates initial conditions without modification

**Why this change was made:**
- **Safety**: Silent automatic initialization could produce incorrect results
- **Clarity**: Users now explicitly choose their initialization strategy
- **Debugging**: Clearer error messages when initial conditions are inconsistent
- **Performance**: Avoid unnecessary initialization computations when not needed

#### ModelingToolkit Initialization Support

CVODE and ARKODE now support the `initializealg` parameter for parameter initialization compatibility with ModelingToolkit. This enables proper handling of problems with initialization requirements.

```julia
# Now supported for ODE problems with initialization needs
sol = solve(prob, CVODE_BDF()) # , initializealg = SciMLBase.OverrideInit()) done by default
```

### Features

- Added support for DiffEqBase initialization algorithms across all Sundials solvers
- Improved callback handling to use callback-specific initialization algorithms
- Enhanced error messages for DAE initialization failures

### Dependency Updates

- Minimum DiffEqBase version: 6.190.2
- Added NonlinearSolveBase dependency for improved nonlinear solving
- Added LinearSolve dependency for initialization support
- Updated minimum SciMLBase version to 2.119.0