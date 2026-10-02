# Example based on https://github.com/LLNL/sundials/blob/v7.5.0/examples/arkode/C_serial/ark_twowaycouple_mri.c
# Expected values from ark_twowaycouple_mri.out (printed to 6 decimal places).

using Sundials
using Test

# Create context for tests
ctx_ptr = Ref{Sundials.SUNContext}(C_NULL)
Sundials.SUNContext_Create(C_NULL, Base.unsafe_convert(Ptr{Sundials.SUNContext}, ctx_ptr))
ctx = ctx_ptr[]

function ff(t, y_nv, ydot_nv, user_data)
    y = convert(Vector, y_nv)
    ydot = convert(Vector, ydot_nv)
    ydot[1] = 100.0 * y[2]
    ydot[2] = -100.0 * y[1]
    ydot[3] = y[1]
    return Sundials.ARK_SUCCESS
end

function fs(t, y_nv, ydot_nv, user_data)
    y = convert(Vector, y_nv)
    ydot = convert(Vector, ydot_nv)
    ydot[1] = y[3]
    ydot[2] = 0.0
    ydot[3] = -y[3]
    return Sundials.ARK_SUCCESS
end

ff_C = @cfunction(
    ff, Cint, (Sundials.realtype, Sundials.N_Vector, Sundials.N_Vector, Ptr{Cvoid})
)
fs_C = @cfunction(
    fs, Cint, (Sundials.realtype, Sundials.N_Vector, Sundials.N_Vector, Ptr{Cvoid})
)

T0 = 0.0
Tf = 2.0
dTout = 0.1
Neq = 3
Nt = ceil(Int, Tf / dTout)
hs = 0.001
hf = 0.00002
y0 = [9001.0 / 10001.0, -1.0e5 / 10001.0, 1000.0]

# Fast Integration portion
y0_nvec = Sundials.NVector(y0, ctx)
_mem_ptr = Sundials.ARKStepCreate(ff_C, C_NULL, T0, y0_nvec, ctx)
inner_arkode_mem = Sundials.Handle(_mem_ptr)
Sundials.@checkflag Sundials.ARKStepSetTableNum(
    inner_arkode_mem,
    -1,
    Sundials.KNOTH_WOLKE_3_3
)
Sundials.@checkflag Sundials.ARKStepSetFixedStep(inner_arkode_mem, hf)

inner_stepper_ptr = Ref{Sundials.MRIStepInnerStepper}(C_NULL)
Sundials.@checkflag Sundials.ARKodeCreateMRIStepInnerStepper(
    inner_arkode_mem, inner_stepper_ptr
)
inner_stepper = Sundials.Handle(inner_stepper_ptr[])

# Slow integrator portion
_arkode_mem_ptr = Sundials.MRIStepCreate(
    fs_C, C_NULL, T0, y0_nvec, inner_stepper, ctx
)
arkode_mem = Sundials.Handle(_arkode_mem_ptr)
Sundials.@checkflag Sundials.MRIStepSetFixedStep(arkode_mem, hs)

t = [T0]
tout = T0 + dTout
res = Dict(0 => copy(y0))
y = copy(y0)
y_nvec = Sundials.NVector(y, ctx)
for i in 1:Nt
    global retval = Sundials.MRIStepEvolve(arkode_mem, tout, y_nvec, t, Sundials.ARK_NORMAL)
    @test retval == 0
    copyto!(y, y_nvec.v)
    res[i] = copy(y)
    global tout += dTout
    global tout = (tout > Tf) ? Tf : tout
end

# Reference: SUNDIALS v7.5.0 ark_twowaycouple_mri.out (6 decimal places)
sol_1 = [-0.929838, -8.503739, 904.822759]
sol_end = [0.464954, -0.474682, 135.299471]
for i in 1:3
    @test isapprox(res[1][i], sol_1[i]; atol = 5.0e-7)
    @test isapprox(res[Nt][i], sol_end[i]; atol = 5.0e-7)
end

# Clean up context
Sundials.SUNContext_Free(ctx)
