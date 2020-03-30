#=
Test adapted from https://github.com/LLNL/sundials/blob/master/examples/arkode/C_serial/ark_analytic_nonlin.c
/*-----------------------------------------------------------------
 * Programmer(s): Daniel R. Reynolds @ SMU
 *---------------------------------------------------------------
 * SUNDIALS Copyright Start
 * Copyright (c) 2002-2020, Lawrence Livermore National Security
 * and Southern Methodist University.
 * All rights reserved.
 *
 * See the top-level LICENSE and NOTICE files for details.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 * SUNDIALS Copyright End
 *---------------------------------------------------------------
 * Example problem:
 *
 * The following is a simple example problem with analytical
 * solution,
 *     dy/dt = (t+1)*exp(-y)
 * for t in the interval [0.0, 10.0], with initial condition: y=0.
 * This has analytical solution
 *      y(t) = log(0.5*t^2 + t + 1)
 *
 * This program solves the problem with the ERK method.
 * Output is printed every 1.0 units of time (10 total).
 * Run statistics (optional outputs) are printed at the end.
 *-----------------------------------------------------------------*/
=#

using Sundials, Test

t0 = 0.0
tf = 10.0
dTout = 1.0
neq = 1
reltol = 1e-6
abstol = 1e-10
y0 = [0.0]

function f(t, y, ydot, user_data)
    y = convert(Vector, y)
    ydot = convert(Vector, ydot)
    ydot[1] = (t+1.0)*exp(-1*y[1])
    return Sundials.ARK_SUCCESS
end

mem_ptr = Sundials.ERKStepCreate(f, t0, y0)
erkStep_mem = Sundials.Handle(mem_ptr)
Sundials.@checkflag Sundials.ERKStepSStolerances(erkStep_mem, reltol, abstol)

res = [0.0]
t = [t0]
y = similar(y0)
tout = t0 + dTout
while (tf - t[1] > 1e-15)
    Sundials.@checkflag Sundials.ERKStepEvolve(erkStep_mem, tout, y, t, Sundials.ARK_NORMAL)
    push!(res, y[1])
    global tout += dTout
    global tout = (tout > tf) ? tf : tout
end

t = 0.0:1:10
y_analytic = log.((0.5*t.^2 .+ t .+ 1))
for i in 1:length(t)
    @test isapprox(y_analytic[1], res[1]; atol= 1e-3)
end
y = nothing
temp = Ref(Clong(-1))
Sundials.@checkflag Sundials.ERKStepGetNumSteps(erkStep_mem, temp)
Sundials.@checkflag Sundials.ERKStepGetNumStepAttempts(erkStep_mem, temp)
Sundials.@checkflag Sundials.ERKStepGetNumRhsEvals(erkStep_mem, temp)
Sundials.@checkflag Sundials.ERKStepGetNumErrTestFails(erkStep_mem, temp)
Sundials.ERKStepFree(erkStep_mem)
