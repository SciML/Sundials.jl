# API

## Sundials algorithms

```@docs
SundialsODEAlgorithm
SundialsDAEAlgorithm
CVODE_BDF
CVODE_Adams
ARKODE
IDA
KINSOL
```

## Reexported SciML common interface

`using Sundials` also brings in the parts of the SciML common interface needed to build
and solve a problem, so they do not have to be imported separately. These names are
owned and documented by [SciMLBase](https://docs.sciml.ai/SciMLBase/stable/) and
[DiffEqBase](https://docs.sciml.ai/DiffEqDocs/stable/):

  - Problems: `ODEProblem`, `SplitODEProblem`, `DAEProblem`, `SteadyStateProblem`,
    `NonlinearProblem`, `EnsembleProblem`
  - Functions: `ODEFunction`, `SplitFunction`, `DAEFunction`, `NonlinearFunction`
  - Solutions: `ODESolution`, `DAESolution`, `NonlinearSolution`, `SteadyStateSolution`,
    `EnsembleSolution`, `EnsembleSummary`
  - Ensemble algorithms: `EnsembleSerial`, `EnsembleThreads`, `EnsembleDistributed`,
    `EnsembleSplitThreads`, and the `EnsembleAnalysis` module
  - Solving: `solve`, `solve!`, `init`, `step!`, `remake`
  - Integrator interface: `reinit!`, `u_modified!`, `add_tstop!`, `add_saveat!`,
    `set_proposed_dt!`, `get_du`, `get_du!`, `get_tmp_cache`, `savevalues!`,
    `change_t_via_interpolation!`, `reeval_internals_due_to_modification!`, `check_error`,
    `check_error!`, `terminate!`
  - Return status: `ReturnCode`, `successful_retcode`
  - Callbacks: `ContinuousCallback`, `DiscreteCallback`, `VectorContinuousCallback`,
    `CallbackSet`
  - Initialization algorithms: `DefaultInit`, `BrownFullBasicInit`,
    `ShampineCollocationInit`, `NoInit`, `CheckInit`, `OverrideInit`
  - `NullParameters`

Anything else from SciMLBase must be imported from SciMLBase directly.
