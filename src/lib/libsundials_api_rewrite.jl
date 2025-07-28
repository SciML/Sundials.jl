function ARKStepCreate(fe::ARKRhsFn, fi::ARKRhsFn, t0::realtype, y0::N_Vector, sunctx::SUNContext)
    ccall((:ARKStepCreate, libsundials_arkode), Ptr{ARKStepMem}, (ARKRhsFn, ARKRhsFn, realtype, N_Vector, SUNContext), fe, fi, t0, y0, sunctx)
end

function ARKStepResize(arkode_mem, ynew::N_Vector, hscale::realtype, t0::realtype, resize::ARKVecResizeFn, resize_data)
    ccall((:ARKStepResize, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector, realtype, realtype, ARKVecResizeFn, Ptr{Cvoid}), arkode_mem, ynew, hscale, t0, resize, resize_data)
end

function ARKStepReInit(arkode_mem, fe::ARKRhsFn, fi::ARKRhsFn, t0::realtype, y0::N_Vector)
    ccall((:ARKStepReInit, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKRhsFn, ARKRhsFn, realtype, N_Vector), arkode_mem, fe, fi, t0, y0)
end

function ARKStepReset(arkode_mem, tR::realtype, yR::N_Vector)
    ccall((:ARKStepReset, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, N_Vector), arkode_mem, tR, yR)
end

function ARKStepSStolerances(arkode_mem, reltol::realtype, abstol::realtype)
    ccall((:ARKStepSStolerances, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, realtype), arkode_mem, reltol, abstol)
end

function ARKStepSVtolerances(arkode_mem, reltol::realtype, abstol::N_Vector)
    ccall((:ARKStepSVtolerances, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, N_Vector), arkode_mem, reltol, abstol)
end

function ARKStepWFtolerances(arkode_mem, efun::ARKEwtFn)
    ccall((:ARKStepWFtolerances, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKEwtFn), arkode_mem, efun)
end

function ARKStepResStolerance(arkode_mem, rabstol::realtype)
    ccall((:ARKStepResStolerance, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, rabstol)
end

function ARKStepResVtolerance(arkode_mem, rabstol::N_Vector)
    ccall((:ARKStepResVtolerance, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector), arkode_mem, rabstol)
end

function ARKStepResFtolerance(arkode_mem, rfun::ARKRwtFn)
    ccall((:ARKStepResFtolerance, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKRwtFn), arkode_mem, rfun)
end

function ARKStepSetLinearSolver(arkode_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:ARKStepSetLinearSolver, libsundials_arkode), Cint, (Ptr{Cvoid}, SUNLinearSolver, SUNMatrix), arkode_mem, LS, A)
end

function ARKStepSetMassLinearSolver(arkode_mem, LS::SUNLinearSolver, M::SUNMatrix, time_dep::Cint)
    ccall((:ARKStepSetMassLinearSolver, libsundials_arkode), Cint, (Ptr{Cvoid}, SUNLinearSolver, SUNMatrix, Cint), arkode_mem, LS, M, time_dep)
end

function ARKStepRootInit(arkode_mem, nrtfn::Cint, g::ARKRootFn)
    ccall((:ARKStepRootInit, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint, ARKRootFn), arkode_mem, nrtfn, g)
end

