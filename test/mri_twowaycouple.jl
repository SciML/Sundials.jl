# Example based on https://github.com/LLNL/sundials/blob/master/examples/arkode/C_serial/ark_twowaycouple_mri.c
#=
/* ----------------------------------------------------------------
 * Programmer(s): David J. Gardner @ LLNL
 * ----------------------------------------------------------------
 * Based a linear example program by Rujeko Chinomona @ SMU.
 * ----------------------------------------------------------------
 * SUNDIALS Copyright Start
 * Copyright (c) 2002-2020, Lawrence Livermore National Security
 * and Southern Methodist University.
 * All rights reserved.
 *
 * See the top-level LICENSE and NOTICE files for details.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 * SUNDIALS Copyright End
 * ----------------------------------------------------------------
 * Example problem:
 *
 * This example simulates an ODE system with 3 components,
 * Y = [u,v,w], given by the equations,
 *
 *   du/dt =  100v+w
 *   dv/dt = -100u
 *   dw/dt = -w+u
 *
 * for t in the interval [0.0, 2.0] with intial conditions
 * u(0)=9001/10001, v(0)=-1e-5/10001, and w(0)=1000. In this problem
 * the slow (w) and fast (u and v) components depend on one another.
 *
 * This program solves the problem with the MRI stepper. Outputs are
 * printed at equal intervals of 0.1 and run statistics are printed
 * at the end.
 * ----------------------------------------------------------------*/
=#

using Sundials# Test

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

T0 = 0.0
Tf = 2.0
dTout = 0.1
Neq = 3
Nt = ceil(Tf / dTout)
hs = 0.001
hf = 0.00002
y0 = [0.90001, -9.999, 1000.0]

# Fast Integration portion
_mem_ptr = Sundials.ARKStepCreate(ff, C_NULL, T0, y0);
inner_arkode_mem = Sundials.Handle(_mem_ptr)
Sundials.@checkflag Sundials.ARKStepSetTableNum(inner_arkode_mem,
                                                -1,
                                                Sundials.KNOTH_WOLKE_3_3)
Sundials.@checkflag Sundials.ARKStepSetFixedStep(inner_arkode_mem, hf)

# Slow integrator portion
_arkode_mem_ptr = Sundials.MRIStepCreate(fs, T0, y0, inner_arkode_mem)
arkode_mem = Sundials.Handle(_arkode_mem_ptr)
Sundials.@checkflag Sundials.MRIStepSetFixedStep(arkode_mem, hs)

t = [T0]
tout = T0 + dTout
res = Dict(0 => y0)
for i = 1:Nt
    y = similar(y0)
    global retval = Sundials.MRIStepEvolve(arkode_mem, tout, y, t, Sundials.ARK_NORMAL)
    global tout += dTout
    global tout = (tout > Tf) ? Tf : tout
    res[i] = y
end

for i = 1:3
    sol_1 = [-0.927671 -8.500060 904.786828]
    sol_end = [0.547358 -0.523577 135.169441]
    @test isapprox(res[1][i], sol_1[i]; atol=1e-3)
    @test isapprox(res[Nt][i], sol_end[i]; atol=1e-3)
end
