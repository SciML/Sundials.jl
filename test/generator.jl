# Test these sundials_sundials, sundials_sunlinsolve, sundials_sunlinsolve, sundial_sunmatrix are callable
@test Sundials.SUNLinSolNewEmpty(Sundials.get_default_context()) isa Any
