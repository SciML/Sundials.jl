## Adapted from sundialsTB/kinsol/examples_ser/mkinTest_nds.m
 
## %mkinTest_dns - KINSOL example problem (serial, dense)
## %   Simple test problem for the Dense linear solver in KINSOL
## %   This example solves the system
## %       y(1)^2 + y(2)^2 = 1
## %       y(2) = y(1)^2
## %

## % Radu Serban <radu@llnl.gov>


import Sundials

## function to be optimized
function sysfn(y_in, fy_in, a_in)
    y = Sundials.asarray(y_in)
    fy = Sundials.asarray(fy_in)
    fy[1] = y[1]^2 + y[2]^2 - 1.0
    fy[2] = y[2] - y[1]^2
    return Int32(0)   # indicates normal return
end

## Initialize problem
neq = 2
kmem = Sundials.KINCreate()
flag = Sundials.KINSetFuncNormTol(kmem, 1.0e-5)
flag = Sundials.KINSetScaledStepTol(kmem, 1.0e-4)
flag = Sundials.KINSetMaxSetupCalls(kmem, 1)
y = ones(neq)
flag = Sundials.KINInit(kmem, sysfn, y)
flag = Sundials.KINDense(kmem, neq)
## Solve problem
scale = ones(neq)
strategy = 1   # KIN_LINESEARCH
flag = Sundials.KINSol(kmem,
                       y,
                       strategy,
                       scale,
                       scale)

println("Solution: ", y)
residual = ones(2)
sysfn(y, residual, [1,2])
println("Residual: ", residual)

Sundials.KINFree([kmem])


