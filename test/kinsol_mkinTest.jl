using Sundials

# Create context for tests
ctx_ptr = Ref{Sundials.SUNContext}(C_NULL)
Sundials.SUNContext_Create(C_NULL, Base.unsafe_convert(Ptr{Sundials.SUNContext}, ctx_ptr))
ctx = ctx_ptr[]

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
    return Sundials.KIN_SUCCESS
end

sysfn_C = @cfunction(sysfn, Cint, (Sundials.N_Vector, Sundials.N_Vector, Ptr{Cvoid}))

## Initialize problem
neq = 2
kmem = Sundials.KINCreate(ctx)
Sundials.@checkflag Sundials.KINSetFuncNormTol(kmem, 1.0e-5)
Sundials.@checkflag Sundials.KINSetScaledStepTol(kmem, 1.0e-4)
Sundials.@checkflag Sundials.KINSetMaxSetupCalls(kmem, 1)
y = ones(neq)
y_nvec = Sundials.NVector(y, ctx)
Sundials.@checkflag Sundials.KINInit(kmem, sysfn_C, y_nvec)
A = Sundials.SUNDenseMatrix(length(y), length(y), ctx)
LS = Sundials.SUNLinSol_Dense(y_nvec, A, ctx)
Sundials.@checkflag Sundials.KINDlsSetLinearSolver(kmem, LS, A)
## Solve problem
scale = ones(neq)
scale_nvec = Sundials.NVector(scale, ctx)
Sundials.@checkflag Sundials.KINSol(
    kmem, y_nvec, Sundials.KIN_LINESEARCH, scale_nvec, scale_nvec)
copyto!(y, y_nvec.v)

println("Solution: ", y)
residual = ones(2)
sysfn(y, residual, [1, 2])
println("Residual: ", residual)

@test abs(minimum(residual)) < 1e-5

# Clean up context
Sundials.SUNContext_Free(ctx)
