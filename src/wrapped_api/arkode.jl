# Julia wrapper for header: arkode.h
# Automatically generated using Clang.jl

# Julia wrapper for header: arkode_arkstep.h
# Automatically generated using Clang.jl


function ARKStepCreate(fe, fi, t0, y0)
    ccall((:ARKStepCreate, libsundials_arkode), ARKStepMemPtr, (ARKRhsFn, ARKRhsFn, realtype, N_Vector), fe, fi, t0, y0)
end

function ARKStepResize(arkode_mem, ynew, hscale, t0, resize, resize_data)
    ccall((:ARKStepResize, libsundials_arkode), Cint, (ARKODEMemPtr, N_Vector, realtype, realtype, ARKVecResizeFn, Ptr{Cvoid}), arkode_mem, ynew, hscale, t0, resize, resize_data)
end

function ARKStepReInit(arkode_mem, fe, fi, t0, y0)
    ccall((:ARKStepReInit, libsundials_arkode), Cint, (ARKODEMemPtr, ARKRhsFn, ARKRhsFn, realtype, N_Vector), arkode_mem, fe, fi, t0, y0)
end

function ARKStepSStolerances(arkode_mem, reltol, abstol)
    ccall((:ARKStepSStolerances, libsundials_arkode), Cint, (ARKODEMemPtr, realtype, realtype), arkode_mem, reltol, abstol)
end

function ARKStepSVtolerances(arkode_mem, reltol, abstol)
    ccall((:ARKStepSVtolerances, libsundials_arkode), Cint, (ARKODEMemPtr, realtype, N_Vector), arkode_mem, reltol, abstol)
end

function ARKStepWFtolerances(arkode_mem, efun)
    ccall((:ARKStepWFtolerances, libsundials_arkode), Cint, (ARKODEMemPtr, ARKEwtFn), arkode_mem, efun)
end

