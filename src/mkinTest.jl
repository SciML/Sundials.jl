cd("/home/tshort/tmp/sund")

## import Sundials

include("/home/tshort/tmp/sund/Sundials.jl")

# function to be optimized
function sysfn(y_in, fy_in, a_in)
    y = pointer_to_array(Sundials.N_VGetArrayPointer_Serial(y_in), (neq,))
    fy = pointer_to_array(Sundials.N_VGetArrayPointer_Serial(fy_in), (neq,))
    fy[1] = y[1]^2 + y[2]^2 - 1.0
    fy[2] = y[2] - y[1]^2
    return 0
end

## Initialize problem
neq = 2
kmem = Sundials.KINCreate()
flag = Sundials.KINSetFuncNormTol(kmem, 1.0e-5)
flag = Sundials.KINSetScaledStepTol(kmem, 1.0e-4)
flag = Sundials.KINSetMaxSetupCalls(kmem, 1)
y = Sundials.N_VMake_Serial(neq, ones(neq))
csysfn = cfunction(sysfn, Int, (Ptr{Float64}, Ptr{Float64}, Ptr{Float64}))
flag = Sundials.KINInit(kmem, csysfn, y)
flag = Sundials.KINDense(kmem, neq)
## Solve problem
scale = Sundials.N_VMake_Serial(neq, ones(neq))
strategy = 1   # KIN_LINESEARCH
flag = Sundials.KINSol(kmem,
                       y,
                       strategy,
                       scale,
                       scale)
@show flag

y_out = pointer_to_array(Sundials.N_VGetArrayPointer_Serial(y), (neq,))

## % Evaluate system function at solution
fy = Sundials.N_VMake_Serial(neq, ones(neq))
sysfn(y, fy, [1,2])
fy_out = pointer_to_array(Sundials.N_VGetArrayPointer_Serial(fy), (neq,))

## % Print results
@printf("Solution: %10.4e  %10.4e\n", y_out[1], y_out[2])
@printf("Residual: %10.4e  %10.4e\n", fy_out[1], fy_out[2])

## Sundials.KINFree(kmem)   # segfaults



