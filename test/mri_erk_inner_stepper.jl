# Regression: ARKodeCreateMRIStepInnerStepper must accept ERKStep handles
# (C API takes void*), not only ARKStepMemPtr.

using Sundials
using Test

function ff(t, y_nv, ydot_nv, user_data)
    y = convert(Vector, y_nv)
    ydot = convert(Vector, ydot_nv)
    ydot[1] = 100.0 * y[2]
    ydot[2] = -100.0 * y[1]
    ydot[3] = y[1]
    return Sundials.ARK_SUCCESS
end

function run_mri_erk_inner_stepper()
    ff_C = @cfunction(
        ff, Cint, (Sundials.realtype, Sundials.N_Vector, Sundials.N_Vector, Ptr{Cvoid})
    )

    ctx_ptr = Ref{Sundials.SUNContext}(C_NULL)
    Sundials.SUNContext_Create(
        C_NULL, Base.unsafe_convert(Ptr{Sundials.SUNContext}, ctx_ptr)
    )
    ctx = ctx_ptr[]

    y = nothing
    erk = nothing
    try
        y = Sundials.NVector([9001.0 / 10001.0, -1.0e5 / 10001.0, 1000.0], ctx)
        erk = Sundials.Handle(Sundials.ERKStepCreate(ff_C, 0.0, y, ctx))
        stepper = Ref{Sundials.MRIStepInnerStepper}(C_NULL)
        @test Sundials.ARKodeCreateMRIStepInnerStepper(erk, stepper) == 0
        @test stepper[] != C_NULL
        @test Sundials.MRIStepInnerStepper_Free(stepper) == 0
        @test stepper[] == C_NULL
    finally
        for h in (erk, y)
            h !== nothing && finalize(h)
        end
        Sundials.SUNContext_Free(ctx)
    end
end

run_mri_erk_inner_stepper()