function ARKStepResStolerance(arkode_mem, rabstol)
    ccall((:ARKStepResStolerance, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, rabstol)
end

function ARKStepResVtolerance(arkode_mem, rabstol)
    ccall((:ARKStepResVtolerance, libsundials_arkode), Cint, (ARKODEMemPtr, N_Vector), arkode_mem, rabstol)
end

function ARKStepResFtolerance(arkode_mem, rfun)
    ccall((:ARKStepResFtolerance, libsundials_arkode), Cint, (ARKODEMemPtr, ARKRwtFn), arkode_mem, rfun)
end

function ARKStepSetLinearSolver(arkode_mem, LS, A)
    ccall((:ARKStepSetLinearSolver, libsundials_arkode), Cint, (ARKODEMemPtr, SUNLinearSolver, SUNMatrix), arkode_mem, LS, A)
end

function ARKStepSetMassLinearSolver(arkode_mem, LS, M, time_dep)
    ccall((:ARKStepSetMassLinearSolver, libsundials_arkode), Cint, (ARKODEMemPtr, SUNLinearSolver, SUNMatrix, Cint), arkode_mem, LS, M, time_dep)
end

function ARKStepRootInit(arkode_mem, nrtfn, g)
    ccall((:ARKStepRootInit, libsundials_arkode), Cint, (ARKODEMemPtr, Cint, ARKRootFn), arkode_mem, nrtfn, g)
end

function ARKStepSetDefaults(arkode_mem)
    ccall((:ARKStepSetDefaults, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function ARKStepSetOptimalParams(arkode_mem)
    ccall((:ARKStepSetOptimalParams, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function ARKStepSetOrder(arkode_mem, maxord)
    ccall((:ARKStepSetOrder, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, maxord)
end

function ARKStepSetDenseOrder(arkode_mem, dord)
    ccall((:ARKStepSetDenseOrder, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, dord)
end

function ARKStepSetNonlinearSolver(arkode_mem, NLS)
    ccall((:ARKStepSetNonlinearSolver, libsundials_arkode), Cint, (ARKODEMemPtr, SUNNonlinearSolver), arkode_mem, NLS)
end

function ARKStepSetLinear(arkode_mem, timedepend)
    ccall((:ARKStepSetLinear, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, timedepend)
end

function ARKStepSetNonlinear(arkode_mem)
    ccall((:ARKStepSetNonlinear, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function ARKStepSetExplicit(arkode_mem)
    ccall((:ARKStepSetExplicit, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function ARKStepSetImplicit(arkode_mem)
    ccall((:ARKStepSetImplicit, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function ARKStepSetImEx(arkode_mem)
    ccall((:ARKStepSetImEx, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function ARKStepSetTables(arkode_mem, q, p, Bi, Be)
    ccall((:ARKStepSetTables, libsundials_arkode), Cint, (ARKODEMemPtr, Cint, Cint, ARKodeButcherTable, ARKodeButcherTable), arkode_mem, q, p, Bi, Be)
end

function ARKStepSetTableNum(arkode_mem, itable, etable)
    ccall((:ARKStepSetTableNum, libsundials_arkode), Cint, (ARKODEMemPtr, Cint, Cint), arkode_mem, itable, etable)
end

function ARKStepSetCFLFraction(arkode_mem, cfl_frac)
    ccall((:ARKStepSetCFLFraction, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, cfl_frac)
end

function ARKStepSetSafetyFactor(arkode_mem, safety)
    ccall((:ARKStepSetSafetyFactor, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, safety)
end

function ARKStepSetErrorBias(arkode_mem, bias)
    ccall((:ARKStepSetErrorBias, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, bias)
end

function ARKStepSetMaxGrowth(arkode_mem, mx_growth)
    ccall((:ARKStepSetMaxGrowth, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, mx_growth)
end

function ARKStepSetFixedStepBounds(arkode_mem, lb, ub)
    ccall((:ARKStepSetFixedStepBounds, libsundials_arkode), Cint, (ARKODEMemPtr, realtype, realtype), arkode_mem, lb, ub)
end

function ARKStepSetAdaptivityMethod(arkode_mem, imethod, idefault, pq, adapt_params)
    ccall((:ARKStepSetAdaptivityMethod, libsundials_arkode), Cint, (ARKODEMemPtr, Cint, Cint, Cint, Ptr{realtype}), arkode_mem, imethod, idefault, pq, adapt_params)
end

function ARKStepSetAdaptivityFn(arkode_mem, hfun, h_data)
    ccall((:ARKStepSetAdaptivityFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKAdaptFn, Ptr{Cvoid}), arkode_mem, hfun, h_data)
end

function ARKStepSetMaxFirstGrowth(arkode_mem, etamx1)
    ccall((:ARKStepSetMaxFirstGrowth, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, etamx1)
end

function ARKStepSetMaxEFailGrowth(arkode_mem, etamxf)
    ccall((:ARKStepSetMaxEFailGrowth, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, etamxf)
end

function ARKStepSetSmallNumEFails(arkode_mem, small_nef)
    ccall((:ARKStepSetSmallNumEFails, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, small_nef)
end

function ARKStepSetMaxCFailGrowth(arkode_mem, etacf)
    ccall((:ARKStepSetMaxCFailGrowth, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, etacf)
end

function ARKStepSetNonlinCRDown(arkode_mem, crdown)
    ccall((:ARKStepSetNonlinCRDown, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, crdown)
end

function ARKStepSetNonlinRDiv(arkode_mem, rdiv)
    ccall((:ARKStepSetNonlinRDiv, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, rdiv)
end

function ARKStepSetDeltaGammaMax(arkode_mem, dgmax)
    ccall((:ARKStepSetDeltaGammaMax, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, dgmax)
end

function ARKStepSetMaxStepsBetweenLSet(arkode_mem, msbp)
    ccall((:ARKStepSetMaxStepsBetweenLSet, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, msbp)
end

function ARKStepSetPredictorMethod(arkode_mem, method)
    ccall((:ARKStepSetPredictorMethod, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, method)
end

function ARKStepSetStabilityFn(arkode_mem, EStab, estab_data)
    ccall((:ARKStepSetStabilityFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKExpStabFn, Ptr{Cvoid}), arkode_mem, EStab, estab_data)
end

function ARKStepSetMaxErrTestFails(arkode_mem, maxnef)
    ccall((:ARKStepSetMaxErrTestFails, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, maxnef)
end

function ARKStepSetMaxNonlinIters(arkode_mem, maxcor)
    ccall((:ARKStepSetMaxNonlinIters, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, maxcor)
end

function ARKStepSetMaxConvFails(arkode_mem, maxncf)
    ccall((:ARKStepSetMaxConvFails, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, maxncf)
end

function ARKStepSetNonlinConvCoef(arkode_mem, nlscoef)
    ccall((:ARKStepSetNonlinConvCoef, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, nlscoef)
end

function ARKStepSetConstraints(arkode_mem, constraints)
    ccall((:ARKStepSetConstraints, libsundials_arkode), Cint, (ARKODEMemPtr, N_Vector), arkode_mem, constraints)
end

function ARKStepSetMaxNumSteps(arkode_mem, mxsteps)
    ccall((:ARKStepSetMaxNumSteps, libsundials_arkode), Cint, (ARKODEMemPtr, Clong), arkode_mem, mxsteps)
end

function ARKStepSetMaxHnilWarns(arkode_mem, mxhnil)
    ccall((:ARKStepSetMaxHnilWarns, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, mxhnil)
end

function ARKStepSetInitStep(arkode_mem, hin)
    ccall((:ARKStepSetInitStep, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, hin)
end

function ARKStepSetMinStep(arkode_mem, hmin)
    ccall((:ARKStepSetMinStep, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, hmin)
end

function ARKStepSetMaxStep(arkode_mem, hmax)
    ccall((:ARKStepSetMaxStep, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, hmax)
end

function ARKStepSetStopTime(arkode_mem, tstop)
    ccall((:ARKStepSetStopTime, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, tstop)
end

function ARKStepSetFixedStep(arkode_mem, hfixed)
    ccall((:ARKStepSetFixedStep, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, hfixed)
end

function ARKStepSetMaxNumConstrFails(arkode_mem, maxfails)
    ccall((:ARKStepSetMaxNumConstrFails, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, maxfails)
end

function ARKStepSetRootDirection(arkode_mem, rootdir)
    ccall((:ARKStepSetRootDirection, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Cint}), arkode_mem, rootdir)
end

function ARKStepSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKStepSetNoInactiveRootWarn, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function ARKStepSetErrHandlerFn(arkode_mem, ehfun, eh_data)
    ccall((:ARKStepSetErrHandlerFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKErrHandlerFn, Ptr{Cvoid}), arkode_mem, ehfun, eh_data)
end

function ARKStepSetErrFile(arkode_mem, errfp)
    ccall((:ARKStepSetErrFile, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{FILE}), arkode_mem, errfp)
end

function ARKStepSetUserData(arkode_mem, user_data)
    ccall((:ARKStepSetUserData, libsundials_arkode), Cint, (ARKODEMemPtr, Any), arkode_mem, user_data)
end

function ARKStepSetDiagnostics(arkode_mem, diagfp)
    ccall((:ARKStepSetDiagnostics, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{FILE}), arkode_mem, diagfp)
end

function ARKStepSetPostprocessStepFn(arkode_mem, ProcessStep)
    ccall((:ARKStepSetPostprocessStepFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKPostProcessStepFn), arkode_mem, ProcessStep)
end

function ARKStepSetStagePredictFn(arkode_mem, PredictStage)
    ccall((:ARKStepSetStagePredictFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKStepStagePredictFn), arkode_mem, PredictStage)
end

function ARKStepSetJacFn(arkode_mem, jac)
    ccall((:ARKStepSetJacFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKLsJacFn), arkode_mem, jac)
end

function ARKStepSetMassFn(arkode_mem, mass)
    ccall((:ARKStepSetMassFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKLsMassFn), arkode_mem, mass)
end

function ARKStepSetMaxStepsBetweenJac(arkode_mem, msbj)
    ccall((:ARKStepSetMaxStepsBetweenJac, libsundials_arkode), Cint, (ARKODEMemPtr, Clong), arkode_mem, msbj)
end

function ARKStepSetEpsLin(arkode_mem, eplifac)
    ccall((:ARKStepSetEpsLin, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, eplifac)
end

function ARKStepSetMassEpsLin(arkode_mem, eplifac)
    ccall((:ARKStepSetMassEpsLin, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, eplifac)
end

function ARKStepSetPreconditioner(arkode_mem, psetup, psolve)
    ccall((:ARKStepSetPreconditioner, libsundials_arkode), Cint, (ARKODEMemPtr, ARKLsPrecSetupFn, ARKLsPrecSolveFn), arkode_mem, psetup, psolve)
end

function ARKStepSetMassPreconditioner(arkode_mem, psetup, psolve)
    ccall((:ARKStepSetMassPreconditioner, libsundials_arkode), Cint, (ARKODEMemPtr, ARKLsMassPrecSetupFn, ARKLsMassPrecSolveFn), arkode_mem, psetup, psolve)
end

function ARKStepSetJacTimes(arkode_mem, jtsetup, jtimes)
    ccall((:ARKStepSetJacTimes, libsundials_arkode), Cint, (ARKODEMemPtr, ARKLsJacTimesSetupFn, ARKLsJacTimesVecFn), arkode_mem, jtsetup, jtimes)
end

function ARKStepSetMassTimes(arkode_mem, msetup, mtimes, mtimes_data)
    ccall((:ARKStepSetMassTimes, libsundials_arkode), Cint, (ARKODEMemPtr, ARKLsMassTimesSetupFn, ARKLsMassTimesVecFn, Ptr{Cvoid}), arkode_mem, msetup, mtimes, mtimes_data)
end

function ARKStepSetLinSysFn(arkode_mem, linsys)
    ccall((:ARKStepSetLinSysFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKLsLinSysFn), arkode_mem, linsys)
end

function ARKStepEvolve(arkode_mem, tout, yout, tret, itask)
    ccall((:ARKStepEvolve, libsundials_arkode), Cint, (ARKODEMemPtr, realtype, N_Vector, Ptr{realtype}, Cint), arkode_mem, tout, yout, tret, itask)
end

function ARKStepGetDky(arkode_mem, t, k, dky)
    ccall((:ARKStepGetDky, libsundials_arkode), Cint, (ARKODEMemPtr, realtype, Cint, N_Vector), arkode_mem, t, k, dky)
end

function ARKStepGetNumExpSteps(arkode_mem, expsteps)
    ccall((:ARKStepGetNumExpSteps, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, expsteps)
end

function ARKStepGetNumAccSteps(arkode_mem, accsteps)
    ccall((:ARKStepGetNumAccSteps, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, accsteps)
end

function ARKStepGetNumStepAttempts(arkode_mem, step_attempts)
    ccall((:ARKStepGetNumStepAttempts, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, step_attempts)
end

function ARKStepGetNumRhsEvals(arkode_mem, nfe_evals, nfi_evals)
    ccall((:ARKStepGetNumRhsEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, nfe_evals, nfi_evals)
end

function ARKStepGetNumLinSolvSetups(arkode_mem, nlinsetups)
    ccall((:ARKStepGetNumLinSolvSetups, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nlinsetups)
end

function ARKStepGetNumErrTestFails(arkode_mem, netfails)
    ccall((:ARKStepGetNumErrTestFails, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, netfails)
end

function ARKStepGetCurrentButcherTables(arkode_mem, Bi, Be)
    ccall((:ARKStepGetCurrentButcherTables, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{ARKodeButcherTable}, Ptr{ARKodeButcherTable}), arkode_mem, Bi, Be)
end

function ARKStepGetEstLocalErrors(arkode_mem, ele)
    ccall((:ARKStepGetEstLocalErrors, libsundials_arkode), Cint, (ARKODEMemPtr, N_Vector), arkode_mem, ele)
end

function ARKStepGetWorkSpace(arkode_mem, lenrw, leniw)
    ccall((:ARKStepGetWorkSpace, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrw, leniw)
end

function ARKStepGetNumSteps(arkode_mem, nsteps)
    ccall((:ARKStepGetNumSteps, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nsteps)
end

function ARKStepGetActualInitStep(arkode_mem, hinused)
    ccall((:ARKStepGetActualInitStep, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{realtype}), arkode_mem, hinused)
end

function ARKStepGetLastStep(arkode_mem, hlast)
    ccall((:ARKStepGetLastStep, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{realtype}), arkode_mem, hlast)
end

function ARKStepGetCurrentStep(arkode_mem, hcur)
    ccall((:ARKStepGetCurrentStep, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{realtype}), arkode_mem, hcur)
end

function ARKStepGetCurrentTime(arkode_mem, tcur)
    ccall((:ARKStepGetCurrentTime, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{realtype}), arkode_mem, tcur)
end

function ARKStepGetCurrentState(arkode_mem, ycur)
    ccall((:ARKStepGetCurrentState, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{N_Vector}), arkode_mem, ycur)
end

function ARKStepGetCurrentGamma(arkode_mem, gamma)
    ccall((:ARKStepGetCurrentGamma, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{realtype}), arkode_mem, gamma)
end

function ARKStepGetTolScaleFactor(arkode_mem, tolsfac)
    ccall((:ARKStepGetTolScaleFactor, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{realtype}), arkode_mem, tolsfac)
end

function ARKStepGetErrWeights(arkode_mem, eweight)
    ccall((:ARKStepGetErrWeights, libsundials_arkode), Cint, (ARKODEMemPtr, N_Vector), arkode_mem, eweight)
end

function ARKStepGetResWeights(arkode_mem, rweight)
    ccall((:ARKStepGetResWeights, libsundials_arkode), Cint, (ARKODEMemPtr, N_Vector), arkode_mem, rweight)
end

function ARKStepGetNumGEvals(arkode_mem, ngevals)
    ccall((:ARKStepGetNumGEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, ngevals)
end

function ARKStepGetRootInfo(arkode_mem, rootsfound)
    ccall((:ARKStepGetRootInfo, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Cint}), arkode_mem, rootsfound)
end

function ARKStepGetNumConstrFails(arkode_mem, nconstrfails)
    ccall((:ARKStepGetNumConstrFails, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nconstrfails)
end

function ARKStepGetReturnFlagName(flag)
    ccall((:ARKStepGetReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function ARKStepWriteParameters(arkode_mem, fp)
    ccall((:ARKStepWriteParameters, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{FILE}), arkode_mem, fp)
end

function ARKStepWriteButcher(arkode_mem, fp)
    ccall((:ARKStepWriteButcher, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{FILE}), arkode_mem, fp)
end

function ARKStepGetTimestepperStats(arkode_mem, expsteps, accsteps, step_attempts, nfe_evals, nfi_evals, nlinsetups, netfails)
    ccall((:ARKStepGetTimestepperStats, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}), arkode_mem, expsteps, accsteps, step_attempts, nfe_evals, nfi_evals, nlinsetups, netfails)
end

function ARKStepGetStepStats(arkode_mem, nsteps, hinused, hlast, hcur, tcur)
    ccall((:ARKStepGetStepStats, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), arkode_mem, nsteps, hinused, hlast, hcur, tcur)
end

function ARKStepGetNumNonlinSolvIters(arkode_mem, nniters)
    ccall((:ARKStepGetNumNonlinSolvIters, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nniters)
end

function ARKStepGetNumNonlinSolvConvFails(arkode_mem, nncfails)
    ccall((:ARKStepGetNumNonlinSolvConvFails, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nncfails)
end

function ARKStepGetNonlinSolvStats(arkode_mem, nniters, nncfails)
    ccall((:ARKStepGetNonlinSolvStats, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, nniters, nncfails)
end

function ARKStepGetLinWorkSpace(arkode_mem, lenrwLS, leniwLS)
    ccall((:ARKStepGetLinWorkSpace, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwLS, leniwLS)
end

function ARKStepGetNumJacEvals(arkode_mem, njevals)
    ccall((:ARKStepGetNumJacEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, njevals)
end

function ARKStepGetNumPrecEvals(arkode_mem, npevals)
    ccall((:ARKStepGetNumPrecEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, npevals)
end

function ARKStepGetNumPrecSolves(arkode_mem, npsolves)
    ccall((:ARKStepGetNumPrecSolves, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, npsolves)
end

function ARKStepGetNumLinIters(arkode_mem, nliters)
    ccall((:ARKStepGetNumLinIters, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nliters)
end

function ARKStepGetNumLinConvFails(arkode_mem, nlcfails)
    ccall((:ARKStepGetNumLinConvFails, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nlcfails)
end

function ARKStepGetNumJTSetupEvals(arkode_mem, njtsetups)
    ccall((:ARKStepGetNumJTSetupEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, njtsetups)
end

function ARKStepGetNumJtimesEvals(arkode_mem, njvevals)
    ccall((:ARKStepGetNumJtimesEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, njvevals)
end

function ARKStepGetNumLinRhsEvals(arkode_mem, nfevalsLS)
    ccall((:ARKStepGetNumLinRhsEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nfevalsLS)
end

function ARKStepGetLastLinFlag(arkode_mem, flag)
    ccall((:ARKStepGetLastLinFlag, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, flag)
end

function ARKStepGetMassWorkSpace(arkode_mem, lenrwMLS, leniwMLS)
    ccall((:ARKStepGetMassWorkSpace, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwMLS, leniwMLS)
end

function ARKStepGetNumMassSetups(arkode_mem, nmsetups)
    ccall((:ARKStepGetNumMassSetups, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmsetups)
end

function ARKStepGetNumMassMultSetups(arkode_mem, nmvsetups)
    ccall((:ARKStepGetNumMassMultSetups, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmvsetups)
end

function ARKStepGetNumMassMult(arkode_mem, nmvevals)
    ccall((:ARKStepGetNumMassMult, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmvevals)
end

function ARKStepGetNumMassSolves(arkode_mem, nmsolves)
    ccall((:ARKStepGetNumMassSolves, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmsolves)
end

function ARKStepGetNumMassPrecEvals(arkode_mem, nmpevals)
    ccall((:ARKStepGetNumMassPrecEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmpevals)
end

function ARKStepGetNumMassPrecSolves(arkode_mem, nmpsolves)
    ccall((:ARKStepGetNumMassPrecSolves, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmpsolves)
end

function ARKStepGetNumMassIters(arkode_mem, nmiters)
    ccall((:ARKStepGetNumMassIters, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmiters)
end

function ARKStepGetNumMassConvFails(arkode_mem, nmcfails)
    ccall((:ARKStepGetNumMassConvFails, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmcfails)
end

function ARKStepGetNumMTSetups(arkode_mem, nmtsetups)
    ccall((:ARKStepGetNumMTSetups, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmtsetups)
end

function ARKStepGetLastMassFlag(arkode_mem, flag)
    ccall((:ARKStepGetLastMassFlag, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, flag)
end

function ARKStepGetLinReturnFlagName(flag)
    ccall((:ARKStepGetLinReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function ARKStepFree(arkode_mem)
    ccall((:ARKStepFree, libsundials_arkode), Cvoid, (Ref{ARKODEMemPtr},), arkode_mem)
end

function ARKStepPrintMem(arkode_mem, outfile)
    ccall((:ARKStepPrintMem, libsundials_arkode), Cvoid, (ARKODEMemPtr, Ptr{FILE}), arkode_mem, outfile)
end
# Julia wrapper for header: arkode_bandpre.h
# Automatically generated using Clang.jl


function ARKBandPrecInit(arkode_mem, N, mu, ml)
    ccall((:ARKBandPrecInit, libsundials_arkode), Cint, (ARKODEMemPtr, sunindextype, sunindextype, sunindextype), arkode_mem, N, mu, ml)
end

function ARKBandPrecGetWorkSpace(arkode_mem, lenrwLS, leniwLS)
    ccall((:ARKBandPrecGetWorkSpace, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwLS, leniwLS)
end

function ARKBandPrecGetNumRhsEvals(arkode_mem, nfevalsBP)
    ccall((:ARKBandPrecGetNumRhsEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nfevalsBP)
end
# Julia wrapper for header: arkode_bbdpre.h
# Automatically generated using Clang.jl


function ARKBBDPrecInit(arkode_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn)
    ccall((:ARKBBDPrecInit, libsundials_arkode), Cint, (ARKODEMemPtr, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, ARKLocalFn, ARKCommFn), arkode_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn)
end

function ARKBBDPrecReInit(arkode_mem, mudq, mldq, dqrely)
    ccall((:ARKBBDPrecReInit, libsundials_arkode), Cint, (ARKODEMemPtr, sunindextype, sunindextype, realtype), arkode_mem, mudq, mldq, dqrely)
end

function ARKBBDPrecGetWorkSpace(arkode_mem, lenrwBBDP, leniwBBDP)
    ccall((:ARKBBDPrecGetWorkSpace, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwBBDP, leniwBBDP)
end

function ARKBBDPrecGetNumGfnEvals(arkode_mem, ngevalsBBDP)
    ccall((:ARKBBDPrecGetNumGfnEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, ngevalsBBDP)
end
# Julia wrapper for header: arkode_butcher.h
# Automatically generated using Clang.jl


function ARKodeButcherTable_Alloc(stages, embedded)
    ccall((:ARKodeButcherTable_Alloc, libsundials_arkode), ARKodeButcherTable, (Cint, Cint), stages, embedded)
end

function ARKodeButcherTable_Create(s, q, p, c, A, b, d)
    ccall((:ARKodeButcherTable_Create, libsundials_arkode), ARKodeButcherTable, (Cint, Cint, Cint, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), s, q, p, c, A, b, d)
end

function ARKodeButcherTable_Copy(B)
    ccall((:ARKodeButcherTable_Copy, libsundials_arkode), ARKodeButcherTable, (ARKodeButcherTable,), B)
end

function ARKodeButcherTable_Space(B, liw, lrw)
    ccall((:ARKodeButcherTable_Space, libsundials_arkode), Cvoid, (ARKodeButcherTable, Ptr{sunindextype}, Ptr{sunindextype}), B, liw, lrw)
end

function ARKodeButcherTable_Free(B)
    ccall((:ARKodeButcherTable_Free, libsundials_arkode), Cvoid, (ARKodeButcherTable,), B)
end

function ARKodeButcherTable_Write(B, outfile)
    ccall((:ARKodeButcherTable_Write, libsundials_arkode), Cvoid, (ARKodeButcherTable, Ptr{Cint}), B, outfile)
end

function ARKodeButcherTable_CheckOrder(B, q, p, outfile)
    ccall((:ARKodeButcherTable_CheckOrder, libsundials_arkode), Cint, (ARKodeButcherTable, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), B, q, p, outfile)
end

function ARKodeButcherTable_CheckARKOrder(B1, B2, q, p, outfile)
    ccall((:ARKodeButcherTable_CheckARKOrder, libsundials_arkode), Cint, (ARKodeButcherTable, ARKodeButcherTable, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), B1, B2, q, p, outfile)
end
# Julia wrapper for header: arkode_butcher_dirk.h
# Automatically generated using Clang.jl


function ARKodeButcherTable_LoadDIRK(imethod)
    ccall((:ARKodeButcherTable_LoadDIRK, libsundials_arkode), ARKodeButcherTable, (Cint,), imethod)
end
# Julia wrapper for header: arkode_butcher_erk.h
# Automatically generated using Clang.jl


function ARKodeButcherTable_LoadERK(imethod)
    ccall((:ARKodeButcherTable_LoadERK, libsundials_arkode), ARKodeButcherTable, (Cint,), imethod)
end
# Julia wrapper for header: arkode_erkstep.h
# Automatically generated using Clang.jl

# Julia wrapper for header: arkode_ls.h
# Automatically generated using Clang.jl

# Julia wrapper for header: arkode_mristep.h
# Automatically generated using Clang.jl

