## Adapted from sundialsTB/kinsol/examples_ser/mkinTest_nds.m

## %mkinTest_dns - KINSOL example problem (serial, dense)
## %   Simple test problem for the Dense linear solver in KINSOL
## %   This example solves the system
## %       y(1)^2 + y(2)^2 = 1
## %       y(2) = y(1)^2
## %

## % Radu Serban <radu@llnl.gov>

using Sundials, Test

## function to be optimized
function sysfn(y_nv, fy_nv, a_in)
    y = convert(Vector, y_nv)
    fy = convert(Vector, fy_nv)
    fy[1] = y[1]^2 + y[2]^2 - 1.0
    fy[2] = y[2] - y[1]^2
    return convert(Cint, Sundials.KIN_SUCCESS)
end

sysfn_C = @cfunction(sysfn, Cint, (Sundials.N_Vector, Sundials.N_Vector, Ptr{Cvoid}))

## Initialize problem
neq = 2
kmem = Sundials.KINCreate(Sundials.get_default_context())
Sundials.@checkflag Sundials.KINSetFuncNormTol(kmem, 1.0e-5)
Sundials.@checkflag Sundials.KINSetScaledStepTol(kmem, 1.0e-4)
Sundials.@checkflag Sundials.KINSetMaxSetupCalls(kmem, convert(Clong, 1))
y = ones(neq)
y_nv = Sundials.NVector(y)
Sundials.@checkflag Sundials.KINInit(kmem, sysfn_C, y_nv)
A = Sundials.SUNDenseMatrix(length(y), length(y))
LS = Sundials.SUNLinSol_Dense(y_nv, A)
Sundials.@checkflag Sundials.KINDlsSetLinearSolver(kmem, LS, A)
## Solve problem
scale = ones(neq)
scale_nv = Sundials.NVector(scale)
Sundials.@checkflag Sundials.KINSol(kmem, y_nv.n_v, convert(Cint, Sundials.KIN_LINESEARCH), scale_nv.n_v, scale_nv.n_v)
copyto!(y, convert(Vector, y_nv))

println("Solution: ", y)
residual = ones(2)
residual_nv = Sundials.NVector(residual)
sysfn(y_nv, residual_nv, [1, 2])
copyto!(residual, convert(Vector, residual_nv))
println("Residual: ", residual)

@test abs(minimum(residual)) < 1e-5
