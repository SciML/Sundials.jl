# Sundials.jl NEWS

## v5.0.0

### Breaking Changes

#### Upgrade to Sundials v7

This release updates the underlying Sundials C library from v5 to v7, which introduces significant API changes. This is a **breaking change** for users directly using the low-level Sundials API.

**Key Changes:**

1. **SUNContext requirement**: All Sundials objects now require a `SUNContext` object for creation. This context manages the Sundials environment and must be created before any solver objects.

2. **Memory management**: The new context-based approach improves thread safety and resource management.

**Migration Guide for Low-Level API Users:**

If you're using the low-level Sundials API directly (not through the DiffEq interface):

```julia
# Old code (v4.x) - No context needed
mem_ptr = CVodeCreate(CV_BDF)
mem = Handle(mem_ptr)
```

```julia
# New code (v5.0) - Context required
ctx_ptr = Ref{SUNContext}(C_NULL)
SUNContext_Create(C_NULL, Base.unsafe_convert(Ptr{SUNContext}, ctx_ptr))
ctx = ctx_ptr[]
mem_ptr = CVodeCreate(CV_BDF, ctx)  # Context passed as argument
mem = Handle(mem_ptr)
# ... use solver ...
SUNContext_Free(ctx)  # Clean up context when done
```

**Automatic handling in high-level interface:**

If you're using the standard DiffEq interface (`solve(prob, CVODE_BDF())`), **no changes are needed**. The context is automatically managed internally:

```julia
# This continues to work without changes
sol = solve(prob, CVODE_BDF())
```

**Functions affected by context requirement:**
- All solver creation functions (`CVodeCreate`, `ARKStepCreate`, `IDACreate`, `KINCreate`)
- All vector creation functions (`N_VNew_Serial`, etc.)
- All matrix creation functions (`SUNDenseMatrix`, `SUNBandMatrix`, etc.)
- All linear solver creation functions (`SUNLinSol_Dense`, etc.)

The context is automatically freed when the integrator is garbage collected through the `ContextHandle` mechanism.

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

- **Sundials_jll**: Updated from v5.x to v7.4.1 (major version bump)
- Minimum DiffEqBase version: 6.190.2
- Added NonlinearSolveBase dependency for improved nonlinear solving
- Added LinearSolve dependency for initialization support
- Updated minimum SciMLBase version to 2.119.0