function ARKStepSetDefaults(arkode_mem)
    ccall((:ARKStepSetDefaults, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function ARKStepSetOptimalParams(arkode_mem)
    ccall((:ARKStepSetOptimalParams, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function ARKStepSetOrder(arkode_mem, maxord::Cint)
    ccall((:ARKStepSetOrder, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, maxord)
end

function ARKStepSetInterpolantType(arkode_mem, itype::Cint)
    ccall((:ARKStepSetInterpolantType, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, itype)
end

function ARKStepSetInterpolantDegree(arkode_mem, degree::Cint)
    ccall((:ARKStepSetInterpolantDegree, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, degree)
end

function ARKStepSetDenseOrder(arkode_mem, dord::Cint)
    ccall((:ARKStepSetDenseOrder, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, dord)
end

function ARKStepSetNonlinearSolver(arkode_mem, NLS::SUNNonlinearSolver)
    ccall((:ARKStepSetNonlinearSolver, libsundials_arkode), Cint, (Ptr{Cvoid}, SUNNonlinearSolver), arkode_mem, NLS)
end

function ARKStepSetNlsRhsFn(arkode_mem, nls_fi::ARKRhsFn)
    ccall((:ARKStepSetNlsRhsFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKRhsFn), arkode_mem, nls_fi)
end

function ARKStepSetLinear(arkode_mem, timedepend::Cint)
    ccall((:ARKStepSetLinear, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, timedepend)
end

function ARKStepSetNonlinear(arkode_mem)
    ccall((:ARKStepSetNonlinear, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function ARKStepSetExplicit(arkode_mem)
    ccall((:ARKStepSetExplicit, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function ARKStepSetImplicit(arkode_mem)
    ccall((:ARKStepSetImplicit, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function ARKStepSetImEx(arkode_mem)
    ccall((:ARKStepSetImEx, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function ARKStepSetDeduceImplicitRhs(arkode_mem, deduce::Cint)
    ccall((:ARKStepSetDeduceImplicitRhs, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, deduce)
end

function ARKStepSetTables(arkode_mem, q::Cint, p::Cint, Bi::ARKodeButcherTable, Be::ARKodeButcherTable)
    ccall((:ARKStepSetTables, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint, Cint, ARKodeButcherTable, ARKodeButcherTable), arkode_mem, q, p, Bi, Be)
end

function ARKStepSetTableNum(arkode_mem, itable::ARKODE_DIRKTableID, etable::ARKODE_ERKTableID)
    ccall((:ARKStepSetTableNum, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKODE_DIRKTableID, ARKODE_ERKTableID), arkode_mem, itable, etable)
end

function ARKStepSetTableName(arkode_mem, itable, etable)
    ccall((:ARKStepSetTableName, libsundials_arkode), Cint, (Ptr{Cvoid}, Cstring, Cstring), arkode_mem, itable, etable)
end

function ARKStepSetCFLFraction(arkode_mem, cfl_frac::realtype)
    ccall((:ARKStepSetCFLFraction, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, cfl_frac)
end

function ARKStepSetSafetyFactor(arkode_mem, safety::realtype)
    ccall((:ARKStepSetSafetyFactor, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, safety)
end

function ARKStepSetErrorBias(arkode_mem, bias::realtype)
    ccall((:ARKStepSetErrorBias, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, bias)
end

function ARKStepSetMaxGrowth(arkode_mem, mx_growth::realtype)
    ccall((:ARKStepSetMaxGrowth, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, mx_growth)
end

function ARKStepSetMinReduction(arkode_mem, eta_min::realtype)
    ccall((:ARKStepSetMinReduction, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, eta_min)
end

function ARKStepSetFixedStepBounds(arkode_mem, lb::realtype, ub::realtype)
    ccall((:ARKStepSetFixedStepBounds, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, realtype), arkode_mem, lb, ub)
end

function ARKStepSetAdaptivityMethod(arkode_mem, imethod::Cint, idefault::Cint, pq::Cint, adapt_params)
    ccall((:ARKStepSetAdaptivityMethod, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint, Cint, Cint, Ptr{realtype}), arkode_mem, imethod, idefault, pq, adapt_params)
end

function ARKStepSetAdaptivityFn(arkode_mem, hfun::ARKAdaptFn, h_data)
    ccall((:ARKStepSetAdaptivityFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKAdaptFn, Ptr{Cvoid}), arkode_mem, hfun, h_data)
end

function ARKStepSetMaxFirstGrowth(arkode_mem, etamx1::realtype)
    ccall((:ARKStepSetMaxFirstGrowth, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, etamx1)
end

function ARKStepSetMaxEFailGrowth(arkode_mem, etamxf::realtype)
    ccall((:ARKStepSetMaxEFailGrowth, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, etamxf)
end

function ARKStepSetSmallNumEFails(arkode_mem, small_nef::Cint)
    ccall((:ARKStepSetSmallNumEFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, small_nef)
end

function ARKStepSetMaxCFailGrowth(arkode_mem, etacf::realtype)
    ccall((:ARKStepSetMaxCFailGrowth, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, etacf)
end

function ARKStepSetNonlinCRDown(arkode_mem, crdown::realtype)
    ccall((:ARKStepSetNonlinCRDown, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, crdown)
end

function ARKStepSetNonlinRDiv(arkode_mem, rdiv::realtype)
    ccall((:ARKStepSetNonlinRDiv, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, rdiv)
end

function ARKStepSetDeltaGammaMax(arkode_mem, dgmax::realtype)
    ccall((:ARKStepSetDeltaGammaMax, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, dgmax)
end

function ARKStepSetLSetupFrequency(arkode_mem, msbp::Cint)
    ccall((:ARKStepSetLSetupFrequency, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, msbp)
end

function ARKStepSetPredictorMethod(arkode_mem, method::Cint)
    ccall((:ARKStepSetPredictorMethod, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, method)
end

function ARKStepSetStabilityFn(arkode_mem, EStab::ARKExpStabFn, estab_data)
    ccall((:ARKStepSetStabilityFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKExpStabFn, Ptr{Cvoid}), arkode_mem, EStab, estab_data)
end

function ARKStepSetMaxErrTestFails(arkode_mem, maxnef::Cint)
    ccall((:ARKStepSetMaxErrTestFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, maxnef)
end

function ARKStepSetMaxNonlinIters(arkode_mem, maxcor::Cint)
    ccall((:ARKStepSetMaxNonlinIters, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, maxcor)
end

function ARKStepSetMaxConvFails(arkode_mem, maxncf::Cint)
    ccall((:ARKStepSetMaxConvFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, maxncf)
end

function ARKStepSetNonlinConvCoef(arkode_mem, nlscoef::realtype)
    ccall((:ARKStepSetNonlinConvCoef, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, nlscoef)
end

function ARKStepSetConstraints(arkode_mem, constraints::N_Vector)
    ccall((:ARKStepSetConstraints, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector), arkode_mem, constraints)
end

function ARKStepSetMaxNumSteps(arkode_mem, mxsteps::Clong)
    ccall((:ARKStepSetMaxNumSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Clong), arkode_mem, mxsteps)
end

function ARKStepSetMaxHnilWarns(arkode_mem, mxhnil::Cint)
    ccall((:ARKStepSetMaxHnilWarns, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, mxhnil)
end

function ARKStepSetInitStep(arkode_mem, hin::realtype)
    ccall((:ARKStepSetInitStep, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, hin)
end

function ARKStepSetMinStep(arkode_mem, hmin::realtype)
    ccall((:ARKStepSetMinStep, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, hmin)
end

function ARKStepSetMaxStep(arkode_mem, hmax::realtype)
    ccall((:ARKStepSetMaxStep, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, hmax)
end

function ARKStepSetInterpolateStopTime(arkode_mem, interp::Cint)
    ccall((:ARKStepSetInterpolateStopTime, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, interp)
end

function ARKStepSetStopTime(arkode_mem, tstop::realtype)
    ccall((:ARKStepSetStopTime, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, tstop)
end

function ARKStepClearStopTime(arkode_mem)
    ccall((:ARKStepClearStopTime, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function ARKStepSetFixedStep(arkode_mem, hfixed::realtype)
    ccall((:ARKStepSetFixedStep, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, hfixed)
end

function ARKStepSetMaxNumConstrFails(arkode_mem, maxfails::Cint)
    ccall((:ARKStepSetMaxNumConstrFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, maxfails)
end

function ARKStepSetRootDirection(arkode_mem, rootdir)
    ccall((:ARKStepSetRootDirection, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Cint}), arkode_mem, rootdir)
end

function ARKStepSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKStepSetNoInactiveRootWarn, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function ARKStepSetErrHandlerFn(arkode_mem, ehfun::ARKErrHandlerFn, eh_data)
    ccall((:ARKStepSetErrHandlerFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKErrHandlerFn, Ptr{Cvoid}), arkode_mem, ehfun, eh_data)
end

function ARKStepSetErrFile(arkode_mem, errfp)
    ccall((:ARKStepSetErrFile, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, errfp)
end

function ARKStepSetUserData(arkode_mem, user_data)
    ccall((:ARKStepSetUserData, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Cvoid}), arkode_mem, user_data)
end

function ARKStepSetDiagnostics(arkode_mem, diagfp)
    ccall((:ARKStepSetDiagnostics, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, diagfp)
end

function ARKStepSetPostprocessStepFn(arkode_mem, ProcessStep::ARKPostProcessFn)
    ccall((:ARKStepSetPostprocessStepFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKPostProcessFn), arkode_mem, ProcessStep)
end

function ARKStepSetPostprocessStageFn(arkode_mem, ProcessStage::ARKPostProcessFn)
    ccall((:ARKStepSetPostprocessStageFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKPostProcessFn), arkode_mem, ProcessStage)
end

function ARKStepSetStagePredictFn(arkode_mem, PredictStage::ARKStagePredictFn)
    ccall((:ARKStepSetStagePredictFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKStagePredictFn), arkode_mem, PredictStage)
end

function ARKStepSetJacFn(arkode_mem, jac::ARKLsJacFn)
    ccall((:ARKStepSetJacFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKLsJacFn), arkode_mem, jac)
end

function ARKStepSetMassFn(arkode_mem, mass::ARKLsMassFn)
    ccall((:ARKStepSetMassFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKLsMassFn), arkode_mem, mass)
end

function ARKStepSetJacEvalFrequency(arkode_mem, msbj::Clong)
    ccall((:ARKStepSetJacEvalFrequency, libsundials_arkode), Cint, (Ptr{Cvoid}, Clong), arkode_mem, msbj)
end

function ARKStepSetLinearSolutionScaling(arkode_mem, onoff::Cint)
    ccall((:ARKStepSetLinearSolutionScaling, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, onoff)
end

function ARKStepSetEpsLin(arkode_mem, eplifac::realtype)
    ccall((:ARKStepSetEpsLin, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, eplifac)
end

function ARKStepSetMassEpsLin(arkode_mem, eplifac::realtype)
    ccall((:ARKStepSetMassEpsLin, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, eplifac)
end

function ARKStepSetLSNormFactor(arkode_mem, nrmfac::realtype)
    ccall((:ARKStepSetLSNormFactor, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, nrmfac)
end

function ARKStepSetMassLSNormFactor(arkode_mem, nrmfac::realtype)
    ccall((:ARKStepSetMassLSNormFactor, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, nrmfac)
end

function ARKStepSetPreconditioner(arkode_mem, psetup::ARKLsPrecSetupFn, psolve::ARKLsPrecSolveFn)
    ccall((:ARKStepSetPreconditioner, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKLsPrecSetupFn, ARKLsPrecSolveFn), arkode_mem, psetup, psolve)
end

function ARKStepSetMassPreconditioner(arkode_mem, psetup::ARKLsMassPrecSetupFn, psolve::ARKLsMassPrecSolveFn)
    ccall((:ARKStepSetMassPreconditioner, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKLsMassPrecSetupFn, ARKLsMassPrecSolveFn), arkode_mem, psetup, psolve)
end

function ARKStepSetJacTimes(arkode_mem, jtsetup::ARKLsJacTimesSetupFn, jtimes::ARKLsJacTimesVecFn)
    ccall((:ARKStepSetJacTimes, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKLsJacTimesSetupFn, ARKLsJacTimesVecFn), arkode_mem, jtsetup, jtimes)
end

function ARKStepSetJacTimesRhsFn(arkode_mem, jtimesRhsFn::ARKRhsFn)
    ccall((:ARKStepSetJacTimesRhsFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKRhsFn), arkode_mem, jtimesRhsFn)
end

function ARKStepSetMassTimes(arkode_mem, msetup::ARKLsMassTimesSetupFn, mtimes::ARKLsMassTimesVecFn, mtimes_data)
    ccall((:ARKStepSetMassTimes, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKLsMassTimesSetupFn, ARKLsMassTimesVecFn, Ptr{Cvoid}), arkode_mem, msetup, mtimes, mtimes_data)
end

function ARKStepSetLinSysFn(arkode_mem, linsys::ARKLsLinSysFn)
    ccall((:ARKStepSetLinSysFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKLsLinSysFn), arkode_mem, linsys)
end

function ARKStepEvolve(arkode_mem, tout::realtype, yout::N_Vector, tret, itask::Cint)
    ccall((:ARKStepEvolve, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, N_Vector, Ptr{realtype}, Cint), arkode_mem, tout, yout, tret, itask)
end

function ARKStepGetDky(arkode_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:ARKStepGetDky, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, Cint, N_Vector), arkode_mem, t, k, dky)
end

function ARKStepComputeState(arkode_mem, zcor::N_Vector, z::N_Vector)
    ccall((:ARKStepComputeState, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector, N_Vector), arkode_mem, zcor, z)
end

function ARKStepGetNumExpSteps(arkode_mem, expsteps)
    ccall((:ARKStepGetNumExpSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, expsteps)
end

function ARKStepGetNumAccSteps(arkode_mem, accsteps)
    ccall((:ARKStepGetNumAccSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, accsteps)
end

function ARKStepGetNumStepAttempts(arkode_mem, step_attempts)
    ccall((:ARKStepGetNumStepAttempts, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, step_attempts)
end

function ARKStepGetNumRhsEvals(arkode_mem, nfe_evals, nfi_evals)
    ccall((:ARKStepGetNumRhsEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), arkode_mem, nfe_evals, nfi_evals)
end

function ARKStepGetNumLinSolvSetups(arkode_mem, nlinsetups)
    ccall((:ARKStepGetNumLinSolvSetups, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nlinsetups)
end

function ARKStepGetNumErrTestFails(arkode_mem, netfails)
    ccall((:ARKStepGetNumErrTestFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, netfails)
end

function ARKStepGetCurrentButcherTables(arkode_mem, Bi, Be)
    ccall((:ARKStepGetCurrentButcherTables, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{ARKodeButcherTable}, Ptr{ARKodeButcherTable}), arkode_mem, Bi, Be)
end

function ARKStepGetEstLocalErrors(arkode_mem, ele::N_Vector)
    ccall((:ARKStepGetEstLocalErrors, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector), arkode_mem, ele)
end

function ARKStepGetWorkSpace(arkode_mem, lenrw, leniw)
    ccall((:ARKStepGetWorkSpace, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrw, leniw)
end

function ARKStepGetNumSteps(arkode_mem, nsteps)
    ccall((:ARKStepGetNumSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nsteps)
end

function ARKStepGetActualInitStep(arkode_mem, hinused)
    ccall((:ARKStepGetActualInitStep, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, hinused)
end

function ARKStepGetLastStep(arkode_mem, hlast)
    ccall((:ARKStepGetLastStep, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, hlast)
end

function ARKStepGetCurrentStep(arkode_mem, hcur)
    ccall((:ARKStepGetCurrentStep, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, hcur)
end

function ARKStepGetCurrentTime(arkode_mem, tcur)
    ccall((:ARKStepGetCurrentTime, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, tcur)
end

function ARKStepGetCurrentState(arkode_mem, state)
    ccall((:ARKStepGetCurrentState, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{N_Vector}), arkode_mem, state)
end

function ARKStepGetCurrentGamma(arkode_mem, gamma)
    ccall((:ARKStepGetCurrentGamma, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, gamma)
end

function ARKStepGetCurrentMassMatrix(arkode_mem, M)
    ccall((:ARKStepGetCurrentMassMatrix, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{SUNMatrix}), arkode_mem, M)
end

function ARKStepGetTolScaleFactor(arkode_mem, tolsfac)
    ccall((:ARKStepGetTolScaleFactor, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, tolsfac)
end

function ARKStepGetErrWeights(arkode_mem, eweight::N_Vector)
    ccall((:ARKStepGetErrWeights, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector), arkode_mem, eweight)
end

function ARKStepGetResWeights(arkode_mem, rweight::N_Vector)
    ccall((:ARKStepGetResWeights, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector), arkode_mem, rweight)
end

function ARKStepGetNumGEvals(arkode_mem, ngevals)
    ccall((:ARKStepGetNumGEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, ngevals)
end

function ARKStepGetRootInfo(arkode_mem, rootsfound)
    ccall((:ARKStepGetRootInfo, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Cint}), arkode_mem, rootsfound)
end

function ARKStepGetNumConstrFails(arkode_mem, nconstrfails)
    ccall((:ARKStepGetNumConstrFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nconstrfails)
end

function ARKStepGetUserData(arkode_mem, user_data)
    ccall((:ARKStepGetUserData, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Ptr{Cvoid}}), arkode_mem, user_data)
end

function ARKStepPrintAllStats(arkode_mem, outfile, fmt::SUNOutputFormat)
    ccall((:ARKStepPrintAllStats, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}, SUNOutputFormat), arkode_mem, outfile, fmt)
end

function ARKStepGetReturnFlagName(flag::Clong)
    ccall((:ARKStepGetReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function ARKStepWriteParameters(arkode_mem, fp)
    ccall((:ARKStepWriteParameters, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, fp)
end

function ARKStepWriteButcher(arkode_mem, fp)
    ccall((:ARKStepWriteButcher, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, fp)
end

function ARKStepGetTimestepperStats(arkode_mem, expsteps, accsteps, step_attempts, nfe_evals, nfi_evals, nlinsetups, netfails)
    ccall((:ARKStepGetTimestepperStats, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}), arkode_mem, expsteps, accsteps, step_attempts, nfe_evals, nfi_evals, nlinsetups, netfails)
end

function ARKStepGetStepStats(arkode_mem, nsteps, hinused, hlast, hcur, tcur)
    ccall((:ARKStepGetStepStats, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), arkode_mem, nsteps, hinused, hlast, hcur, tcur)
end

function ARKStepGetNonlinearSystemData(arkode_mem, tcur, zpred, z, Fi, gamma, sdata, user_data)
    ccall((:ARKStepGetNonlinearSystemData, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}, Ptr{N_Vector}, Ptr{Ptr{Cvoid}}), arkode_mem, tcur, zpred, z, Fi, gamma, sdata, user_data)
end

function ARKStepGetNumNonlinSolvIters(arkode_mem, nniters)
    ccall((:ARKStepGetNumNonlinSolvIters, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nniters)
end

function ARKStepGetNumNonlinSolvConvFails(arkode_mem, nnfails)
    ccall((:ARKStepGetNumNonlinSolvConvFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nnfails)
end

function ARKStepGetNonlinSolvStats(arkode_mem, nniters, nnfails)
    ccall((:ARKStepGetNonlinSolvStats, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), arkode_mem, nniters, nnfails)
end

function ARKStepGetNumStepSolveFails(arkode_mem, nncfails)
    ccall((:ARKStepGetNumStepSolveFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nncfails)
end

function ARKStepGetJac(arkode_mem, J)
    ccall((:ARKStepGetJac, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{SUNMatrix}), arkode_mem, J)
end

function ARKStepGetJacTime(arkode_mem, t_J)
    ccall((:ARKStepGetJacTime, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{sunrealtype}), arkode_mem, t_J)
end

function ARKStepGetJacNumSteps(arkode_mem, nst_J)
    ccall((:ARKStepGetJacNumSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nst_J)
end

function ARKStepGetLinWorkSpace(arkode_mem, lenrwLS, leniwLS)
    ccall((:ARKStepGetLinWorkSpace, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwLS, leniwLS)
end

function ARKStepGetNumJacEvals(arkode_mem, njevals)
    ccall((:ARKStepGetNumJacEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, njevals)
end

function ARKStepGetNumPrecEvals(arkode_mem, npevals)
    ccall((:ARKStepGetNumPrecEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, npevals)
end

function ARKStepGetNumPrecSolves(arkode_mem, npsolves)
    ccall((:ARKStepGetNumPrecSolves, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, npsolves)
end

function ARKStepGetNumLinIters(arkode_mem, nliters)
    ccall((:ARKStepGetNumLinIters, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nliters)
end

function ARKStepGetNumLinConvFails(arkode_mem, nlcfails)
    ccall((:ARKStepGetNumLinConvFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nlcfails)
end

function ARKStepGetNumJTSetupEvals(arkode_mem, njtsetups)
    ccall((:ARKStepGetNumJTSetupEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, njtsetups)
end

function ARKStepGetNumJtimesEvals(arkode_mem, njvevals)
    ccall((:ARKStepGetNumJtimesEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, njvevals)
end

function ARKStepGetNumLinRhsEvals(arkode_mem, nfevalsLS)
    ccall((:ARKStepGetNumLinRhsEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nfevalsLS)
end

function ARKStepGetLastLinFlag(arkode_mem, flag)
    ccall((:ARKStepGetLastLinFlag, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, flag)
end

function ARKStepGetMassWorkSpace(arkode_mem, lenrwMLS, leniwMLS)
    ccall((:ARKStepGetMassWorkSpace, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwMLS, leniwMLS)
end

function ARKStepGetNumMassSetups(arkode_mem, nmsetups)
    ccall((:ARKStepGetNumMassSetups, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nmsetups)
end

function ARKStepGetNumMassMultSetups(arkode_mem, nmvsetups)
    ccall((:ARKStepGetNumMassMultSetups, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nmvsetups)
end

function ARKStepGetNumMassMult(arkode_mem, nmvevals)
    ccall((:ARKStepGetNumMassMult, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nmvevals)
end

function ARKStepGetNumMassSolves(arkode_mem, nmsolves)
    ccall((:ARKStepGetNumMassSolves, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nmsolves)
end

function ARKStepGetNumMassPrecEvals(arkode_mem, nmpevals)
    ccall((:ARKStepGetNumMassPrecEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nmpevals)
end

function ARKStepGetNumMassPrecSolves(arkode_mem, nmpsolves)
    ccall((:ARKStepGetNumMassPrecSolves, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nmpsolves)
end

function ARKStepGetNumMassIters(arkode_mem, nmiters)
    ccall((:ARKStepGetNumMassIters, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nmiters)
end

function ARKStepGetNumMassConvFails(arkode_mem, nmcfails)
    ccall((:ARKStepGetNumMassConvFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nmcfails)
end

function ARKStepGetNumMTSetups(arkode_mem, nmtsetups)
    ccall((:ARKStepGetNumMTSetups, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nmtsetups)
end

function ARKStepGetLastMassFlag(arkode_mem, flag)
    ccall((:ARKStepGetLastMassFlag, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, flag)
end

function ARKStepGetLinReturnFlagName(flag::Clong)
    ccall((:ARKStepGetLinReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function ARKStepFree(arkode_mem)
    ccall((:ARKStepFree, libsundials_arkode), Cvoid, (Ptr{Ptr{Cvoid}},), arkode_mem)
end

function ARKStepPrintMem(arkode_mem, outfile)
    ccall((:ARKStepPrintMem, libsundials_arkode), Cvoid, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, outfile)
end

function ARKStepCreateMRIStepInnerStepper(arkode_mem, stepper)
    ccall((:ARKStepCreateMRIStepInnerStepper, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{MRIStepInnerStepper}), arkode_mem, stepper)
end

function ARKStepSetRelaxFn(arkode_mem, rfn::ARKRelaxFn, rjac::ARKRelaxJacFn)
    ccall((:ARKStepSetRelaxFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKRelaxFn, ARKRelaxJacFn), arkode_mem, rfn, rjac)
end

function ARKStepSetRelaxEtaFail(arkode_mem, eta_rf::sunrealtype)
    ccall((:ARKStepSetRelaxEtaFail, libsundials_arkode), Cint, (Ptr{Cvoid}, sunrealtype), arkode_mem, eta_rf)
end

function ARKStepSetRelaxLowerBound(arkode_mem, lower::sunrealtype)
    ccall((:ARKStepSetRelaxLowerBound, libsundials_arkode), Cint, (Ptr{Cvoid}, sunrealtype), arkode_mem, lower)
end

function ARKStepSetRelaxMaxFails(arkode_mem, max_fails::Cint)
    ccall((:ARKStepSetRelaxMaxFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, max_fails)
end

function ARKStepSetRelaxMaxIters(arkode_mem, max_iters::Cint)
    ccall((:ARKStepSetRelaxMaxIters, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, max_iters)
end

function ARKStepSetRelaxSolver(arkode_mem, solver::ARKRelaxSolver)
    ccall((:ARKStepSetRelaxSolver, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKRelaxSolver), arkode_mem, solver)
end

function ARKStepSetRelaxResTol(arkode_mem, res_tol::sunrealtype)
    ccall((:ARKStepSetRelaxResTol, libsundials_arkode), Cint, (Ptr{Cvoid}, sunrealtype), arkode_mem, res_tol)
end

function ARKStepSetRelaxTol(arkode_mem, rel_tol::sunrealtype, abs_tol::sunrealtype)
    ccall((:ARKStepSetRelaxTol, libsundials_arkode), Cint, (Ptr{Cvoid}, sunrealtype, sunrealtype), arkode_mem, rel_tol, abs_tol)
end

function ARKStepSetRelaxUpperBound(arkode_mem, upper::sunrealtype)
    ccall((:ARKStepSetRelaxUpperBound, libsundials_arkode), Cint, (Ptr{Cvoid}, sunrealtype), arkode_mem, upper)
end

function ARKStepGetNumRelaxFnEvals(arkode_mem, r_evals)
    ccall((:ARKStepGetNumRelaxFnEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, r_evals)
end

function ARKStepGetNumRelaxJacEvals(arkode_mem, J_evals)
    ccall((:ARKStepGetNumRelaxJacEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, J_evals)
end

function ARKStepGetNumRelaxFails(arkode_mem, relax_fails)
    ccall((:ARKStepGetNumRelaxFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, relax_fails)
end

function ARKStepGetNumRelaxBoundFails(arkode_mem, fails)
    ccall((:ARKStepGetNumRelaxBoundFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, fails)
end

function ARKStepGetNumRelaxSolveFails(arkode_mem, fails)
    ccall((:ARKStepGetNumRelaxSolveFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, fails)
end

function ARKStepGetNumRelaxSolveIters(arkode_mem, iters)
    ccall((:ARKStepGetNumRelaxSolveIters, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, iters)
end

function ARKBandPrecInit(arkode_mem, N::sunindextype, mu::sunindextype, ml::sunindextype)
    ccall((:ARKBandPrecInit, libsundials_arkode), Cint, (Ptr{Cvoid}, sunindextype, sunindextype, sunindextype), arkode_mem, N, mu, ml)
end

function ARKBandPrecGetWorkSpace(arkode_mem, lenrwLS, leniwLS)
    ccall((:ARKBandPrecGetWorkSpace, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwLS, leniwLS)
end

function ARKBandPrecGetNumRhsEvals(arkode_mem, nfevalsBP)
    ccall((:ARKBandPrecGetNumRhsEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nfevalsBP)
end

function ARKBBDPrecInit(arkode_mem, Nlocal::sunindextype, mudq::sunindextype, mldq::sunindextype, mukeep::sunindextype, mlkeep::sunindextype, dqrely::realtype, gloc::ARKLocalFn, cfn::ARKCommFn)
    ccall((:ARKBBDPrecInit, libsundials_arkode), Cint, (Ptr{Cvoid}, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, ARKLocalFn, ARKCommFn), arkode_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn)
end

function ARKBBDPrecReInit(arkode_mem, mudq::sunindextype, mldq::sunindextype, dqrely::realtype)
    ccall((:ARKBBDPrecReInit, libsundials_arkode), Cint, (Ptr{Cvoid}, sunindextype, sunindextype, realtype), arkode_mem, mudq, mldq, dqrely)
end

function ARKBBDPrecGetWorkSpace(arkode_mem, lenrwBBDP, leniwBBDP)
    ccall((:ARKBBDPrecGetWorkSpace, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwBBDP, leniwBBDP)
end

function ARKBBDPrecGetNumGfnEvals(arkode_mem, ngevalsBBDP)
    ccall((:ARKBBDPrecGetNumGfnEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, ngevalsBBDP)
end

function ARKodeButcherTable_Alloc(stages::Cint, embedded::Cint)
    ccall((:ARKodeButcherTable_Alloc, libsundials_arkode), ARKodeButcherTable, (Cint, Cint), stages, embedded)
end

function ARKodeButcherTable_Create(s::Cint, q::Cint, p::Cint, c, A, b, d)
    ccall((:ARKodeButcherTable_Create, libsundials_arkode), ARKodeButcherTable, (Cint, Cint, Cint, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), s, q, p, c, A, b, d)
end

function ARKodeButcherTable_Copy(B::ARKodeButcherTable)
    ccall((:ARKodeButcherTable_Copy, libsundials_arkode), ARKodeButcherTable, (ARKodeButcherTable,), B)
end

function ARKodeButcherTable_Space(B::ARKodeButcherTable, liw, lrw)
    ccall((:ARKodeButcherTable_Space, libsundials_arkode), Cvoid, (ARKodeButcherTable, Ptr{sunindextype}, Ptr{sunindextype}), B, liw, lrw)
end

function ARKodeButcherTable_Free(B::ARKodeButcherTable)
    ccall((:ARKodeButcherTable_Free, libsundials_arkode), Cvoid, (ARKodeButcherTable,), B)
end

function ARKodeButcherTable_Write(B::ARKodeButcherTable, outfile)
    ccall((:ARKodeButcherTable_Write, libsundials_arkode), Cvoid, (ARKodeButcherTable, Ptr{Libc.FILE}), B, outfile)
end

function ARKodeButcherTable_CheckOrder(B::ARKodeButcherTable, q, p, outfile)
    ccall((:ARKodeButcherTable_CheckOrder, libsundials_arkode), Cint, (ARKodeButcherTable, Ptr{Cint}, Ptr{Cint}, Ptr{Libc.FILE}), B, q, p, outfile)
end

function ARKodeButcherTable_CheckARKOrder(B1::ARKodeButcherTable, B2::ARKodeButcherTable, q, p, outfile)
    ccall((:ARKodeButcherTable_CheckARKOrder, libsundials_arkode), Cint, (ARKodeButcherTable, ARKodeButcherTable, Ptr{Cint}, Ptr{Cint}, Ptr{Libc.FILE}), B1, B2, q, p, outfile)
end

function ARKodeButcherTable_LoadDIRK(imethod::ARKODE_DIRKTableID)
    ccall((:ARKodeButcherTable_LoadDIRK, libsundials_arkode), ARKodeButcherTable, (ARKODE_DIRKTableID,), imethod)
end

function ARKodeButcherTable_LoadDIRKByName(imethod)
    ccall((:ARKodeButcherTable_LoadDIRKByName, libsundials_arkode), ARKodeButcherTable, (Cstring,), imethod)
end

function ARKodeButcherTable_LoadERK(emethod::ARKODE_ERKTableID)
    ccall((:ARKodeButcherTable_LoadERK, libsundials_arkode), ARKodeButcherTable, (ARKODE_ERKTableID,), emethod)
end

function ARKodeButcherTable_LoadERKByName(emethod)
    ccall((:ARKodeButcherTable_LoadERKByName, libsundials_arkode), ARKodeButcherTable, (Cstring,), emethod)
end

function ERKStepCreate(f::ARKRhsFn, t0::realtype, y0::N_Vector, sunctx::SUNContext)
    ccall((:ERKStepCreate, libsundials_arkode), Ptr{ERKStepMem}, (ARKRhsFn, realtype, N_Vector, SUNContext), f, t0, y0, sunctx)
end

function ERKStepResize(arkode_mem, ynew::N_Vector, hscale::realtype, t0::realtype, resize::ARKVecResizeFn, resize_data)
    ccall((:ERKStepResize, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector, realtype, realtype, ARKVecResizeFn, Ptr{Cvoid}), arkode_mem, ynew, hscale, t0, resize, resize_data)
end

function ERKStepReInit(arkode_mem, f::ARKRhsFn, t0::realtype, y0::N_Vector)
    ccall((:ERKStepReInit, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKRhsFn, realtype, N_Vector), arkode_mem, f, t0, y0)
end

function ERKStepReset(arkode_mem, tR::realtype, yR::N_Vector)
    ccall((:ERKStepReset, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, N_Vector), arkode_mem, tR, yR)
end

function ERKStepSStolerances(arkode_mem, reltol::realtype, abstol::realtype)
    ccall((:ERKStepSStolerances, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, realtype), arkode_mem, reltol, abstol)
end

function ERKStepSVtolerances(arkode_mem, reltol::realtype, abstol::N_Vector)
    ccall((:ERKStepSVtolerances, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, N_Vector), arkode_mem, reltol, abstol)
end

function ERKStepWFtolerances(arkode_mem, efun::ARKEwtFn)
    ccall((:ERKStepWFtolerances, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKEwtFn), arkode_mem, efun)
end

function ERKStepRootInit(arkode_mem, nrtfn::Cint, g::ARKRootFn)
    ccall((:ERKStepRootInit, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint, ARKRootFn), arkode_mem, nrtfn, g)
end

function ERKStepSetDefaults(arkode_mem)
    ccall((:ERKStepSetDefaults, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function ERKStepSetOrder(arkode_mem, maxord::Cint)
    ccall((:ERKStepSetOrder, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, maxord)
end

function ERKStepSetInterpolantType(arkode_mem, itype::Cint)
    ccall((:ERKStepSetInterpolantType, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, itype)
end

function ERKStepSetInterpolantDegree(arkode_mem, degree::Cint)
    ccall((:ERKStepSetInterpolantDegree, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, degree)
end

function ERKStepSetDenseOrder(arkode_mem, dord::Cint)
    ccall((:ERKStepSetDenseOrder, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, dord)
end

function ERKStepSetTable(arkode_mem, B::ARKodeButcherTable)
    ccall((:ERKStepSetTable, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKodeButcherTable), arkode_mem, B)
end

function ERKStepSetTableNum(arkode_mem, etable::ARKODE_ERKTableID)
    ccall((:ERKStepSetTableNum, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKODE_ERKTableID), arkode_mem, etable)
end

function ERKStepSetTableName(arkode_mem, etable)
    ccall((:ERKStepSetTableName, libsundials_arkode), Cint, (Ptr{Cvoid}, Cstring), arkode_mem, etable)
end

function ERKStepSetCFLFraction(arkode_mem, cfl_frac::realtype)
    ccall((:ERKStepSetCFLFraction, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, cfl_frac)
end

function ERKStepSetSafetyFactor(arkode_mem, safety::realtype)
    ccall((:ERKStepSetSafetyFactor, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, safety)
end

function ERKStepSetErrorBias(arkode_mem, bias::realtype)
    ccall((:ERKStepSetErrorBias, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, bias)
end

function ERKStepSetMaxGrowth(arkode_mem, mx_growth::realtype)
    ccall((:ERKStepSetMaxGrowth, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, mx_growth)
end

function ERKStepSetMinReduction(arkode_mem, eta_min::realtype)
    ccall((:ERKStepSetMinReduction, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, eta_min)
end

function ERKStepSetFixedStepBounds(arkode_mem, lb::realtype, ub::realtype)
    ccall((:ERKStepSetFixedStepBounds, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, realtype), arkode_mem, lb, ub)
end

function ERKStepSetAdaptivityMethod(arkode_mem, imethod::Cint, idefault::Cint, pq::Cint, adapt_params)
    ccall((:ERKStepSetAdaptivityMethod, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint, Cint, Cint, Ptr{realtype}), arkode_mem, imethod, idefault, pq, adapt_params)
end

function ERKStepSetAdaptivityFn(arkode_mem, hfun::ARKAdaptFn, h_data)
    ccall((:ERKStepSetAdaptivityFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKAdaptFn, Ptr{Cvoid}), arkode_mem, hfun, h_data)
end

function ERKStepSetMaxFirstGrowth(arkode_mem, etamx1::realtype)
    ccall((:ERKStepSetMaxFirstGrowth, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, etamx1)
end

function ERKStepSetMaxEFailGrowth(arkode_mem, etamxf::realtype)
    ccall((:ERKStepSetMaxEFailGrowth, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, etamxf)
end

function ERKStepSetSmallNumEFails(arkode_mem, small_nef::Cint)
    ccall((:ERKStepSetSmallNumEFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, small_nef)
end

function ERKStepSetStabilityFn(arkode_mem, EStab::ARKExpStabFn, estab_data)
    ccall((:ERKStepSetStabilityFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKExpStabFn, Ptr{Cvoid}), arkode_mem, EStab, estab_data)
end

function ERKStepSetMaxErrTestFails(arkode_mem, maxnef::Cint)
    ccall((:ERKStepSetMaxErrTestFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, maxnef)
end

function ERKStepSetConstraints(arkode_mem, constraints::N_Vector)
    ccall((:ERKStepSetConstraints, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector), arkode_mem, constraints)
end

function ERKStepSetMaxNumSteps(arkode_mem, mxsteps::Clong)
    ccall((:ERKStepSetMaxNumSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Clong), arkode_mem, mxsteps)
end

function ERKStepSetMaxHnilWarns(arkode_mem, mxhnil::Cint)
    ccall((:ERKStepSetMaxHnilWarns, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, mxhnil)
end

function ERKStepSetInitStep(arkode_mem, hin::realtype)
    ccall((:ERKStepSetInitStep, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, hin)
end

function ERKStepSetMinStep(arkode_mem, hmin::realtype)
    ccall((:ERKStepSetMinStep, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, hmin)
end

function ERKStepSetMaxStep(arkode_mem, hmax::realtype)
    ccall((:ERKStepSetMaxStep, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, hmax)
end

function ERKStepSetInterpolateStopTime(arkode_mem, interp::Cint)
    ccall((:ERKStepSetInterpolateStopTime, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, interp)
end

function ERKStepSetStopTime(arkode_mem, tstop::realtype)
    ccall((:ERKStepSetStopTime, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, tstop)
end

function ERKStepClearStopTime(arkode_mem)
    ccall((:ERKStepClearStopTime, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function ERKStepSetFixedStep(arkode_mem, hfixed::realtype)
    ccall((:ERKStepSetFixedStep, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, hfixed)
end

function ERKStepSetMaxNumConstrFails(arkode_mem, maxfails::Cint)
    ccall((:ERKStepSetMaxNumConstrFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, maxfails)
end

function ERKStepSetRootDirection(arkode_mem, rootdir)
    ccall((:ERKStepSetRootDirection, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Cint}), arkode_mem, rootdir)
end

function ERKStepSetNoInactiveRootWarn(arkode_mem)
    ccall((:ERKStepSetNoInactiveRootWarn, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function ERKStepSetErrHandlerFn(arkode_mem, ehfun::ARKErrHandlerFn, eh_data)
    ccall((:ERKStepSetErrHandlerFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKErrHandlerFn, Ptr{Cvoid}), arkode_mem, ehfun, eh_data)
end

function ERKStepSetErrFile(arkode_mem, errfp)
    ccall((:ERKStepSetErrFile, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, errfp)
end

function ERKStepSetUserData(arkode_mem, user_data)
    ccall((:ERKStepSetUserData, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Cvoid}), arkode_mem, user_data)
end

function ERKStepSetDiagnostics(arkode_mem, diagfp)
    ccall((:ERKStepSetDiagnostics, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, diagfp)
end

function ERKStepSetPostprocessStepFn(arkode_mem, ProcessStep::ARKPostProcessFn)
    ccall((:ERKStepSetPostprocessStepFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKPostProcessFn), arkode_mem, ProcessStep)
end

function ERKStepSetPostprocessStageFn(arkode_mem, ProcessStage::ARKPostProcessFn)
    ccall((:ERKStepSetPostprocessStageFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKPostProcessFn), arkode_mem, ProcessStage)
end

function ERKStepEvolve(arkode_mem, tout::realtype, yout::N_Vector, tret, itask::Cint)
    ccall((:ERKStepEvolve, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, N_Vector, Ptr{realtype}, Cint), arkode_mem, tout, yout, tret, itask)
end

function ERKStepGetDky(arkode_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:ERKStepGetDky, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, Cint, N_Vector), arkode_mem, t, k, dky)
end

function ERKStepGetNumExpSteps(arkode_mem, expsteps)
    ccall((:ERKStepGetNumExpSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, expsteps)
end

function ERKStepGetNumAccSteps(arkode_mem, accsteps)
    ccall((:ERKStepGetNumAccSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, accsteps)
end

function ERKStepGetNumStepAttempts(arkode_mem, step_attempts)
    ccall((:ERKStepGetNumStepAttempts, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, step_attempts)
end

function ERKStepGetNumRhsEvals(arkode_mem, nfevals)
    ccall((:ERKStepGetNumRhsEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nfevals)
end

function ERKStepGetNumErrTestFails(arkode_mem, netfails)
    ccall((:ERKStepGetNumErrTestFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, netfails)
end

function ERKStepGetCurrentButcherTable(arkode_mem, B)
    ccall((:ERKStepGetCurrentButcherTable, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{ARKodeButcherTable}), arkode_mem, B)
end

function ERKStepGetEstLocalErrors(arkode_mem, ele::N_Vector)
    ccall((:ERKStepGetEstLocalErrors, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector), arkode_mem, ele)
end

function ERKStepGetWorkSpace(arkode_mem, lenrw, leniw)
    ccall((:ERKStepGetWorkSpace, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrw, leniw)
end

function ERKStepGetNumSteps(arkode_mem, nsteps)
    ccall((:ERKStepGetNumSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nsteps)
end

function ERKStepGetActualInitStep(arkode_mem, hinused)
    ccall((:ERKStepGetActualInitStep, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, hinused)
end

function ERKStepGetLastStep(arkode_mem, hlast)
    ccall((:ERKStepGetLastStep, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, hlast)
end

function ERKStepGetCurrentStep(arkode_mem, hcur)
    ccall((:ERKStepGetCurrentStep, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, hcur)
end

function ERKStepGetCurrentTime(arkode_mem, tcur)
    ccall((:ERKStepGetCurrentTime, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, tcur)
end

function ERKStepGetTolScaleFactor(arkode_mem, tolsfac)
    ccall((:ERKStepGetTolScaleFactor, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, tolsfac)
end

function ERKStepGetErrWeights(arkode_mem, eweight::N_Vector)
    ccall((:ERKStepGetErrWeights, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector), arkode_mem, eweight)
end

function ERKStepGetNumGEvals(arkode_mem, ngevals)
    ccall((:ERKStepGetNumGEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, ngevals)
end

function ERKStepGetRootInfo(arkode_mem, rootsfound)
    ccall((:ERKStepGetRootInfo, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Cint}), arkode_mem, rootsfound)
end

function ERKStepGetNumConstrFails(arkode_mem, nconstrfails)
    ccall((:ERKStepGetNumConstrFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nconstrfails)
end

function ERKStepGetUserData(arkode_mem, user_data)
    ccall((:ERKStepGetUserData, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Ptr{Cvoid}}), arkode_mem, user_data)
end

function ERKStepPrintAllStats(arkode_mem, outfile, fmt::SUNOutputFormat)
    ccall((:ERKStepPrintAllStats, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}, SUNOutputFormat), arkode_mem, outfile, fmt)
end

function ERKStepGetReturnFlagName(flag::Clong)
    ccall((:ERKStepGetReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function ERKStepWriteParameters(arkode_mem, fp)
    ccall((:ERKStepWriteParameters, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, fp)
end

function ERKStepWriteButcher(arkode_mem, fp)
    ccall((:ERKStepWriteButcher, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, fp)
end

function ERKStepGetTimestepperStats(arkode_mem, expsteps, accsteps, step_attempts, nfevals, netfails)
    ccall((:ERKStepGetTimestepperStats, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}), arkode_mem, expsteps, accsteps, step_attempts, nfevals, netfails)
end

function ERKStepGetStepStats(arkode_mem, nsteps, hinused, hlast, hcur, tcur)
    ccall((:ERKStepGetStepStats, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), arkode_mem, nsteps, hinused, hlast, hcur, tcur)
end

function ERKStepFree(arkode_mem)
    ccall((:ERKStepFree, libsundials_arkode), Cvoid, (Ptr{Ptr{Cvoid}},), arkode_mem)
end

function ERKStepPrintMem(arkode_mem, outfile)
    ccall((:ERKStepPrintMem, libsundials_arkode), Cvoid, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, outfile)
end

function ERKStepSetRelaxFn(arkode_mem, rfn::ARKRelaxFn, rjac::ARKRelaxJacFn)
    ccall((:ERKStepSetRelaxFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKRelaxFn, ARKRelaxJacFn), arkode_mem, rfn, rjac)
end

function ERKStepSetRelaxEtaFail(arkode_mem, eta_rf::sunrealtype)
    ccall((:ERKStepSetRelaxEtaFail, libsundials_arkode), Cint, (Ptr{Cvoid}, sunrealtype), arkode_mem, eta_rf)
end

function ERKStepSetRelaxLowerBound(arkode_mem, lower::sunrealtype)
    ccall((:ERKStepSetRelaxLowerBound, libsundials_arkode), Cint, (Ptr{Cvoid}, sunrealtype), arkode_mem, lower)
end

function ERKStepSetRelaxMaxFails(arkode_mem, max_fails::Cint)
    ccall((:ERKStepSetRelaxMaxFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, max_fails)
end

function ERKStepSetRelaxMaxIters(arkode_mem, max_iters::Cint)
    ccall((:ERKStepSetRelaxMaxIters, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, max_iters)
end

function ERKStepSetRelaxSolver(arkode_mem, solver::ARKRelaxSolver)
    ccall((:ERKStepSetRelaxSolver, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKRelaxSolver), arkode_mem, solver)
end

function ERKStepSetRelaxResTol(arkode_mem, res_tol::sunrealtype)
    ccall((:ERKStepSetRelaxResTol, libsundials_arkode), Cint, (Ptr{Cvoid}, sunrealtype), arkode_mem, res_tol)
end

function ERKStepSetRelaxTol(arkode_mem, rel_tol::sunrealtype, abs_tol::sunrealtype)
    ccall((:ERKStepSetRelaxTol, libsundials_arkode), Cint, (Ptr{Cvoid}, sunrealtype, sunrealtype), arkode_mem, rel_tol, abs_tol)
end

function ERKStepSetRelaxUpperBound(arkode_mem, upper::sunrealtype)
    ccall((:ERKStepSetRelaxUpperBound, libsundials_arkode), Cint, (Ptr{Cvoid}, sunrealtype), arkode_mem, upper)
end

function ERKStepGetNumRelaxFnEvals(arkode_mem, r_evals)
    ccall((:ERKStepGetNumRelaxFnEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, r_evals)
end

function ERKStepGetNumRelaxJacEvals(arkode_mem, J_evals)
    ccall((:ERKStepGetNumRelaxJacEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, J_evals)
end

function ERKStepGetNumRelaxFails(arkode_mem, relax_fails)
    ccall((:ERKStepGetNumRelaxFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, relax_fails)
end

function ERKStepGetNumRelaxBoundFails(arkode_mem, fails)
    ccall((:ERKStepGetNumRelaxBoundFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, fails)
end

function ERKStepGetNumRelaxSolveFails(arkode_mem, fails)
    ccall((:ERKStepGetNumRelaxSolveFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, fails)
end

function ERKStepGetNumRelaxSolveIters(arkode_mem, iters)
    ccall((:ERKStepGetNumRelaxSolveIters, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, iters)
end

function MRIStepCoupling_LoadTable(method::ARKODE_MRITableID)
    ccall((:MRIStepCoupling_LoadTable, libsundials_arkode), MRIStepCoupling, (ARKODE_MRITableID,), method)
end

function MRIStepCoupling_LoadTableByName(method)
    ccall((:MRIStepCoupling_LoadTableByName, libsundials_arkode), MRIStepCoupling, (Cstring,), method)
end

function MRIStepCoupling_Alloc(nmat::Cint, stages::Cint, type::MRISTEP_METHOD_TYPE)
    ccall((:MRIStepCoupling_Alloc, libsundials_arkode), MRIStepCoupling, (Cint, Cint, MRISTEP_METHOD_TYPE), nmat, stages, type)
end

function MRIStepCoupling_Create(nmat::Cint, stages::Cint, q::Cint, p::Cint, W, G, c)
    ccall((:MRIStepCoupling_Create, libsundials_arkode), MRIStepCoupling, (Cint, Cint, Cint, Cint, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), nmat, stages, q, p, W, G, c)
end

function MRIStepCoupling_MIStoMRI(B::ARKodeButcherTable, q::Cint, p::Cint)
    ccall((:MRIStepCoupling_MIStoMRI, libsundials_arkode), MRIStepCoupling, (ARKodeButcherTable, Cint, Cint), B, q, p)
end

function MRIStepCoupling_Copy(MRIC::MRIStepCoupling)
    ccall((:MRIStepCoupling_Copy, libsundials_arkode), MRIStepCoupling, (MRIStepCoupling,), MRIC)
end

function MRIStepCoupling_Space(MRIC::MRIStepCoupling, liw, lrw)
    ccall((:MRIStepCoupling_Space, libsundials_arkode), Cvoid, (MRIStepCoupling, Ptr{sunindextype}, Ptr{sunindextype}), MRIC, liw, lrw)
end

function MRIStepCoupling_Free(MRIC::MRIStepCoupling)
    ccall((:MRIStepCoupling_Free, libsundials_arkode), Cvoid, (MRIStepCoupling,), MRIC)
end

function MRIStepCoupling_Write(MRIC::MRIStepCoupling, outfile)
    ccall((:MRIStepCoupling_Write, libsundials_arkode), Cvoid, (MRIStepCoupling, Ptr{Libc.FILE}), MRIC, outfile)
end

function MRIStepCreate(fse::ARKRhsFn, fsi::ARKRhsFn, t0::realtype, y0::N_Vector, stepper::MRIStepInnerStepper, sunctx::SUNContext)
    ccall((:MRIStepCreate, libsundials_arkode), Ptr{MRIStepMem}, (ARKRhsFn, ARKRhsFn, realtype, N_Vector, MRIStepInnerStepper, SUNContext), fse, fsi, t0, y0, stepper, sunctx)
end

function MRIStepResize(arkode_mem, ynew::N_Vector, t0::realtype, resize::ARKVecResizeFn, resize_data)
    ccall((:MRIStepResize, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector, realtype, ARKVecResizeFn, Ptr{Cvoid}), arkode_mem, ynew, t0, resize, resize_data)
end

function MRIStepReInit(arkode_mem, fse::ARKRhsFn, fsi::ARKRhsFn, t0::realtype, y0::N_Vector)
    ccall((:MRIStepReInit, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKRhsFn, ARKRhsFn, realtype, N_Vector), arkode_mem, fse, fsi, t0, y0)
end

function MRIStepReset(arkode_mem, tR::realtype, yR::N_Vector)
    ccall((:MRIStepReset, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, N_Vector), arkode_mem, tR, yR)
end

function MRIStepSStolerances(arkode_mem, reltol::realtype, abstol::realtype)
    ccall((:MRIStepSStolerances, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, realtype), arkode_mem, reltol, abstol)
end

function MRIStepSVtolerances(arkode_mem, reltol::realtype, abstol::N_Vector)
    ccall((:MRIStepSVtolerances, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, N_Vector), arkode_mem, reltol, abstol)
end

function MRIStepWFtolerances(arkode_mem, efun::ARKEwtFn)
    ccall((:MRIStepWFtolerances, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKEwtFn), arkode_mem, efun)
end

function MRIStepSetLinearSolver(arkode_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:MRIStepSetLinearSolver, libsundials_arkode), Cint, (Ptr{Cvoid}, SUNLinearSolver, SUNMatrix), arkode_mem, LS, A)
end

function MRIStepRootInit(arkode_mem, nrtfn::Cint, g::ARKRootFn)
    ccall((:MRIStepRootInit, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint, ARKRootFn), arkode_mem, nrtfn, g)
end

function MRIStepSetDefaults(arkode_mem)
    ccall((:MRIStepSetDefaults, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function MRIStepSetOrder(arkode_mem, ord::Cint)
    ccall((:MRIStepSetOrder, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, ord)
end

function MRIStepSetInterpolantType(arkode_mem, itype::Cint)
    ccall((:MRIStepSetInterpolantType, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, itype)
end

function MRIStepSetInterpolantDegree(arkode_mem, degree::Cint)
    ccall((:MRIStepSetInterpolantDegree, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, degree)
end

function MRIStepSetDenseOrder(arkode_mem, dord::Cint)
    ccall((:MRIStepSetDenseOrder, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, dord)
end

function MRIStepSetNonlinearSolver(arkode_mem, NLS::SUNNonlinearSolver)
    ccall((:MRIStepSetNonlinearSolver, libsundials_arkode), Cint, (Ptr{Cvoid}, SUNNonlinearSolver), arkode_mem, NLS)
end

function MRIStepSetNlsRhsFn(arkode_mem, nls_fs::ARKRhsFn)
    ccall((:MRIStepSetNlsRhsFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKRhsFn), arkode_mem, nls_fs)
end

function MRIStepSetLinear(arkode_mem, timedepend::Cint)
    ccall((:MRIStepSetLinear, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, timedepend)
end

function MRIStepSetNonlinear(arkode_mem)
    ccall((:MRIStepSetNonlinear, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function MRIStepSetCoupling(arkode_mem, MRIC::MRIStepCoupling)
    ccall((:MRIStepSetCoupling, libsundials_arkode), Cint, (Ptr{Cvoid}, MRIStepCoupling), arkode_mem, MRIC)
end

function MRIStepSetMaxNumSteps(arkode_mem, mxsteps::Clong)
    ccall((:MRIStepSetMaxNumSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Clong), arkode_mem, mxsteps)
end

function MRIStepSetNonlinCRDown(arkode_mem, crdown::realtype)
    ccall((:MRIStepSetNonlinCRDown, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, crdown)
end

function MRIStepSetNonlinRDiv(arkode_mem, rdiv::realtype)
    ccall((:MRIStepSetNonlinRDiv, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, rdiv)
end

function MRIStepSetDeltaGammaMax(arkode_mem, dgmax::realtype)
    ccall((:MRIStepSetDeltaGammaMax, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, dgmax)
end

function MRIStepSetLSetupFrequency(arkode_mem, msbp::Cint)
    ccall((:MRIStepSetLSetupFrequency, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, msbp)
end

function MRIStepSetPredictorMethod(arkode_mem, method::Cint)
    ccall((:MRIStepSetPredictorMethod, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, method)
end

function MRIStepSetMaxNonlinIters(arkode_mem, maxcor::Cint)
    ccall((:MRIStepSetMaxNonlinIters, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, maxcor)
end

function MRIStepSetNonlinConvCoef(arkode_mem, nlscoef::realtype)
    ccall((:MRIStepSetNonlinConvCoef, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, nlscoef)
end

function MRIStepSetMaxHnilWarns(arkode_mem, mxhnil::Cint)
    ccall((:MRIStepSetMaxHnilWarns, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, mxhnil)
end

function MRIStepSetStopTime(arkode_mem, tstop::realtype)
    ccall((:MRIStepSetStopTime, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, tstop)
end

function MRIStepSetInterpolateStopTime(arkode_mem, interp::Cint)
    ccall((:MRIStepSetInterpolateStopTime, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, interp)
end

function MRIStepClearStopTime(arkode_mem)
    ccall((:MRIStepClearStopTime, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function MRIStepSetFixedStep(arkode_mem, hsfixed::realtype)
    ccall((:MRIStepSetFixedStep, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, hsfixed)
end

function MRIStepSetRootDirection(arkode_mem, rootdir)
    ccall((:MRIStepSetRootDirection, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Cint}), arkode_mem, rootdir)
end

function MRIStepSetNoInactiveRootWarn(arkode_mem)
    ccall((:MRIStepSetNoInactiveRootWarn, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function MRIStepSetErrHandlerFn(arkode_mem, ehfun::ARKErrHandlerFn, eh_data)
    ccall((:MRIStepSetErrHandlerFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKErrHandlerFn, Ptr{Cvoid}), arkode_mem, ehfun, eh_data)
end

function MRIStepSetErrFile(arkode_mem, errfp)
    ccall((:MRIStepSetErrFile, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, errfp)
end

function MRIStepSetUserData(arkode_mem, user_data)
    ccall((:MRIStepSetUserData, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Cvoid}), arkode_mem, user_data)
end

function MRIStepSetDiagnostics(arkode_mem, diagfp)
    ccall((:MRIStepSetDiagnostics, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, diagfp)
end

function MRIStepSetPostprocessStepFn(arkode_mem, ProcessStep::ARKPostProcessFn)
    ccall((:MRIStepSetPostprocessStepFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKPostProcessFn), arkode_mem, ProcessStep)
end

function MRIStepSetPostprocessStageFn(arkode_mem, ProcessStage::ARKPostProcessFn)
    ccall((:MRIStepSetPostprocessStageFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKPostProcessFn), arkode_mem, ProcessStage)
end

function MRIStepSetPreInnerFn(arkode_mem, prefn::MRIStepPreInnerFn)
    ccall((:MRIStepSetPreInnerFn, libsundials_arkode), Cint, (Ptr{Cvoid}, MRIStepPreInnerFn), arkode_mem, prefn)
end

function MRIStepSetPostInnerFn(arkode_mem, postfn::MRIStepPostInnerFn)
    ccall((:MRIStepSetPostInnerFn, libsundials_arkode), Cint, (Ptr{Cvoid}, MRIStepPostInnerFn), arkode_mem, postfn)
end

function MRIStepSetStagePredictFn(arkode_mem, PredictStage::ARKStagePredictFn)
    ccall((:MRIStepSetStagePredictFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKStagePredictFn), arkode_mem, PredictStage)
end

function MRIStepSetDeduceImplicitRhs(arkode_mem, deduce::Cint)
    ccall((:MRIStepSetDeduceImplicitRhs, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, deduce)
end

function MRIStepSetJacFn(arkode_mem, jac::ARKLsJacFn)
    ccall((:MRIStepSetJacFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKLsJacFn), arkode_mem, jac)
end

function MRIStepSetJacEvalFrequency(arkode_mem, msbj::Clong)
    ccall((:MRIStepSetJacEvalFrequency, libsundials_arkode), Cint, (Ptr{Cvoid}, Clong), arkode_mem, msbj)
end

function MRIStepSetLinearSolutionScaling(arkode_mem, onoff::Cint)
    ccall((:MRIStepSetLinearSolutionScaling, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, onoff)
end

function MRIStepSetEpsLin(arkode_mem, eplifac::realtype)
    ccall((:MRIStepSetEpsLin, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, eplifac)
end

function MRIStepSetLSNormFactor(arkode_mem, nrmfac::realtype)
    ccall((:MRIStepSetLSNormFactor, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, nrmfac)
end

function MRIStepSetPreconditioner(arkode_mem, psetup::ARKLsPrecSetupFn, psolve::ARKLsPrecSolveFn)
    ccall((:MRIStepSetPreconditioner, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKLsPrecSetupFn, ARKLsPrecSolveFn), arkode_mem, psetup, psolve)
end

function MRIStepSetJacTimes(arkode_mem, jtsetup::ARKLsJacTimesSetupFn, jtimes::ARKLsJacTimesVecFn)
    ccall((:MRIStepSetJacTimes, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKLsJacTimesSetupFn, ARKLsJacTimesVecFn), arkode_mem, jtsetup, jtimes)
end

function MRIStepSetJacTimesRhsFn(arkode_mem, jtimesRhsFn::ARKRhsFn)
    ccall((:MRIStepSetJacTimesRhsFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKRhsFn), arkode_mem, jtimesRhsFn)
end

function MRIStepSetLinSysFn(arkode_mem, linsys::ARKLsLinSysFn)
    ccall((:MRIStepSetLinSysFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKLsLinSysFn), arkode_mem, linsys)
end

function MRIStepEvolve(arkode_mem, tout::realtype, yout::N_Vector, tret, itask::Cint)
    ccall((:MRIStepEvolve, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, N_Vector, Ptr{realtype}, Cint), arkode_mem, tout, yout, tret, itask)
end

function MRIStepGetDky(arkode_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:MRIStepGetDky, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, Cint, N_Vector), arkode_mem, t, k, dky)
end

function MRIStepComputeState(arkode_mem, zcor::N_Vector, z::N_Vector)
    ccall((:MRIStepComputeState, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector, N_Vector), arkode_mem, zcor, z)
end

function MRIStepGetNumRhsEvals(arkode_mem, nfse_evals, nfsi_evals)
    ccall((:MRIStepGetNumRhsEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), arkode_mem, nfse_evals, nfsi_evals)
end

function MRIStepGetNumLinSolvSetups(arkode_mem, nlinsetups)
    ccall((:MRIStepGetNumLinSolvSetups, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nlinsetups)
end

function MRIStepGetCurrentCoupling(arkode_mem, MRIC)
    ccall((:MRIStepGetCurrentCoupling, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{MRIStepCoupling}), arkode_mem, MRIC)
end

function MRIStepGetWorkSpace(arkode_mem, lenrw, leniw)
    ccall((:MRIStepGetWorkSpace, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrw, leniw)
end

function MRIStepGetNumSteps(arkode_mem, nssteps)
    ccall((:MRIStepGetNumSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nssteps)
end

function MRIStepGetLastStep(arkode_mem, hlast)
    ccall((:MRIStepGetLastStep, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, hlast)
end

function MRIStepGetCurrentTime(arkode_mem, tcur)
    ccall((:MRIStepGetCurrentTime, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, tcur)
end

function MRIStepGetCurrentState(arkode_mem, state)
    ccall((:MRIStepGetCurrentState, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{N_Vector}), arkode_mem, state)
end

function MRIStepGetCurrentGamma(arkode_mem, gamma)
    ccall((:MRIStepGetCurrentGamma, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, gamma)
end

function MRIStepGetTolScaleFactor(arkode_mem, tolsfac)
    ccall((:MRIStepGetTolScaleFactor, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, tolsfac)
end

function MRIStepGetErrWeights(arkode_mem, eweight::N_Vector)
    ccall((:MRIStepGetErrWeights, libsundials_arkode), Cint, (Ptr{Cvoid}, N_Vector), arkode_mem, eweight)
end

function MRIStepGetNumGEvals(arkode_mem, ngevals)
    ccall((:MRIStepGetNumGEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, ngevals)
end

function MRIStepGetRootInfo(arkode_mem, rootsfound)
    ccall((:MRIStepGetRootInfo, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Cint}), arkode_mem, rootsfound)
end

function MRIStepGetLastInnerStepFlag(arkode_mem, flag)
    ccall((:MRIStepGetLastInnerStepFlag, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Cint}), arkode_mem, flag)
end

function MRIStepGetUserData(arkode_mem, user_data)
    ccall((:MRIStepGetUserData, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Ptr{Cvoid}}), arkode_mem, user_data)
end

function MRIStepPrintAllStats(arkode_mem, outfile, fmt::SUNOutputFormat)
    ccall((:MRIStepPrintAllStats, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}, SUNOutputFormat), arkode_mem, outfile, fmt)
end

function MRIStepGetReturnFlagName(flag::Clong)
    ccall((:MRIStepGetReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function MRIStepWriteParameters(arkode_mem, fp)
    ccall((:MRIStepWriteParameters, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, fp)
end

function MRIStepWriteCoupling(arkode_mem, fp)
    ccall((:MRIStepWriteCoupling, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, fp)
end

function MRIStepGetNonlinearSystemData(arkode_mem, tcur, zpred, z, F, gamma, sdata, user_data)
    ccall((:MRIStepGetNonlinearSystemData, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}, Ptr{N_Vector}, Ptr{Ptr{Cvoid}}), arkode_mem, tcur, zpred, z, F, gamma, sdata, user_data)
end

function MRIStepGetNumNonlinSolvIters(arkode_mem, nniters)
    ccall((:MRIStepGetNumNonlinSolvIters, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nniters)
end

function MRIStepGetNumNonlinSolvConvFails(arkode_mem, nnfails)
    ccall((:MRIStepGetNumNonlinSolvConvFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nnfails)
end

function MRIStepGetNonlinSolvStats(arkode_mem, nniters, nnfails)
    ccall((:MRIStepGetNonlinSolvStats, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), arkode_mem, nniters, nnfails)
end

function MRIStepGetNumStepSolveFails(arkode_mem, nncfails)
    ccall((:MRIStepGetNumStepSolveFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nncfails)
end

function MRIStepGetJac(arkode_mem, J)
    ccall((:MRIStepGetJac, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{SUNMatrix}), arkode_mem, J)
end

function MRIStepGetJacTime(arkode_mem, t_J)
    ccall((:MRIStepGetJacTime, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{sunrealtype}), arkode_mem, t_J)
end

function MRIStepGetJacNumSteps(arkode_mem, nst_J)
    ccall((:MRIStepGetJacNumSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nst_J)
end

function MRIStepGetLinWorkSpace(arkode_mem, lenrwLS, leniwLS)
    ccall((:MRIStepGetLinWorkSpace, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwLS, leniwLS)
end

function MRIStepGetNumJacEvals(arkode_mem, njevals)
    ccall((:MRIStepGetNumJacEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, njevals)
end

function MRIStepGetNumPrecEvals(arkode_mem, npevals)
    ccall((:MRIStepGetNumPrecEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, npevals)
end

function MRIStepGetNumPrecSolves(arkode_mem, npsolves)
    ccall((:MRIStepGetNumPrecSolves, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, npsolves)
end

function MRIStepGetNumLinIters(arkode_mem, nliters)
    ccall((:MRIStepGetNumLinIters, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nliters)
end

function MRIStepGetNumLinConvFails(arkode_mem, nlcfails)
    ccall((:MRIStepGetNumLinConvFails, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nlcfails)
end

function MRIStepGetNumJTSetupEvals(arkode_mem, njtsetups)
    ccall((:MRIStepGetNumJTSetupEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, njtsetups)
end

function MRIStepGetNumJtimesEvals(arkode_mem, njvevals)
    ccall((:MRIStepGetNumJtimesEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, njvevals)
end

function MRIStepGetNumLinRhsEvals(arkode_mem, nfevalsLS)
    ccall((:MRIStepGetNumLinRhsEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nfevalsLS)
end

function MRIStepGetLastLinFlag(arkode_mem, flag)
    ccall((:MRIStepGetLastLinFlag, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, flag)
end

function MRIStepGetLinReturnFlagName(flag::Clong)
    ccall((:MRIStepGetLinReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function MRIStepFree(arkode_mem)
    ccall((:MRIStepFree, libsundials_arkode), Cvoid, (Ptr{Ptr{Cvoid}},), arkode_mem)
end

function MRIStepPrintMem(arkode_mem, outfile)
    ccall((:MRIStepPrintMem, libsundials_arkode), Cvoid, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, outfile)
end

function MRIStepInnerStepper_Create(sunctx::SUNContext, stepper)
    ccall((:MRIStepInnerStepper_Create, libsundials_arkode), Cint, (SUNContext, Ptr{MRIStepInnerStepper}), sunctx, stepper)
end

function MRIStepInnerStepper_Free(stepper)
    ccall((:MRIStepInnerStepper_Free, libsundials_arkode), Cint, (Ptr{MRIStepInnerStepper},), stepper)
end

function MRIStepInnerStepper_SetContent(stepper::MRIStepInnerStepper, content)
    ccall((:MRIStepInnerStepper_SetContent, libsundials_arkode), Cint, (MRIStepInnerStepper, Ptr{Cvoid}), stepper, content)
end

function MRIStepInnerStepper_GetContent(stepper::MRIStepInnerStepper, content)
    ccall((:MRIStepInnerStepper_GetContent, libsundials_arkode), Cint, (MRIStepInnerStepper, Ptr{Ptr{Cvoid}}), stepper, content)
end

function MRIStepInnerStepper_SetEvolveFn(stepper::MRIStepInnerStepper, fn::MRIStepInnerEvolveFn)
    ccall((:MRIStepInnerStepper_SetEvolveFn, libsundials_arkode), Cint, (MRIStepInnerStepper, MRIStepInnerEvolveFn), stepper, fn)
end

function MRIStepInnerStepper_SetFullRhsFn(stepper::MRIStepInnerStepper, fn::MRIStepInnerFullRhsFn)
    ccall((:MRIStepInnerStepper_SetFullRhsFn, libsundials_arkode), Cint, (MRIStepInnerStepper, MRIStepInnerFullRhsFn), stepper, fn)
end

function MRIStepInnerStepper_SetResetFn(stepper::MRIStepInnerStepper, fn::MRIStepInnerResetFn)
    ccall((:MRIStepInnerStepper_SetResetFn, libsundials_arkode), Cint, (MRIStepInnerStepper, MRIStepInnerResetFn), stepper, fn)
end

function MRIStepInnerStepper_AddForcing(stepper::MRIStepInnerStepper, t::realtype, f::N_Vector)
    ccall((:MRIStepInnerStepper_AddForcing, libsundials_arkode), Cint, (MRIStepInnerStepper, realtype, N_Vector), stepper, t, f)
end

function MRIStepInnerStepper_GetForcingData(stepper::MRIStepInnerStepper, tshift, tscale, forcing, nforcing)
    ccall((:MRIStepInnerStepper_GetForcingData, libsundials_arkode), Cint, (MRIStepInnerStepper, Ptr{realtype}, Ptr{realtype}, Ptr{Ptr{N_Vector}}, Ptr{Cint}), stepper, tshift, tscale, forcing, nforcing)
end

function ARKodeSPRKTable_Create(s::Cint, q::Cint, a, ahat)
    ccall((:ARKodeSPRKTable_Create, libsundials_arkode), ARKodeSPRKTable, (Cint, Cint, Ptr{sunrealtype}, Ptr{sunrealtype}), s, q, a, ahat)
end

function ARKodeSPRKTable_Alloc(stages::Cint)
    ccall((:ARKodeSPRKTable_Alloc, libsundials_arkode), ARKodeSPRKTable, (Cint,), stages)
end

function ARKodeSPRKTable_Load(id::ARKODE_SPRKMethodID)
    ccall((:ARKodeSPRKTable_Load, libsundials_arkode), ARKodeSPRKTable, (ARKODE_SPRKMethodID,), id)
end

function ARKodeSPRKTable_LoadByName(method)
    ccall((:ARKodeSPRKTable_LoadByName, libsundials_arkode), ARKodeSPRKTable, (Cstring,), method)
end

function ARKodeSPRKTable_Copy(that_sprk_storage::ARKodeSPRKTable)
    ccall((:ARKodeSPRKTable_Copy, libsundials_arkode), ARKodeSPRKTable, (ARKodeSPRKTable,), that_sprk_storage)
end

function ARKodeSPRKTable_Write(sprk_table::ARKodeSPRKTable, outfile)
    ccall((:ARKodeSPRKTable_Write, libsundials_arkode), Cvoid, (ARKodeSPRKTable, Ptr{Libc.FILE}), sprk_table, outfile)
end

function ARKodeSPRKTable_Space(sprk_storage::ARKodeSPRKTable, liw, lrw)
    ccall((:ARKodeSPRKTable_Space, libsundials_arkode), Cvoid, (ARKodeSPRKTable, Ptr{sunindextype}, Ptr{sunindextype}), sprk_storage, liw, lrw)
end

function ARKodeSPRKTable_Free(sprk_storage::ARKodeSPRKTable)
    ccall((:ARKodeSPRKTable_Free, libsundials_arkode), Cvoid, (ARKodeSPRKTable,), sprk_storage)
end

function ARKodeSPRKTable_ToButcher(sprk_storage::ARKodeSPRKTable, a_ptr, b_ptr)
    ccall((:ARKodeSPRKTable_ToButcher, libsundials_arkode), Cint, (ARKodeSPRKTable, Ptr{ARKodeButcherTable}, Ptr{ARKodeButcherTable}), sprk_storage, a_ptr, b_ptr)
end

function SPRKStepCreate(f1::ARKRhsFn, f2::ARKRhsFn, t0::realtype, y0::N_Vector, sunctx::SUNContext)
    ccall((:SPRKStepCreate, libsundials_arkode), Ptr{Cvoid}, (ARKRhsFn, ARKRhsFn, realtype, N_Vector, SUNContext), f1, f2, t0, y0, sunctx)
end

function SPRKStepReInit(arkode_mem, f1::ARKRhsFn, f2::ARKRhsFn, t0::realtype, y0::N_Vector)
    ccall((:SPRKStepReInit, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKRhsFn, ARKRhsFn, realtype, N_Vector), arkode_mem, f1, f2, t0, y0)
end

function SPRKStepReset(arkode_mem, tR::realtype, yR::N_Vector)
    ccall((:SPRKStepReset, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, N_Vector), arkode_mem, tR, yR)
end

function SPRKStepRootInit(arkode_mem, nrtfn::Cint, g::ARKRootFn)
    ccall((:SPRKStepRootInit, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint, ARKRootFn), arkode_mem, nrtfn, g)
end

function SPRKStepSetDefaults(arkode_mem)
    ccall((:SPRKStepSetDefaults, libsundials_arkode), Cint, (Ptr{Cvoid},), arkode_mem)
end

function SPRKStepSetUseCompensatedSums(arkode_mem, onoff::Cint)
    ccall((:SPRKStepSetUseCompensatedSums, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, onoff)
end

function SPRKStepSetMethod(arkode_mem, sprk_storage::ARKodeSPRKTable)
    ccall((:SPRKStepSetMethod, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKodeSPRKTable), arkode_mem, sprk_storage)
end

function SPRKStepSetMethodName(arkode_mem, method)
    ccall((:SPRKStepSetMethodName, libsundials_arkode), Cint, (Ptr{Cvoid}, Cstring), arkode_mem, method)
end

function SPRKStepSetOrder(arkode_mem, maxord::Cint)
    ccall((:SPRKStepSetOrder, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, maxord)
end

function SPRKStepSetInterpolantType(arkode_mem, itype::Cint)
    ccall((:SPRKStepSetInterpolantType, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, itype)
end

function SPRKStepSetInterpolantDegree(arkode_mem, degree::Cint)
    ccall((:SPRKStepSetInterpolantDegree, libsundials_arkode), Cint, (Ptr{Cvoid}, Cint), arkode_mem, degree)
end

function SPRKStepSetMaxNumSteps(arkode_mem, mxsteps::Clong)
    ccall((:SPRKStepSetMaxNumSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Clong), arkode_mem, mxsteps)
end

function SPRKStepSetStopTime(arkode_mem, tstop::realtype)
    ccall((:SPRKStepSetStopTime, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, tstop)
end

function SPRKStepSetFixedStep(arkode_mem, hfixed::realtype)
    ccall((:SPRKStepSetFixedStep, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype), arkode_mem, hfixed)
end

function SPRKStepSetErrHandlerFn(arkode_mem, ehfun::ARKErrHandlerFn, eh_data)
    ccall((:SPRKStepSetErrHandlerFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKErrHandlerFn, Ptr{Cvoid}), arkode_mem, ehfun, eh_data)
end

function SPRKStepSetErrFile(arkode_mem, errfp)
    ccall((:SPRKStepSetErrFile, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, errfp)
end

function SPRKStepSetUserData(arkode_mem, user_data)
    ccall((:SPRKStepSetUserData, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Cvoid}), arkode_mem, user_data)
end

function SPRKStepSetPostprocessStepFn(arkode_mem, ProcessStep::ARKPostProcessFn)
    ccall((:SPRKStepSetPostprocessStepFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKPostProcessFn), arkode_mem, ProcessStep)
end

function SPRKStepSetPostprocessStageFn(arkode_mem, ProcessStage::ARKPostProcessFn)
    ccall((:SPRKStepSetPostprocessStageFn, libsundials_arkode), Cint, (Ptr{Cvoid}, ARKPostProcessFn), arkode_mem, ProcessStage)
end

function SPRKStepEvolve(arkode_mem, tout::realtype, yout::N_Vector, tret, itask::Cint)
    ccall((:SPRKStepEvolve, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, N_Vector, Ptr{realtype}, Cint), arkode_mem, tout, yout, tret, itask)
end

function SPRKStepGetDky(arkode_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:SPRKStepGetDky, libsundials_arkode), Cint, (Ptr{Cvoid}, realtype, Cint, N_Vector), arkode_mem, t, k, dky)
end

function SPRKStepGetReturnFlagName(flag::Clong)
    ccall((:SPRKStepGetReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function SPRKStepGetCurrentMethod(arkode_mem, sprk_storage)
    ccall((:SPRKStepGetCurrentMethod, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{ARKodeSPRKTable}), arkode_mem, sprk_storage)
end

function SPRKStepGetCurrentState(arkode_mem, state)
    ccall((:SPRKStepGetCurrentState, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{N_Vector}), arkode_mem, state)
end

function SPRKStepGetCurrentStep(arkode_mem, hcur)
    ccall((:SPRKStepGetCurrentStep, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, hcur)
end

function SPRKStepGetCurrentTime(arkode_mem, tcur)
    ccall((:SPRKStepGetCurrentTime, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, tcur)
end

function SPRKStepGetLastStep(arkode_mem, hlast)
    ccall((:SPRKStepGetLastStep, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{realtype}), arkode_mem, hlast)
end

function SPRKStepGetNumRhsEvals(arkode_mem, nf1, nf2)
    ccall((:SPRKStepGetNumRhsEvals, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), arkode_mem, nf1, nf2)
end

function SPRKStepGetNumStepAttempts(arkode_mem, step_attempts)
    ccall((:SPRKStepGetNumStepAttempts, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, step_attempts)
end

function SPRKStepGetNumSteps(arkode_mem, nsteps)
    ccall((:SPRKStepGetNumSteps, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}), arkode_mem, nsteps)
end

function SPRKStepGetRootInfo(arkode_mem, rootsfound)
    ccall((:SPRKStepGetRootInfo, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Cint}), arkode_mem, rootsfound)
end

function SPRKStepGetUserData(arkode_mem, user_data)
    ccall((:SPRKStepGetUserData, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Ptr{Cvoid}}), arkode_mem, user_data)
end

function SPRKStepPrintAllStats(arkode_mem, outfile, fmt::SUNOutputFormat)
    ccall((:SPRKStepPrintAllStats, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}, SUNOutputFormat), arkode_mem, outfile, fmt)
end

function SPRKStepWriteParameters(arkode_mem, fp)
    ccall((:SPRKStepWriteParameters, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), arkode_mem, fp)
end

function SPRKStepGetStepStats(arkode_mem, nsteps, hinused, hlast, hcur, tcur)
    ccall((:SPRKStepGetStepStats, libsundials_arkode), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), arkode_mem, nsteps, hinused, hlast, hcur, tcur)
end

function SPRKStepFree(arkode_mem)
    ccall((:SPRKStepFree, libsundials_arkode), Cvoid, (Ptr{Ptr{Cvoid}},), arkode_mem)
end

function CVodeCreate(lmm::Cint, sunctx::SUNContext)
    ccall((:CVodeCreate, libsundials_cvodes), Ptr{CVODEMem}, (Cint, SUNContext), lmm, sunctx)
end

function CVodeInit(cvode_mem, f::CVRhsFn, t0::realtype, y0::N_Vector)
    ccall((:CVodeInit, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVRhsFn, realtype, N_Vector), cvode_mem, f, t0, y0)
end

function CVodeReInit(cvode_mem, t0::realtype, y0::N_Vector)
    ccall((:CVodeReInit, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, N_Vector), cvode_mem, t0, y0)
end

function CVodeSStolerances(cvode_mem, reltol::realtype, abstol::realtype)
    ccall((:CVodeSStolerances, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, realtype), cvode_mem, reltol, abstol)
end

function CVodeSVtolerances(cvode_mem, reltol::realtype, abstol::N_Vector)
    ccall((:CVodeSVtolerances, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, N_Vector), cvode_mem, reltol, abstol)
end

function CVodeWFtolerances(cvode_mem, efun::CVEwtFn)
    ccall((:CVodeWFtolerances, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVEwtFn), cvode_mem, efun)
end

function CVodeSetConstraints(cvode_mem, constraints::N_Vector)
    ccall((:CVodeSetConstraints, libsundials_cvodes), Cint, (Ptr{Cvoid}, N_Vector), cvode_mem, constraints)
end

function CVodeSetDeltaGammaMaxLSetup(cvode_mem, dgmax_lsetup::realtype)
    ccall((:CVodeSetDeltaGammaMaxLSetup, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, dgmax_lsetup)
end

function CVodeSetErrFile(cvode_mem, errfp)
    ccall((:CVodeSetErrFile, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), cvode_mem, errfp)
end

function CVodeSetErrHandlerFn(cvode_mem, ehfun::CVErrHandlerFn, eh_data)
    ccall((:CVodeSetErrHandlerFn, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVErrHandlerFn, Ptr{Cvoid}), cvode_mem, ehfun, eh_data)
end

function CVodeSetInitStep(cvode_mem, hin::realtype)
    ccall((:CVodeSetInitStep, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, hin)
end

function CVodeSetLSetupFrequency(cvode_mem, msbp::Clong)
    ccall((:CVodeSetLSetupFrequency, libsundials_cvodes), Cint, (Ptr{Cvoid}, Clong), cvode_mem, msbp)
end

function CVodeSetMaxConvFails(cvode_mem, maxncf::Cint)
    ccall((:CVodeSetMaxConvFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, maxncf)
end

function CVodeSetMaxErrTestFails(cvode_mem, maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, maxnef)
end

function CVodeSetMaxHnilWarns(cvode_mem, mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, mxhnil)
end

function CVodeSetMaxNonlinIters(cvode_mem, maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, maxcor)
end

function CVodeSetMaxNumSteps(cvode_mem, mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps, libsundials_cvodes), Cint, (Ptr{Cvoid}, Clong), cvode_mem, mxsteps)
end

function CVodeSetMaxOrd(cvode_mem, maxord::Cint)
    ccall((:CVodeSetMaxOrd, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, maxord)
end

function CVodeSetMaxStep(cvode_mem, hmax::realtype)
    ccall((:CVodeSetMaxStep, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, hmax)
end

function CVodeSetMinStep(cvode_mem, hmin::realtype)
    ccall((:CVodeSetMinStep, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, hmin)
end

function CVodeSetMonitorFn(cvode_mem, fn::CVMonitorFn)
    ccall((:CVodeSetMonitorFn, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVMonitorFn), cvode_mem, fn)
end

function CVodeSetMonitorFrequency(cvode_mem, nst::Clong)
    ccall((:CVodeSetMonitorFrequency, libsundials_cvodes), Cint, (Ptr{Cvoid}, Clong), cvode_mem, nst)
end

function CVodeSetNlsRhsFn(cvode_mem, f::CVRhsFn)
    ccall((:CVodeSetNlsRhsFn, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVRhsFn), cvode_mem, f)
end

function CVodeSetNonlinConvCoef(cvode_mem, nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, nlscoef)
end

function CVodeSetNonlinearSolver(cvode_mem, NLS::SUNNonlinearSolver)
    ccall((:CVodeSetNonlinearSolver, libsundials_cvodes), Cint, (Ptr{Cvoid}, SUNNonlinearSolver), cvode_mem, NLS)
end

function CVodeSetStabLimDet(cvode_mem, stldet::Cint)
    ccall((:CVodeSetStabLimDet, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, stldet)
end

function CVodeSetStopTime(cvode_mem, tstop::realtype)
    ccall((:CVodeSetStopTime, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, tstop)
end

function CVodeSetInterpolateStopTime(cvode_mem, interp::Cint)
    ccall((:CVodeSetInterpolateStopTime, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, interp)
end

function CVodeClearStopTime(cvode_mem)
    ccall((:CVodeClearStopTime, libsundials_cvodes), Cint, (Ptr{Cvoid},), cvode_mem)
end

function CVodeSetUseIntegratorFusedKernels(cvode_mem, onoff::Cint)
    ccall((:CVodeSetUseIntegratorFusedKernels, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, onoff)
end

function CVodeSetUserData(cvode_mem, user_data)
    ccall((:CVodeSetUserData, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Cvoid}), cvode_mem, user_data)
end

function CVodeSetEtaFixedStepBounds(cvode_mem, eta_min_fx::realtype, eta_max_fx::realtype)
    ccall((:CVodeSetEtaFixedStepBounds, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, realtype), cvode_mem, eta_min_fx, eta_max_fx)
end

function CVodeSetEtaMaxFirstStep(cvode_mem, eta_max_fs::realtype)
    ccall((:CVodeSetEtaMaxFirstStep, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, eta_max_fs)
end

function CVodeSetEtaMaxEarlyStep(cvode_mem, eta_max_es::realtype)
    ccall((:CVodeSetEtaMaxEarlyStep, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, eta_max_es)
end

function CVodeSetNumStepsEtaMaxEarlyStep(cvode_mem, small_nst::Clong)
    ccall((:CVodeSetNumStepsEtaMaxEarlyStep, libsundials_cvodes), Cint, (Ptr{Cvoid}, Clong), cvode_mem, small_nst)
end

function CVodeSetEtaMax(cvode_mem, eta_max_gs::realtype)
    ccall((:CVodeSetEtaMax, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, eta_max_gs)
end

function CVodeSetEtaMin(cvode_mem, eta_min::realtype)
    ccall((:CVodeSetEtaMin, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, eta_min)
end

function CVodeSetEtaMinErrFail(cvode_mem, eta_min_ef::realtype)
    ccall((:CVodeSetEtaMinErrFail, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, eta_min_ef)
end

function CVodeSetEtaMaxErrFail(cvode_mem, eta_max_ef::realtype)
    ccall((:CVodeSetEtaMaxErrFail, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, eta_max_ef)
end

function CVodeSetNumFailsEtaMaxErrFail(cvode_mem, small_nef::Cint)
    ccall((:CVodeSetNumFailsEtaMaxErrFail, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, small_nef)
end

function CVodeSetEtaConvFail(cvode_mem, eta_cf::realtype)
    ccall((:CVodeSetEtaConvFail, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, eta_cf)
end

function CVodeRootInit(cvode_mem, nrtfn::Cint, g::CVRootFn)
    ccall((:CVodeRootInit, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVRootFn), cvode_mem, nrtfn, g)
end

function CVodeSetRootDirection(cvode_mem, rootdir)
    ccall((:CVodeSetRootDirection, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Cint}), cvode_mem, rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem)
    ccall((:CVodeSetNoInactiveRootWarn, libsundials_cvodes), Cint, (Ptr{Cvoid},), cvode_mem)
end

function CVode(cvode_mem, tout::realtype, yout::N_Vector, tret, itask::Cint)
    ccall((:CVode, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, N_Vector, Ptr{realtype}, Cint), cvode_mem, tout, yout, tret, itask)
end

function CVodeComputeState(cvode_mem, ycor::N_Vector, y::N_Vector)
    ccall((:CVodeComputeState, libsundials_cvodes), Cint, (Ptr{Cvoid}, N_Vector, N_Vector), cvode_mem, ycor, y)
end

function CVodeGetDky(cvode_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:CVodeGetDky, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, Cint, N_Vector), cvode_mem, t, k, dky)
end

function CVodeGetWorkSpace(cvode_mem, lenrw, leniw)
    ccall((:CVodeGetWorkSpace, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrw, leniw)
end

function CVodeGetNumSteps(cvode_mem, nsteps)
    ccall((:CVodeGetNumSteps, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem, nfevals)
    ccall((:CVodeGetNumRhsEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem, nlinsetups)
    ccall((:CVodeGetNumLinSolvSetups, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem, netfails)
    ccall((:CVodeGetNumErrTestFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, netfails)
end

function CVodeGetLastOrder(cvode_mem, qlast)
    ccall((:CVodeGetLastOrder, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Cint}), cvode_mem, qlast)
end

function CVodeGetCurrentOrder(cvode_mem, qcur)
    ccall((:CVodeGetCurrentOrder, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Cint}), cvode_mem, qcur)
end

function CVodeGetCurrentGamma(cvode_mem, gamma)
    ccall((:CVodeGetCurrentGamma, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}), cvode_mem, gamma)
end

function CVodeGetNumStabLimOrderReds(cvode_mem, nslred)
    ccall((:CVodeGetNumStabLimOrderReds, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nslred)
end

function CVodeGetActualInitStep(cvode_mem, hinused)
    ccall((:CVodeGetActualInitStep, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}), cvode_mem, hinused)
end

function CVodeGetLastStep(cvode_mem, hlast)
    ccall((:CVodeGetLastStep, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}), cvode_mem, hlast)
end

function CVodeGetCurrentStep(cvode_mem, hcur)
    ccall((:CVodeGetCurrentStep, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}), cvode_mem, hcur)
end

function CVodeGetCurrentState(cvode_mem, y)
    ccall((:CVodeGetCurrentState, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{N_Vector}), cvode_mem, y)
end

function CVodeGetCurrentTime(cvode_mem, tcur)
    ccall((:CVodeGetCurrentTime, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}), cvode_mem, tcur)
end

function CVodeGetTolScaleFactor(cvode_mem, tolsfac)
    ccall((:CVodeGetTolScaleFactor, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}), cvode_mem, tolsfac)
end

function CVodeGetErrWeights(cvode_mem, eweight::N_Vector)
    ccall((:CVodeGetErrWeights, libsundials_cvodes), Cint, (Ptr{Cvoid}, N_Vector), cvode_mem, eweight)
end

function CVodeGetEstLocalErrors(cvode_mem, ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors, libsundials_cvodes), Cint, (Ptr{Cvoid}, N_Vector), cvode_mem, ele)
end

function CVodeGetNumGEvals(cvode_mem, ngevals)
    ccall((:CVodeGetNumGEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, ngevals)
end

function CVodeGetRootInfo(cvode_mem, rootsfound)
    ccall((:CVodeGetRootInfo, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Cint}), cvode_mem, rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem, nsteps, nfevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
    ccall((:CVodeGetIntegratorStats, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Cint}, Ptr{Cint}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), cvode_mem, nsteps, nfevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
end

function CVodeGetNonlinearSystemData(cvode_mem, tcur, ypred, yn, fn, gamma, rl1, zn1, user_data)
    ccall((:CVodeGetNonlinearSystemData, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}, Ptr{realtype}, Ptr{N_Vector}, Ptr{Ptr{Cvoid}}), cvode_mem, tcur, ypred, yn, fn, gamma, rl1, zn1, user_data)
end

function CVodeGetNumNonlinSolvIters(cvode_mem, nniters)
    ccall((:CVodeGetNumNonlinSolvIters, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem, nnfails)
    ccall((:CVodeGetNumNonlinSolvConvFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nnfails)
end

function CVodeGetNonlinSolvStats(cvode_mem, nniters, nnfails)
    ccall((:CVodeGetNonlinSolvStats, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), cvode_mem, nniters, nnfails)
end

function CVodeGetNumStepSolveFails(cvode_mem, nncfails)
    ccall((:CVodeGetNumStepSolveFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nncfails)
end

function CVodeGetUserData(cvode_mem, user_data)
    ccall((:CVodeGetUserData, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Ptr{Cvoid}}), cvode_mem, user_data)
end

function CVodePrintAllStats(cvode_mem, outfile, fmt::SUNOutputFormat)
    ccall((:CVodePrintAllStats, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}, SUNOutputFormat), cvode_mem, outfile, fmt)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVodeFree(cvode_mem)
    ccall((:CVodeFree, libsundials_cvodes), Cvoid, (Ptr{Ptr{Cvoid}},), cvode_mem)
end

function CVodeSetJacTimesRhsFn(cvode_mem, jtimesRhsFn::CVRhsFn)
    ccall((:CVodeSetJacTimesRhsFn, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVRhsFn), cvode_mem, jtimesRhsFn)
end

function CVBandPrecInit(cvode_mem, N::sunindextype, mu::sunindextype, ml::sunindextype)
    ccall((:CVBandPrecInit, libsundials_cvodes), Cint, (Ptr{Cvoid}, sunindextype, sunindextype, sunindextype), cvode_mem, N, mu, ml)
end

function CVBandPrecGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVBandPrecGetWorkSpace, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVBandPrecGetNumRhsEvals(cvode_mem, nfevalsBP)
    ccall((:CVBandPrecGetNumRhsEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nfevalsBP)
end

function CVBBDPrecInit(cvode_mem, Nlocal::sunindextype, mudq::sunindextype, mldq::sunindextype, mukeep::sunindextype, mlkeep::sunindextype, dqrely::realtype, gloc::CVLocalFn, cfn::CVCommFn)
    ccall((:CVBBDPrecInit, libsundials_cvodes), Cint, (Ptr{Cvoid}, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, CVLocalFn, CVCommFn), cvode_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn)
end

function CVBBDPrecReInit(cvode_mem, mudq::sunindextype, mldq::sunindextype, dqrely::realtype)
    ccall((:CVBBDPrecReInit, libsundials_cvodes), Cint, (Ptr{Cvoid}, sunindextype, sunindextype, realtype), cvode_mem, mudq, mldq, dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem, lenrwBBDP, leniwBBDP)
    ccall((:CVBBDPrecGetWorkSpace, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwBBDP, leniwBBDP)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem, ngevalsBBDP)
    ccall((:CVBBDPrecGetNumGfnEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, ngevalsBBDP)
end

function CVDiag(cvode_mem)
    ccall((:CVDiag, libsundials_cvodes), Cint, (Ptr{Cvoid},), cvode_mem)
end

function CVDiagGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVDiagGetWorkSpace, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVDiagGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVDiagGetNumRhsEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVDiagGetLastFlag(cvode_mem, flag)
    ccall((:CVDiagGetLastFlag, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, flag)
end

function CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVDlsSetLinearSolver(cvode_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:CVDlsSetLinearSolver, libsundials_cvodes), Cint, (Ptr{Cvoid}, SUNLinearSolver, SUNMatrix), cvode_mem, LS, A)
end

function CVDlsSetJacFn(cvode_mem, jac::CVDlsJacFn)
    ccall((:CVDlsSetJacFn, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVDlsJacFn), cvode_mem, jac)
end

function CVDlsGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVDlsGetWorkSpace, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem, njevals)
    ccall((:CVDlsGetNumJacEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem, flag)
    ccall((:CVDlsGetLastFlag, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVodeSetLinearSolver(cvode_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:CVodeSetLinearSolver, libsundials_cvodes), Cint, (Ptr{Cvoid}, SUNLinearSolver, SUNMatrix), cvode_mem, LS, A)
end

function CVodeSetJacFn(cvode_mem, jac::CVLsJacFn)
    ccall((:CVodeSetJacFn, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVLsJacFn), cvode_mem, jac)
end

function CVodeSetJacEvalFrequency(cvode_mem, msbj::Clong)
    ccall((:CVodeSetJacEvalFrequency, libsundials_cvodes), Cint, (Ptr{Cvoid}, Clong), cvode_mem, msbj)
end

function CVodeSetLinearSolutionScaling(cvode_mem, onoff::Cint)
    ccall((:CVodeSetLinearSolutionScaling, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, onoff)
end

function CVodeSetDeltaGammaMaxBadJac(cvode_mem, dgmax_jbad::realtype)
    ccall((:CVodeSetDeltaGammaMaxBadJac, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, dgmax_jbad)
end

function CVodeSetEpsLin(cvode_mem, eplifac::realtype)
    ccall((:CVodeSetEpsLin, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, eplifac)
end

function CVodeSetLSNormFactor(arkode_mem, nrmfac::realtype)
    ccall((:CVodeSetLSNormFactor, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), arkode_mem, nrmfac)
end

function CVodeSetPreconditioner(cvode_mem, pset::CVLsPrecSetupFn, psolve::CVLsPrecSolveFn)
    ccall((:CVodeSetPreconditioner, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVLsPrecSetupFn, CVLsPrecSolveFn), cvode_mem, pset, psolve)
end

function CVodeSetJacTimes(cvode_mem, jtsetup::CVLsJacTimesSetupFn, jtimes::CVLsJacTimesVecFn)
    ccall((:CVodeSetJacTimes, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVLsJacTimesSetupFn, CVLsJacTimesVecFn), cvode_mem, jtsetup, jtimes)
end

function CVodeSetLinSysFn(cvode_mem, linsys::CVLsLinSysFn)
    ccall((:CVodeSetLinSysFn, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVLsLinSysFn), cvode_mem, linsys)
end

function CVodeGetJac(cvode_mem, J)
    ccall((:CVodeGetJac, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{SUNMatrix}), cvode_mem, J)
end

function CVodeGetJacTime(cvode_mem, t_J)
    ccall((:CVodeGetJacTime, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{sunrealtype}), cvode_mem, t_J)
end

function CVodeGetJacNumSteps(cvode_mem, nst_J)
    ccall((:CVodeGetJacNumSteps, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nst_J)
end

function CVodeGetLinWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVodeGetLinWorkSpace, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVodeGetNumJacEvals(cvode_mem, njevals)
    ccall((:CVodeGetNumJacEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, njevals)
end

function CVodeGetNumPrecEvals(cvode_mem, npevals)
    ccall((:CVodeGetNumPrecEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, npevals)
end

function CVodeGetNumPrecSolves(cvode_mem, npsolves)
    ccall((:CVodeGetNumPrecSolves, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, npsolves)
end

function CVodeGetNumLinIters(cvode_mem, nliters)
    ccall((:CVodeGetNumLinIters, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nliters)
end

function CVodeGetNumLinConvFails(cvode_mem, nlcfails)
    ccall((:CVodeGetNumLinConvFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nlcfails)
end

function CVodeGetNumJTSetupEvals(cvode_mem, njtsetups)
    ccall((:CVodeGetNumJTSetupEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, njtsetups)
end

function CVodeGetNumJtimesEvals(cvode_mem, njvevals)
    ccall((:CVodeGetNumJtimesEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, njvevals)
end

function CVodeGetNumLinRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVodeGetNumLinRhsEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVodeGetLinSolveStats(cvode_mem, njevals, nfevalsLS, nliters, nlcfails, npevals, npsolves, njtsetups, njtimes)
    ccall((:CVodeGetLinSolveStats, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}), cvode_mem, njevals, nfevalsLS, nliters, nlcfails, npevals, npsolves, njtsetups, njtimes)
end

function CVodeGetLastLinFlag(cvode_mem, flag)
    ccall((:CVodeGetLastLinFlag, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, flag)
end

function CVodeGetLinReturnFlagName(flag::Clong)
    ccall((:CVodeGetLinReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVodeSetProjFn(cvode_mem, pfun::CVProjFn)
    ccall((:CVodeSetProjFn, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVProjFn), cvode_mem, pfun)
end

function CVodeSetProjErrEst(cvode_mem, onoff::Cint)
    ccall((:CVodeSetProjErrEst, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, onoff)
end

function CVodeSetProjFrequency(cvode_mem, proj_freq::Clong)
    ccall((:CVodeSetProjFrequency, libsundials_cvodes), Cint, (Ptr{Cvoid}, Clong), cvode_mem, proj_freq)
end

function CVodeSetMaxNumProjFails(cvode_mem, max_fails::Cint)
    ccall((:CVodeSetMaxNumProjFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, max_fails)
end

function CVodeSetEpsProj(cvode_mem, eps::realtype)
    ccall((:CVodeSetEpsProj, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, eps)
end

function CVodeSetProjFailEta(cvode_mem, eta::realtype)
    ccall((:CVodeSetProjFailEta, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, eta)
end

function CVodeGetNumProjEvals(cvode_mem, nproj)
    ccall((:CVodeGetNumProjEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nproj)
end

function CVodeGetNumProjFails(cvode_mem, nprf)
    ccall((:CVodeGetNumProjFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nprf)
end

function CVSpilsSetLinearSolver(cvode_mem, LS::SUNLinearSolver)
    ccall((:CVSpilsSetLinearSolver, libsundials_cvodes), Cint, (Ptr{Cvoid}, SUNLinearSolver), cvode_mem, LS)
end

function CVSpilsSetEpsLin(cvode_mem, eplifac::realtype)
    ccall((:CVSpilsSetEpsLin, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype), cvode_mem, eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem, pset::CVSpilsPrecSetupFn, psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVSpilsPrecSetupFn, CVSpilsPrecSolveFn), cvode_mem, pset, psolve)
end

function CVSpilsSetJacTimes(cvode_mem, jtsetup::CVSpilsJacTimesSetupFn, jtimes::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimes, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVSpilsJacTimesSetupFn, CVSpilsJacTimesVecFn), cvode_mem, jtsetup, jtimes)
end

function CVSpilsGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVSpilsGetWorkSpace, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem, npevals)
    ccall((:CVSpilsGetNumPrecEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem, npsolves)
    ccall((:CVSpilsGetNumPrecSolves, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem, nliters)
    ccall((:CVSpilsGetNumLinIters, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nliters)
end

function CVSpilsGetNumConvFails(cvode_mem, nlcfails)
    ccall((:CVSpilsGetNumConvFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nlcfails)
end

function CVSpilsGetNumJTSetupEvals(cvode_mem, njtsetups)
    ccall((:CVSpilsGetNumJTSetupEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, njtsetups)
end

function CVSpilsGetNumJtimesEvals(cvode_mem, njvevals)
    ccall((:CVSpilsGetNumJtimesEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem, flag)
    ccall((:CVSpilsGetLastFlag, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVodeComputeStateSens(cvode_mem, yScor, yS)
    ccall((:CVodeComputeStateSens, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{N_Vector}, Ptr{N_Vector}), cvode_mem, yScor, yS)
end

function CVodeComputeStateSens1(cvode_mem, idx::Cint, yScor1::N_Vector, yS1::N_Vector)
    ccall((:CVodeComputeStateSens1, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, N_Vector, N_Vector), cvode_mem, idx, yScor1, yS1)
end

function CVodeGetCurrentStateSens(cvode_mem, yS)
    ccall((:CVodeGetCurrentStateSens, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Ptr{N_Vector}}), cvode_mem, yS)
end

function CVodeGetCurrentSensSolveIndex(cvode_mem, index)
    ccall((:CVodeGetCurrentSensSolveIndex, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Cint}), cvode_mem, index)
end

function CVodeGetNonlinearSystemDataSens(cvode_mem, tcur, ySpred, ySn, gamma, rl1, zn1, user_data)
    ccall((:CVodeGetNonlinearSystemDataSens, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}, Ptr{Ptr{N_Vector}}, Ptr{Ptr{N_Vector}}, Ptr{realtype}, Ptr{realtype}, Ptr{Ptr{N_Vector}}, Ptr{Ptr{Cvoid}}), cvode_mem, tcur, ySpred, ySn, gamma, rl1, zn1, user_data)
end

function CVodeQuadInit(cvode_mem, fQ::CVQuadRhsFn, yQ0::N_Vector)
    ccall((:CVodeQuadInit, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVQuadRhsFn, N_Vector), cvode_mem, fQ, yQ0)
end

function CVodeQuadReInit(cvode_mem, yQ0::N_Vector)
    ccall((:CVodeQuadReInit, libsundials_cvodes), Cint, (Ptr{Cvoid}, N_Vector), cvode_mem, yQ0)
end

function CVodeQuadSStolerances(cvode_mem, reltolQ::realtype, abstolQ::realtype)
    ccall((:CVodeQuadSStolerances, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, realtype), cvode_mem, reltolQ, abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem, reltolQ::realtype, abstolQ::N_Vector)
    ccall((:CVodeQuadSVtolerances, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, N_Vector), cvode_mem, reltolQ, abstolQ)
end

function CVodeSetQuadErrCon(cvode_mem, errconQ::Cint)
    ccall((:CVodeSetQuadErrCon, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, errconQ)
end

function CVodeGetQuad(cvode_mem, tret, yQout::N_Vector)
    ccall((:CVodeGetQuad, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}, N_Vector), cvode_mem, tret, yQout)
end

function CVodeGetQuadDky(cvode_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:CVodeGetQuadDky, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, Cint, N_Vector), cvode_mem, t, k, dky)
end

function CVodeGetQuadNumRhsEvals(cvode_mem, nfQevals)
    ccall((:CVodeGetQuadNumRhsEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nfQevals)
end

function CVodeGetQuadNumErrTestFails(cvode_mem, nQetfails)
    ccall((:CVodeGetQuadNumErrTestFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nQetfails)
end

function CVodeGetQuadErrWeights(cvode_mem, eQweight::N_Vector)
    ccall((:CVodeGetQuadErrWeights, libsundials_cvodes), Cint, (Ptr{Cvoid}, N_Vector), cvode_mem, eQweight)
end

function CVodeGetQuadStats(cvode_mem, nfQevals, nQetfails)
    ccall((:CVodeGetQuadStats, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), cvode_mem, nfQevals, nQetfails)
end

function CVodeQuadFree(cvode_mem)
    ccall((:CVodeQuadFree, libsundials_cvodes), Cvoid, (Ptr{Cvoid},), cvode_mem)
end

function CVodeSensInit(cvode_mem, Ns::Cint, ism::Cint, fS::CVSensRhsFn, yS0)
    ccall((:CVodeSensInit, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Cint, CVSensRhsFn, Ptr{N_Vector}), cvode_mem, Ns, ism, fS, yS0)
end

function CVodeSensInit1(cvode_mem, Ns::Cint, ism::Cint, fS1::CVSensRhs1Fn, yS0)
    ccall((:CVodeSensInit1, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Cint, CVSensRhs1Fn, Ptr{N_Vector}), cvode_mem, Ns, ism, fS1, yS0)
end

function CVodeSensReInit(cvode_mem, ism::Cint, yS0)
    ccall((:CVodeSensReInit, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Ptr{N_Vector}), cvode_mem, ism, yS0)
end

function CVodeSensSStolerances(cvode_mem, reltolS::realtype, abstolS)
    ccall((:CVodeSensSStolerances, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, Ptr{realtype}), cvode_mem, reltolS, abstolS)
end

function CVodeSensSVtolerances(cvode_mem, reltolS::realtype, abstolS)
    ccall((:CVodeSensSVtolerances, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, Ptr{N_Vector}), cvode_mem, reltolS, abstolS)
end

function CVodeSensEEtolerances(cvode_mem)
    ccall((:CVodeSensEEtolerances, libsundials_cvodes), Cint, (Ptr{Cvoid},), cvode_mem)
end

function CVodeSetSensDQMethod(cvode_mem, DQtype::Cint, DQrhomax::realtype)
    ccall((:CVodeSetSensDQMethod, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, realtype), cvode_mem, DQtype, DQrhomax)
end

function CVodeSetSensErrCon(cvode_mem, errconS::Cint)
    ccall((:CVodeSetSensErrCon, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, errconS)
end

function CVodeSetSensMaxNonlinIters(cvode_mem, maxcorS::Cint)
    ccall((:CVodeSetSensMaxNonlinIters, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, maxcorS)
end

function CVodeSetSensParams(cvode_mem, p, pbar, plist)
    ccall((:CVodeSetSensParams, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}, Ptr{realtype}, Ptr{Cint}), cvode_mem, p, pbar, plist)
end

function CVodeSetNonlinearSolverSensSim(cvode_mem, NLS::SUNNonlinearSolver)
    ccall((:CVodeSetNonlinearSolverSensSim, libsundials_cvodes), Cint, (Ptr{Cvoid}, SUNNonlinearSolver), cvode_mem, NLS)
end

function CVodeSetNonlinearSolverSensStg(cvode_mem, NLS::SUNNonlinearSolver)
    ccall((:CVodeSetNonlinearSolverSensStg, libsundials_cvodes), Cint, (Ptr{Cvoid}, SUNNonlinearSolver), cvode_mem, NLS)
end

function CVodeSetNonlinearSolverSensStg1(cvode_mem, NLS::SUNNonlinearSolver)
    ccall((:CVodeSetNonlinearSolverSensStg1, libsundials_cvodes), Cint, (Ptr{Cvoid}, SUNNonlinearSolver), cvode_mem, NLS)
end

function CVodeSensToggleOff(cvode_mem)
    ccall((:CVodeSensToggleOff, libsundials_cvodes), Cint, (Ptr{Cvoid},), cvode_mem)
end

function CVodeGetSens(cvode_mem, tret, ySout)
    ccall((:CVodeGetSens, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}, Ptr{N_Vector}), cvode_mem, tret, ySout)
end

function CVodeGetSens1(cvode_mem, tret, is::Cint, ySout::N_Vector)
    ccall((:CVodeGetSens1, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}, Cint, N_Vector), cvode_mem, tret, is, ySout)
end

function CVodeGetSensDky(cvode_mem, t::realtype, k::Cint, dkyA)
    ccall((:CVodeGetSensDky, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, Cint, Ptr{N_Vector}), cvode_mem, t, k, dkyA)
end

function CVodeGetSensDky1(cvode_mem, t::realtype, k::Cint, is::Cint, dky::N_Vector)
    ccall((:CVodeGetSensDky1, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, Cint, Cint, N_Vector), cvode_mem, t, k, is, dky)
end

function CVodeGetSensNumRhsEvals(cvode_mem, nfSevals)
    ccall((:CVodeGetSensNumRhsEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nfSevals)
end

function CVodeGetNumRhsEvalsSens(cvode_mem, nfevalsS)
    ccall((:CVodeGetNumRhsEvalsSens, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nfevalsS)
end

function CVodeGetSensNumErrTestFails(cvode_mem, nSetfails)
    ccall((:CVodeGetSensNumErrTestFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nSetfails)
end

function CVodeGetSensNumLinSolvSetups(cvode_mem, nlinsetupsS)
    ccall((:CVodeGetSensNumLinSolvSetups, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nlinsetupsS)
end

function CVodeGetSensErrWeights(cvode_mem, eSweight)
    ccall((:CVodeGetSensErrWeights, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{N_Vector}), cvode_mem, eSweight)
end

function CVodeGetSensStats(cvode_mem, nfSevals, nfevalsS, nSetfails, nlinsetupsS)
    ccall((:CVodeGetSensStats, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}), cvode_mem, nfSevals, nfevalsS, nSetfails, nlinsetupsS)
end

function CVodeGetSensNumNonlinSolvIters(cvode_mem, nSniters)
    ccall((:CVodeGetSensNumNonlinSolvIters, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nSniters)
end

function CVodeGetSensNumNonlinSolvConvFails(cvode_mem, nSnfails)
    ccall((:CVodeGetSensNumNonlinSolvConvFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nSnfails)
end

function CVodeGetSensNonlinSolvStats(cvode_mem, nSniters, nSnfails)
    ccall((:CVodeGetSensNonlinSolvStats, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), cvode_mem, nSniters, nSnfails)
end

function CVodeGetNumStepSensSolveFails(cvode_mem, nSncfails)
    ccall((:CVodeGetNumStepSensSolveFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nSncfails)
end

function CVodeGetStgrSensNumNonlinSolvIters(cvode_mem, nSTGR1niters)
    ccall((:CVodeGetStgrSensNumNonlinSolvIters, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nSTGR1niters)
end

function CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem, nSTGR1nfails)
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nSTGR1nfails)
end

function CVodeGetStgrSensNonlinSolvStats(cvode_mem, nSTGR1niters, nSTGR1nfails)
    ccall((:CVodeGetStgrSensNonlinSolvStats, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), cvode_mem, nSTGR1niters, nSTGR1nfails)
end

function CVodeGetNumStepStgrSensSolveFails(cvode_mem, nSTGR1ncfails)
    ccall((:CVodeGetNumStepStgrSensSolveFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nSTGR1ncfails)
end

function CVodeSensFree(cvode_mem)
    ccall((:CVodeSensFree, libsundials_cvodes), Cvoid, (Ptr{Cvoid},), cvode_mem)
end

function CVodeQuadSensInit(cvode_mem, fQS::CVQuadSensRhsFn, yQS0)
    ccall((:CVodeQuadSensInit, libsundials_cvodes), Cint, (Ptr{Cvoid}, CVQuadSensRhsFn, Ptr{N_Vector}), cvode_mem, fQS, yQS0)
end

function CVodeQuadSensReInit(cvode_mem, yQS0)
    ccall((:CVodeQuadSensReInit, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{N_Vector}), cvode_mem, yQS0)
end

function CVodeQuadSensSStolerances(cvode_mem, reltolQS::realtype, abstolQS)
    ccall((:CVodeQuadSensSStolerances, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, Ptr{realtype}), cvode_mem, reltolQS, abstolQS)
end

function CVodeQuadSensSVtolerances(cvode_mem, reltolQS::realtype, abstolQS)
    ccall((:CVodeQuadSensSVtolerances, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, Ptr{N_Vector}), cvode_mem, reltolQS, abstolQS)
end

function CVodeQuadSensEEtolerances(cvode_mem)
    ccall((:CVodeQuadSensEEtolerances, libsundials_cvodes), Cint, (Ptr{Cvoid},), cvode_mem)
end

function CVodeSetQuadSensErrCon(cvode_mem, errconQS::Cint)
    ccall((:CVodeSetQuadSensErrCon, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, errconQS)
end

function CVodeGetQuadSens(cvode_mem, tret, yQSout)
    ccall((:CVodeGetQuadSens, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}, Ptr{N_Vector}), cvode_mem, tret, yQSout)
end

function CVodeGetQuadSens1(cvode_mem, tret, is::Cint, yQSout::N_Vector)
    ccall((:CVodeGetQuadSens1, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{realtype}, Cint, N_Vector), cvode_mem, tret, is, yQSout)
end

function CVodeGetQuadSensDky(cvode_mem, t::realtype, k::Cint, dkyQS_all)
    ccall((:CVodeGetQuadSensDky, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, Cint, Ptr{N_Vector}), cvode_mem, t, k, dkyQS_all)
end

function CVodeGetQuadSensDky1(cvode_mem, t::realtype, k::Cint, is::Cint, dkyQS::N_Vector)
    ccall((:CVodeGetQuadSensDky1, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, Cint, Cint, N_Vector), cvode_mem, t, k, is, dkyQS)
end

function CVodeGetQuadSensNumRhsEvals(cvode_mem, nfQSevals)
    ccall((:CVodeGetQuadSensNumRhsEvals, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nfQSevals)
end

function CVodeGetQuadSensNumErrTestFails(cvode_mem, nQSetfails)
    ccall((:CVodeGetQuadSensNumErrTestFails, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}), cvode_mem, nQSetfails)
end

function CVodeGetQuadSensErrWeights(cvode_mem, eQSweight)
    ccall((:CVodeGetQuadSensErrWeights, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{N_Vector}), cvode_mem, eQSweight)
end

function CVodeGetQuadSensStats(cvode_mem, nfQSevals, nQSetfails)
    ccall((:CVodeGetQuadSensStats, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), cvode_mem, nfQSevals, nQSetfails)
end

function CVodeQuadSensFree(cvode_mem)
    ccall((:CVodeQuadSensFree, libsundials_cvodes), Cvoid, (Ptr{Cvoid},), cvode_mem)
end

function CVodeAdjInit(cvode_mem, steps::Clong, interp::Cint)
    ccall((:CVodeAdjInit, libsundials_cvodes), Cint, (Ptr{Cvoid}, Clong, Cint), cvode_mem, steps, interp)
end

function CVodeAdjReInit(cvode_mem)
    ccall((:CVodeAdjReInit, libsundials_cvodes), Cint, (Ptr{Cvoid},), cvode_mem)
end

function CVodeAdjFree(cvode_mem)
    ccall((:CVodeAdjFree, libsundials_cvodes), Cvoid, (Ptr{Cvoid},), cvode_mem)
end

function CVodeCreateB(cvode_mem, lmmB::Cint, which)
    ccall((:CVodeCreateB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Ptr{Cint}), cvode_mem, lmmB, which)
end

function CVodeInitB(cvode_mem, which::Cint, fB::CVRhsFnB, tB0::realtype, yB0::N_Vector)
    ccall((:CVodeInitB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVRhsFnB, realtype, N_Vector), cvode_mem, which, fB, tB0, yB0)
end

function CVodeInitBS(cvode_mem, which::Cint, fBs::CVRhsFnBS, tB0::realtype, yB0::N_Vector)
    ccall((:CVodeInitBS, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVRhsFnBS, realtype, N_Vector), cvode_mem, which, fBs, tB0, yB0)
end

function CVodeReInitB(cvode_mem, which::Cint, tB0::realtype, yB0::N_Vector)
    ccall((:CVodeReInitB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, realtype, N_Vector), cvode_mem, which, tB0, yB0)
end

function CVodeSStolerancesB(cvode_mem, which::Cint, reltolB::realtype, abstolB::realtype)
    ccall((:CVodeSStolerancesB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, realtype, realtype), cvode_mem, which, reltolB, abstolB)
end

function CVodeSVtolerancesB(cvode_mem, which::Cint, reltolB::realtype, abstolB::N_Vector)
    ccall((:CVodeSVtolerancesB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, realtype, N_Vector), cvode_mem, which, reltolB, abstolB)
end

function CVodeQuadInitB(cvode_mem, which::Cint, fQB::CVQuadRhsFnB, yQB0::N_Vector)
    ccall((:CVodeQuadInitB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVQuadRhsFnB, N_Vector), cvode_mem, which, fQB, yQB0)
end

function CVodeQuadInitBS(cvode_mem, which::Cint, fQBs::CVQuadRhsFnBS, yQB0::N_Vector)
    ccall((:CVodeQuadInitBS, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVQuadRhsFnBS, N_Vector), cvode_mem, which, fQBs, yQB0)
end

function CVodeQuadReInitB(cvode_mem, which::Cint, yQB0::N_Vector)
    ccall((:CVodeQuadReInitB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, N_Vector), cvode_mem, which, yQB0)
end

function CVodeQuadSStolerancesB(cvode_mem, which::Cint, reltolQB::realtype, abstolQB::realtype)
    ccall((:CVodeQuadSStolerancesB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, realtype, realtype), cvode_mem, which, reltolQB, abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem, which::Cint, reltolQB::realtype, abstolQB::N_Vector)
    ccall((:CVodeQuadSVtolerancesB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, realtype, N_Vector), cvode_mem, which, reltolQB, abstolQB)
end

function CVodeF(cvode_mem, tout::realtype, yout::N_Vector, tret, itask::Cint, ncheckPtr)
    ccall((:CVodeF, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, N_Vector, Ptr{realtype}, Cint, Ptr{Cint}), cvode_mem, tout, yout, tret, itask, ncheckPtr)
end

function CVodeB(cvode_mem, tBout::realtype, itaskB::Cint)
    ccall((:CVodeB, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, Cint), cvode_mem, tBout, itaskB)
end

function CVodeSetAdjNoSensi(cvode_mem)
    ccall((:CVodeSetAdjNoSensi, libsundials_cvodes), Cint, (Ptr{Cvoid},), cvode_mem)
end

function CVodeSetUserDataB(cvode_mem, which::Cint, user_dataB)
    ccall((:CVodeSetUserDataB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Ptr{Cvoid}), cvode_mem, which, user_dataB)
end

function CVodeSetMaxOrdB(cvode_mem, which::Cint, maxordB::Cint)
    ccall((:CVodeSetMaxOrdB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Cint), cvode_mem, which, maxordB)
end

function CVodeSetMaxNumStepsB(cvode_mem, which::Cint, mxstepsB::Clong)
    ccall((:CVodeSetMaxNumStepsB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Clong), cvode_mem, which, mxstepsB)
end

function CVodeSetStabLimDetB(cvode_mem, which::Cint, stldetB::Cint)
    ccall((:CVodeSetStabLimDetB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Cint), cvode_mem, which, stldetB)
end

function CVodeSetInitStepB(cvode_mem, which::Cint, hinB::realtype)
    ccall((:CVodeSetInitStepB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, realtype), cvode_mem, which, hinB)
end

function CVodeSetMinStepB(cvode_mem, which::Cint, hminB::realtype)
    ccall((:CVodeSetMinStepB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, realtype), cvode_mem, which, hminB)
end

function CVodeSetMaxStepB(cvode_mem, which::Cint, hmaxB::realtype)
    ccall((:CVodeSetMaxStepB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, realtype), cvode_mem, which, hmaxB)
end

function CVodeSetConstraintsB(cvode_mem, which::Cint, constraintsB::N_Vector)
    ccall((:CVodeSetConstraintsB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, N_Vector), cvode_mem, which, constraintsB)
end

function CVodeSetQuadErrConB(cvode_mem, which::Cint, errconQB::Cint)
    ccall((:CVodeSetQuadErrConB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Cint), cvode_mem, which, errconQB)
end

function CVodeSetNonlinearSolverB(cvode_mem, which::Cint, NLS::SUNNonlinearSolver)
    ccall((:CVodeSetNonlinearSolverB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, SUNNonlinearSolver), cvode_mem, which, NLS)
end

function CVodeGetB(cvode_mem, which::Cint, tBret, yB::N_Vector)
    ccall((:CVodeGetB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Ptr{realtype}, N_Vector), cvode_mem, which, tBret, yB)
end

function CVodeGetQuadB(cvode_mem, which::Cint, tBret, qB::N_Vector)
    ccall((:CVodeGetQuadB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Ptr{realtype}, N_Vector), cvode_mem, which, tBret, qB)
end

function CVodeGetAdjCVodeBmem(cvode_mem, which::Cint)
    ccall((:CVodeGetAdjCVodeBmem, libsundials_cvodes), Ptr{Cvoid}, (Ptr{Cvoid}, Cint), cvode_mem, which)
end

function CVodeGetAdjY(cvode_mem, t::realtype, y::N_Vector)
    ccall((:CVodeGetAdjY, libsundials_cvodes), Cint, (Ptr{Cvoid}, realtype, N_Vector), cvode_mem, t, y)
end

function CVodeGetAdjCheckPointsInfo(cvode_mem, ckpnt)
    ccall((:CVodeGetAdjCheckPointsInfo, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{CVadjCheckPointRec}), cvode_mem, ckpnt)
end

function CVodeSetJacTimesRhsFnB(cvode_mem, which::Cint, jtimesRhsFn::CVRhsFn)
    ccall((:CVodeSetJacTimesRhsFnB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVRhsFn), cvode_mem, which, jtimesRhsFn)
end

function CVodeGetAdjDataPointHermite(cvode_mem, which::Cint, t, y::N_Vector, yd::N_Vector)
    ccall((:CVodeGetAdjDataPointHermite, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Ptr{realtype}, N_Vector, N_Vector), cvode_mem, which, t, y, yd)
end

function CVodeGetAdjDataPointPolynomial(cvode_mem, which::Cint, t, order, y::N_Vector)
    ccall((:CVodeGetAdjDataPointPolynomial, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Ptr{realtype}, Ptr{Cint}, N_Vector), cvode_mem, which, t, order, y)
end

function CVodeGetAdjCurrentCheckPoint(cvode_mem, addr)
    ccall((:CVodeGetAdjCurrentCheckPoint, libsundials_cvodes), Cint, (Ptr{Cvoid}, Ptr{Ptr{Cvoid}}), cvode_mem, addr)
end

function CVBandPrecInitB(cvode_mem, which::Cint, nB::sunindextype, muB::sunindextype, mlB::sunindextype)
    ccall((:CVBandPrecInitB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, sunindextype, sunindextype, sunindextype), cvode_mem, which, nB, muB, mlB)
end

function CVBBDPrecInitB(cvode_mem, which::Cint, NlocalB::sunindextype, mudqB::sunindextype, mldqB::sunindextype, mukeepB::sunindextype, mlkeepB::sunindextype, dqrelyB::realtype, glocB::CVLocalFnB, cfnB::CVCommFnB)
    ccall((:CVBBDPrecInitB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, CVLocalFnB, CVCommFnB), cvode_mem, which, NlocalB, mudqB, mldqB, mukeepB, mlkeepB, dqrelyB, glocB, cfnB)
end

function CVBBDPrecReInitB(cvode_mem, which::Cint, mudqB::sunindextype, mldqB::sunindextype, dqrelyB::realtype)
    ccall((:CVBBDPrecReInitB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, sunindextype, sunindextype, realtype), cvode_mem, which, mudqB, mldqB, dqrelyB)
end

function CVDiagB(cvode_mem, which::Cint)
    ccall((:CVDiagB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint), cvode_mem, which)
end

function CVDlsSetLinearSolverB(cvode_mem, which::Cint, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:CVDlsSetLinearSolverB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, SUNLinearSolver, SUNMatrix), cvode_mem, which, LS, A)
end

function CVDlsSetJacFnB(cvode_mem, which::Cint, jacB::CVDlsJacFnB)
    ccall((:CVDlsSetJacFnB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVDlsJacFnB), cvode_mem, which, jacB)
end

function CVDlsSetJacFnBS(cvode_mem, which::Cint, jacBS::CVDlsJacFnBS)
    ccall((:CVDlsSetJacFnBS, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVDlsJacFnBS), cvode_mem, which, jacBS)
end

function CVodeSetLinearSolverB(cvode_mem, which::Cint, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:CVodeSetLinearSolverB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, SUNLinearSolver, SUNMatrix), cvode_mem, which, LS, A)
end

function CVodeSetJacFnB(cvode_mem, which::Cint, jacB::CVLsJacFnB)
    ccall((:CVodeSetJacFnB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVLsJacFnB), cvode_mem, which, jacB)
end

function CVodeSetJacFnBS(cvode_mem, which::Cint, jacBS::CVLsJacFnBS)
    ccall((:CVodeSetJacFnBS, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVLsJacFnBS), cvode_mem, which, jacBS)
end

function CVodeSetEpsLinB(cvode_mem, which::Cint, eplifacB::realtype)
    ccall((:CVodeSetEpsLinB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, realtype), cvode_mem, which, eplifacB)
end

function CVodeSetLSNormFactorB(arkode_mem, which::Cint, nrmfacB::realtype)
    ccall((:CVodeSetLSNormFactorB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, realtype), arkode_mem, which, nrmfacB)
end

function CVodeSetLinearSolutionScalingB(cvode_mem, which::Cint, onoffB::Cint)
    ccall((:CVodeSetLinearSolutionScalingB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, Cint), cvode_mem, which, onoffB)
end

function CVodeSetPreconditionerB(cvode_mem, which::Cint, psetB::CVLsPrecSetupFnB, psolveB::CVLsPrecSolveFnB)
    ccall((:CVodeSetPreconditionerB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVLsPrecSetupFnB, CVLsPrecSolveFnB), cvode_mem, which, psetB, psolveB)
end

function CVodeSetPreconditionerBS(cvode_mem, which::Cint, psetBS::CVLsPrecSetupFnBS, psolveBS::CVLsPrecSolveFnBS)
    ccall((:CVodeSetPreconditionerBS, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVLsPrecSetupFnBS, CVLsPrecSolveFnBS), cvode_mem, which, psetBS, psolveBS)
end

function CVodeSetJacTimesB(cvode_mem, which::Cint, jtsetupB::CVLsJacTimesSetupFnB, jtimesB::CVLsJacTimesVecFnB)
    ccall((:CVodeSetJacTimesB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVLsJacTimesSetupFnB, CVLsJacTimesVecFnB), cvode_mem, which, jtsetupB, jtimesB)
end

function CVodeSetJacTimesBS(cvode_mem, which::Cint, jtsetupBS::CVLsJacTimesSetupFnBS, jtimesBS::CVLsJacTimesVecFnBS)
    ccall((:CVodeSetJacTimesBS, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVLsJacTimesSetupFnBS, CVLsJacTimesVecFnBS), cvode_mem, which, jtsetupBS, jtimesBS)
end

function CVodeSetLinSysFnB(cvode_mem, which::Cint, linsys::CVLsLinSysFnB)
    ccall((:CVodeSetLinSysFnB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVLsLinSysFnB), cvode_mem, which, linsys)
end

function CVodeSetLinSysFnBS(cvode_mem, which::Cint, linsys::CVLsLinSysFnBS)
    ccall((:CVodeSetLinSysFnBS, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVLsLinSysFnBS), cvode_mem, which, linsys)
end

function CVSpilsSetLinearSolverB(cvode_mem, which::Cint, LS::SUNLinearSolver)
    ccall((:CVSpilsSetLinearSolverB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, SUNLinearSolver), cvode_mem, which, LS)
end

function CVSpilsSetEpsLinB(cvode_mem, which::Cint, eplifacB::realtype)
    ccall((:CVSpilsSetEpsLinB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, realtype), cvode_mem, which, eplifacB)
end

function CVSpilsSetPreconditionerB(cvode_mem, which::Cint, psetB::CVSpilsPrecSetupFnB, psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVSpilsPrecSetupFnB, CVSpilsPrecSolveFnB), cvode_mem, which, psetB, psolveB)
end

function CVSpilsSetPreconditionerBS(cvode_mem, which::Cint, psetBS::CVSpilsPrecSetupFnBS, psolveBS::CVSpilsPrecSolveFnBS)
    ccall((:CVSpilsSetPreconditionerBS, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVSpilsPrecSetupFnBS, CVSpilsPrecSolveFnBS), cvode_mem, which, psetBS, psolveBS)
end

function CVSpilsSetJacTimesB(cvode_mem, which::Cint, jtsetupB::CVSpilsJacTimesSetupFnB, jtimesB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesB, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVSpilsJacTimesSetupFnB, CVSpilsJacTimesVecFnB), cvode_mem, which, jtsetupB, jtimesB)
end

function CVSpilsSetJacTimesBS(cvode_mem, which::Cint, jtsetupBS::CVSpilsJacTimesSetupFnBS, jtimesBS::CVSpilsJacTimesVecFnBS)
    ccall((:CVSpilsSetJacTimesBS, libsundials_cvodes), Cint, (Ptr{Cvoid}, Cint, CVSpilsJacTimesSetupFnBS, CVSpilsJacTimesVecFnBS), cvode_mem, which, jtsetupBS, jtimesBS)
end

function IDACreate(sunctx::SUNContext)
    ccall((:IDACreate, libsundials_idas), Ptr{IDAMem}, (SUNContext,), sunctx)
end

function IDAInit(ida_mem, res::IDAResFn, t0::realtype, yy0::N_Vector, yp0::N_Vector)
    ccall((:IDAInit, libsundials_idas), Cint, (Ptr{Cvoid}, IDAResFn, realtype, N_Vector, N_Vector), ida_mem, res, t0, yy0, yp0)
end

function IDAReInit(ida_mem, t0::realtype, yy0::N_Vector, yp0::N_Vector)
    ccall((:IDAReInit, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, N_Vector, N_Vector), ida_mem, t0, yy0, yp0)
end

function IDASStolerances(ida_mem, reltol::realtype, abstol::realtype)
    ccall((:IDASStolerances, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, realtype), ida_mem, reltol, abstol)
end

function IDASVtolerances(ida_mem, reltol::realtype, abstol::N_Vector)
    ccall((:IDASVtolerances, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, N_Vector), ida_mem, reltol, abstol)
end

function IDAWFtolerances(ida_mem, efun::IDAEwtFn)
    ccall((:IDAWFtolerances, libsundials_idas), Cint, (Ptr{Cvoid}, IDAEwtFn), ida_mem, efun)
end

function IDACalcIC(ida_mem, icopt::Cint, tout1::realtype)
    ccall((:IDACalcIC, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype), ida_mem, icopt, tout1)
end

function IDASetNonlinConvCoefIC(ida_mem, epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, epiccon)
end

function IDASetMaxNumStepsIC(ida_mem, maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, maxnh)
end

function IDASetMaxNumJacsIC(ida_mem, maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, maxnj)
end

function IDASetMaxNumItersIC(ida_mem, maxnit::Cint)
    ccall((:IDASetMaxNumItersIC, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, maxnit)
end

function IDASetLineSearchOffIC(ida_mem, lsoff::Cint)
    ccall((:IDASetLineSearchOffIC, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, lsoff)
end

function IDASetStepToleranceIC(ida_mem, steptol::realtype)
    ccall((:IDASetStepToleranceIC, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, steptol)
end

function IDASetMaxBacksIC(ida_mem, maxbacks::Cint)
    ccall((:IDASetMaxBacksIC, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, maxbacks)
end

function IDASetDeltaCjLSetup(ida_max, dcj::realtype)
    ccall((:IDASetDeltaCjLSetup, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_max, dcj)
end

function IDASetErrHandlerFn(ida_mem, ehfun::IDAErrHandlerFn, eh_data)
    ccall((:IDASetErrHandlerFn, libsundials_idas), Cint, (Ptr{Cvoid}, IDAErrHandlerFn, Ptr{Cvoid}), ida_mem, ehfun, eh_data)
end

function IDASetErrFile(ida_mem, errfp)
    ccall((:IDASetErrFile, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), ida_mem, errfp)
end

function IDASetUserData(ida_mem, user_data)
    ccall((:IDASetUserData, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Cvoid}), ida_mem, user_data)
end

function IDASetMaxOrd(ida_mem, maxord::Cint)
    ccall((:IDASetMaxOrd, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, maxord)
end

function IDASetMaxNumSteps(ida_mem, mxsteps::Clong)
    ccall((:IDASetMaxNumSteps, libsundials_idas), Cint, (Ptr{Cvoid}, Clong), ida_mem, mxsteps)
end

function IDASetInitStep(ida_mem, hin::realtype)
    ccall((:IDASetInitStep, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, hin)
end

function IDASetMaxStep(ida_mem, hmax::realtype)
    ccall((:IDASetMaxStep, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, hmax)
end

function IDASetMinStep(ida_mem, hmin::realtype)
    ccall((:IDASetMinStep, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, hmin)
end

function IDASetStopTime(ida_mem, tstop::realtype)
    ccall((:IDASetStopTime, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, tstop)
end

function IDAClearStopTime(ida_mem)
    ccall((:IDAClearStopTime, libsundials_idas), Cint, (Ptr{Cvoid},), ida_mem)
end

function IDASetMaxErrTestFails(ida_mem, maxnef::Cint)
    ccall((:IDASetMaxErrTestFails, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, maxnef)
end

function IDASetSuppressAlg(ida_mem, suppressalg::Cint)
    ccall((:IDASetSuppressAlg, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, suppressalg)
end

function IDASetId(ida_mem, id::N_Vector)
    ccall((:IDASetId, libsundials_idas), Cint, (Ptr{Cvoid}, N_Vector), ida_mem, id)
end

function IDASetConstraints(ida_mem, constraints::N_Vector)
    ccall((:IDASetConstraints, libsundials_idas), Cint, (Ptr{Cvoid}, N_Vector), ida_mem, constraints)
end

function IDASetEtaFixedStepBounds(ida_mem, eta_min_fx::realtype, eta_max_fx::realtype)
    ccall((:IDASetEtaFixedStepBounds, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, realtype), ida_mem, eta_min_fx, eta_max_fx)
end

function IDASetEtaMin(ida_mem, eta_min::realtype)
    ccall((:IDASetEtaMin, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, eta_min)
end

function IDASetEtaMax(ida_mem, eta_max::realtype)
    ccall((:IDASetEtaMax, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, eta_max)
end

function IDASetEtaLow(ida_mem, eta_low::realtype)
    ccall((:IDASetEtaLow, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, eta_low)
end

function IDASetEtaMinErrFail(ida_mem, eta_min_ef::realtype)
    ccall((:IDASetEtaMinErrFail, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, eta_min_ef)
end

function IDASetEtaConvFail(ida_mem, eta_cf::realtype)
    ccall((:IDASetEtaConvFail, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, eta_cf)
end

function IDASetMaxConvFails(ida_mem, maxncf::Cint)
    ccall((:IDASetMaxConvFails, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, maxncf)
end

function IDASetMaxNonlinIters(ida_mem, maxcor::Cint)
    ccall((:IDASetMaxNonlinIters, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, maxcor)
end

function IDASetNlsResFn(IDA_mem, res::IDAResFn)
    ccall((:IDASetNlsResFn, libsundials_idas), Cint, (Ptr{Cvoid}, IDAResFn), IDA_mem, res)
end

function IDASetNonlinConvCoef(ida_mem, epcon::realtype)
    ccall((:IDASetNonlinConvCoef, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, epcon)
end

function IDASetNonlinearSolver(ida_mem, NLS::SUNNonlinearSolver)
    ccall((:IDASetNonlinearSolver, libsundials_idas), Cint, (Ptr{Cvoid}, SUNNonlinearSolver), ida_mem, NLS)
end

function IDARootInit(ida_mem, nrtfn::Cint, g::IDARootFn)
    ccall((:IDARootInit, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDARootFn), ida_mem, nrtfn, g)
end

function IDASetRootDirection(ida_mem, rootdir)
    ccall((:IDASetRootDirection, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Cint}), ida_mem, rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem)
    ccall((:IDASetNoInactiveRootWarn, libsundials_idas), Cint, (Ptr{Cvoid},), ida_mem)
end

function IDASolve(ida_mem, tout::realtype, tret, yret::N_Vector, ypret::N_Vector, itask::Cint)
    ccall((:IDASolve, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, Ptr{realtype}, N_Vector, N_Vector, Cint), ida_mem, tout, tret, yret, ypret, itask)
end

function IDAComputeY(ida_mem, ycor::N_Vector, y::N_Vector)
    ccall((:IDAComputeY, libsundials_idas), Cint, (Ptr{Cvoid}, N_Vector, N_Vector), ida_mem, ycor, y)
end

function IDAComputeYp(ida_mem, ycor::N_Vector, yp::N_Vector)
    ccall((:IDAComputeYp, libsundials_idas), Cint, (Ptr{Cvoid}, N_Vector, N_Vector), ida_mem, ycor, yp)
end

function IDAGetDky(ida_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:IDAGetDky, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, Cint, N_Vector), ida_mem, t, k, dky)
end

function IDAGetWorkSpace(ida_mem, lenrw, leniw)
    ccall((:IDAGetWorkSpace, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrw, leniw)
end

function IDAGetNumSteps(ida_mem, nsteps)
    ccall((:IDAGetNumSteps, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nsteps)
end

function IDAGetNumResEvals(ida_mem, nrevals)
    ccall((:IDAGetNumResEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem, nlinsetups)
    ccall((:IDAGetNumLinSolvSetups, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem, netfails)
    ccall((:IDAGetNumErrTestFails, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, netfails)
end

function IDAGetNumBacktrackOps(ida_mem, nbacktr)
    ccall((:IDAGetNumBacktrackOps, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nbacktr)
end

function IDAGetConsistentIC(ida_mem, yy0_mod::N_Vector, yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC, libsundials_idas), Cint, (Ptr{Cvoid}, N_Vector, N_Vector), ida_mem, yy0_mod, yp0_mod)
end

function IDAGetLastOrder(ida_mem, klast)
    ccall((:IDAGetLastOrder, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Cint}), ida_mem, klast)
end

function IDAGetCurrentOrder(ida_mem, kcur)
    ccall((:IDAGetCurrentOrder, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Cint}), ida_mem, kcur)
end

function IDAGetCurrentCj(ida_mem, cj)
    ccall((:IDAGetCurrentCj, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}), ida_mem, cj)
end

function IDAGetCurrentY(ida_mem, ycur)
    ccall((:IDAGetCurrentY, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{N_Vector}), ida_mem, ycur)
end

function IDAGetCurrentYp(ida_mem, ypcur)
    ccall((:IDAGetCurrentYp, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{N_Vector}), ida_mem, ypcur)
end

function IDAGetActualInitStep(ida_mem, hinused)
    ccall((:IDAGetActualInitStep, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}), ida_mem, hinused)
end

function IDAGetLastStep(ida_mem, hlast)
    ccall((:IDAGetLastStep, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}), ida_mem, hlast)
end

function IDAGetCurrentStep(ida_mem, hcur)
    ccall((:IDAGetCurrentStep, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}), ida_mem, hcur)
end

function IDAGetCurrentTime(ida_mem, tcur)
    ccall((:IDAGetCurrentTime, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}), ida_mem, tcur)
end

function IDAGetTolScaleFactor(ida_mem, tolsfact)
    ccall((:IDAGetTolScaleFactor, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}), ida_mem, tolsfact)
end

function IDAGetErrWeights(ida_mem, eweight::N_Vector)
    ccall((:IDAGetErrWeights, libsundials_idas), Cint, (Ptr{Cvoid}, N_Vector), ida_mem, eweight)
end

function IDAGetEstLocalErrors(ida_mem, ele::N_Vector)
    ccall((:IDAGetEstLocalErrors, libsundials_idas), Cint, (Ptr{Cvoid}, N_Vector), ida_mem, ele)
end

function IDAGetNumGEvals(ida_mem, ngevals)
    ccall((:IDAGetNumGEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, ngevals)
end

function IDAGetRootInfo(ida_mem, rootsfound)
    ccall((:IDAGetRootInfo, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Cint}), ida_mem, rootsfound)
end

function IDAGetIntegratorStats(ida_mem, nsteps, nrevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
    ccall((:IDAGetIntegratorStats, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Cint}, Ptr{Cint}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), ida_mem, nsteps, nrevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
end

function IDAGetNonlinearSystemData(ida_mem, tcur, yypred, yppred, yyn, ypn, res, cj, user_data)
    ccall((:IDAGetNonlinearSystemData, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}, Ptr{Ptr{Cvoid}}), ida_mem, tcur, yypred, yppred, yyn, ypn, res, cj, user_data)
end

function IDAGetNumNonlinSolvIters(ida_mem, nniters)
    ccall((:IDAGetNumNonlinSolvIters, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem, nnfails)
    ccall((:IDAGetNumNonlinSolvConvFails, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nnfails)
end

function IDAGetNonlinSolvStats(ida_mem, nniters, nnfails)
    ccall((:IDAGetNonlinSolvStats, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), ida_mem, nniters, nnfails)
end

function IDAGetNumStepSolveFails(ida_mem, nncfails)
    ccall((:IDAGetNumStepSolveFails, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nncfails)
end

function IDAGetUserData(ida_mem, user_data)
    ccall((:IDAGetUserData, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Ptr{Cvoid}}), ida_mem, user_data)
end

function IDAPrintAllStats(ida_mem, outfile, fmt::SUNOutputFormat)
    ccall((:IDAPrintAllStats, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}, SUNOutputFormat), ida_mem, outfile, fmt)
end

function IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName, libsundials_idas), Cstring, (Clong,), flag)
end

function IDAFree(ida_mem)
    ccall((:IDAFree, libsundials_idas), Cvoid, (Ptr{Ptr{Cvoid}},), ida_mem)
end

function IDASetJacTimesResFn(ida_mem, jtimesResFn::IDAResFn)
    ccall((:IDASetJacTimesResFn, libsundials_idas), Cint, (Ptr{Cvoid}, IDAResFn), ida_mem, jtimesResFn)
end

function IDABBDPrecInit(ida_mem, Nlocal::sunindextype, mudq::sunindextype, mldq::sunindextype, mukeep::sunindextype, mlkeep::sunindextype, dq_rel_yy::realtype, Gres::IDABBDLocalFn, Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit, libsundials_idas), Cint, (Ptr{Cvoid}, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, IDABBDLocalFn, IDABBDCommFn), ida_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dq_rel_yy, Gres, Gcomm)
end

function IDABBDPrecReInit(ida_mem, mudq::sunindextype, mldq::sunindextype, dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit, libsundials_idas), Cint, (Ptr{Cvoid}, sunindextype, sunindextype, realtype), ida_mem, mudq, mldq, dq_rel_yy)
end

function IDABBDPrecGetWorkSpace(ida_mem, lenrwBBDP, leniwBBDP)
    ccall((:IDABBDPrecGetWorkSpace, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwBBDP, leniwBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem, ngevalsBBDP)
    ccall((:IDABBDPrecGetNumGfnEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, ngevalsBBDP)
end

function IDADlsSetLinearSolver(ida_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:IDADlsSetLinearSolver, libsundials_idas), Cint, (Ptr{Cvoid}, SUNLinearSolver, SUNMatrix), ida_mem, LS, A)
end

function IDADlsSetJacFn(ida_mem, jac::IDADlsJacFn)
    ccall((:IDADlsSetJacFn, libsundials_idas), Cint, (Ptr{Cvoid}, IDADlsJacFn), ida_mem, jac)
end

function IDADlsGetWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDADlsGetWorkSpace, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem, njevals)
    ccall((:IDADlsGetNumJacEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, njevals)
end

function IDADlsGetNumResEvals(ida_mem, nrevalsLS)
    ccall((:IDADlsGetNumResEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nrevalsLS)
end

function IDADlsGetLastFlag(ida_mem, flag)
    ccall((:IDADlsGetLastFlag, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName, libsundials_idas), Cstring, (Clong,), flag)
end

function IDASetLinearSolver(ida_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:IDASetLinearSolver, libsundials_idas), Cint, (Ptr{Cvoid}, SUNLinearSolver, SUNMatrix), ida_mem, LS, A)
end

function IDASetJacFn(ida_mem, jac::IDALsJacFn)
    ccall((:IDASetJacFn, libsundials_idas), Cint, (Ptr{Cvoid}, IDALsJacFn), ida_mem, jac)
end

function IDASetPreconditioner(ida_mem, pset::IDALsPrecSetupFn, psolve::IDALsPrecSolveFn)
    ccall((:IDASetPreconditioner, libsundials_idas), Cint, (Ptr{Cvoid}, IDALsPrecSetupFn, IDALsPrecSolveFn), ida_mem, pset, psolve)
end

function IDASetJacTimes(ida_mem, jtsetup::IDALsJacTimesSetupFn, jtimes::IDALsJacTimesVecFn)
    ccall((:IDASetJacTimes, libsundials_idas), Cint, (Ptr{Cvoid}, IDALsJacTimesSetupFn, IDALsJacTimesVecFn), ida_mem, jtsetup, jtimes)
end

function IDASetEpsLin(ida_mem, eplifac::realtype)
    ccall((:IDASetEpsLin, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, eplifac)
end

function IDASetLSNormFactor(ida_mem, nrmfac::realtype)
    ccall((:IDASetLSNormFactor, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, nrmfac)
end

function IDASetLinearSolutionScaling(ida_mem, onoff::Cint)
    ccall((:IDASetLinearSolutionScaling, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, onoff)
end

function IDASetIncrementFactor(ida_mem, dqincfac::realtype)
    ccall((:IDASetIncrementFactor, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, dqincfac)
end

function IDAGetJac(ida_mem, J)
    ccall((:IDAGetJac, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{SUNMatrix}), ida_mem, J)
end

function IDAGetJacCj(ida_mem, cj_J)
    ccall((:IDAGetJacCj, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{sunrealtype}), ida_mem, cj_J)
end

function IDAGetJacTime(ida_mem, t_J)
    ccall((:IDAGetJacTime, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{sunrealtype}), ida_mem, t_J)
end

function IDAGetJacNumSteps(ida_mem, nst_J)
    ccall((:IDAGetJacNumSteps, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nst_J)
end

function IDAGetLinWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDAGetLinWorkSpace, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDAGetNumJacEvals(ida_mem, njevals)
    ccall((:IDAGetNumJacEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, njevals)
end

function IDAGetNumPrecEvals(ida_mem, npevals)
    ccall((:IDAGetNumPrecEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, npevals)
end

function IDAGetNumPrecSolves(ida_mem, npsolves)
    ccall((:IDAGetNumPrecSolves, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, npsolves)
end

function IDAGetNumLinIters(ida_mem, nliters)
    ccall((:IDAGetNumLinIters, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nliters)
end

function IDAGetNumLinConvFails(ida_mem, nlcfails)
    ccall((:IDAGetNumLinConvFails, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nlcfails)
end

function IDAGetNumJTSetupEvals(ida_mem, njtsetups)
    ccall((:IDAGetNumJTSetupEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, njtsetups)
end

function IDAGetNumJtimesEvals(ida_mem, njvevals)
    ccall((:IDAGetNumJtimesEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, njvevals)
end

function IDAGetNumLinResEvals(ida_mem, nrevalsLS)
    ccall((:IDAGetNumLinResEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nrevalsLS)
end

function IDAGetLastLinFlag(ida_mem, flag)
    ccall((:IDAGetLastLinFlag, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, flag)
end

function IDAGetLinReturnFlagName(flag::Clong)
    ccall((:IDAGetLinReturnFlagName, libsundials_idas), Cstring, (Clong,), flag)
end

function IDASpilsSetLinearSolver(ida_mem, LS::SUNLinearSolver)
    ccall((:IDASpilsSetLinearSolver, libsundials_idas), Cint, (Ptr{Cvoid}, SUNLinearSolver), ida_mem, LS)
end

function IDASpilsSetPreconditioner(ida_mem, pset::IDASpilsPrecSetupFn, psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner, libsundials_idas), Cint, (Ptr{Cvoid}, IDASpilsPrecSetupFn, IDASpilsPrecSolveFn), ida_mem, pset, psolve)
end

function IDASpilsSetJacTimes(ida_mem, jtsetup::IDASpilsJacTimesSetupFn, jtimes::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimes, libsundials_idas), Cint, (Ptr{Cvoid}, IDASpilsJacTimesSetupFn, IDASpilsJacTimesVecFn), ida_mem, jtsetup, jtimes)
end

function IDASpilsSetEpsLin(ida_mem, eplifac::realtype)
    ccall((:IDASpilsSetEpsLin, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem, dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor, libsundials_idas), Cint, (Ptr{Cvoid}, realtype), ida_mem, dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDASpilsGetWorkSpace, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem, npevals)
    ccall((:IDASpilsGetNumPrecEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem, npsolves)
    ccall((:IDASpilsGetNumPrecSolves, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, npsolves)
end

function IDASpilsGetNumLinIters(ida_mem, nliters)
    ccall((:IDASpilsGetNumLinIters, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nliters)
end

function IDASpilsGetNumConvFails(ida_mem, nlcfails)
    ccall((:IDASpilsGetNumConvFails, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nlcfails)
end

function IDASpilsGetNumJTSetupEvals(ida_mem, njtsetups)
    ccall((:IDASpilsGetNumJTSetupEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, njtsetups)
end

function IDASpilsGetNumJtimesEvals(ida_mem, njvevals)
    ccall((:IDASpilsGetNumJtimesEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, njvevals)
end

function IDASpilsGetNumResEvals(ida_mem, nrevalsLS)
    ccall((:IDASpilsGetNumResEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem, flag)
    ccall((:IDASpilsGetLastFlag, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName, libsundials_idas), Cstring, (Clong,), flag)
end

function IDAComputeYSens(ida_mem, ycor, yyS)
    ccall((:IDAComputeYSens, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, ycor, yyS)
end

function IDAComputeYpSens(ida_mem, ycor, ypS)
    ccall((:IDAComputeYpSens, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, ycor, ypS)
end

function IDAGetCurrentYSens(ida_mem, yS)
    ccall((:IDAGetCurrentYSens, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Ptr{N_Vector}}), ida_mem, yS)
end

function IDAGetCurrentYpSens(ida_mem, ypS)
    ccall((:IDAGetCurrentYpSens, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Ptr{N_Vector}}), ida_mem, ypS)
end

function IDAGetNonlinearSystemDataSens(ida_mem, tcur, yySpred, ypSpred, yySn, ypSn, cj, user_data)
    ccall((:IDAGetNonlinearSystemDataSens, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}, Ptr{Ptr{N_Vector}}, Ptr{Ptr{N_Vector}}, Ptr{Ptr{N_Vector}}, Ptr{Ptr{N_Vector}}, Ptr{realtype}, Ptr{Ptr{Cvoid}}), ida_mem, tcur, yySpred, ypSpred, yySn, ypSn, cj, user_data)
end

function IDAQuadInit(ida_mem, rhsQ::IDAQuadRhsFn, yQ0::N_Vector)
    ccall((:IDAQuadInit, libsundials_idas), Cint, (Ptr{Cvoid}, IDAQuadRhsFn, N_Vector), ida_mem, rhsQ, yQ0)
end

function IDAQuadReInit(ida_mem, yQ0::N_Vector)
    ccall((:IDAQuadReInit, libsundials_idas), Cint, (Ptr{Cvoid}, N_Vector), ida_mem, yQ0)
end

function IDAQuadSStolerances(ida_mem, reltolQ::realtype, abstolQ::realtype)
    ccall((:IDAQuadSStolerances, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, realtype), ida_mem, reltolQ, abstolQ)
end

function IDAQuadSVtolerances(ida_mem, reltolQ::realtype, abstolQ::N_Vector)
    ccall((:IDAQuadSVtolerances, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, N_Vector), ida_mem, reltolQ, abstolQ)
end

function IDASetQuadErrCon(ida_mem, errconQ::Cint)
    ccall((:IDASetQuadErrCon, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, errconQ)
end

function IDAGetQuad(ida_mem, t, yQout::N_Vector)
    ccall((:IDAGetQuad, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}, N_Vector), ida_mem, t, yQout)
end

function IDAGetQuadDky(ida_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:IDAGetQuadDky, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, Cint, N_Vector), ida_mem, t, k, dky)
end

function IDAGetQuadNumRhsEvals(ida_mem, nrhsQevals)
    ccall((:IDAGetQuadNumRhsEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nrhsQevals)
end

function IDAGetQuadNumErrTestFails(ida_mem, nQetfails)
    ccall((:IDAGetQuadNumErrTestFails, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nQetfails)
end

function IDAGetQuadErrWeights(ida_mem, eQweight::N_Vector)
    ccall((:IDAGetQuadErrWeights, libsundials_idas), Cint, (Ptr{Cvoid}, N_Vector), ida_mem, eQweight)
end

function IDAGetQuadStats(ida_mem, nrhsQevals, nQetfails)
    ccall((:IDAGetQuadStats, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), ida_mem, nrhsQevals, nQetfails)
end

function IDAQuadFree(ida_mem)
    ccall((:IDAQuadFree, libsundials_idas), Cvoid, (Ptr{Cvoid},), ida_mem)
end

function IDASensInit(ida_mem, Ns::Cint, ism::Cint, resS::IDASensResFn, yS0, ypS0)
    ccall((:IDASensInit, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, Cint, IDASensResFn, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, Ns, ism, resS, yS0, ypS0)
end

function IDASensReInit(ida_mem, ism::Cint, yS0, ypS0)
    ccall((:IDASensReInit, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, ism, yS0, ypS0)
end

function IDASensSStolerances(ida_mem, reltolS::realtype, abstolS)
    ccall((:IDASensSStolerances, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, Ptr{realtype}), ida_mem, reltolS, abstolS)
end

function IDASensSVtolerances(ida_mem, reltolS::realtype, abstolS)
    ccall((:IDASensSVtolerances, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, Ptr{N_Vector}), ida_mem, reltolS, abstolS)
end

function IDASensEEtolerances(ida_mem)
    ccall((:IDASensEEtolerances, libsundials_idas), Cint, (Ptr{Cvoid},), ida_mem)
end

function IDAGetSensConsistentIC(ida_mem, yyS0, ypS0)
    ccall((:IDAGetSensConsistentIC, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, yyS0, ypS0)
end

function IDASetSensDQMethod(ida_mem, DQtype::Cint, DQrhomax::realtype)
    ccall((:IDASetSensDQMethod, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype), ida_mem, DQtype, DQrhomax)
end

function IDASetSensErrCon(ida_mem, errconS::Cint)
    ccall((:IDASetSensErrCon, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, errconS)
end

function IDASetSensMaxNonlinIters(ida_mem, maxcorS::Cint)
    ccall((:IDASetSensMaxNonlinIters, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, maxcorS)
end

function IDASetSensParams(ida_mem, p, pbar, plist)
    ccall((:IDASetSensParams, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}, Ptr{realtype}, Ptr{Cint}), ida_mem, p, pbar, plist)
end

function IDASetNonlinearSolverSensSim(ida_mem, NLS::SUNNonlinearSolver)
    ccall((:IDASetNonlinearSolverSensSim, libsundials_idas), Cint, (Ptr{Cvoid}, SUNNonlinearSolver), ida_mem, NLS)
end

function IDASetNonlinearSolverSensStg(ida_mem, NLS::SUNNonlinearSolver)
    ccall((:IDASetNonlinearSolverSensStg, libsundials_idas), Cint, (Ptr{Cvoid}, SUNNonlinearSolver), ida_mem, NLS)
end

function IDASensToggleOff(ida_mem)
    ccall((:IDASensToggleOff, libsundials_idas), Cint, (Ptr{Cvoid},), ida_mem)
end

function IDAGetSens(ida_mem, tret, yySout)
    ccall((:IDAGetSens, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}, Ptr{N_Vector}), ida_mem, tret, yySout)
end

function IDAGetSens1(ida_mem, tret, is::Cint, yySret::N_Vector)
    ccall((:IDAGetSens1, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}, Cint, N_Vector), ida_mem, tret, is, yySret)
end

function IDAGetSensDky(ida_mem, t::realtype, k::Cint, dkyS)
    ccall((:IDAGetSensDky, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, Cint, Ptr{N_Vector}), ida_mem, t, k, dkyS)
end

function IDAGetSensDky1(ida_mem, t::realtype, k::Cint, is::Cint, dkyS::N_Vector)
    ccall((:IDAGetSensDky1, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, Cint, Cint, N_Vector), ida_mem, t, k, is, dkyS)
end

function IDAGetSensNumResEvals(ida_mem, nresSevals)
    ccall((:IDAGetSensNumResEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nresSevals)
end

function IDAGetNumResEvalsSens(ida_mem, nresevalsS)
    ccall((:IDAGetNumResEvalsSens, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nresevalsS)
end

function IDAGetSensNumErrTestFails(ida_mem, nSetfails)
    ccall((:IDAGetSensNumErrTestFails, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nSetfails)
end

function IDAGetSensNumLinSolvSetups(ida_mem, nlinsetupsS)
    ccall((:IDAGetSensNumLinSolvSetups, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nlinsetupsS)
end

function IDAGetSensErrWeights(ida_mem, eSweight::N_Vector_S)
    ccall((:IDAGetSensErrWeights, libsundials_idas), Cint, (Ptr{Cvoid}, N_Vector_S), ida_mem, eSweight)
end

function IDAGetSensStats(ida_mem, nresSevals, nresevalsS, nSetfails, nlinsetupsS)
    ccall((:IDAGetSensStats, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}), ida_mem, nresSevals, nresevalsS, nSetfails, nlinsetupsS)
end

function IDAGetSensNumNonlinSolvIters(ida_mem, nSniters)
    ccall((:IDAGetSensNumNonlinSolvIters, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nSniters)
end

function IDAGetSensNumNonlinSolvConvFails(ida_mem, nSnfails)
    ccall((:IDAGetSensNumNonlinSolvConvFails, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nSnfails)
end

function IDAGetSensNonlinSolvStats(ida_mem, nSniters, nSnfails)
    ccall((:IDAGetSensNonlinSolvStats, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), ida_mem, nSniters, nSnfails)
end

function IDAGetNumStepSensSolveFails(ida_mem, nSncfails)
    ccall((:IDAGetNumStepSensSolveFails, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nSncfails)
end

function IDASensFree(ida_mem)
    ccall((:IDASensFree, libsundials_idas), Cvoid, (Ptr{Cvoid},), ida_mem)
end

function IDAQuadSensInit(ida_mem, resQS::IDAQuadSensRhsFn, yQS0)
    ccall((:IDAQuadSensInit, libsundials_idas), Cint, (Ptr{Cvoid}, IDAQuadSensRhsFn, Ptr{N_Vector}), ida_mem, resQS, yQS0)
end

function IDAQuadSensReInit(ida_mem, yQS0)
    ccall((:IDAQuadSensReInit, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{N_Vector}), ida_mem, yQS0)
end

function IDAQuadSensSStolerances(ida_mem, reltolQS::realtype, abstolQS)
    ccall((:IDAQuadSensSStolerances, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, Ptr{realtype}), ida_mem, reltolQS, abstolQS)
end

function IDAQuadSensSVtolerances(ida_mem, reltolQS::realtype, abstolQS)
    ccall((:IDAQuadSensSVtolerances, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, Ptr{N_Vector}), ida_mem, reltolQS, abstolQS)
end

function IDAQuadSensEEtolerances(ida_mem)
    ccall((:IDAQuadSensEEtolerances, libsundials_idas), Cint, (Ptr{Cvoid},), ida_mem)
end

function IDASetQuadSensErrCon(ida_mem, errconQS::Cint)
    ccall((:IDASetQuadSensErrCon, libsundials_idas), Cint, (Ptr{Cvoid}, Cint), ida_mem, errconQS)
end

function IDAGetQuadSens(ida_mem, tret, yyQSout)
    ccall((:IDAGetQuadSens, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}, Ptr{N_Vector}), ida_mem, tret, yyQSout)
end

function IDAGetQuadSens1(ida_mem, tret, is::Cint, yyQSret::N_Vector)
    ccall((:IDAGetQuadSens1, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{realtype}, Cint, N_Vector), ida_mem, tret, is, yyQSret)
end

function IDAGetQuadSensDky(ida_mem, t::realtype, k::Cint, dkyQS)
    ccall((:IDAGetQuadSensDky, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, Cint, Ptr{N_Vector}), ida_mem, t, k, dkyQS)
end

function IDAGetQuadSensDky1(ida_mem, t::realtype, k::Cint, is::Cint, dkyQS::N_Vector)
    ccall((:IDAGetQuadSensDky1, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, Cint, Cint, N_Vector), ida_mem, t, k, is, dkyQS)
end

function IDAGetQuadSensNumRhsEvals(ida_mem, nrhsQSevals)
    ccall((:IDAGetQuadSensNumRhsEvals, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nrhsQSevals)
end

function IDAGetQuadSensNumErrTestFails(ida_mem, nQSetfails)
    ccall((:IDAGetQuadSensNumErrTestFails, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}), ida_mem, nQSetfails)
end

function IDAGetQuadSensErrWeights(ida_mem, eQSweight)
    ccall((:IDAGetQuadSensErrWeights, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{N_Vector}), ida_mem, eQSweight)
end

function IDAGetQuadSensStats(ida_mem, nrhsQSevals, nQSetfails)
    ccall((:IDAGetQuadSensStats, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), ida_mem, nrhsQSevals, nQSetfails)
end

function IDAQuadSensFree(ida_mem)
    ccall((:IDAQuadSensFree, libsundials_idas), Cvoid, (Ptr{Cvoid},), ida_mem)
end

function IDAAdjInit(ida_mem, steps::Clong, interp::Cint)
    ccall((:IDAAdjInit, libsundials_idas), Cint, (Ptr{Cvoid}, Clong, Cint), ida_mem, steps, interp)
end

function IDAAdjReInit(ida_mem)
    ccall((:IDAAdjReInit, libsundials_idas), Cint, (Ptr{Cvoid},), ida_mem)
end

function IDAAdjFree(ida_mem)
    ccall((:IDAAdjFree, libsundials_idas), Cvoid, (Ptr{Cvoid},), ida_mem)
end

function IDACreateB(ida_mem, which)
    ccall((:IDACreateB, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Cint}), ida_mem, which)
end

function IDAInitB(ida_mem, which::Cint, resB::IDAResFnB, tB0::realtype, yyB0::N_Vector, ypB0::N_Vector)
    ccall((:IDAInitB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDAResFnB, realtype, N_Vector, N_Vector), ida_mem, which, resB, tB0, yyB0, ypB0)
end

function IDAInitBS(ida_mem, which::Cint, resS::IDAResFnBS, tB0::realtype, yyB0::N_Vector, ypB0::N_Vector)
    ccall((:IDAInitBS, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDAResFnBS, realtype, N_Vector, N_Vector), ida_mem, which, resS, tB0, yyB0, ypB0)
end

function IDAReInitB(ida_mem, which::Cint, tB0::realtype, yyB0::N_Vector, ypB0::N_Vector)
    ccall((:IDAReInitB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype, N_Vector, N_Vector), ida_mem, which, tB0, yyB0, ypB0)
end

function IDASStolerancesB(ida_mem, which::Cint, relTolB::realtype, absTolB::realtype)
    ccall((:IDASStolerancesB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype, realtype), ida_mem, which, relTolB, absTolB)
end

function IDASVtolerancesB(ida_mem, which::Cint, relTolB::realtype, absTolB::N_Vector)
    ccall((:IDASVtolerancesB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype, N_Vector), ida_mem, which, relTolB, absTolB)
end

function IDAQuadInitB(ida_mem, which::Cint, rhsQB::IDAQuadRhsFnB, yQB0::N_Vector)
    ccall((:IDAQuadInitB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDAQuadRhsFnB, N_Vector), ida_mem, which, rhsQB, yQB0)
end

function IDAQuadInitBS(ida_mem, which::Cint, rhsQS::IDAQuadRhsFnBS, yQB0::N_Vector)
    ccall((:IDAQuadInitBS, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDAQuadRhsFnBS, N_Vector), ida_mem, which, rhsQS, yQB0)
end

function IDAQuadReInitB(ida_mem, which::Cint, yQB0::N_Vector)
    ccall((:IDAQuadReInitB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, N_Vector), ida_mem, which, yQB0)
end

function IDAQuadSStolerancesB(ida_mem, which::Cint, reltolQB::realtype, abstolQB::realtype)
    ccall((:IDAQuadSStolerancesB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype, realtype), ida_mem, which, reltolQB, abstolQB)
end

function IDAQuadSVtolerancesB(ida_mem, which::Cint, reltolQB::realtype, abstolQB::N_Vector)
    ccall((:IDAQuadSVtolerancesB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype, N_Vector), ida_mem, which, reltolQB, abstolQB)
end

function IDACalcICB(ida_mem, which::Cint, tout1::realtype, yy0::N_Vector, yp0::N_Vector)
    ccall((:IDACalcICB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype, N_Vector, N_Vector), ida_mem, which, tout1, yy0, yp0)
end

function IDACalcICBS(ida_mem, which::Cint, tout1::realtype, yy0::N_Vector, yp0::N_Vector, yyS0, ypS0)
    ccall((:IDACalcICBS, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype, N_Vector, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, which, tout1, yy0, yp0, yyS0, ypS0)
end

function IDASolveF(ida_mem, tout::realtype, tret, yret::N_Vector, ypret::N_Vector, itask::Cint, ncheckPtr)
    ccall((:IDASolveF, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, Ptr{realtype}, N_Vector, N_Vector, Cint, Ptr{Cint}), ida_mem, tout, tret, yret, ypret, itask, ncheckPtr)
end

function IDASolveB(ida_mem, tBout::realtype, itaskB::Cint)
    ccall((:IDASolveB, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, Cint), ida_mem, tBout, itaskB)
end

function IDAAdjSetNoSensi(ida_mem)
    ccall((:IDAAdjSetNoSensi, libsundials_idas), Cint, (Ptr{Cvoid},), ida_mem)
end

function IDASetUserDataB(ida_mem, which::Cint, user_dataB)
    ccall((:IDASetUserDataB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, Ptr{Cvoid}), ida_mem, which, user_dataB)
end

function IDASetMaxOrdB(ida_mem, which::Cint, maxordB::Cint)
    ccall((:IDASetMaxOrdB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, Cint), ida_mem, which, maxordB)
end

function IDASetMaxNumStepsB(ida_mem, which::Cint, mxstepsB::Clong)
    ccall((:IDASetMaxNumStepsB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, Clong), ida_mem, which, mxstepsB)
end

function IDASetInitStepB(ida_mem, which::Cint, hinB::realtype)
    ccall((:IDASetInitStepB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype), ida_mem, which, hinB)
end

function IDASetMaxStepB(ida_mem, which::Cint, hmaxB::realtype)
    ccall((:IDASetMaxStepB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype), ida_mem, which, hmaxB)
end

function IDASetSuppressAlgB(ida_mem, which::Cint, suppressalgB::Cint)
    ccall((:IDASetSuppressAlgB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, Cint), ida_mem, which, suppressalgB)
end

function IDASetIdB(ida_mem, which::Cint, idB::N_Vector)
    ccall((:IDASetIdB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, N_Vector), ida_mem, which, idB)
end

function IDASetConstraintsB(ida_mem, which::Cint, constraintsB::N_Vector)
    ccall((:IDASetConstraintsB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, N_Vector), ida_mem, which, constraintsB)
end

function IDASetQuadErrConB(ida_mem, which::Cint, errconQB::Cint)
    ccall((:IDASetQuadErrConB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, Cint), ida_mem, which, errconQB)
end

function IDASetNonlinearSolverB(ida_mem, which::Cint, NLS::SUNNonlinearSolver)
    ccall((:IDASetNonlinearSolverB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, SUNNonlinearSolver), ida_mem, which, NLS)
end

function IDAGetB(ida_mem, which::Cint, tret, yy::N_Vector, yp::N_Vector)
    ccall((:IDAGetB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, Ptr{realtype}, N_Vector, N_Vector), ida_mem, which, tret, yy, yp)
end

function IDAGetQuadB(ida_mem, which::Cint, tret, qB::N_Vector)
    ccall((:IDAGetQuadB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, Ptr{realtype}, N_Vector), ida_mem, which, tret, qB)
end

function IDAGetAdjIDABmem(ida_mem, which::Cint)
    ccall((:IDAGetAdjIDABmem, libsundials_idas), Ptr{Cvoid}, (Ptr{Cvoid}, Cint), ida_mem, which)
end

function IDAGetConsistentICB(ida_mem, which::Cint, yyB0::N_Vector, ypB0::N_Vector)
    ccall((:IDAGetConsistentICB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, N_Vector, N_Vector), ida_mem, which, yyB0, ypB0)
end

function IDAGetAdjY(ida_mem, t::realtype, yy::N_Vector, yp::N_Vector)
    ccall((:IDAGetAdjY, libsundials_idas), Cint, (Ptr{Cvoid}, realtype, N_Vector, N_Vector), ida_mem, t, yy, yp)
end

function IDAGetAdjCheckPointsInfo(ida_mem, ckpnt)
    ccall((:IDAGetAdjCheckPointsInfo, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{IDAadjCheckPointRec}), ida_mem, ckpnt)
end

function IDASetJacTimesResFnB(ida_mem, which::Cint, jtimesResFn::IDAResFn)
    ccall((:IDASetJacTimesResFnB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDAResFn), ida_mem, which, jtimesResFn)
end

function IDAGetAdjDataPointHermite(ida_mem, which::Cint, t, yy::N_Vector, yd::N_Vector)
    ccall((:IDAGetAdjDataPointHermite, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, Ptr{realtype}, N_Vector, N_Vector), ida_mem, which, t, yy, yd)
end

function IDAGetAdjDataPointPolynomial(ida_mem, which::Cint, t, order, y::N_Vector)
    ccall((:IDAGetAdjDataPointPolynomial, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, Ptr{realtype}, Ptr{Cint}, N_Vector), ida_mem, which, t, order, y)
end

function IDAGetAdjCurrentCheckPoint(ida_mem, addr)
    ccall((:IDAGetAdjCurrentCheckPoint, libsundials_idas), Cint, (Ptr{Cvoid}, Ptr{Ptr{Cvoid}}), ida_mem, addr)
end

function IDABBDPrecInitB(ida_mem, which::Cint, NlocalB::sunindextype, mudqB::sunindextype, mldqB::sunindextype, mukeepB::sunindextype, mlkeepB::sunindextype, dq_rel_yyB::realtype, GresB::IDABBDLocalFnB, GcommB::IDABBDCommFnB)
    ccall((:IDABBDPrecInitB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, IDABBDLocalFnB, IDABBDCommFnB), ida_mem, which, NlocalB, mudqB, mldqB, mukeepB, mlkeepB, dq_rel_yyB, GresB, GcommB)
end

function IDABBDPrecReInitB(ida_mem, which::Cint, mudqB::sunindextype, mldqB::sunindextype, dq_rel_yyB::realtype)
    ccall((:IDABBDPrecReInitB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, sunindextype, sunindextype, realtype), ida_mem, which, mudqB, mldqB, dq_rel_yyB)
end

function IDADlsSetLinearSolverB(ida_mem, which::Cint, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:IDADlsSetLinearSolverB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, SUNLinearSolver, SUNMatrix), ida_mem, which, LS, A)
end

function IDADlsSetJacFnB(ida_mem, which::Cint, jacB::IDADlsJacFnB)
    ccall((:IDADlsSetJacFnB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDADlsJacFnB), ida_mem, which, jacB)
end

function IDADlsSetJacFnBS(ida_mem, which::Cint, jacBS::IDADlsJacFnBS)
    ccall((:IDADlsSetJacFnBS, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDADlsJacFnBS), ida_mem, which, jacBS)
end

function IDASetLinearSolverB(ida_mem, which::Cint, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:IDASetLinearSolverB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, SUNLinearSolver, SUNMatrix), ida_mem, which, LS, A)
end

function IDASetJacFnB(ida_mem, which::Cint, jacB::IDALsJacFnB)
    ccall((:IDASetJacFnB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDALsJacFnB), ida_mem, which, jacB)
end

function IDASetJacFnBS(ida_mem, which::Cint, jacBS::IDALsJacFnBS)
    ccall((:IDASetJacFnBS, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDALsJacFnBS), ida_mem, which, jacBS)
end

function IDASetEpsLinB(ida_mem, which::Cint, eplifacB::realtype)
    ccall((:IDASetEpsLinB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype), ida_mem, which, eplifacB)
end

function IDASetLSNormFactorB(ida_mem, which::Cint, nrmfacB::realtype)
    ccall((:IDASetLSNormFactorB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype), ida_mem, which, nrmfacB)
end

function IDASetLinearSolutionScalingB(ida_mem, which::Cint, onoffB::Cint)
    ccall((:IDASetLinearSolutionScalingB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, Cint), ida_mem, which, onoffB)
end

function IDASetIncrementFactorB(ida_mem, which::Cint, dqincfacB::realtype)
    ccall((:IDASetIncrementFactorB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype), ida_mem, which, dqincfacB)
end

function IDASetPreconditionerB(ida_mem, which::Cint, psetB::IDALsPrecSetupFnB, psolveB::IDALsPrecSolveFnB)
    ccall((:IDASetPreconditionerB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDALsPrecSetupFnB, IDALsPrecSolveFnB), ida_mem, which, psetB, psolveB)
end

function IDASetPreconditionerBS(ida_mem, which::Cint, psetBS::IDALsPrecSetupFnBS, psolveBS::IDALsPrecSolveFnBS)
    ccall((:IDASetPreconditionerBS, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDALsPrecSetupFnBS, IDALsPrecSolveFnBS), ida_mem, which, psetBS, psolveBS)
end

function IDASetJacTimesB(ida_mem, which::Cint, jtsetupB::IDALsJacTimesSetupFnB, jtimesB::IDALsJacTimesVecFnB)
    ccall((:IDASetJacTimesB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDALsJacTimesSetupFnB, IDALsJacTimesVecFnB), ida_mem, which, jtsetupB, jtimesB)
end

function IDASetJacTimesBS(ida_mem, which::Cint, jtsetupBS::IDALsJacTimesSetupFnBS, jtimesBS::IDALsJacTimesVecFnBS)
    ccall((:IDASetJacTimesBS, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDALsJacTimesSetupFnBS, IDALsJacTimesVecFnBS), ida_mem, which, jtsetupBS, jtimesBS)
end

function IDASpilsSetLinearSolverB(ida_mem, which::Cint, LS::SUNLinearSolver)
    ccall((:IDASpilsSetLinearSolverB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, SUNLinearSolver), ida_mem, which, LS)
end

function IDASpilsSetEpsLinB(ida_mem, which::Cint, eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype), ida_mem, which, eplifacB)
end

function IDASpilsSetIncrementFactorB(ida_mem, which::Cint, dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, realtype), ida_mem, which, dqincfacB)
end

function IDASpilsSetPreconditionerB(ida_mem, which::Cint, psetB::IDASpilsPrecSetupFnB, psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDASpilsPrecSetupFnB, IDASpilsPrecSolveFnB), ida_mem, which, psetB, psolveB)
end

function IDASpilsSetPreconditionerBS(ida_mem, which::Cint, psetBS::IDASpilsPrecSetupFnBS, psolveBS::IDASpilsPrecSolveFnBS)
    ccall((:IDASpilsSetPreconditionerBS, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDASpilsPrecSetupFnBS, IDASpilsPrecSolveFnBS), ida_mem, which, psetBS, psolveBS)
end

function IDASpilsSetJacTimesB(ida_mem, which::Cint, jtsetupB::IDASpilsJacTimesSetupFnB, jtimesB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesB, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDASpilsJacTimesSetupFnB, IDASpilsJacTimesVecFnB), ida_mem, which, jtsetupB, jtimesB)
end

function IDASpilsSetJacTimesBS(ida_mem, which::Cint, jtsetupBS::IDASpilsJacTimesSetupFnBS, jtimesBS::IDASpilsJacTimesVecFnBS)
    ccall((:IDASpilsSetJacTimesBS, libsundials_idas), Cint, (Ptr{Cvoid}, Cint, IDASpilsJacTimesSetupFnBS, IDASpilsJacTimesVecFnBS), ida_mem, which, jtsetupBS, jtimesBS)
end

function KINCreate(sunctx::SUNContext)
    ccall((:KINCreate, libsundials_kinsol), Ptr{KINMem}, (SUNContext,), sunctx)
end

function KINInit(kinmem, func::KINSysFn, tmpl::N_Vector)
    ccall((:KINInit, libsundials_kinsol), Cint, (Ptr{Cvoid}, KINSysFn, N_Vector), kinmem, func, tmpl)
end

function KINSol(kinmem, uu::N_Vector, strategy::Cint, u_scale::N_Vector, f_scale::N_Vector)
    ccall((:KINSol, libsundials_kinsol), Cint, (Ptr{Cvoid}, N_Vector, Cint, N_Vector, N_Vector), kinmem, uu, strategy, u_scale, f_scale)
end

function KINSetUserData(kinmem, user_data)
    ccall((:KINSetUserData, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Cvoid}), kinmem, user_data)
end

function KINSetDamping(kinmem, beta::realtype)
    ccall((:KINSetDamping, libsundials_kinsol), Cint, (Ptr{Cvoid}, realtype), kinmem, beta)
end

function KINSetMAA(kinmem, maa::Clong)
    ccall((:KINSetMAA, libsundials_kinsol), Cint, (Ptr{Cvoid}, Clong), kinmem, maa)
end

function KINSetOrthAA(kinmem, orthaa::Cint)
    ccall((:KINSetOrthAA, libsundials_kinsol), Cint, (Ptr{Cvoid}, Cint), kinmem, orthaa)
end

function KINSetDelayAA(kinmem, delay::Clong)
    ccall((:KINSetDelayAA, libsundials_kinsol), Cint, (Ptr{Cvoid}, Clong), kinmem, delay)
end

function KINSetDampingAA(kinmem, beta::realtype)
    ccall((:KINSetDampingAA, libsundials_kinsol), Cint, (Ptr{Cvoid}, realtype), kinmem, beta)
end

function KINSetReturnNewest(kinmem, ret_newest::Cint)
    ccall((:KINSetReturnNewest, libsundials_kinsol), Cint, (Ptr{Cvoid}, Cint), kinmem, ret_newest)
end

function KINSetNumMaxIters(kinmem, mxiter::Clong)
    ccall((:KINSetNumMaxIters, libsundials_kinsol), Cint, (Ptr{Cvoid}, Clong), kinmem, mxiter)
end

function KINSetNoInitSetup(kinmem, noInitSetup::Cint)
    ccall((:KINSetNoInitSetup, libsundials_kinsol), Cint, (Ptr{Cvoid}, Cint), kinmem, noInitSetup)
end

function KINSetNoResMon(kinmem, noNNIResMon::Cint)
    ccall((:KINSetNoResMon, libsundials_kinsol), Cint, (Ptr{Cvoid}, Cint), kinmem, noNNIResMon)
end

function KINSetMaxSetupCalls(kinmem, msbset::Clong)
    ccall((:KINSetMaxSetupCalls, libsundials_kinsol), Cint, (Ptr{Cvoid}, Clong), kinmem, msbset)
end

function KINSetMaxSubSetupCalls(kinmem, msbsetsub::Clong)
    ccall((:KINSetMaxSubSetupCalls, libsundials_kinsol), Cint, (Ptr{Cvoid}, Clong), kinmem, msbsetsub)
end

function KINSetEtaForm(kinmem, etachoice::Cint)
    ccall((:KINSetEtaForm, libsundials_kinsol), Cint, (Ptr{Cvoid}, Cint), kinmem, etachoice)
end

function KINSetEtaConstValue(kinmem, eta::realtype)
    ccall((:KINSetEtaConstValue, libsundials_kinsol), Cint, (Ptr{Cvoid}, realtype), kinmem, eta)
end

function KINSetEtaParams(kinmem, egamma::realtype, ealpha::realtype)
    ccall((:KINSetEtaParams, libsundials_kinsol), Cint, (Ptr{Cvoid}, realtype, realtype), kinmem, egamma, ealpha)
end

function KINSetResMonParams(kinmem, omegamin::realtype, omegamax::realtype)
    ccall((:KINSetResMonParams, libsundials_kinsol), Cint, (Ptr{Cvoid}, realtype, realtype), kinmem, omegamin, omegamax)
end

function KINSetResMonConstValue(kinmem, omegaconst::realtype)
    ccall((:KINSetResMonConstValue, libsundials_kinsol), Cint, (Ptr{Cvoid}, realtype), kinmem, omegaconst)
end

function KINSetNoMinEps(kinmem, noMinEps::Cint)
    ccall((:KINSetNoMinEps, libsundials_kinsol), Cint, (Ptr{Cvoid}, Cint), kinmem, noMinEps)
end

function KINSetMaxNewtonStep(kinmem, mxnewtstep::realtype)
    ccall((:KINSetMaxNewtonStep, libsundials_kinsol), Cint, (Ptr{Cvoid}, realtype), kinmem, mxnewtstep)
end

function KINSetMaxBetaFails(kinmem, mxnbcf::Clong)
    ccall((:KINSetMaxBetaFails, libsundials_kinsol), Cint, (Ptr{Cvoid}, Clong), kinmem, mxnbcf)
end

function KINSetRelErrFunc(kinmem, relfunc::realtype)
    ccall((:KINSetRelErrFunc, libsundials_kinsol), Cint, (Ptr{Cvoid}, realtype), kinmem, relfunc)
end

function KINSetFuncNormTol(kinmem, fnormtol::realtype)
    ccall((:KINSetFuncNormTol, libsundials_kinsol), Cint, (Ptr{Cvoid}, realtype), kinmem, fnormtol)
end

function KINSetScaledStepTol(kinmem, scsteptol::realtype)
    ccall((:KINSetScaledStepTol, libsundials_kinsol), Cint, (Ptr{Cvoid}, realtype), kinmem, scsteptol)
end

function KINSetConstraints(kinmem, constraints::N_Vector)
    ccall((:KINSetConstraints, libsundials_kinsol), Cint, (Ptr{Cvoid}, N_Vector), kinmem, constraints)
end

function KINSetSysFunc(kinmem, func::KINSysFn)
    ccall((:KINSetSysFunc, libsundials_kinsol), Cint, (Ptr{Cvoid}, KINSysFn), kinmem, func)
end

function KINSetErrHandlerFn(kinmem, ehfun::KINErrHandlerFn, eh_data)
    ccall((:KINSetErrHandlerFn, libsundials_kinsol), Cint, (Ptr{Cvoid}, KINErrHandlerFn, Ptr{Cvoid}), kinmem, ehfun, eh_data)
end

function KINSetErrFile(kinmem, errfp)
    ccall((:KINSetErrFile, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), kinmem, errfp)
end

function KINSetInfoHandlerFn(kinmem, ihfun::KINInfoHandlerFn, ih_data)
    ccall((:KINSetInfoHandlerFn, libsundials_kinsol), Cint, (Ptr{Cvoid}, KINInfoHandlerFn, Ptr{Cvoid}), kinmem, ihfun, ih_data)
end

function KINSetInfoFile(kinmem, infofp)
    ccall((:KINSetInfoFile, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), kinmem, infofp)
end

function KINSetPrintLevel(kinmem, printfl::Cint)
    ccall((:KINSetPrintLevel, libsundials_kinsol), Cint, (Ptr{Cvoid}, Cint), kinmem, printfl)
end

function KINSetDebugFile(kinmem, debugfp)
    ccall((:KINSetDebugFile, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}), kinmem, debugfp)
end

function KINGetWorkSpace(kinmem, lenrw, leniw)
    ccall((:KINGetWorkSpace, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), kinmem, lenrw, leniw)
end

function KINGetNumNonlinSolvIters(kinmem, nniters)
    ccall((:KINGetNumNonlinSolvIters, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, nniters)
end

function KINGetNumFuncEvals(kinmem, nfevals)
    ccall((:KINGetNumFuncEvals, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, nfevals)
end

function KINGetNumBetaCondFails(kinmem, nbcfails)
    ccall((:KINGetNumBetaCondFails, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, nbcfails)
end

function KINGetNumBacktrackOps(kinmem, nbacktr)
    ccall((:KINGetNumBacktrackOps, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, nbacktr)
end

function KINGetFuncNorm(kinmem, fnorm)
    ccall((:KINGetFuncNorm, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{realtype}), kinmem, fnorm)
end

function KINGetStepLength(kinmem, steplength)
    ccall((:KINGetStepLength, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{realtype}), kinmem, steplength)
end

function KINGetUserData(kinmem, user_data)
    ccall((:KINGetUserData, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Ptr{Cvoid}}), kinmem, user_data)
end

function KINPrintAllStats(kinmem, outfile, fmt::SUNOutputFormat)
    ccall((:KINPrintAllStats, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Libc.FILE}, SUNOutputFormat), kinmem, outfile, fmt)
end

function KINGetReturnFlagName(flag::Clong)
    ccall((:KINGetReturnFlagName, libsundials_kinsol), Cstring, (Clong,), flag)
end

function KINFree(kinmem)
    ccall((:KINFree, libsundials_kinsol), Cvoid, (Ptr{Ptr{Cvoid}},), kinmem)
end

function KINSetJacTimesVecSysFn(kinmem, jtimesSysFn::KINSysFn)
    ccall((:KINSetJacTimesVecSysFn, libsundials_kinsol), Cint, (Ptr{Cvoid}, KINSysFn), kinmem, jtimesSysFn)
end

function KINBBDPrecInit(kinmem, Nlocal::sunindextype, mudq::sunindextype, mldq::sunindextype, mukeep::sunindextype, mlkeep::sunindextype, dq_rel_uu::realtype, gloc::KINBBDLocalFn, gcomm::KINBBDCommFn)
    ccall((:KINBBDPrecInit, libsundials_kinsol), Cint, (Ptr{Cvoid}, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, KINBBDLocalFn, KINBBDCommFn), kinmem, Nlocal, mudq, mldq, mukeep, mlkeep, dq_rel_uu, gloc, gcomm)
end

function KINBBDPrecGetWorkSpace(kinmem, lenrwBBDP, leniwBBDP)
    ccall((:KINBBDPrecGetWorkSpace, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), kinmem, lenrwBBDP, leniwBBDP)
end

function KINBBDPrecGetNumGfnEvals(kinmem, ngevalsBBDP)
    ccall((:KINBBDPrecGetNumGfnEvals, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, ngevalsBBDP)
end

function KINDlsSetLinearSolver(kinmem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:KINDlsSetLinearSolver, libsundials_kinsol), Cint, (Ptr{Cvoid}, SUNLinearSolver, SUNMatrix), kinmem, LS, A)
end

function KINDlsSetJacFn(kinmem, jac::KINDlsJacFn)
    ccall((:KINDlsSetJacFn, libsundials_kinsol), Cint, (Ptr{Cvoid}, KINDlsJacFn), kinmem, jac)
end

function KINDlsGetWorkSpace(kinmem, lenrw, leniw)
    ccall((:KINDlsGetWorkSpace, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), kinmem, lenrw, leniw)
end

function KINDlsGetNumJacEvals(kinmem, njevals)
    ccall((:KINDlsGetNumJacEvals, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, njevals)
end

function KINDlsGetNumFuncEvals(kinmem, nfevals)
    ccall((:KINDlsGetNumFuncEvals, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, nfevals)
end

function KINDlsGetLastFlag(kinmem, flag)
    ccall((:KINDlsGetLastFlag, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, flag)
end

function KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName, libsundials_kinsol), Cstring, (Clong,), flag)
end

function KINSetLinearSolver(kinmem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:KINSetLinearSolver, libsundials_kinsol), Cint, (Ptr{Cvoid}, SUNLinearSolver, SUNMatrix), kinmem, LS, A)
end

function KINSetJacFn(kinmem, jac::KINLsJacFn)
    ccall((:KINSetJacFn, libsundials_kinsol), Cint, (Ptr{Cvoid}, KINLsJacFn), kinmem, jac)
end

function KINSetPreconditioner(kinmem, psetup::KINLsPrecSetupFn, psolve::KINLsPrecSolveFn)
    ccall((:KINSetPreconditioner, libsundials_kinsol), Cint, (Ptr{Cvoid}, KINLsPrecSetupFn, KINLsPrecSolveFn), kinmem, psetup, psolve)
end

function KINSetJacTimesVecFn(kinmem, jtv::KINLsJacTimesVecFn)
    ccall((:KINSetJacTimesVecFn, libsundials_kinsol), Cint, (Ptr{Cvoid}, KINLsJacTimesVecFn), kinmem, jtv)
end

function KINGetJac(kinmem, J)
    ccall((:KINGetJac, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{SUNMatrix}), kinmem, J)
end

function KINGetJacNumIters(kinmem, nni_J)
    ccall((:KINGetJacNumIters, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, nni_J)
end

function KINGetLinWorkSpace(kinmem, lenrwLS, leniwLS)
    ccall((:KINGetLinWorkSpace, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), kinmem, lenrwLS, leniwLS)
end

function KINGetNumJacEvals(kinmem, njevals)
    ccall((:KINGetNumJacEvals, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, njevals)
end

function KINGetNumLinFuncEvals(kinmem, nfevals)
    ccall((:KINGetNumLinFuncEvals, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, nfevals)
end

function KINGetNumPrecEvals(kinmem, npevals)
    ccall((:KINGetNumPrecEvals, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, npevals)
end

function KINGetNumPrecSolves(kinmem, npsolves)
    ccall((:KINGetNumPrecSolves, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, npsolves)
end

function KINGetNumLinIters(kinmem, nliters)
    ccall((:KINGetNumLinIters, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, nliters)
end

function KINGetNumLinConvFails(kinmem, nlcfails)
    ccall((:KINGetNumLinConvFails, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, nlcfails)
end

function KINGetNumJtimesEvals(kinmem, njvevals)
    ccall((:KINGetNumJtimesEvals, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, njvevals)
end

function KINGetLastLinFlag(kinmem, flag)
    ccall((:KINGetLastLinFlag, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, flag)
end

function KINGetLinReturnFlagName(flag::Clong)
    ccall((:KINGetLinReturnFlagName, libsundials_kinsol), Cstring, (Clong,), flag)
end

function KINSpilsSetLinearSolver(kinmem, LS::SUNLinearSolver)
    ccall((:KINSpilsSetLinearSolver, libsundials_kinsol), Cint, (Ptr{Cvoid}, SUNLinearSolver), kinmem, LS)
end

function KINSpilsSetPreconditioner(kinmem, psetup::KINSpilsPrecSetupFn, psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner, libsundials_kinsol), Cint, (Ptr{Cvoid}, KINSpilsPrecSetupFn, KINSpilsPrecSolveFn), kinmem, psetup, psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem, jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn, libsundials_kinsol), Cint, (Ptr{Cvoid}, KINSpilsJacTimesVecFn), kinmem, jtv)
end

function KINSpilsGetWorkSpace(kinmem, lenrwLS, leniwLS)
    ccall((:KINSpilsGetWorkSpace, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}, Ptr{Clong}), kinmem, lenrwLS, leniwLS)
end

function KINSpilsGetNumPrecEvals(kinmem, npevals)
    ccall((:KINSpilsGetNumPrecEvals, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, npevals)
end

function KINSpilsGetNumPrecSolves(kinmem, npsolves)
    ccall((:KINSpilsGetNumPrecSolves, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, npsolves)
end

function KINSpilsGetNumLinIters(kinmem, nliters)
    ccall((:KINSpilsGetNumLinIters, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, nliters)
end

function KINSpilsGetNumConvFails(kinmem, nlcfails)
    ccall((:KINSpilsGetNumConvFails, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem, njvevals)
    ccall((:KINSpilsGetNumJtimesEvals, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem, nfevals)
    ccall((:KINSpilsGetNumFuncEvals, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, nfevals)
end

function KINSpilsGetLastFlag(kinmem, flag)
    ccall((:KINSpilsGetLastFlag, libsundials_kinsol), Cint, (Ptr{Cvoid}, Ptr{Clong}), kinmem, flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName, libsundials_kinsol), Cstring, (Clong,), flag)
end

function N_VNew_ManyVector(num_subvectors::sunindextype, vec_array, sunctx::SUNContext)
    ccall((:N_VNew_ManyVector, libsundials_nvecserial), N_Vector, (sunindextype, Ptr{N_Vector}, SUNContext), num_subvectors, vec_array, sunctx)
end

function N_VGetSubvector_ManyVector(v::N_Vector, vec_num::sunindextype)
    ccall((:N_VGetSubvector_ManyVector, libsundials_nvecserial), N_Vector, (N_Vector, sunindextype), v, vec_num)
end

function N_VGetSubvectorArrayPointer_ManyVector(v::N_Vector, vec_num::sunindextype)
    ccall((:N_VGetSubvectorArrayPointer_ManyVector, libsundials_nvecserial), Ptr{realtype}, (N_Vector, sunindextype), v, vec_num)
end

function N_VSetSubvectorArrayPointer_ManyVector(v_data, v::N_Vector, vec_num::sunindextype)
    ccall((:N_VSetSubvectorArrayPointer_ManyVector, libsundials_nvecserial), Cint, (Ptr{realtype}, N_Vector, sunindextype), v_data, v, vec_num)
end

function N_VGetNumSubvectors_ManyVector(v::N_Vector)
    ccall((:N_VGetNumSubvectors_ManyVector, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VGetVectorID_ManyVector(v::N_Vector)
    ccall((:N_VGetVectorID_ManyVector, libsundials_nvecserial), N_Vector_ID, (N_Vector,), v)
end

function N_VPrint_ManyVector(v::N_Vector)
    ccall((:N_VPrint_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VPrintFile_ManyVector(v::N_Vector, outfile)
    ccall((:N_VPrintFile_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{Libc.FILE}), v, outfile)
end

function N_VCloneEmpty_ManyVector(w::N_Vector)
    ccall((:N_VCloneEmpty_ManyVector, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VClone_ManyVector(w::N_Vector)
    ccall((:N_VClone_ManyVector, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VDestroy_ManyVector(v::N_Vector)
    ccall((:N_VDestroy_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VSpace_ManyVector(v::N_Vector, lrw, liw)
    ccall((:N_VSpace_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{sunindextype}, Ptr{sunindextype}), v, lrw, liw)
end

function N_VGetLength_ManyVector(v::N_Vector)
    ccall((:N_VGetLength_ManyVector, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VGetSubvectorLocalLength_ManyVector(v::N_Vector, vec_num::sunindextype)
    ccall((:N_VGetSubvectorLocalLength_ManyVector, libsundials_nvecserial), sunindextype, (N_Vector, sunindextype), v, vec_num)
end

function N_VLinearSum_ManyVector(a::realtype, x::N_Vector, b::realtype, y::N_Vector, z::N_Vector)
    ccall((:N_VLinearSum_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, realtype, N_Vector, N_Vector), a, x, b, y, z)
end

function N_VConst_ManyVector(c::realtype, z::N_Vector)
    ccall((:N_VConst_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector), c, z)
end

function N_VProd_ManyVector(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VProd_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VDiv_ManyVector(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VDiv_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VScale_ManyVector(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VScale_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VAbs_ManyVector(x::N_Vector, z::N_Vector)
    ccall((:N_VAbs_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VInv_ManyVector(x::N_Vector, z::N_Vector)
    ccall((:N_VInv_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VAddConst_ManyVector(x::N_Vector, b::realtype, z::N_Vector)
    ccall((:N_VAddConst_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, realtype, N_Vector), x, b, z)
end

function N_VWrmsNorm_ManyVector(x::N_Vector, w::N_Vector)
    ccall((:N_VWrmsNorm_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWrmsNormMask_ManyVector(x::N_Vector, w::N_Vector, id::N_Vector)
    ccall((:N_VWrmsNormMask_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VWL2Norm_ManyVector(x::N_Vector, w::N_Vector)
    ccall((:N_VWL2Norm_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VCompare_ManyVector(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VCompare_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VLinearCombination_ManyVector(nvec::Cint, c, V, z::N_Vector)
    ccall((:N_VLinearCombination_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, N_Vector), nvec, c, V, z)
end

function N_VScaleAddMulti_ManyVector(nvec::Cint, a, x::N_Vector, Y, Z)
    ccall((:N_VScaleAddMulti_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, x, Y, Z)
end

function N_VDotProdMulti_ManyVector(nvec::Cint, x::N_Vector, Y, dotprods)
    ccall((:N_VDotProdMulti_ManyVector, libsundials_nvecserial), Cint, (Cint, N_Vector, Ptr{N_Vector}, Ptr{realtype}), nvec, x, Y, dotprods)
end

function N_VLinearSumVectorArray_ManyVector(nvec::Cint, a::realtype, X, b::realtype, Y, Z)
    ccall((:N_VLinearSumVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}, realtype, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, X, b, Y, Z)
end

function N_VScaleVectorArray_ManyVector(nvec::Cint, c, X, Z)
    ccall((:N_VScaleVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}), nvec, c, X, Z)
end

function N_VConstVectorArray_ManyVector(nvecs::Cint, c::realtype, Z)
    ccall((:N_VConstVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}), nvecs, c, Z)
end

function N_VWrmsNormVectorArray_ManyVector(nvecs::Cint, X, W, nrm)
    ccall((:N_VWrmsNormVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}), nvecs, X, W, nrm)
end

function N_VWrmsNormMaskVectorArray_ManyVector(nvec::Cint, X, W, id::N_Vector, nrm)
    ccall((:N_VWrmsNormMaskVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, N_Vector, Ptr{realtype}), nvec, X, W, id, nrm)
end

function N_VDotProdLocal_ManyVector(x::N_Vector, y::N_Vector)
    ccall((:N_VDotProdLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, y)
end

function N_VMaxNormLocal_ManyVector(x::N_Vector)
    ccall((:N_VMaxNormLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VMinLocal_ManyVector(x::N_Vector)
    ccall((:N_VMinLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VL1NormLocal_ManyVector(x::N_Vector)
    ccall((:N_VL1NormLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VWSqrSumLocal_ManyVector(x::N_Vector, w::N_Vector)
    ccall((:N_VWSqrSumLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWSqrSumMaskLocal_ManyVector(x::N_Vector, w::N_Vector, id::N_Vector)
    ccall((:N_VWSqrSumMaskLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VInvTestLocal_ManyVector(x::N_Vector, z::N_Vector)
    ccall((:N_VInvTestLocal_ManyVector, libsundials_nvecserial), Cint, (N_Vector, N_Vector), x, z)
end

function N_VConstrMaskLocal_ManyVector(c::N_Vector, x::N_Vector, m::N_Vector)
    ccall((:N_VConstrMaskLocal_ManyVector, libsundials_nvecserial), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VMinQuotientLocal_ManyVector(num::N_Vector, denom::N_Vector)
    ccall((:N_VMinQuotientLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VDotProdMultiLocal_ManyVector(nvec::Cint, x::N_Vector, Y, dotprods)
    ccall((:N_VDotProdMultiLocal_ManyVector, libsundials_nvecserial), Cint, (Cint, N_Vector, Ptr{N_Vector}, Ptr{realtype}), nvec, x, Y, dotprods)
end

function N_VBufSize_ManyVector(x::N_Vector, size)
    ccall((:N_VBufSize_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Ptr{sunindextype}), x, size)
end

function N_VBufPack_ManyVector(x::N_Vector, buf)
    ccall((:N_VBufPack_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Ptr{Cvoid}), x, buf)
end

function N_VBufUnpack_ManyVector(x::N_Vector, buf)
    ccall((:N_VBufUnpack_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Ptr{Cvoid}), x, buf)
end

function N_VEnableFusedOps_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableFusedOps_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearCombination_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableLinearCombination_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleAddMulti_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableScaleAddMulti_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableDotProdMulti_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableDotProdMulti_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearSumVectorArray_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableLinearSumVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleVectorArray_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableScaleVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableConstVectorArray_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableConstVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormVectorArray_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableWrmsNormVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormMaskVectorArray_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableWrmsNormMaskVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableDotProdMultiLocal_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableDotProdMultiLocal_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VNew_Serial(vec_length::sunindextype, sunctx::SUNContext)
    ccall((:N_VNew_Serial, libsundials_nvecserial), N_Vector, (sunindextype, SUNContext), vec_length, sunctx)
end

function N_VNewEmpty_Serial(vec_length::sunindextype, sunctx::SUNContext)
    ccall((:N_VNewEmpty_Serial, libsundials_nvecserial), N_Vector, (sunindextype, SUNContext), vec_length, sunctx)
end

function N_VMake_Serial(vec_length::sunindextype, v_data, sunctx::SUNContext)
    ccall((:N_VMake_Serial, libsundials_nvecserial), N_Vector, (sunindextype, Ptr{realtype}, SUNContext), vec_length, v_data, sunctx)
end

function N_VGetLength_Serial(v::N_Vector)
    ccall((:N_VGetLength_Serial, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VPrint_Serial(v::N_Vector)
    ccall((:N_VPrint_Serial, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VPrintFile_Serial(v::N_Vector, outfile)
    ccall((:N_VPrintFile_Serial, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{Libc.FILE}), v, outfile)
end

function N_VGetVectorID_Serial(v::N_Vector)
    ccall((:N_VGetVectorID_Serial, libsundials_nvecserial), N_Vector_ID, (N_Vector,), v)
end

function N_VCloneEmpty_Serial(w::N_Vector)
    ccall((:N_VCloneEmpty_Serial, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VClone_Serial(w::N_Vector)
    ccall((:N_VClone_Serial, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VDestroy_Serial(v::N_Vector)
    ccall((:N_VDestroy_Serial, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VSpace_Serial(v::N_Vector, lrw, liw)
    ccall((:N_VSpace_Serial, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{sunindextype}, Ptr{sunindextype}), v, lrw, liw)
end

function N_VGetArrayPointer_Serial(v::N_Vector)
    ccall((:N_VGetArrayPointer_Serial, libsundials_nvecserial), Ptr{realtype}, (N_Vector,), v)
end

function N_VSetArrayPointer_Serial(v_data, v::N_Vector)
    ccall((:N_VSetArrayPointer_Serial, libsundials_nvecserial), Cvoid, (Ptr{realtype}, N_Vector), v_data, v)
end

function N_VLinearSum_Serial(a::realtype, x::N_Vector, b::realtype, y::N_Vector, z::N_Vector)
    ccall((:N_VLinearSum_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector, realtype, N_Vector, N_Vector), a, x, b, y, z)
end

function N_VConst_Serial(c::realtype, z::N_Vector)
    ccall((:N_VConst_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector), c, z)
end

function N_VProd_Serial(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VProd_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VDiv_Serial(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VDiv_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VScale_Serial(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VScale_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VAbs_Serial(x::N_Vector, z::N_Vector)
    ccall((:N_VAbs_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VInv_Serial(x::N_Vector, z::N_Vector)
    ccall((:N_VInv_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VAddConst_Serial(x::N_Vector, b::realtype, z::N_Vector)
    ccall((:N_VAddConst_Serial, libsundials_nvecserial), Cvoid, (N_Vector, realtype, N_Vector), x, b, z)
end

function N_VDotProd_Serial(x::N_Vector, y::N_Vector)
    ccall((:N_VDotProd_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, y)
end

function N_VMaxNorm_Serial(x::N_Vector)
    ccall((:N_VMaxNorm_Serial, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VWrmsNorm_Serial(x::N_Vector, w::N_Vector)
    ccall((:N_VWrmsNorm_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWrmsNormMask_Serial(x::N_Vector, w::N_Vector, id::N_Vector)
    ccall((:N_VWrmsNormMask_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VMin_Serial(x::N_Vector)
    ccall((:N_VMin_Serial, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VWL2Norm_Serial(x::N_Vector, w::N_Vector)
    ccall((:N_VWL2Norm_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VL1Norm_Serial(x::N_Vector)
    ccall((:N_VL1Norm_Serial, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VCompare_Serial(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VCompare_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VInvTest_Serial(x::N_Vector, z::N_Vector)
    ccall((:N_VInvTest_Serial, libsundials_nvecserial), Cint, (N_Vector, N_Vector), x, z)
end

function N_VConstrMask_Serial(c::N_Vector, x::N_Vector, m::N_Vector)
    ccall((:N_VConstrMask_Serial, libsundials_nvecserial), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VMinQuotient_Serial(num::N_Vector, denom::N_Vector)
    ccall((:N_VMinQuotient_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VLinearCombination_Serial(nvec::Cint, c, V, z::N_Vector)
    ccall((:N_VLinearCombination_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, N_Vector), nvec, c, V, z)
end

function N_VScaleAddMulti_Serial(nvec::Cint, a, x::N_Vector, Y, Z)
    ccall((:N_VScaleAddMulti_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, x, Y, Z)
end

function N_VDotProdMulti_Serial(nvec::Cint, x::N_Vector, Y, dotprods)
    ccall((:N_VDotProdMulti_Serial, libsundials_nvecserial), Cint, (Cint, N_Vector, Ptr{N_Vector}, Ptr{realtype}), nvec, x, Y, dotprods)
end

function N_VLinearSumVectorArray_Serial(nvec::Cint, a::realtype, X, b::realtype, Y, Z)
    ccall((:N_VLinearSumVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}, realtype, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, X, b, Y, Z)
end

function N_VScaleVectorArray_Serial(nvec::Cint, c, X, Z)
    ccall((:N_VScaleVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}), nvec, c, X, Z)
end

function N_VConstVectorArray_Serial(nvecs::Cint, c::realtype, Z)
    ccall((:N_VConstVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}), nvecs, c, Z)
end

function N_VWrmsNormVectorArray_Serial(nvecs::Cint, X, W, nrm)
    ccall((:N_VWrmsNormVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}), nvecs, X, W, nrm)
end

function N_VWrmsNormMaskVectorArray_Serial(nvecs::Cint, X, W, id::N_Vector, nrm)
    ccall((:N_VWrmsNormMaskVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, N_Vector, Ptr{realtype}), nvecs, X, W, id, nrm)
end

function N_VScaleAddMultiVectorArray_Serial(nvec::Cint, nsum::Cint, a, X, Y, Z)
    ccall((:N_VScaleAddMultiVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{Ptr{N_Vector}}, Ptr{Ptr{N_Vector}}), nvec, nsum, a, X, Y, Z)
end

function N_VLinearCombinationVectorArray_Serial(nvec::Cint, nsum::Cint, c, X, Z)
    ccall((:N_VLinearCombinationVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Cint, Ptr{realtype}, Ptr{Ptr{N_Vector}}, Ptr{N_Vector}), nvec, nsum, c, X, Z)
end

function N_VWSqrSumLocal_Serial(x::N_Vector, w::N_Vector)
    ccall((:N_VWSqrSumLocal_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWSqrSumMaskLocal_Serial(x::N_Vector, w::N_Vector, id::N_Vector)
    ccall((:N_VWSqrSumMaskLocal_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VBufSize_Serial(x::N_Vector, size)
    ccall((:N_VBufSize_Serial, libsundials_nvecserial), Cint, (N_Vector, Ptr{sunindextype}), x, size)
end

function N_VBufPack_Serial(x::N_Vector, buf)
    ccall((:N_VBufPack_Serial, libsundials_nvecserial), Cint, (N_Vector, Ptr{Cvoid}), x, buf)
end

function N_VBufUnpack_Serial(x::N_Vector, buf)
    ccall((:N_VBufUnpack_Serial, libsundials_nvecserial), Cint, (N_Vector, Ptr{Cvoid}), x, buf)
end

function N_VEnableFusedOps_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableFusedOps_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearCombination_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableLinearCombination_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleAddMulti_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableScaleAddMulti_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableDotProdMulti_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableDotProdMulti_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearSumVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableLinearSumVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableScaleVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableConstVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableConstVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableWrmsNormVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormMaskVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableWrmsNormMaskVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleAddMultiVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableScaleAddMultiVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearCombinationVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableLinearCombinationVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VCloneVectorArray_Serial(count::Cint, w::N_Vector)
    ccall((:N_VCloneVectorArray_Serial, libsundials_nvecserial), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VCloneVectorArrayEmpty_Serial(count::Cint, w::N_Vector)
    ccall((:N_VCloneVectorArrayEmpty_Serial, libsundials_nvecserial), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VDestroyVectorArray_Serial(vs, count::Cint)
    ccall((:N_VDestroyVectorArray_Serial, libsundials_nvecserial), Cvoid, (Ptr{N_Vector}, Cint), vs, count)
end

function SUNDlsMat_BandGBTRF(A::SUNDlsMat, p)
    ccall((:SUNDlsMat_BandGBTRF, libsundials_sundials), sunindextype, (SUNDlsMat, Ptr{sunindextype}), A, p)
end

function BandGBTRF(A::DlsMat, p)
    ccall((:BandGBTRF, libsundials_sundials), sunindextype, (DlsMat, Ptr{sunindextype}), A, p)
end

function SUNDlsMat_bandGBTRF(a, n::sunindextype, mu::sunindextype, ml::sunindextype, smu::sunindextype, p)
    ccall((:SUNDlsMat_bandGBTRF, libsundials_sundials), sunindextype, (Ptr{Ptr{realtype}}, sunindextype, sunindextype, sunindextype, sunindextype, Ptr{sunindextype}), a, n, mu, ml, smu, p)
end

function bandGBTRF(a, n::sunindextype, mu::sunindextype, ml::sunindextype, smu::sunindextype, p)
    ccall((:bandGBTRF, libsundials_sundials), sunindextype, (Ptr{Ptr{realtype}}, sunindextype, sunindextype, sunindextype, sunindextype, Ptr{sunindextype}), a, n, mu, ml, smu, p)
end

function SUNDlsMat_BandGBTRS(A::SUNDlsMat, p, b)
    ccall((:SUNDlsMat_BandGBTRS, libsundials_sundials), Cvoid, (SUNDlsMat, Ptr{sunindextype}, Ptr{realtype}), A, p, b)
end

function BandGBTRS(A::DlsMat, p, b)
    ccall((:BandGBTRS, libsundials_sundials), Cvoid, (DlsMat, Ptr{sunindextype}, Ptr{realtype}), A, p, b)
end

function SUNDlsMat_bandGBTRS(a, n::sunindextype, smu::sunindextype, ml::sunindextype, p, b)
    ccall((:SUNDlsMat_bandGBTRS, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, sunindextype, sunindextype, sunindextype, Ptr{sunindextype}, Ptr{realtype}), a, n, smu, ml, p, b)
end

function bandGBTRS(a, n::sunindextype, smu::sunindextype, ml::sunindextype, p, b)
    ccall((:bandGBTRS, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, sunindextype, sunindextype, sunindextype, Ptr{sunindextype}, Ptr{realtype}), a, n, smu, ml, p, b)
end

function SUNDlsMat_BandCopy(A::SUNDlsMat, B::SUNDlsMat, copymu::sunindextype, copyml::sunindextype)
    ccall((:SUNDlsMat_BandCopy, libsundials_sundials), Cvoid, (SUNDlsMat, SUNDlsMat, sunindextype, sunindextype), A, B, copymu, copyml)
end

function BandCopy(A::DlsMat, B::DlsMat, copymu::sunindextype, copyml::sunindextype)
    ccall((:BandCopy, libsundials_sundials), Cvoid, (DlsMat, DlsMat, sunindextype, sunindextype), A, B, copymu, copyml)
end

function SUNDlsMat_bandCopy(a, b, n::sunindextype, a_smu::sunindextype, b_smu::sunindextype, copymu::sunindextype, copyml::sunindextype)
    ccall((:SUNDlsMat_bandCopy, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, Ptr{Ptr{realtype}}, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype), a, b, n, a_smu, b_smu, copymu, copyml)
end

function bandCopy(a, b, n::sunindextype, a_smu::sunindextype, b_smu::sunindextype, copymu::sunindextype, copyml::sunindextype)
    ccall((:bandCopy, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, Ptr{Ptr{realtype}}, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype), a, b, n, a_smu, b_smu, copymu, copyml)
end

function SUNDlsMat_BandScale(c::realtype, A::SUNDlsMat)
    ccall((:SUNDlsMat_BandScale, libsundials_sundials), Cvoid, (realtype, SUNDlsMat), c, A)
end

function BandScale(c::realtype, A::DlsMat)
    ccall((:BandScale, libsundials_sundials), Cvoid, (realtype, DlsMat), c, A)
end

function SUNDlsMat_bandScale(c::realtype, a, n::sunindextype, mu::sunindextype, ml::sunindextype, smu::sunindextype)
    ccall((:SUNDlsMat_bandScale, libsundials_sundials), Cvoid, (realtype, Ptr{Ptr{realtype}}, sunindextype, sunindextype, sunindextype, sunindextype), c, a, n, mu, ml, smu)
end

function bandScale(c::realtype, a, n::sunindextype, mu::sunindextype, ml::sunindextype, smu::sunindextype)
    ccall((:bandScale, libsundials_sundials), Cvoid, (realtype, Ptr{Ptr{realtype}}, sunindextype, sunindextype, sunindextype, sunindextype), c, a, n, mu, ml, smu)
end

function SUNDlsMat_bandAddIdentity(a, n::sunindextype, smu::sunindextype)
    ccall((:SUNDlsMat_bandAddIdentity, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, sunindextype, sunindextype), a, n, smu)
end

function bandAddIdentity(a, n::sunindextype, smu::sunindextype)
    ccall((:bandAddIdentity, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, sunindextype, sunindextype), a, n, smu)
end

function SUNDlsMat_BandMatvec(A::SUNDlsMat, x, y)
    ccall((:SUNDlsMat_BandMatvec, libsundials_sundials), Cvoid, (SUNDlsMat, Ptr{realtype}, Ptr{realtype}), A, x, y)
end

function BandMatvec(A::DlsMat, x, y)
    ccall((:BandMatvec, libsundials_sundials), Cvoid, (DlsMat, Ptr{realtype}, Ptr{realtype}), A, x, y)
end

function SUNDlsMat_bandMatvec(a, x, y, n::sunindextype, mu::sunindextype, ml::sunindextype, smu::sunindextype)
    ccall((:SUNDlsMat_bandMatvec, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, Ptr{realtype}, Ptr{realtype}, sunindextype, sunindextype, sunindextype, sunindextype), a, x, y, n, mu, ml, smu)
end

function bandMatvec(a, x, y, n::sunindextype, mu::sunindextype, ml::sunindextype, smu::sunindextype)
    ccall((:bandMatvec, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, Ptr{realtype}, Ptr{realtype}, sunindextype, sunindextype, sunindextype, sunindextype), a, x, y, n, mu, ml, smu)
end

function SUNContext_Create(comm, ctx)
    ccall((:SUNContext_Create, libsundials_sundials), Cint, (Ptr{Cvoid}, Ptr{SUNContext}), comm, ctx)
end

function SUNContext_GetProfiler(sunctx::SUNContext, profiler)
    ccall((:SUNContext_GetProfiler, libsundials_sundials), Cint, (SUNContext, Ptr{SUNProfiler}), sunctx, profiler)
end

function SUNContext_SetProfiler(sunctx::SUNContext, profiler::SUNProfiler)
    ccall((:SUNContext_SetProfiler, libsundials_sundials), Cint, (SUNContext, SUNProfiler), sunctx, profiler)
end

function SUNContext_GetLogger(sunctx::SUNContext, logger)
    ccall((:SUNContext_GetLogger, libsundials_sundials), Cint, (SUNContext, Ptr{SUNLogger}), sunctx, logger)
end

function SUNContext_SetLogger(sunctx::SUNContext, logger::SUNLogger)
    ccall((:SUNContext_SetLogger, libsundials_sundials), Cint, (SUNContext, SUNLogger), sunctx, logger)
end

function SUNContext_Free(ctx)
    ccall((:SUNContext_Free, libsundials_sundials), Cint, (Ptr{SUNContext},), ctx)
end

function SUNDlsMat_DenseGETRF(A::SUNDlsMat, p)
    ccall((:SUNDlsMat_DenseGETRF, libsundials_sundials), sunindextype, (SUNDlsMat, Ptr{sunindextype}), A, p)
end

function DenseGETRF(A::DlsMat, p)
    ccall((:DenseGETRF, libsundials_sundials), sunindextype, (DlsMat, Ptr{sunindextype}), A, p)
end

function SUNDlsMat_DenseGETRS(A::SUNDlsMat, p, b)
    ccall((:SUNDlsMat_DenseGETRS, libsundials_sundials), Cvoid, (SUNDlsMat, Ptr{sunindextype}, Ptr{realtype}), A, p, b)
end

function DenseGETRS(A::DlsMat, p, b)
    ccall((:DenseGETRS, libsundials_sundials), Cvoid, (DlsMat, Ptr{sunindextype}, Ptr{realtype}), A, p, b)
end

function SUNDlsMat_denseGETRF(a, m::sunindextype, n::sunindextype, p)
    ccall((:SUNDlsMat_denseGETRF, libsundials_sundials), sunindextype, (Ptr{Ptr{realtype}}, sunindextype, sunindextype, Ptr{sunindextype}), a, m, n, p)
end

function denseGETRF(a, m::sunindextype, n::sunindextype, p)
    ccall((:denseGETRF, libsundials_sundials), sunindextype, (Ptr{Ptr{realtype}}, sunindextype, sunindextype, Ptr{sunindextype}), a, m, n, p)
end

function SUNDlsMat_denseGETRS(a, n::sunindextype, p, b)
    ccall((:SUNDlsMat_denseGETRS, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, sunindextype, Ptr{sunindextype}, Ptr{realtype}), a, n, p, b)
end

function denseGETRS(a, n::sunindextype, p, b)
    ccall((:denseGETRS, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, sunindextype, Ptr{sunindextype}, Ptr{realtype}), a, n, p, b)
end

function SUNDlsMat_DensePOTRF(A::SUNDlsMat)
    ccall((:SUNDlsMat_DensePOTRF, libsundials_sundials), sunindextype, (SUNDlsMat,), A)
end

function DensePOTRF(A::DlsMat)
    ccall((:DensePOTRF, libsundials_sundials), sunindextype, (DlsMat,), A)
end

function SUNDlsMat_DensePOTRS(A::SUNDlsMat, b)
    ccall((:SUNDlsMat_DensePOTRS, libsundials_sundials), Cvoid, (SUNDlsMat, Ptr{realtype}), A, b)
end

function DensePOTRS(A::DlsMat, b)
    ccall((:DensePOTRS, libsundials_sundials), Cvoid, (DlsMat, Ptr{realtype}), A, b)
end

function SUNDlsMat_densePOTRF(a, m::sunindextype)
    ccall((:SUNDlsMat_densePOTRF, libsundials_sundials), sunindextype, (Ptr{Ptr{realtype}}, sunindextype), a, m)
end

function densePOTRF(a, m::sunindextype)
    ccall((:densePOTRF, libsundials_sundials), sunindextype, (Ptr{Ptr{realtype}}, sunindextype), a, m)
end

function SUNDlsMat_densePOTRS(a, m::sunindextype, b)
    ccall((:SUNDlsMat_densePOTRS, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, sunindextype, Ptr{realtype}), a, m, b)
end

function densePOTRS(a, m::sunindextype, b)
    ccall((:densePOTRS, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, sunindextype, Ptr{realtype}), a, m, b)
end

function SUNDlsMat_DenseGEQRF(A::SUNDlsMat, beta, wrk)
    ccall((:SUNDlsMat_DenseGEQRF, libsundials_sundials), Cint, (SUNDlsMat, Ptr{realtype}, Ptr{realtype}), A, beta, wrk)
end

function DenseGEQRF(A::DlsMat, beta, wrk)
    ccall((:DenseGEQRF, libsundials_sundials), Cint, (DlsMat, Ptr{realtype}, Ptr{realtype}), A, beta, wrk)
end

function SUNDlsMat_DenseORMQR(A::SUNDlsMat, beta, vn, vm, wrk)
    ccall((:SUNDlsMat_DenseORMQR, libsundials_sundials), Cint, (SUNDlsMat, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), A, beta, vn, vm, wrk)
end

function DenseORMQR(A::DlsMat, beta, vn, vm, wrk)
    ccall((:DenseORMQR, libsundials_sundials), Cint, (DlsMat, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), A, beta, vn, vm, wrk)
end

function SUNDlsMat_denseGEQRF(a, m::sunindextype, n::sunindextype, beta, wrk)
    ccall((:SUNDlsMat_denseGEQRF, libsundials_sundials), Cint, (Ptr{Ptr{realtype}}, sunindextype, sunindextype, Ptr{realtype}, Ptr{realtype}), a, m, n, beta, wrk)
end

function denseGEQRF(a, m::sunindextype, n::sunindextype, beta, wrk)
    ccall((:denseGEQRF, libsundials_sundials), Cint, (Ptr{Ptr{realtype}}, sunindextype, sunindextype, Ptr{realtype}, Ptr{realtype}), a, m, n, beta, wrk)
end

function SUNDlsMat_denseORMQR(a, m::sunindextype, n::sunindextype, beta, v, w, wrk)
    ccall((:SUNDlsMat_denseORMQR, libsundials_sundials), Cint, (Ptr{Ptr{realtype}}, sunindextype, sunindextype, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), a, m, n, beta, v, w, wrk)
end

function denseORMQR(a, m::sunindextype, n::sunindextype, beta, v, w, wrk)
    ccall((:denseORMQR, libsundials_sundials), Cint, (Ptr{Ptr{realtype}}, sunindextype, sunindextype, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), a, m, n, beta, v, w, wrk)
end

function SUNDlsMat_DenseCopy(A::SUNDlsMat, B::SUNDlsMat)
    ccall((:SUNDlsMat_DenseCopy, libsundials_sundials), Cvoid, (SUNDlsMat, SUNDlsMat), A, B)
end

function DenseCopy(A::DlsMat, B::DlsMat)
    ccall((:DenseCopy, libsundials_sundials), Cvoid, (DlsMat, DlsMat), A, B)
end

function SUNDlsMat_denseCopy(a, b, m::sunindextype, n::sunindextype)
    ccall((:SUNDlsMat_denseCopy, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, Ptr{Ptr{realtype}}, sunindextype, sunindextype), a, b, m, n)
end

function denseCopy(a, b, m::sunindextype, n::sunindextype)
    ccall((:denseCopy, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, Ptr{Ptr{realtype}}, sunindextype, sunindextype), a, b, m, n)
end

function SUNDlsMat_DenseScale(c::realtype, A::SUNDlsMat)
    ccall((:SUNDlsMat_DenseScale, libsundials_sundials), Cvoid, (realtype, SUNDlsMat), c, A)
end

function DenseScale(c::realtype, A::DlsMat)
    ccall((:DenseScale, libsundials_sundials), Cvoid, (realtype, DlsMat), c, A)
end

function SUNDlsMat_denseScale(c::realtype, a, m::sunindextype, n::sunindextype)
    ccall((:SUNDlsMat_denseScale, libsundials_sundials), Cvoid, (realtype, Ptr{Ptr{realtype}}, sunindextype, sunindextype), c, a, m, n)
end

function denseScale(c::realtype, a, m::sunindextype, n::sunindextype)
    ccall((:denseScale, libsundials_sundials), Cvoid, (realtype, Ptr{Ptr{realtype}}, sunindextype, sunindextype), c, a, m, n)
end

function SUNDlsMat_denseAddIdentity(a, n::sunindextype)
    ccall((:SUNDlsMat_denseAddIdentity, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, sunindextype), a, n)
end

function denseAddIdentity(a, n::sunindextype)
    ccall((:denseAddIdentity, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, sunindextype), a, n)
end

function SUNDlsMat_DenseMatvec(A::SUNDlsMat, x, y)
    ccall((:SUNDlsMat_DenseMatvec, libsundials_sundials), Cvoid, (SUNDlsMat, Ptr{realtype}, Ptr{realtype}), A, x, y)
end

function DenseMatvec(A::DlsMat, x, y)
    ccall((:DenseMatvec, libsundials_sundials), Cvoid, (DlsMat, Ptr{realtype}, Ptr{realtype}), A, x, y)
end

function SUNDlsMat_denseMatvec(a, x, y, m::sunindextype, n::sunindextype)
    ccall((:SUNDlsMat_denseMatvec, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, Ptr{realtype}, Ptr{realtype}, sunindextype, sunindextype), a, x, y, m, n)
end

function denseMatvec(a, x, y, m::sunindextype, n::sunindextype)
    ccall((:denseMatvec, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}}, Ptr{realtype}, Ptr{realtype}, sunindextype, sunindextype), a, x, y, m, n)
end

function SUNDlsMat_NewDenseMat(M::sunindextype, N::sunindextype)
    ccall((:SUNDlsMat_NewDenseMat, libsundials_sundials), SUNDlsMat, (sunindextype, sunindextype), M, N)
end

function NewDenseMat(M::sunindextype, N::sunindextype)
    ccall((:NewDenseMat, libsundials_sundials), DlsMat, (sunindextype, sunindextype), M, N)
end

function SUNDlsMat_NewBandMat(N::sunindextype, mu::sunindextype, ml::sunindextype, smu::sunindextype)
    ccall((:SUNDlsMat_NewBandMat, libsundials_sundials), SUNDlsMat, (sunindextype, sunindextype, sunindextype, sunindextype), N, mu, ml, smu)
end

function NewBandMat(N::sunindextype, mu::sunindextype, ml::sunindextype, smu::sunindextype)
    ccall((:NewBandMat, libsundials_sundials), DlsMat, (sunindextype, sunindextype, sunindextype, sunindextype), N, mu, ml, smu)
end

function SUNDlsMat_DestroyMat(A::DlsMat)
    ccall((:SUNDlsMat_DestroyMat, libsundials_sundials), Cvoid, (DlsMat,), A)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat, libsundials_sundials), Cvoid, (DlsMat,), A)
end

function SUNDlsMat_NewIntArray(N::Cint)
    ccall((:SUNDlsMat_NewIntArray, libsundials_sundials), Ptr{Cint}, (Cint,), N)
end

function NewIntArray(N::Cint)
    ccall((:NewIntArray, libsundials_sundials), Ptr{Cint}, (Cint,), N)
end

function SUNDlsMat_NewIndexArray(N::sunindextype)
    ccall((:SUNDlsMat_NewIndexArray, libsundials_sundials), Ptr{sunindextype}, (sunindextype,), N)
end

function NewIndexArray(N::sunindextype)
    ccall((:NewIndexArray, libsundials_sundials), Ptr{sunindextype}, (sunindextype,), N)
end

function SUNDlsMat_NewRealArray(N::sunindextype)
    ccall((:SUNDlsMat_NewRealArray, libsundials_sundials), Ptr{realtype}, (sunindextype,), N)
end

function NewRealArray(N::sunindextype)
    ccall((:NewRealArray, libsundials_sundials), Ptr{realtype}, (sunindextype,), N)
end

function SUNDlsMat_DestroyArray(p)
    ccall((:SUNDlsMat_DestroyArray, libsundials_sundials), Cvoid, (Ptr{Cvoid},), p)
end

function DestroyArray(p)
    ccall((:DestroyArray, libsundials_sundials), Cvoid, (Ptr{Cvoid},), p)
end

function SUNDlsMat_AddIdentity(A::SUNDlsMat)
    ccall((:SUNDlsMat_AddIdentity, libsundials_sundials), Cvoid, (SUNDlsMat,), A)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity, libsundials_sundials), Cvoid, (DlsMat,), A)
end

function SUNDlsMat_SetToZero(A::SUNDlsMat)
    ccall((:SUNDlsMat_SetToZero, libsundials_sundials), Cvoid, (SUNDlsMat,), A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero, libsundials_sundials), Cvoid, (DlsMat,), A)
end

function SUNDlsMat_PrintMat(A::SUNDlsMat, outfile)
    ccall((:SUNDlsMat_PrintMat, libsundials_sundials), Cvoid, (SUNDlsMat, Ptr{Libc.FILE}), A, outfile)
end

function PrintMat(A::DlsMat, outfile)
    ccall((:PrintMat, libsundials_sundials), Cvoid, (DlsMat, Ptr{Libc.FILE}), A, outfile)
end

function SUNDlsMat_newDenseMat(m::sunindextype, n::sunindextype)
    ccall((:SUNDlsMat_newDenseMat, libsundials_sundials), Ptr{Ptr{realtype}}, (sunindextype, sunindextype), m, n)
end

function newDenseMat(m::sunindextype, n::sunindextype)
    ccall((:newDenseMat, libsundials_sundials), Ptr{Ptr{realtype}}, (sunindextype, sunindextype), m, n)
end

function SUNDlsMat_newBandMat(n::sunindextype, smu::sunindextype, ml::sunindextype)
    ccall((:SUNDlsMat_newBandMat, libsundials_sundials), Ptr{Ptr{realtype}}, (sunindextype, sunindextype, sunindextype), n, smu, ml)
end

function newBandMat(n::sunindextype, smu::sunindextype, ml::sunindextype)
    ccall((:newBandMat, libsundials_sundials), Ptr{Ptr{realtype}}, (sunindextype, sunindextype, sunindextype), n, smu, ml)
end

function SUNDlsMat_destroyMat(a)
    ccall((:SUNDlsMat_destroyMat, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}},), a)
end

function destroyMat(a)
    ccall((:destroyMat, libsundials_sundials), Cvoid, (Ptr{Ptr{realtype}},), a)
end

function SUNDlsMat_newIntArray(n::Cint)
    ccall((:SUNDlsMat_newIntArray, libsundials_sundials), Ptr{Cint}, (Cint,), n)
end

function newIntArray(n::Cint)
    ccall((:newIntArray, libsundials_sundials), Ptr{Cint}, (Cint,), n)
end

function SUNDlsMat_newIndexArray(n::sunindextype)
    ccall((:SUNDlsMat_newIndexArray, libsundials_sundials), Ptr{sunindextype}, (sunindextype,), n)
end

function newIndexArray(n::sunindextype)
    ccall((:newIndexArray, libsundials_sundials), Ptr{sunindextype}, (sunindextype,), n)
end

function SUNDlsMat_newRealArray(m::sunindextype)
    ccall((:SUNDlsMat_newRealArray, libsundials_sundials), Ptr{realtype}, (sunindextype,), m)
end

function newRealArray(m::sunindextype)
    ccall((:newRealArray, libsundials_sundials), Ptr{realtype}, (sunindextype,), m)
end

function SUNDlsMat_destroyArray(v)
    ccall((:SUNDlsMat_destroyArray, libsundials_sundials), Cvoid, (Ptr{Cvoid},), v)
end

function destroyArray(v)
    ccall((:destroyArray, libsundials_sundials), Cvoid, (Ptr{Cvoid},), v)
end

function SUNModifiedGS(v, h, k::Cint, p::Cint, new_vk_norm)
    ccall((:SUNModifiedGS, libsundials_sundials), Cint, (Ptr{N_Vector}, Ptr{Ptr{realtype}}, Cint, Cint, Ptr{realtype}), v, h, k, p, new_vk_norm)
end

function ModifiedGS(v, h, k::Cint, p::Cint, new_vk_norm)
    ccall((:ModifiedGS, libsundials_sundials), Cint, (Ptr{N_Vector}, Ptr{Ptr{realtype}}, Cint, Cint, Ptr{realtype}), v, h, k, p, new_vk_norm)
end

function SUNClassicalGS(v, h, k::Cint, p::Cint, new_vk_norm, stemp, vtemp)
    ccall((:SUNClassicalGS, libsundials_sundials), Cint, (Ptr{N_Vector}, Ptr{Ptr{realtype}}, Cint, Cint, Ptr{realtype}, Ptr{realtype}, Ptr{N_Vector}), v, h, k, p, new_vk_norm, stemp, vtemp)
end

function ClassicalGS(v, h, k::Cint, p::Cint, new_vk_norm, stemp, vtemp)
    ccall((:ClassicalGS, libsundials_sundials), Cint, (Ptr{N_Vector}, Ptr{Ptr{realtype}}, Cint, Cint, Ptr{realtype}, Ptr{realtype}, Ptr{N_Vector}), v, h, k, p, new_vk_norm, stemp, vtemp)
end

function SUNQRfact(n::Cint, h, q, job::Cint)
    ccall((:SUNQRfact, libsundials_sundials), Cint, (Cint, Ptr{Ptr{realtype}}, Ptr{realtype}, Cint), n, h, q, job)
end

function QRfact(n::Cint, h, q, job::Cint)
    ccall((:QRfact, libsundials_sundials), Cint, (Cint, Ptr{Ptr{realtype}}, Ptr{realtype}, Cint), n, h, q, job)
end

function SUNQRsol(n::Cint, h, q, b)
    ccall((:SUNQRsol, libsundials_sundials), Cint, (Cint, Ptr{Ptr{realtype}}, Ptr{realtype}, Ptr{realtype}), n, h, q, b)
end

function QRsol(n::Cint, h, q, b)
    ccall((:QRsol, libsundials_sundials), Cint, (Cint, Ptr{Ptr{realtype}}, Ptr{realtype}, Ptr{realtype}), n, h, q, b)
end

function SUNQRAdd_MGS(Q, R, df::N_Vector, m::Cint, mMax::Cint, QRdata)
    ccall((:SUNQRAdd_MGS, libsundials_sundials), Cint, (Ptr{N_Vector}, Ptr{realtype}, N_Vector, Cint, Cint, Ptr{Cvoid}), Q, R, df, m, mMax, QRdata)
end

function SUNQRAdd_ICWY(Q, R, df::N_Vector, m::Cint, mMax::Cint, QRdata)
    ccall((:SUNQRAdd_ICWY, libsundials_sundials), Cint, (Ptr{N_Vector}, Ptr{realtype}, N_Vector, Cint, Cint, Ptr{Cvoid}), Q, R, df, m, mMax, QRdata)
end

function SUNQRAdd_ICWY_SB(Q, R, df::N_Vector, m::Cint, mMax::Cint, QRdata)
    ccall((:SUNQRAdd_ICWY_SB, libsundials_sundials), Cint, (Ptr{N_Vector}, Ptr{realtype}, N_Vector, Cint, Cint, Ptr{Cvoid}), Q, R, df, m, mMax, QRdata)
end

function SUNQRAdd_CGS2(Q, R, df::N_Vector, m::Cint, mMax::Cint, QRdata)
    ccall((:SUNQRAdd_CGS2, libsundials_sundials), Cint, (Ptr{N_Vector}, Ptr{realtype}, N_Vector, Cint, Cint, Ptr{Cvoid}), Q, R, df, m, mMax, QRdata)
end

function SUNQRAdd_DCGS2(Q, R, df::N_Vector, m::Cint, mMax::Cint, QRdata)
    ccall((:SUNQRAdd_DCGS2, libsundials_sundials), Cint, (Ptr{N_Vector}, Ptr{realtype}, N_Vector, Cint, Cint, Ptr{Cvoid}), Q, R, df, m, mMax, QRdata)
end

function SUNQRAdd_DCGS2_SB(Q, R, df::N_Vector, m::Cint, mMax::Cint, QRdata)
    ccall((:SUNQRAdd_DCGS2_SB, libsundials_sundials), Cint, (Ptr{N_Vector}, Ptr{realtype}, N_Vector, Cint, Cint, Ptr{Cvoid}), Q, R, df, m, mMax, QRdata)
end

function dcopy_(n, x, inc_x, y, inc_y)
    ccall((:dcopy_, libsundials_sundials), Cvoid, (Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}), n, x, inc_x, y, inc_y)
end

function dscal_(n, alpha, x, inc_x)
    ccall((:dscal_, libsundials_sundials), Cvoid, (Ptr{sunindextype}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{sunindextype}), n, alpha, x, inc_x)
end

function scopy_(n, x, inc_x, y, inc_y)
    ccall((:scopy_, libsundials_sundials), Cvoid, (Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}), n, x, inc_x, y, inc_y)
end

function sscal_(n, alpha, x, inc_x)
    ccall((:sscal_, libsundials_sundials), Cvoid, (Ptr{sunindextype}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{sunindextype}), n, alpha, x, inc_x)
end

function dgemv_(trans, m, n, alpha, a, lda, x, inc_x, beta, y, inc_y)
    ccall((:dgemv_, libsundials_sundials), Cvoid, (Cstring, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{sunindextype}), trans, m, n, alpha, a, lda, x, inc_x, beta, y, inc_y)
end

function dtrsv_(uplo, trans, diag, n, a, lda, x, inc_x)
    ccall((:dtrsv_, libsundials_sundials), Cvoid, (Cstring, Cstring, Cstring, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}), uplo, trans, diag, n, a, lda, x, inc_x)
end

function sgemv_(trans, m, n, alpha, a, lda, x, inc_x, beta, y, inc_y)
    ccall((:sgemv_, libsundials_sundials), Cvoid, (Cstring, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{sunindextype}), trans, m, n, alpha, a, lda, x, inc_x, beta, y, inc_y)
end

function strsv_(uplo, trans, diag, n, a, lda, x, inc_x)
    ccall((:strsv_, libsundials_sundials), Cvoid, (Cstring, Cstring, Cstring, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}), uplo, trans, diag, n, a, lda, x, inc_x)
end

function dsyrk_(uplo, trans, n, k, alpha, a, lda, beta, c, ldc)
    ccall((:dsyrk_, libsundials_sundials), Cvoid, (Cstring, Cstring, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{sunindextype}), uplo, trans, n, k, alpha, a, lda, beta, c, ldc)
end

function ssyrk_(uplo, trans, n, k, alpha, a, lda, beta, c, ldc)
    ccall((:ssyrk_, libsundials_sundials), Cvoid, (Cstring, Cstring, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{sunindextype}), uplo, trans, n, k, alpha, a, lda, beta, c, ldc)
end

function dgbtrf_(m, n, kl, ku, ab, ldab, ipiv, info)
    ccall((:dgbtrf_, libsundials_sundials), Cvoid, (Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}), m, n, kl, ku, ab, ldab, ipiv, info)
end

function dgbtrs_(trans, n, kl, ku, nrhs, ab, ldab, ipiv, b, ldb, info)
    ccall((:dgbtrs_, libsundials_sundials), Cvoid, (Cstring, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{sunindextype}), trans, n, kl, ku, nrhs, ab, ldab, ipiv, b, ldb, info)
end

function dgeqp3_(m, n, a, lda, jpvt, tau, work, lwork, info)
    ccall((:dgeqp3_, libsundials_sundials), Cvoid, (Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{sunindextype}), m, n, a, lda, jpvt, tau, work, lwork, info)
end

function dgeqrf_(m, n, a, lda, tau, work, lwork, info)
    ccall((:dgeqrf_, libsundials_sundials), Cvoid, (Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{sunindextype}), m, n, a, lda, tau, work, lwork, info)
end

function dgetrf_(m, n, a, lda, ipiv, info)
    ccall((:dgetrf_, libsundials_sundials), Cvoid, (Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}), m, n, a, lda, ipiv, info)
end

function dgetrs_(trans, n, nrhs, a, lda, ipiv, b, ldb, info)
    ccall((:dgetrs_, libsundials_sundials), Cvoid, (Cstring, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{sunindextype}), trans, n, nrhs, a, lda, ipiv, b, ldb, info)
end

function dormqr_(side, trans, m, n, k, a, lda, tau, c, ldc, work, lwork, info)
    ccall((:dormqr_, libsundials_sundials), Cvoid, (Cstring, Cstring, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{sunindextype}), side, trans, m, n, k, a, lda, tau, c, ldc, work, lwork, info)
end

function dpotrf_(uplo, n, a, lda, info)
    ccall((:dpotrf_, libsundials_sundials), Cvoid, (Cstring, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{sunindextype}), uplo, n, a, lda, info)
end

function dpotrs_(uplo, n, nrhs, a, lda, b, ldb, info)
    ccall((:dpotrs_, libsundials_sundials), Cvoid, (Cstring, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{Cdouble}, Ptr{sunindextype}, Ptr{sunindextype}), uplo, n, nrhs, a, lda, b, ldb, info)
end

function sgbtrf_(m, n, kl, ku, ab, ldab, ipiv, info)
    ccall((:sgbtrf_, libsundials_sundials), Cvoid, (Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}), m, n, kl, ku, ab, ldab, ipiv, info)
end

function sgbtrs_(trans, n, kl, ku, nrhs, ab, ldab, ipiv, b, ldb, info)
    ccall((:sgbtrs_, libsundials_sundials), Cvoid, (Cstring, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{sunindextype}), trans, n, kl, ku, nrhs, ab, ldab, ipiv, b, ldb, info)
end

function sgeqp3_(m, n, a, lda, jpvt, tau, work, lwork, info)
    ccall((:sgeqp3_, libsundials_sundials), Cvoid, (Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{sunindextype}), m, n, a, lda, jpvt, tau, work, lwork, info)
end

function sgeqrf_(m, n, a, lda, tau, work, lwork, info)
    ccall((:sgeqrf_, libsundials_sundials), Cvoid, (Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{sunindextype}), m, n, a, lda, tau, work, lwork, info)
end

function sgetrf_(m, n, a, lda, ipiv, info)
    ccall((:sgetrf_, libsundials_sundials), Cvoid, (Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}), m, n, a, lda, ipiv, info)
end

function sgetrs_(trans, n, nrhs, a, lda, ipiv, b, ldb, info)
    ccall((:sgetrs_, libsundials_sundials), Cvoid, (Cstring, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{sunindextype}), trans, n, nrhs, a, lda, ipiv, b, ldb, info)
end

function sormqr_(side, trans, m, n, k, a, lda, tau, c, ldc, work, lwork, info)
    ccall((:sormqr_, libsundials_sundials), Cvoid, (Cstring, Cstring, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{sunindextype}), side, trans, m, n, k, a, lda, tau, c, ldc, work, lwork, info)
end

function spotrf_(uplo, n, a, lda, info)
    ccall((:spotrf_, libsundials_sundials), Cvoid, (Cstring, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{sunindextype}), uplo, n, a, lda, info)
end

function spotrs_(uplo, n, nrhs, a, lda, b, ldb, info)
    ccall((:spotrs_, libsundials_sundials), Cvoid, (Cstring, Ptr{sunindextype}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{Cfloat}, Ptr{sunindextype}, Ptr{sunindextype}), uplo, n, nrhs, a, lda, b, ldb, info)
end

function SUNLinSolNewEmpty(sunctx::SUNContext)
    ccall((:SUNLinSolNewEmpty, libsundials_sundials), SUNLinearSolver, (SUNContext,), sunctx)
end

function SUNLinSolFreeEmpty(S::SUNLinearSolver)
    ccall((:SUNLinSolFreeEmpty, libsundials_sundials), Cvoid, (SUNLinearSolver,), S)
end

function SUNLinSolGetType(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType, libsundials_sundials), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID, libsundials_sundials), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes(S::SUNLinearSolver, A_data, ATimes::SUNATimesFn)
    ccall((:SUNLinSolSetATimes, libsundials_sundials), Cint, (SUNLinearSolver, Ptr{Cvoid}, SUNATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner(S::SUNLinearSolver, P_data, Pset::SUNPSetupFn, Psol::SUNPSolveFn)
    ccall((:SUNLinSolSetPreconditioner, libsundials_sundials), Cint, (SUNLinearSolver, Ptr{Cvoid}, SUNPSetupFn, SUNPSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors, libsundials_sundials), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetZeroGuess(S::SUNLinearSolver, onoff::Cint)
    ccall((:SUNLinSolSetZeroGuess, libsundials_sundials), Cint, (SUNLinearSolver, Cint), S, onoff)
end

function SUNLinSolInitialize(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize, libsundials_sundials), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup, libsundials_sundials), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve, libsundials_sundials), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters, libsundials_sundials), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm, libsundials_sundials), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid(S::SUNLinearSolver)
    ccall((:SUNLinSolResid, libsundials_sundials), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag, libsundials_sundials), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace, libsundials_sundials), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree(S::SUNLinearSolver)
    ccall((:SUNLinSolFree, libsundials_sundials), Cint, (SUNLinearSolver,), S)
end

function SUNLogger_Create(comm, output_rank::Cint, logger)
    ccall((:SUNLogger_Create, libsundials_sundials), Cint, (Ptr{Cvoid}, Cint, Ptr{SUNLogger}), comm, output_rank, logger)
end

function SUNLogger_CreateFromEnv(comm, logger)
    ccall((:SUNLogger_CreateFromEnv, libsundials_sundials), Cint, (Ptr{Cvoid}, Ptr{SUNLogger}), comm, logger)
end

function SUNLogger_SetErrorFilename(logger::SUNLogger, error_filename)
    ccall((:SUNLogger_SetErrorFilename, libsundials_sundials), Cint, (SUNLogger, Cstring), logger, error_filename)
end

function SUNLogger_SetWarningFilename(logger::SUNLogger, warning_filename)
    ccall((:SUNLogger_SetWarningFilename, libsundials_sundials), Cint, (SUNLogger, Cstring), logger, warning_filename)
end

function SUNLogger_SetDebugFilename(logger::SUNLogger, debug_filename)
    ccall((:SUNLogger_SetDebugFilename, libsundials_sundials), Cint, (SUNLogger, Cstring), logger, debug_filename)
end

function SUNLogger_SetInfoFilename(logger::SUNLogger, info_filename)
    ccall((:SUNLogger_SetInfoFilename, libsundials_sundials), Cint, (SUNLogger, Cstring), logger, info_filename)
end

function SUNLogger_Flush(logger::SUNLogger, lvl::SUNLogLevel)
    ccall((:SUNLogger_Flush, libsundials_sundials), Cint, (SUNLogger, SUNLogLevel), logger, lvl)
end

function SUNLogger_GetOutputRank(logger::SUNLogger, output_rank)
    ccall((:SUNLogger_GetOutputRank, libsundials_sundials), Cint, (SUNLogger, Ptr{Cint}), logger, output_rank)
end

function SUNLogger_Destroy(logger)
    ccall((:SUNLogger_Destroy, libsundials_sundials), Cint, (Ptr{SUNLogger},), logger)
end

function SUNRpowerI(base::sunrealtype, exponent::Cint)
    ccall((:SUNRpowerI, libsundials_sundials), sunrealtype, (sunrealtype, Cint), base, exponent)
end

function SUNRpowerR(base::sunrealtype, exponent::sunrealtype)
    ccall((:SUNRpowerR, libsundials_sundials), sunrealtype, (sunrealtype, sunrealtype), base, exponent)
end

function SUNRCompare(a::sunrealtype, b::sunrealtype)
    ccall((:SUNRCompare, libsundials_sundials), Cint, (sunrealtype, sunrealtype), a, b)
end

function SUNRCompareTol(a::sunrealtype, b::sunrealtype, tol::sunrealtype)
    ccall((:SUNRCompareTol, libsundials_sundials), Cint, (sunrealtype, sunrealtype, sunrealtype), a, b, tol)
end

function SUNStrToReal(str)
    ccall((:SUNStrToReal, libsundials_sundials), sunrealtype, (Cstring,), str)
end

function SUNMatNewEmpty(sunctx::SUNContext)
    ccall((:SUNMatNewEmpty, libsundials_sundials), SUNMatrix, (SUNContext,), sunctx)
end

function SUNMatFreeEmpty(A::SUNMatrix)
    ccall((:SUNMatFreeEmpty, libsundials_sundials), Cvoid, (SUNMatrix,), A)
end

function SUNMatCopyOps(A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatCopyOps, libsundials_sundials), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatGetID(A::SUNMatrix)
    ccall((:SUNMatGetID, libsundials_sundials), SUNMatrix_ID, (SUNMatrix,), A)
end

function SUNMatClone(A::SUNMatrix)
    ccall((:SUNMatClone, libsundials_sundials), SUNMatrix, (SUNMatrix,), A)
end

function SUNMatDestroy(A::SUNMatrix)
    ccall((:SUNMatDestroy, libsundials_sundials), Cvoid, (SUNMatrix,), A)
end

function SUNMatZero(A::SUNMatrix)
    ccall((:SUNMatZero, libsundials_sundials), Cint, (SUNMatrix,), A)
end

function SUNMatCopy(A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatCopy, libsundials_sundials), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatScaleAdd(c::realtype, A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatScaleAdd, libsundials_sundials), Cint, (realtype, SUNMatrix, SUNMatrix), c, A, B)
end

function SUNMatScaleAddI(c::realtype, A::SUNMatrix)
    ccall((:SUNMatScaleAddI, libsundials_sundials), Cint, (realtype, SUNMatrix), c, A)
end

function SUNMatMatvecSetup(A::SUNMatrix)
    ccall((:SUNMatMatvecSetup, libsundials_sundials), Cint, (SUNMatrix,), A)
end

function SUNMatMatvec(A::SUNMatrix, x::N_Vector, y::N_Vector)
    ccall((:SUNMatMatvec, libsundials_sundials), Cint, (SUNMatrix, N_Vector, N_Vector), A, x, y)
end

function SUNMatSpace(A::SUNMatrix, lenrw, leniw)
    ccall((:SUNMatSpace, libsundials_sundials), Cint, (SUNMatrix, Ptr{Clong}, Ptr{Clong}), A, lenrw, leniw)
end

# no prototype is found for this function at sundials_memory.h:55:27, please use with caution
function SUNMemoryNewEmpty()
    ccall((:SUNMemoryNewEmpty, libsundials_sundials), SUNMemory, ())
end

function SUNMemoryHelper_Alias(mem::SUNMemory)
    ccall((:SUNMemoryHelper_Alias, libsundials_sundials), SUNMemory, (SUNMemory,), mem)
end

function SUNMemoryHelper_Wrap(ptr, mem_type::SUNMemoryType)
    ccall((:SUNMemoryHelper_Wrap, libsundials_sundials), SUNMemory, (Ptr{Cvoid}, SUNMemoryType), ptr, mem_type)
end

function SUNMemoryHelper_Alloc(arg1::SUNMemoryHelper, memptr, mem_size::Csize_t, mem_type::SUNMemoryType, queue)
    ccall((:SUNMemoryHelper_Alloc, libsundials_sundials), Cint, (SUNMemoryHelper, Ptr{SUNMemory}, Csize_t, SUNMemoryType, Ptr{Cvoid}), arg1, memptr, mem_size, mem_type, queue)
end

function SUNMemoryHelper_Dealloc(arg1::SUNMemoryHelper, mem::SUNMemory, queue)
    ccall((:SUNMemoryHelper_Dealloc, libsundials_sundials), Cint, (SUNMemoryHelper, SUNMemory, Ptr{Cvoid}), arg1, mem, queue)
end

function SUNMemoryHelper_Copy(arg1::SUNMemoryHelper, dst::SUNMemory, src::SUNMemory, mem_size::Csize_t, queue)
    ccall((:SUNMemoryHelper_Copy, libsundials_sundials), Cint, (SUNMemoryHelper, SUNMemory, SUNMemory, Csize_t, Ptr{Cvoid}), arg1, dst, src, mem_size, queue)
end

function SUNMemoryHelper_CopyAsync(arg1::SUNMemoryHelper, dst::SUNMemory, src::SUNMemory, mem_size::Csize_t, queue)
    ccall((:SUNMemoryHelper_CopyAsync, libsundials_sundials), Cint, (SUNMemoryHelper, SUNMemory, SUNMemory, Csize_t, Ptr{Cvoid}), arg1, dst, src, mem_size, queue)
end

function SUNMemoryHelper_GetAllocStats(arg1::SUNMemoryHelper, mem_type::SUNMemoryType, num_allocations, num_deallocations, bytes_allocated, bytes_high_watermark)
    ccall((:SUNMemoryHelper_GetAllocStats, libsundials_sundials), Cint, (SUNMemoryHelper, SUNMemoryType, Ptr{Culong}, Ptr{Culong}, Ptr{Csize_t}, Ptr{Csize_t}), arg1, mem_type, num_allocations, num_deallocations, bytes_allocated, bytes_high_watermark)
end

function SUNMemoryHelper_Clone(arg1::SUNMemoryHelper)
    ccall((:SUNMemoryHelper_Clone, libsundials_sundials), SUNMemoryHelper, (SUNMemoryHelper,), arg1)
end

function SUNMemoryHelper_Destroy(arg1::SUNMemoryHelper)
    ccall((:SUNMemoryHelper_Destroy, libsundials_sundials), Cint, (SUNMemoryHelper,), arg1)
end

function SUNMemoryHelper_NewEmpty(sunctx::SUNContext)
    ccall((:SUNMemoryHelper_NewEmpty, libsundials_sundials), SUNMemoryHelper, (SUNContext,), sunctx)
end

function SUNMemoryHelper_CopyOps(src::SUNMemoryHelper, dst::SUNMemoryHelper)
    ccall((:SUNMemoryHelper_CopyOps, libsundials_sundials), Cint, (SUNMemoryHelper, SUNMemoryHelper), src, dst)
end

function SUNMemoryHelper_ImplementsRequiredOps(arg1::SUNMemoryHelper)
    ccall((:SUNMemoryHelper_ImplementsRequiredOps, libsundials_sundials), Cint, (SUNMemoryHelper,), arg1)
end

function SUNNonlinSolNewEmpty(sunctx::SUNContext)
    ccall((:SUNNonlinSolNewEmpty, libsundials_sundials), SUNNonlinearSolver, (SUNContext,), sunctx)
end

function SUNNonlinSolFreeEmpty(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolFreeEmpty, libsundials_sundials), Cvoid, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolGetType(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolGetType, libsundials_sundials), SUNNonlinearSolver_Type, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolInitialize(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolInitialize, libsundials_sundials), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSetup(NLS::SUNNonlinearSolver, y::N_Vector, mem)
    ccall((:SUNNonlinSolSetup, libsundials_sundials), Cint, (SUNNonlinearSolver, N_Vector, Ptr{Cvoid}), NLS, y, mem)
end

function SUNNonlinSolSolve(NLS::SUNNonlinearSolver, y0::N_Vector, y::N_Vector, w::N_Vector, tol::realtype, callLSetup::Cint, mem)
    ccall((:SUNNonlinSolSolve, libsundials_sundials), Cint, (SUNNonlinearSolver, N_Vector, N_Vector, N_Vector, realtype, Cint, Ptr{Cvoid}), NLS, y0, y, w, tol, callLSetup, mem)
end

function SUNNonlinSolFree(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolFree, libsundials_sundials), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSetSysFn(NLS::SUNNonlinearSolver, SysFn::SUNNonlinSolSysFn)
    ccall((:SUNNonlinSolSetSysFn, libsundials_sundials), Cint, (SUNNonlinearSolver, SUNNonlinSolSysFn), NLS, SysFn)
end

function SUNNonlinSolSetLSetupFn(NLS::SUNNonlinearSolver, SetupFn::SUNNonlinSolLSetupFn)
    ccall((:SUNNonlinSolSetLSetupFn, libsundials_sundials), Cint, (SUNNonlinearSolver, SUNNonlinSolLSetupFn), NLS, SetupFn)
end

function SUNNonlinSolSetLSolveFn(NLS::SUNNonlinearSolver, SolveFn::SUNNonlinSolLSolveFn)
    ccall((:SUNNonlinSolSetLSolveFn, libsundials_sundials), Cint, (SUNNonlinearSolver, SUNNonlinSolLSolveFn), NLS, SolveFn)
end

function SUNNonlinSolSetConvTestFn(NLS::SUNNonlinearSolver, CTestFn::SUNNonlinSolConvTestFn, ctest_data)
    ccall((:SUNNonlinSolSetConvTestFn, libsundials_sundials), Cint, (SUNNonlinearSolver, SUNNonlinSolConvTestFn, Ptr{Cvoid}), NLS, CTestFn, ctest_data)
end

function SUNNonlinSolSetMaxIters(NLS::SUNNonlinearSolver, maxiters::Cint)
    ccall((:SUNNonlinSolSetMaxIters, libsundials_sundials), Cint, (SUNNonlinearSolver, Cint), NLS, maxiters)
end

function SUNNonlinSolGetNumIters(NLS::SUNNonlinearSolver, niters)
    ccall((:SUNNonlinSolGetNumIters, libsundials_sundials), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, niters)
end

function SUNNonlinSolGetCurIter(NLS::SUNNonlinearSolver, iter)
    ccall((:SUNNonlinSolGetCurIter, libsundials_sundials), Cint, (SUNNonlinearSolver, Ptr{Cint}), NLS, iter)
end

function SUNNonlinSolGetNumConvFails(NLS::SUNNonlinearSolver, nconvfails)
    ccall((:SUNNonlinSolGetNumConvFails, libsundials_sundials), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, nconvfails)
end

function N_VNewEmpty(sunctx::SUNContext)
    ccall((:N_VNewEmpty, libsundials_sundials), N_Vector, (SUNContext,), sunctx)
end

function N_VFreeEmpty(v::N_Vector)
    ccall((:N_VFreeEmpty, libsundials_sundials), Cvoid, (N_Vector,), v)
end

function N_VCopyOps(w::N_Vector, v::N_Vector)
    ccall((:N_VCopyOps, libsundials_sundials), Cint, (N_Vector, N_Vector), w, v)
end

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID, libsundials_sundials), N_Vector_ID, (N_Vector,), w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone, libsundials_sundials), N_Vector, (N_Vector,), w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty, libsundials_sundials), N_Vector, (N_Vector,), w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy, libsundials_sundials), Cvoid, (N_Vector,), v)
end

function N_VSpace(v::N_Vector, lrw, liw)
    ccall((:N_VSpace, libsundials_sundials), Cvoid, (N_Vector, Ptr{sunindextype}, Ptr{sunindextype}), v, lrw, liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer, libsundials_sundials), Ptr{realtype}, (N_Vector,), v)
end

function N_VGetDeviceArrayPointer(v::N_Vector)
    ccall((:N_VGetDeviceArrayPointer, libsundials_sundials), Ptr{realtype}, (N_Vector,), v)
end

function N_VSetArrayPointer(v_data, v::N_Vector)
    ccall((:N_VSetArrayPointer, libsundials_sundials), Cvoid, (Ptr{realtype}, N_Vector), v_data, v)
end

function N_VGetCommunicator(v::N_Vector)
    ccall((:N_VGetCommunicator, libsundials_sundials), Ptr{Cvoid}, (N_Vector,), v)
end

function N_VGetLength(v::N_Vector)
    ccall((:N_VGetLength, libsundials_sundials), sunindextype, (N_Vector,), v)
end

function N_VGetLocalLength(v::N_Vector)
    ccall((:N_VGetLocalLength, libsundials_sundials), sunindextype, (N_Vector,), v)
end

function N_VLinearSum(a::realtype, x::N_Vector, b::realtype, y::N_Vector, z::N_Vector)
    ccall((:N_VLinearSum, libsundials_sundials), Cvoid, (realtype, N_Vector, realtype, N_Vector, N_Vector), a, x, b, y, z)
end

function N_VConst(c::realtype, z::N_Vector)
    ccall((:N_VConst, libsundials_sundials), Cvoid, (realtype, N_Vector), c, z)
end

function N_VProd(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VProd, libsundials_sundials), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VDiv(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VDiv, libsundials_sundials), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VScale(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VScale, libsundials_sundials), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VAbs(x::N_Vector, z::N_Vector)
    ccall((:N_VAbs, libsundials_sundials), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VInv(x::N_Vector, z::N_Vector)
    ccall((:N_VInv, libsundials_sundials), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VAddConst(x::N_Vector, b::realtype, z::N_Vector)
    ccall((:N_VAddConst, libsundials_sundials), Cvoid, (N_Vector, realtype, N_Vector), x, b, z)
end

function N_VDotProd(x::N_Vector, y::N_Vector)
    ccall((:N_VDotProd, libsundials_sundials), realtype, (N_Vector, N_Vector), x, y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VWrmsNorm(x::N_Vector, w::N_Vector)
    ccall((:N_VWrmsNorm, libsundials_sundials), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWrmsNormMask(x::N_Vector, w::N_Vector, id::N_Vector)
    ccall((:N_VWrmsNormMask, libsundials_sundials), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VWL2Norm(x::N_Vector, w::N_Vector)
    ccall((:N_VWL2Norm, libsundials_sundials), realtype, (N_Vector, N_Vector), x, w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VCompare(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VCompare, libsundials_sundials), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VInvTest(x::N_Vector, z::N_Vector)
    ccall((:N_VInvTest, libsundials_sundials), Cint, (N_Vector, N_Vector), x, z)
end

function N_VConstrMask(c::N_Vector, x::N_Vector, m::N_Vector)
    ccall((:N_VConstrMask, libsundials_sundials), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VMinQuotient(num::N_Vector, denom::N_Vector)
    ccall((:N_VMinQuotient, libsundials_sundials), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VLinearCombination(nvec::Cint, c, X, z::N_Vector)
    ccall((:N_VLinearCombination, libsundials_sundials), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, N_Vector), nvec, c, X, z)
end

function N_VScaleAddMulti(nvec::Cint, a, x::N_Vector, Y, Z)
    ccall((:N_VScaleAddMulti, libsundials_sundials), Cint, (Cint, Ptr{realtype}, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, x, Y, Z)
end

function N_VDotProdMulti(nvec::Cint, x::N_Vector, Y, dotprods)
    ccall((:N_VDotProdMulti, libsundials_sundials), Cint, (Cint, N_Vector, Ptr{N_Vector}, Ptr{realtype}), nvec, x, Y, dotprods)
end

function N_VLinearSumVectorArray(nvec::Cint, a::realtype, X, b::realtype, Y, Z)
    ccall((:N_VLinearSumVectorArray, libsundials_sundials), Cint, (Cint, realtype, Ptr{N_Vector}, realtype, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, X, b, Y, Z)
end

function N_VScaleVectorArray(nvec::Cint, c, X, Z)
    ccall((:N_VScaleVectorArray, libsundials_sundials), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}), nvec, c, X, Z)
end

function N_VConstVectorArray(nvec::Cint, c::realtype, Z)
    ccall((:N_VConstVectorArray, libsundials_sundials), Cint, (Cint, realtype, Ptr{N_Vector}), nvec, c, Z)
end

function N_VWrmsNormVectorArray(nvec::Cint, X, W, nrm)
    ccall((:N_VWrmsNormVectorArray, libsundials_sundials), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}), nvec, X, W, nrm)
end

function N_VWrmsNormMaskVectorArray(nvec::Cint, X, W, id::N_Vector, nrm)
    ccall((:N_VWrmsNormMaskVectorArray, libsundials_sundials), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, N_Vector, Ptr{realtype}), nvec, X, W, id, nrm)
end

function N_VScaleAddMultiVectorArray(nvec::Cint, nsum::Cint, a, X, Y, Z)
    ccall((:N_VScaleAddMultiVectorArray, libsundials_sundials), Cint, (Cint, Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{Ptr{N_Vector}}, Ptr{Ptr{N_Vector}}), nvec, nsum, a, X, Y, Z)
end

function N_VLinearCombinationVectorArray(nvec::Cint, nsum::Cint, c, X, Z)
    ccall((:N_VLinearCombinationVectorArray, libsundials_sundials), Cint, (Cint, Cint, Ptr{realtype}, Ptr{Ptr{N_Vector}}, Ptr{N_Vector}), nvec, nsum, c, X, Z)
end

function N_VDotProdLocal(x::N_Vector, y::N_Vector)
    ccall((:N_VDotProdLocal, libsundials_sundials), realtype, (N_Vector, N_Vector), x, y)
end

function N_VMaxNormLocal(x::N_Vector)
    ccall((:N_VMaxNormLocal, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VMinLocal(x::N_Vector)
    ccall((:N_VMinLocal, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VL1NormLocal(x::N_Vector)
    ccall((:N_VL1NormLocal, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VWSqrSumLocal(x::N_Vector, w::N_Vector)
    ccall((:N_VWSqrSumLocal, libsundials_sundials), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWSqrSumMaskLocal(x::N_Vector, w::N_Vector, id::N_Vector)
    ccall((:N_VWSqrSumMaskLocal, libsundials_sundials), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VInvTestLocal(x::N_Vector, z::N_Vector)
    ccall((:N_VInvTestLocal, libsundials_sundials), Cint, (N_Vector, N_Vector), x, z)
end

function N_VConstrMaskLocal(c::N_Vector, x::N_Vector, m::N_Vector)
    ccall((:N_VConstrMaskLocal, libsundials_sundials), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VMinQuotientLocal(num::N_Vector, denom::N_Vector)
    ccall((:N_VMinQuotientLocal, libsundials_sundials), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VDotProdMultiLocal(nvec::Cint, x::N_Vector, Y, dotprods)
    ccall((:N_VDotProdMultiLocal, libsundials_sundials), Cint, (Cint, N_Vector, Ptr{N_Vector}, Ptr{realtype}), nvec, x, Y, dotprods)
end

function N_VDotProdMultiAllReduce(nvec_total::Cint, x::N_Vector, sum)
    ccall((:N_VDotProdMultiAllReduce, libsundials_sundials), Cint, (Cint, N_Vector, Ptr{realtype}), nvec_total, x, sum)
end

function N_VBufSize(x::N_Vector, size)
    ccall((:N_VBufSize, libsundials_sundials), Cint, (N_Vector, Ptr{sunindextype}), x, size)
end

function N_VBufPack(x::N_Vector, buf)
    ccall((:N_VBufPack, libsundials_sundials), Cint, (N_Vector, Ptr{Cvoid}), x, buf)
end

function N_VBufUnpack(x::N_Vector, buf)
    ccall((:N_VBufUnpack, libsundials_sundials), Cint, (N_Vector, Ptr{Cvoid}), x, buf)
end

function N_VNewVectorArray(count::Cint)
    ccall((:N_VNewVectorArray, libsundials_sundials), Ptr{N_Vector}, (Cint,), count)
end

function N_VCloneEmptyVectorArray(count::Cint, w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray, libsundials_sundials), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VCloneVectorArray(count::Cint, w::N_Vector)
    ccall((:N_VCloneVectorArray, libsundials_sundials), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VDestroyVectorArray(vs, count::Cint)
    ccall((:N_VDestroyVectorArray, libsundials_sundials), Cvoid, (Ptr{N_Vector}, Cint), vs, count)
end

function N_VGetVecAtIndexVectorArray(vs, index::Cint)
    ccall((:N_VGetVecAtIndexVectorArray, libsundials_sundials), N_Vector, (Ptr{N_Vector}, Cint), vs, index)
end

function N_VSetVecAtIndexVectorArray(vs, index::Cint, w::N_Vector)
    ccall((:N_VSetVecAtIndexVectorArray, libsundials_sundials), Cvoid, (Ptr{N_Vector}, Cint, N_Vector), vs, index, w)
end

function N_VPrint(v::N_Vector)
    ccall((:N_VPrint, libsundials_sundials), Cvoid, (N_Vector,), v)
end

function N_VPrintFile(v::N_Vector, outfile)
    ccall((:N_VPrintFile, libsundials_sundials), Cvoid, (N_Vector, Ptr{Libc.FILE}), v, outfile)
end

function SUNProfiler_Create(comm, title, p)
    ccall((:SUNProfiler_Create, libsundials_sundials), Cint, (Ptr{Cvoid}, Cstring, Ptr{SUNProfiler}), comm, title, p)
end

function SUNProfiler_Free(p)
    ccall((:SUNProfiler_Free, libsundials_sundials), Cint, (Ptr{SUNProfiler},), p)
end

function SUNProfiler_Begin(p::SUNProfiler, name)
    ccall((:SUNProfiler_Begin, libsundials_sundials), Cint, (SUNProfiler, Cstring), p, name)
end

function SUNProfiler_End(p::SUNProfiler, name)
    ccall((:SUNProfiler_End, libsundials_sundials), Cint, (SUNProfiler, Cstring), p, name)
end

function SUNProfiler_Print(p::SUNProfiler, fp)
    ccall((:SUNProfiler_Print, libsundials_sundials), Cint, (SUNProfiler, Ptr{Libc.FILE}), p, fp)
end

function SUNProfiler_Reset(p::SUNProfiler)
    ccall((:SUNProfiler_Reset, libsundials_sundials), Cint, (SUNProfiler,), p)
end

function SUNDIALSGetVersion(version, len::Cint)
    ccall((:SUNDIALSGetVersion, libsundials_sundials), Cint, (Cstring, Cint), version, len)
end

function SUNDIALSGetVersionNumber(major, minor, patch, label, len::Cint)
    ccall((:SUNDIALSGetVersionNumber, libsundials_sundials), Cint, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cstring, Cint), major, minor, patch, label, len)
end

function SUNLinSol_Band(y::N_Vector, A::SUNMatrix, sunctx::SUNContext)
    ccall((:SUNLinSol_Band, libsundials_sunlinsolband), SUNLinearSolver, (N_Vector, SUNMatrix, SUNContext), y, A, sunctx)
end

function SUNLinSolGetType_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_Band, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_Band, libsundials_sunlinsol), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_Band, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_Band(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_Band, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_Band(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_Band, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolLastFlag_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_Band, libsundials_sunlinsol), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_Band(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_Band, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_Band, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSol_Dense(y::N_Vector, A::SUNMatrix, sunctx::SUNContext)
    ccall((:SUNLinSol_Dense, libsundials_sunlinsoldense), SUNLinearSolver, (N_Vector, SUNMatrix, SUNContext), y, A, sunctx)
end

function SUNLinSolGetType_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_Dense, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_Dense, libsundials_sunlinsol), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_Dense, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_Dense(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_Dense, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_Dense(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_Dense, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolLastFlag_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_Dense, libsundials_sunlinsol), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_Dense(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_Dense, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_Dense, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSol_KLU(y::N_Vector, A::SUNMatrix, sunctx::SUNContext)
    ccall((:SUNLinSol_KLU, libsundials_sunlinsolklu), SUNLinearSolver, (N_Vector, SUNMatrix, SUNContext), y, A, sunctx)
end

function SUNLinSol_KLUReInit(S::SUNLinearSolver, A::SUNMatrix, nnz::sunindextype, reinit_type::Cint)
    ccall((:SUNLinSol_KLUReInit, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, SUNMatrix, sunindextype, Cint), S, A, nnz, reinit_type)
end

function SUNLinSol_KLUSetOrdering(S::SUNLinearSolver, ordering_choice::Cint)
    ccall((:SUNLinSol_KLUSetOrdering, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, Cint), S, ordering_choice)
end

function SUNLinSol_KLUGetSymbolic(S::SUNLinearSolver)
    ccall((:SUNLinSol_KLUGetSymbolic, libsundials_sunlinsolklu), Ptr{Cint}, (SUNLinearSolver,), S)
end

function SUNLinSol_KLUGetNumeric(S::SUNLinearSolver)
    ccall((:SUNLinSol_KLUGetNumeric, libsundials_sunlinsolklu), Ptr{Cint}, (SUNLinearSolver,), S)
end

function SUNLinSol_KLUGetCommon(S::SUNLinearSolver)
    ccall((:SUNLinSol_KLUGetCommon, libsundials_sunlinsolklu), Ptr{Cint}, (SUNLinearSolver,), S)
end

function SUNLinSolGetType_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_KLU, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_KLU, libsundials_sunlinsol), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_KLU, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_KLU(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_KLU, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_KLU(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_KLU, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolLastFlag_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_KLU, libsundials_sunlinsol), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_KLU(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_KLU, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_KLU, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSol_LapackBand(y::N_Vector, A::SUNMatrix, sunctx::SUNContext)
    ccall((:SUNLinSol_LapackBand, libsundials_sunlinsollapackbandlapackband), SUNLinearSolver, (N_Vector, SUNMatrix, SUNContext), y, A, sunctx)
end

function SUNLinSolGetType_LapackBand(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_LapackBand, libsundials_sunlinsollapackband), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_LapackBand(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_LapackBand, libsundials_sunlinsollapackband), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_LapackBand(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_LapackBand, libsundials_sunlinsollapackband), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_LapackBand(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_LapackBand, libsundials_sunlinsollapackband), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_LapackBand(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_LapackBand, libsundials_sunlinsollapackband), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolLastFlag_LapackBand(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_LapackBand, libsundials_sunlinsollapackband), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_LapackBand(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_LapackBand, libsundials_sunlinsollapackband), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_LapackBand(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_LapackBand, libsundials_sunlinsollapackband), Cint, (SUNLinearSolver,), S)
end

function SUNLinSol_LapackDense(y::N_Vector, A::SUNMatrix, sunctx::SUNContext)
    ccall((:SUNLinSol_LapackDense, libsundials_sunlinsollapackdenselapackdense), SUNLinearSolver, (N_Vector, SUNMatrix, SUNContext), y, A, sunctx)
end

function SUNLinSolGetType_LapackDense(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_LapackDense, libsundials_sunlinsollapackdense), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_LapackDense(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_LapackDense, libsundials_sunlinsollapackdense), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_LapackDense(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_LapackDense, libsundials_sunlinsollapackdense), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_LapackDense(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_LapackDense, libsundials_sunlinsollapackdense), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_LapackDense(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_LapackDense, libsundials_sunlinsollapackdense), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolLastFlag_LapackDense(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_LapackDense, libsundials_sunlinsollapackdense), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_LapackDense(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_LapackDense, libsundials_sunlinsollapackdense), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_LapackDense(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_LapackDense, libsundials_sunlinsollapackdense), Cint, (SUNLinearSolver,), S)
end

function SUNLinSol_PCG(y::N_Vector, pretype::Cint, maxl::Cint, sunctx::SUNContext)
    ccall((:SUNLinSol_PCG, libsundials_sunlinsolpcg), SUNLinearSolver, (N_Vector, Cint, Cint, SUNContext), y, pretype, maxl, sunctx)
end

function SUNLinSol_PCGSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNLinSol_PCGSetPrecType, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_PCGSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNLinSol_PCGSetMaxl, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNLinSolGetType_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_PCG, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_PCG, libsundials_sunlinsol), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_PCG(S::SUNLinearSolver, A_data, ATimes::SUNATimesFn)
    ccall((:SUNLinSolSetATimes_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Cvoid}, SUNATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_PCG(S::SUNLinearSolver, P_data, Pset::SUNPSetupFn, Psol::SUNPSolveFn)
    ccall((:SUNLinSolSetPreconditioner_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Cvoid}, SUNPSetupFn, SUNPSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_PCG(S::SUNLinearSolver, s::N_Vector, nul::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s, nul)
end

function SUNLinSolSetZeroGuess_PCG(S::SUNLinearSolver, onoff::Cint)
    ccall((:SUNLinSolSetZeroGuess_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, onoff)
end

function SUNLinSolSetup_PCG(S::SUNLinearSolver, nul::SUNMatrix)
    ccall((:SUNLinSolSetup_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, nul)
end

function SUNLinSolSolve_PCG(S::SUNLinearSolver, nul::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, nul, x, b, tol)
end

function SUNLinSolNumIters_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_PCG, libsundials_sunlinsol), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_PCG, libsundials_sunlinsol), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_PCG, libsundials_sunlinsol), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_PCG(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetInfoFile_PCG(LS::SUNLinearSolver, info_file)
    ccall((:SUNLinSolSetInfoFile_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Ptr{Libc.FILE}), LS, info_file)
end

function SUNLinSolSetPrintLevel_PCG(LS::SUNLinearSolver, print_level::Cint)
    ccall((:SUNLinSolSetPrintLevel_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), LS, print_level)
end

function SUNLinSol_SPBCGS(y::N_Vector, pretype::Cint, maxl::Cint, sunctx::SUNContext)
    ccall((:SUNLinSol_SPBCGS, libsundials_sunlinsolspbcgs), SUNLinearSolver, (N_Vector, Cint, Cint, SUNContext), y, pretype, maxl, sunctx)
end

function SUNLinSol_SPBCGSSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNLinSol_SPBCGSSetPrecType, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_SPBCGSSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNLinSol_SPBCGSSetMaxl, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNLinSolGetType_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPBCGS, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_SPBCGS, libsundials_sunlinsol), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPBCGS(S::SUNLinearSolver, A_data, ATimes::SUNATimesFn)
    ccall((:SUNLinSolSetATimes_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Cvoid}, SUNATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPBCGS(S::SUNLinearSolver, P_data, Pset::SUNPSetupFn, Psol::SUNPSolveFn)
    ccall((:SUNLinSolSetPreconditioner_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Cvoid}, SUNPSetupFn, SUNPSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPBCGS(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetZeroGuess_SPBCGS(S::SUNLinearSolver, onoff::Cint)
    ccall((:SUNLinSolSetZeroGuess_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, onoff)
end

function SUNLinSolSetup_SPBCGS(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPBCGS(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_SPBCGS, libsundials_sunlinsol), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_SPBCGS, libsundials_sunlinsol), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_SPBCGS, libsundials_sunlinsol), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPBCGS(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetInfoFile_SPBCGS(LS::SUNLinearSolver, info_file)
    ccall((:SUNLinSolSetInfoFile_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Ptr{Libc.FILE}), LS, info_file)
end

function SUNLinSolSetPrintLevel_SPBCGS(LS::SUNLinearSolver, print_level::Cint)
    ccall((:SUNLinSolSetPrintLevel_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), LS, print_level)
end

function SUNLinSol_SPFGMR(y::N_Vector, pretype::Cint, maxl::Cint, sunctx::SUNContext)
    ccall((:SUNLinSol_SPFGMR, libsundials_sunlinsolspfgmr), SUNLinearSolver, (N_Vector, Cint, Cint, SUNContext), y, pretype, maxl, sunctx)
end

function SUNLinSol_SPFGMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNLinSol_SPFGMRSetPrecType, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_SPFGMRSetGSType(S::SUNLinearSolver, gstype::Cint)
    ccall((:SUNLinSol_SPFGMRSetGSType, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNLinSol_SPFGMRSetMaxRestarts(S::SUNLinearSolver, maxrs::Cint)
    ccall((:SUNLinSol_SPFGMRSetMaxRestarts, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNLinSolGetType_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPFGMR, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_SPFGMR, libsundials_sunlinsol), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPFGMR(S::SUNLinearSolver, A_data, ATimes::SUNATimesFn)
    ccall((:SUNLinSolSetATimes_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Cvoid}, SUNATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPFGMR(S::SUNLinearSolver, P_data, Pset::SUNPSetupFn, Psol::SUNPSolveFn)
    ccall((:SUNLinSolSetPreconditioner_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Cvoid}, SUNPSetupFn, SUNPSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPFGMR(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetZeroGuess_SPFGMR(S::SUNLinearSolver, onoff::Cint)
    ccall((:SUNLinSolSetZeroGuess_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, onoff)
end

function SUNLinSolSetup_SPFGMR(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPFGMR(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_SPFGMR, libsundials_sunlinsol), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_SPFGMR, libsundials_sunlinsol), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_SPFGMR, libsundials_sunlinsol), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPFGMR(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetInfoFile_SPFGMR(LS::SUNLinearSolver, info_file)
    ccall((:SUNLinSolSetInfoFile_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Ptr{Libc.FILE}), LS, info_file)
end

function SUNLinSolSetPrintLevel_SPFGMR(LS::SUNLinearSolver, print_level::Cint)
    ccall((:SUNLinSolSetPrintLevel_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), LS, print_level)
end

function SUNLinSol_SPGMR(y::N_Vector, pretype::Cint, maxl::Cint, sunctx::SUNContext)
    ccall((:SUNLinSol_SPGMR, libsundials_sunlinsolspgmr), SUNLinearSolver, (N_Vector, Cint, Cint, SUNContext), y, pretype, maxl, sunctx)
end

function SUNLinSol_SPGMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNLinSol_SPGMRSetPrecType, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_SPGMRSetGSType(S::SUNLinearSolver, gstype::Cint)
    ccall((:SUNLinSol_SPGMRSetGSType, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNLinSol_SPGMRSetMaxRestarts(S::SUNLinearSolver, maxrs::Cint)
    ccall((:SUNLinSol_SPGMRSetMaxRestarts, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNLinSolGetType_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPGMR, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_SPGMR, libsundials_sunlinsol), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPGMR(S::SUNLinearSolver, A_data, ATimes::SUNATimesFn)
    ccall((:SUNLinSolSetATimes_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Cvoid}, SUNATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPGMR(S::SUNLinearSolver, P_data, Pset::SUNPSetupFn, Psol::SUNPSolveFn)
    ccall((:SUNLinSolSetPreconditioner_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Cvoid}, SUNPSetupFn, SUNPSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPGMR(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetZeroGuess_SPGMR(S::SUNLinearSolver, onff::Cint)
    ccall((:SUNLinSolSetZeroGuess_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, onff)
end

function SUNLinSolSetup_SPGMR(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPGMR(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_SPGMR, libsundials_sunlinsol), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_SPGMR, libsundials_sunlinsol), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_SPGMR, libsundials_sunlinsol), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPGMR(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetInfoFile_SPGMR(LS::SUNLinearSolver, info_file)
    ccall((:SUNLinSolSetInfoFile_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Ptr{Libc.FILE}), LS, info_file)
end

function SUNLinSolSetPrintLevel_SPGMR(LS::SUNLinearSolver, print_level::Cint)
    ccall((:SUNLinSolSetPrintLevel_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), LS, print_level)
end

function SUNLinSol_SPTFQMR(y::N_Vector, pretype::Cint, maxl::Cint, sunctx::SUNContext)
    ccall((:SUNLinSol_SPTFQMR, libsundials_sunlinsolsptfqmr), SUNLinearSolver, (N_Vector, Cint, Cint, SUNContext), y, pretype, maxl, sunctx)
end

function SUNLinSol_SPTFQMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNLinSol_SPTFQMRSetPrecType, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_SPTFQMRSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNLinSol_SPTFQMRSetMaxl, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNLinSolGetType_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPTFQMR, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_SPTFQMR, libsundials_sunlinsol), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPTFQMR(S::SUNLinearSolver, A_data, ATimes::SUNATimesFn)
    ccall((:SUNLinSolSetATimes_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Cvoid}, SUNATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPTFQMR(S::SUNLinearSolver, P_data, Pset::SUNPSetupFn, Psol::SUNPSolveFn)
    ccall((:SUNLinSolSetPreconditioner_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Cvoid}, SUNPSetupFn, SUNPSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPTFQMR(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetZeroGuess_SPTFQMR(S::SUNLinearSolver, onoff::Cint)
    ccall((:SUNLinSolSetZeroGuess_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, onoff)
end

function SUNLinSolSetup_SPTFQMR(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPTFQMR(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_SPTFQMR, libsundials_sunlinsol), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_SPTFQMR, libsundials_sunlinsol), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_SPTFQMR, libsundials_sunlinsol), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPTFQMR(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetInfoFile_SPTFQMR(LS::SUNLinearSolver, info_file)
    ccall((:SUNLinSolSetInfoFile_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Ptr{Libc.FILE}), LS, info_file)
end

function SUNLinSolSetPrintLevel_SPTFQMR(LS::SUNLinearSolver, print_level::Cint)
    ccall((:SUNLinSolSetPrintLevel_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Cint), LS, print_level)
end

function SUNBandMatrix(N::sunindextype, mu::sunindextype, ml::sunindextype, sunctx::SUNContext)
    ccall((:SUNBandMatrix, libsundials_sunmatrixband), SUNMatrix, (sunindextype, sunindextype, sunindextype, SUNContext), N, mu, ml, sunctx)
end

function SUNBandMatrixStorage(N::sunindextype, mu::sunindextype, ml::sunindextype, smu::sunindextype, sunctx::SUNContext)
    ccall((:SUNBandMatrixStorage, libsundials_sunmatrixband), SUNMatrix, (sunindextype, sunindextype, sunindextype, sunindextype, SUNContext), N, mu, ml, smu, sunctx)
end

function SUNBandMatrix_Print(A::SUNMatrix, outfile)
    ccall((:SUNBandMatrix_Print, libsundials_sunmatrixband), Cvoid, (SUNMatrix, Ptr{Libc.FILE}), A, outfile)
end

function SUNBandMatrix_Rows(A::SUNMatrix)
    ccall((:SUNBandMatrix_Rows, libsundials_sunmatrixband), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_Columns(A::SUNMatrix)
    ccall((:SUNBandMatrix_Columns, libsundials_sunmatrixband), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_LowerBandwidth(A::SUNMatrix)
    ccall((:SUNBandMatrix_LowerBandwidth, libsundials_sunmatrixband), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_UpperBandwidth(A::SUNMatrix)
    ccall((:SUNBandMatrix_UpperBandwidth, libsundials_sunmatrixband), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_StoredUpperBandwidth(A::SUNMatrix)
    ccall((:SUNBandMatrix_StoredUpperBandwidth, libsundials_sunmatrixband), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_LDim(A::SUNMatrix)
    ccall((:SUNBandMatrix_LDim, libsundials_sunmatrixband), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_LData(A::SUNMatrix)
    ccall((:SUNBandMatrix_LData, libsundials_sunmatrixband), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_Data(A::SUNMatrix)
    ccall((:SUNBandMatrix_Data, libsundials_sunmatrixband), Ptr{realtype}, (SUNMatrix,), A)
end

function SUNBandMatrix_Cols(A::SUNMatrix)
    ccall((:SUNBandMatrix_Cols, libsundials_sunmatrixband), Ptr{Ptr{realtype}}, (SUNMatrix,), A)
end

function SUNBandMatrix_Column(A::SUNMatrix, j::sunindextype)
    ccall((:SUNBandMatrix_Column, libsundials_sunmatrixband), Ptr{realtype}, (SUNMatrix, sunindextype), A, j)
end

function SUNMatGetID_Band(A::SUNMatrix)
    ccall((:SUNMatGetID_Band, libsundials_sunmatrixband), SUNMatrix_ID, (SUNMatrix,), A)
end

function SUNMatClone_Band(A::SUNMatrix)
    ccall((:SUNMatClone_Band, libsundials_sunmatrixband), SUNMatrix, (SUNMatrix,), A)
end

function SUNMatDestroy_Band(A::SUNMatrix)
    ccall((:SUNMatDestroy_Band, libsundials_sunmatrixband), Cvoid, (SUNMatrix,), A)
end

function SUNMatZero_Band(A::SUNMatrix)
    ccall((:SUNMatZero_Band, libsundials_sunmatrixband), Cint, (SUNMatrix,), A)
end

function SUNMatCopy_Band(A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatCopy_Band, libsundials_sunmatrixband), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatScaleAdd_Band(c::realtype, A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatScaleAdd_Band, libsundials_sunmatrixband), Cint, (realtype, SUNMatrix, SUNMatrix), c, A, B)
end

function SUNMatScaleAddI_Band(c::realtype, A::SUNMatrix)
    ccall((:SUNMatScaleAddI_Band, libsundials_sunmatrixband), Cint, (realtype, SUNMatrix), c, A)
end

function SUNMatMatvec_Band(A::SUNMatrix, x::N_Vector, y::N_Vector)
    ccall((:SUNMatMatvec_Band, libsundials_sunmatrixband), Cint, (SUNMatrix, N_Vector, N_Vector), A, x, y)
end

function SUNMatSpace_Band(A::SUNMatrix, lenrw, leniw)
    ccall((:SUNMatSpace_Band, libsundials_sunmatrixband), Cint, (SUNMatrix, Ptr{Clong}, Ptr{Clong}), A, lenrw, leniw)
end

function SUNDenseMatrix(M::sunindextype, N::sunindextype, sunctx::SUNContext)
    ccall((:SUNDenseMatrix, libsundials_sunmatrixdense), SUNMatrix, (sunindextype, sunindextype, SUNContext), M, N, sunctx)
end

function SUNDenseMatrix_Print(A::SUNMatrix, outfile)
    ccall((:SUNDenseMatrix_Print, libsundials_sunmatrixdense), Cvoid, (SUNMatrix, Ptr{Libc.FILE}), A, outfile)
end

function SUNDenseMatrix_Rows(A::SUNMatrix)
    ccall((:SUNDenseMatrix_Rows, libsundials_sunmatrixdense), sunindextype, (SUNMatrix,), A)
end

function SUNDenseMatrix_Columns(A::SUNMatrix)
    ccall((:SUNDenseMatrix_Columns, libsundials_sunmatrixdense), sunindextype, (SUNMatrix,), A)
end

function SUNDenseMatrix_LData(A::SUNMatrix)
    ccall((:SUNDenseMatrix_LData, libsundials_sunmatrixdense), sunindextype, (SUNMatrix,), A)
end

function SUNDenseMatrix_Data(A::SUNMatrix)
    ccall((:SUNDenseMatrix_Data, libsundials_sunmatrixdense), Ptr{realtype}, (SUNMatrix,), A)
end

function SUNDenseMatrix_Cols(A::SUNMatrix)
    ccall((:SUNDenseMatrix_Cols, libsundials_sunmatrixdense), Ptr{Ptr{realtype}}, (SUNMatrix,), A)
end

function SUNDenseMatrix_Column(A::SUNMatrix, j::sunindextype)
    ccall((:SUNDenseMatrix_Column, libsundials_sunmatrixdense), Ptr{realtype}, (SUNMatrix, sunindextype), A, j)
end

function SUNMatGetID_Dense(A::SUNMatrix)
    ccall((:SUNMatGetID_Dense, libsundials_sunmatrixdense), SUNMatrix_ID, (SUNMatrix,), A)
end

function SUNMatClone_Dense(A::SUNMatrix)
    ccall((:SUNMatClone_Dense, libsundials_sunmatrixdense), SUNMatrix, (SUNMatrix,), A)
end

function SUNMatDestroy_Dense(A::SUNMatrix)
    ccall((:SUNMatDestroy_Dense, libsundials_sunmatrixdense), Cvoid, (SUNMatrix,), A)
end

function SUNMatZero_Dense(A::SUNMatrix)
    ccall((:SUNMatZero_Dense, libsundials_sunmatrixdense), Cint, (SUNMatrix,), A)
end

function SUNMatCopy_Dense(A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatCopy_Dense, libsundials_sunmatrixdense), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatScaleAdd_Dense(c::realtype, A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatScaleAdd_Dense, libsundials_sunmatrixdense), Cint, (realtype, SUNMatrix, SUNMatrix), c, A, B)
end

function SUNMatScaleAddI_Dense(c::realtype, A::SUNMatrix)
    ccall((:SUNMatScaleAddI_Dense, libsundials_sunmatrixdense), Cint, (realtype, SUNMatrix), c, A)
end

function SUNMatMatvec_Dense(A::SUNMatrix, x::N_Vector, y::N_Vector)
    ccall((:SUNMatMatvec_Dense, libsundials_sunmatrixdense), Cint, (SUNMatrix, N_Vector, N_Vector), A, x, y)
end

function SUNMatSpace_Dense(A::SUNMatrix, lenrw, leniw)
    ccall((:SUNMatSpace_Dense, libsundials_sunmatrixdense), Cint, (SUNMatrix, Ptr{Clong}, Ptr{Clong}), A, lenrw, leniw)
end

function SUNSparseMatrix(M::sunindextype, N::sunindextype, NNZ::sunindextype, sparsetype::Cint, sunctx::SUNContext)
    ccall((:SUNSparseMatrix, libsundials_sunmatrixsparse), SUNMatrix, (sunindextype, sunindextype, sunindextype, Cint, SUNContext), M, N, NNZ, sparsetype, sunctx)
end

function SUNSparseFromDenseMatrix(A::SUNMatrix, droptol::realtype, sparsetype::Cint)
    ccall((:SUNSparseFromDenseMatrix, libsundials_sunmatrixsparse), SUNMatrix, (SUNMatrix, realtype, Cint), A, droptol, sparsetype)
end

function SUNSparseFromBandMatrix(A::SUNMatrix, droptol::realtype, sparsetype::Cint)
    ccall((:SUNSparseFromBandMatrix, libsundials_sunmatrixsparse), SUNMatrix, (SUNMatrix, realtype, Cint), A, droptol, sparsetype)
end

function SUNSparseMatrix_ToCSR(A::SUNMatrix, Bout)
    ccall((:SUNSparseMatrix_ToCSR, libsundials_sunmatrixsparse), Cint, (SUNMatrix, Ptr{SUNMatrix}), A, Bout)
end

function SUNSparseMatrix_ToCSC(A::SUNMatrix, Bout)
    ccall((:SUNSparseMatrix_ToCSC, libsundials_sunmatrixsparse), Cint, (SUNMatrix, Ptr{SUNMatrix}), A, Bout)
end

function SUNSparseMatrix_Realloc(A::SUNMatrix)
    ccall((:SUNSparseMatrix_Realloc, libsundials_sunmatrixsparse), Cint, (SUNMatrix,), A)
end

function SUNSparseMatrix_Reallocate(A::SUNMatrix, NNZ::sunindextype)
    ccall((:SUNSparseMatrix_Reallocate, libsundials_sunmatrixsparse), Cint, (SUNMatrix, sunindextype), A, NNZ)
end

function SUNSparseMatrix_Print(A::SUNMatrix, outfile)
    ccall((:SUNSparseMatrix_Print, libsundials_sunmatrixsparse), Cvoid, (SUNMatrix, Ptr{Libc.FILE}), A, outfile)
end

function SUNSparseMatrix_Rows(A::SUNMatrix)
    ccall((:SUNSparseMatrix_Rows, libsundials_sunmatrixsparse), sunindextype, (SUNMatrix,), A)
end

function SUNSparseMatrix_Columns(A::SUNMatrix)
    ccall((:SUNSparseMatrix_Columns, libsundials_sunmatrixsparse), sunindextype, (SUNMatrix,), A)
end

function SUNSparseMatrix_NNZ(A::SUNMatrix)
    ccall((:SUNSparseMatrix_NNZ, libsundials_sunmatrixsparse), sunindextype, (SUNMatrix,), A)
end

function SUNSparseMatrix_NP(A::SUNMatrix)
    ccall((:SUNSparseMatrix_NP, libsundials_sunmatrixsparse), sunindextype, (SUNMatrix,), A)
end

function SUNSparseMatrix_SparseType(A::SUNMatrix)
    ccall((:SUNSparseMatrix_SparseType, libsundials_sunmatrixsparse), Cint, (SUNMatrix,), A)
end

function SUNSparseMatrix_Data(A::SUNMatrix)
    ccall((:SUNSparseMatrix_Data, libsundials_sunmatrixsparse), Ptr{realtype}, (SUNMatrix,), A)
end

function SUNSparseMatrix_IndexValues(A::SUNMatrix)
    ccall((:SUNSparseMatrix_IndexValues, libsundials_sunmatrixsparse), Ptr{sunindextype}, (SUNMatrix,), A)
end

function SUNSparseMatrix_IndexPointers(A::SUNMatrix)
    ccall((:SUNSparseMatrix_IndexPointers, libsundials_sunmatrixsparse), Ptr{sunindextype}, (SUNMatrix,), A)
end

function SUNMatGetID_Sparse(A::SUNMatrix)
    ccall((:SUNMatGetID_Sparse, libsundials_sunmatrixsparse), SUNMatrix_ID, (SUNMatrix,), A)
end

function SUNMatClone_Sparse(A::SUNMatrix)
    ccall((:SUNMatClone_Sparse, libsundials_sunmatrixsparse), SUNMatrix, (SUNMatrix,), A)
end

function SUNMatDestroy_Sparse(A::SUNMatrix)
    ccall((:SUNMatDestroy_Sparse, libsundials_sunmatrixsparse), Cvoid, (SUNMatrix,), A)
end

function SUNMatZero_Sparse(A::SUNMatrix)
    ccall((:SUNMatZero_Sparse, libsundials_sunmatrixsparse), Cint, (SUNMatrix,), A)
end

function SUNMatCopy_Sparse(A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatCopy_Sparse, libsundials_sunmatrixsparse), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatScaleAdd_Sparse(c::realtype, A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatScaleAdd_Sparse, libsundials_sunmatrixsparse), Cint, (realtype, SUNMatrix, SUNMatrix), c, A, B)
end

function SUNMatScaleAddI_Sparse(c::realtype, A::SUNMatrix)
    ccall((:SUNMatScaleAddI_Sparse, libsundials_sunmatrixsparse), Cint, (realtype, SUNMatrix), c, A)
end

function SUNMatMatvec_Sparse(A::SUNMatrix, x::N_Vector, y::N_Vector)
    ccall((:SUNMatMatvec_Sparse, libsundials_sunmatrixsparse), Cint, (SUNMatrix, N_Vector, N_Vector), A, x, y)
end

function SUNMatSpace_Sparse(A::SUNMatrix, lenrw, leniw)
    ccall((:SUNMatSpace_Sparse, libsundials_sunmatrixsparse), Cint, (SUNMatrix, Ptr{Clong}, Ptr{Clong}), A, lenrw, leniw)
end

function SUNMemoryHelper_Sys(sunctx::SUNContext)
    ccall((:SUNMemoryHelper_Sys, nothing), SUNMemoryHelper, (SUNContext,), sunctx)
end

function SUNMemoryHelper_Alloc_Sys(helper::SUNMemoryHelper, memptr, mem_size::Csize_t, mem_type::SUNMemoryType, queue)
    ccall((:SUNMemoryHelper_Alloc_Sys, nothing), Cint, (SUNMemoryHelper, Ptr{SUNMemory}, Csize_t, SUNMemoryType, Ptr{Cvoid}), helper, memptr, mem_size, mem_type, queue)
end

function SUNMemoryHelper_Dealloc_Sys(helper::SUNMemoryHelper, mem::SUNMemory, queue)
    ccall((:SUNMemoryHelper_Dealloc_Sys, nothing), Cint, (SUNMemoryHelper, SUNMemory, Ptr{Cvoid}), helper, mem, queue)
end

function SUNMemoryHelper_Copy_Sys(helper::SUNMemoryHelper, dst::SUNMemory, src::SUNMemory, memory_size::Csize_t, queue)
    ccall((:SUNMemoryHelper_Copy_Sys, nothing), Cint, (SUNMemoryHelper, SUNMemory, SUNMemory, Csize_t, Ptr{Cvoid}), helper, dst, src, memory_size, queue)
end

function SUNMemoryHelper_GetAllocStats_Sys(helper::SUNMemoryHelper, mem_type::SUNMemoryType, num_allocations, num_deallocations, bytes_allocated, bytes_high_watermark)
    ccall((:SUNMemoryHelper_GetAllocStats_Sys, nothing), Cint, (SUNMemoryHelper, SUNMemoryType, Ptr{Culong}, Ptr{Culong}, Ptr{Csize_t}, Ptr{Csize_t}), helper, mem_type, num_allocations, num_deallocations, bytes_allocated, bytes_high_watermark)
end

function SUNMemoryHelper_Clone_Sys(helper::SUNMemoryHelper)
    ccall((:SUNMemoryHelper_Clone_Sys, nothing), SUNMemoryHelper, (SUNMemoryHelper,), helper)
end

function SUNMemoryHelper_Destroy_Sys(helper::SUNMemoryHelper)
    ccall((:SUNMemoryHelper_Destroy_Sys, nothing), Cint, (SUNMemoryHelper,), helper)
end

function SUNNonlinSol_FixedPoint(y::N_Vector, m::Cint, sunctx::SUNContext)
    ccall((:SUNNonlinSol_FixedPoint, libsundials_sunnonlinsolfixedpoint), SUNNonlinearSolver, (N_Vector, Cint, SUNContext), y, m, sunctx)
end

function SUNNonlinSol_FixedPointSens(count::Cint, y::N_Vector, m::Cint, sunctx::SUNContext)
    ccall((:SUNNonlinSol_FixedPointSens, libsundials_sunnonlinsolfixedpoint), SUNNonlinearSolver, (Cint, N_Vector, Cint, SUNContext), count, y, m, sunctx)
end

function SUNNonlinSolGetType_FixedPoint(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolGetType_FixedPoint, libsundials_sunnonlinsol), SUNNonlinearSolver_Type, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolInitialize_FixedPoint(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolInitialize_FixedPoint, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSolve_FixedPoint(NLS::SUNNonlinearSolver, y0::N_Vector, y::N_Vector, w::N_Vector, tol::realtype, callSetup::Cint, mem)
    ccall((:SUNNonlinSolSolve_FixedPoint, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, N_Vector, N_Vector, N_Vector, realtype, Cint, Ptr{Cvoid}), NLS, y0, y, w, tol, callSetup, mem)
end

function SUNNonlinSolFree_FixedPoint(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolFree_FixedPoint, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSetSysFn_FixedPoint(NLS::SUNNonlinearSolver, SysFn::SUNNonlinSolSysFn)
    ccall((:SUNNonlinSolSetSysFn_FixedPoint, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, SUNNonlinSolSysFn), NLS, SysFn)
end

function SUNNonlinSolSetConvTestFn_FixedPoint(NLS::SUNNonlinearSolver, CTestFn::SUNNonlinSolConvTestFn, ctest_data)
    ccall((:SUNNonlinSolSetConvTestFn_FixedPoint, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, SUNNonlinSolConvTestFn, Ptr{Cvoid}), NLS, CTestFn, ctest_data)
end

function SUNNonlinSolSetMaxIters_FixedPoint(NLS::SUNNonlinearSolver, maxiters::Cint)
    ccall((:SUNNonlinSolSetMaxIters_FixedPoint, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Cint), NLS, maxiters)
end

function SUNNonlinSolSetDamping_FixedPoint(NLS::SUNNonlinearSolver, beta::realtype)
    ccall((:SUNNonlinSolSetDamping_FixedPoint, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, realtype), NLS, beta)
end

function SUNNonlinSolGetNumIters_FixedPoint(NLS::SUNNonlinearSolver, niters)
    ccall((:SUNNonlinSolGetNumIters_FixedPoint, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, niters)
end

function SUNNonlinSolGetCurIter_FixedPoint(NLS::SUNNonlinearSolver, iter)
    ccall((:SUNNonlinSolGetCurIter_FixedPoint, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Ptr{Cint}), NLS, iter)
end

function SUNNonlinSolGetNumConvFails_FixedPoint(NLS::SUNNonlinearSolver, nconvfails)
    ccall((:SUNNonlinSolGetNumConvFails_FixedPoint, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, nconvfails)
end

function SUNNonlinSolGetSysFn_FixedPoint(NLS::SUNNonlinearSolver, SysFn)
    ccall((:SUNNonlinSolGetSysFn_FixedPoint, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Ptr{SUNNonlinSolSysFn}), NLS, SysFn)
end

function SUNNonlinSolSetInfoFile_FixedPoint(NLS::SUNNonlinearSolver, info_file)
    ccall((:SUNNonlinSolSetInfoFile_FixedPoint, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Ptr{Libc.FILE}), NLS, info_file)
end

function SUNNonlinSolSetPrintLevel_FixedPoint(NLS::SUNNonlinearSolver, print_level::Cint)
    ccall((:SUNNonlinSolSetPrintLevel_FixedPoint, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Cint), NLS, print_level)
end

function SUNNonlinSol_Newton(y::N_Vector, sunctx::SUNContext)
    ccall((:SUNNonlinSol_Newton, libsundials_sunnonlinsolnewton), SUNNonlinearSolver, (N_Vector, SUNContext), y, sunctx)
end

function SUNNonlinSol_NewtonSens(count::Cint, y::N_Vector, sunctx::SUNContext)
    ccall((:SUNNonlinSol_NewtonSens, libsundials_sunnonlinsolnewton), SUNNonlinearSolver, (Cint, N_Vector, SUNContext), count, y, sunctx)
end

function SUNNonlinSolGetType_Newton(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolGetType_Newton, libsundials_sunnonlinsol), SUNNonlinearSolver_Type, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolInitialize_Newton(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolInitialize_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSolve_Newton(NLS::SUNNonlinearSolver, y0::N_Vector, y::N_Vector, w::N_Vector, tol::realtype, callLSetup::Cint, mem)
    ccall((:SUNNonlinSolSolve_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, N_Vector, N_Vector, N_Vector, realtype, Cint, Ptr{Cvoid}), NLS, y0, y, w, tol, callLSetup, mem)
end

function SUNNonlinSolFree_Newton(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolFree_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSetSysFn_Newton(NLS::SUNNonlinearSolver, SysFn::SUNNonlinSolSysFn)
    ccall((:SUNNonlinSolSetSysFn_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, SUNNonlinSolSysFn), NLS, SysFn)
end

function SUNNonlinSolSetLSetupFn_Newton(NLS::SUNNonlinearSolver, LSetupFn::SUNNonlinSolLSetupFn)
    ccall((:SUNNonlinSolSetLSetupFn_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, SUNNonlinSolLSetupFn), NLS, LSetupFn)
end

function SUNNonlinSolSetLSolveFn_Newton(NLS::SUNNonlinearSolver, LSolveFn::SUNNonlinSolLSolveFn)
    ccall((:SUNNonlinSolSetLSolveFn_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, SUNNonlinSolLSolveFn), NLS, LSolveFn)
end

function SUNNonlinSolSetConvTestFn_Newton(NLS::SUNNonlinearSolver, CTestFn::SUNNonlinSolConvTestFn, ctest_data)
    ccall((:SUNNonlinSolSetConvTestFn_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, SUNNonlinSolConvTestFn, Ptr{Cvoid}), NLS, CTestFn, ctest_data)
end

function SUNNonlinSolSetMaxIters_Newton(NLS::SUNNonlinearSolver, maxiters::Cint)
    ccall((:SUNNonlinSolSetMaxIters_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Cint), NLS, maxiters)
end

function SUNNonlinSolGetNumIters_Newton(NLS::SUNNonlinearSolver, niters)
    ccall((:SUNNonlinSolGetNumIters_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, niters)
end

function SUNNonlinSolGetCurIter_Newton(NLS::SUNNonlinearSolver, iter)
    ccall((:SUNNonlinSolGetCurIter_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Ptr{Cint}), NLS, iter)
end

function SUNNonlinSolGetNumConvFails_Newton(NLS::SUNNonlinearSolver, nconvfails)
    ccall((:SUNNonlinSolGetNumConvFails_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, nconvfails)
end

function SUNNonlinSolGetSysFn_Newton(NLS::SUNNonlinearSolver, SysFn)
    ccall((:SUNNonlinSolGetSysFn_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Ptr{SUNNonlinSolSysFn}), NLS, SysFn)
end

function SUNNonlinSolSetInfoFile_Newton(NLS::SUNNonlinearSolver, info_file)
    ccall((:SUNNonlinSolSetInfoFile_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Ptr{Libc.FILE}), NLS, info_file)
end

function SUNNonlinSolSetPrintLevel_Newton(NLS::SUNNonlinearSolver, print_level::Cint)
    ccall((:SUNNonlinSolSetPrintLevel_Newton, libsundials_sunnonlinsol), Cint, (SUNNonlinearSolver, Cint), NLS, print_level)
end

