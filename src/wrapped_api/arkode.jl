# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/arkode/arkode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function ARKodeCreate()
    ccall((:ARKodeCreate, libsundials_arkode), ARKODEMemPtr, ())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem, ehfun::ARKErrHandlerFn, eh_data)
    ccall((:ARKodeSetErrHandlerFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKErrHandlerFn, Ptr{Cvoid}), arkode_mem, ehfun, eh_data)
end

function ARKodeSetErrFile(arkode_mem, errfp)
    ccall((:ARKodeSetErrFile, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{FILE}), arkode_mem, errfp)
end

function ARKodeSetUserData(arkode_mem, user_data)
    ccall((:ARKodeSetUserData, libsundials_arkode), Cint, (ARKODEMemPtr, Any), arkode_mem, user_data)
end

function ARKodeSetDiagnostics(arkode_mem, diagfp)
    ccall((:ARKodeSetDiagnostics, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{FILE}), arkode_mem, diagfp)
end

function __ARKodeSetOrder(arkode_mem, maxord::Cint)
    ccall((:ARKodeSetOrder, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, maxord)
end

function ARKodeSetOrder(arkode_mem, maxord)
    __ARKodeSetOrder(arkode_mem, convert(Cint, maxord))
end

function __ARKodeSetDenseOrder(arkode_mem, dord::Cint)
    ccall((:ARKodeSetDenseOrder, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, dord)
end

function ARKodeSetDenseOrder(arkode_mem, dord)
    __ARKodeSetDenseOrder(arkode_mem, convert(Cint, dord))
end

function __ARKodeSetLinear(arkode_mem, timedepend::Cint)
    ccall((:ARKodeSetLinear, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, timedepend)
end

function ARKodeSetLinear(arkode_mem, timedepend)
    __ARKodeSetLinear(arkode_mem, convert(Cint, timedepend))
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function __ARKodeSetFixedPoint(arkode_mem, fp_m::Clong)
    ccall((:ARKodeSetFixedPoint, libsundials_arkode), Cint, (ARKODEMemPtr, Clong), arkode_mem, fp_m)
end

function ARKodeSetFixedPoint(arkode_mem, fp_m)
    __ARKodeSetFixedPoint(arkode_mem, convert(Clong, fp_m))
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function __ARKodeSetERKTable(arkode_mem, s::Cint, q::Cint, p::Cint, c, A, b, bembed)
    ccall((:ARKodeSetERKTable, libsundials_arkode), Cint, (ARKODEMemPtr, Cint, Cint, Cint, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), arkode_mem, s, q, p, c, A, b, bembed)
end

function ARKodeSetERKTable(arkode_mem, s, q, p, c, A, b, bembed)
    __ARKodeSetERKTable(arkode_mem, convert(Cint, s), convert(Cint, q), convert(Cint, p), c, A, b, bembed)
end

function __ARKodeSetIRKTable(arkode_mem, s::Cint, q::Cint, p::Cint, c, A, b, bembed)
    ccall((:ARKodeSetIRKTable, libsundials_arkode), Cint, (ARKODEMemPtr, Cint, Cint, Cint, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), arkode_mem, s, q, p, c, A, b, bembed)
end

function ARKodeSetIRKTable(arkode_mem, s, q, p, c, A, b, bembed)
    __ARKodeSetIRKTable(arkode_mem, convert(Cint, s), convert(Cint, q), convert(Cint, p), c, A, b, bembed)
end

function __ARKodeSetARKTables(arkode_mem, s::Cint, q::Cint, p::Cint, ci, ce, Ai, Ae, bi, be, b2i, b2e)
    ccall((:ARKodeSetARKTables, libsundials_arkode), Cint, (ARKODEMemPtr, Cint, Cint, Cint, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), arkode_mem, s, q, p, ci, ce, Ai, Ae, bi, be, b2i, b2e)
end

function ARKodeSetARKTables(arkode_mem, s, q, p, ci, ce, Ai, Ae, bi, be, b2i, b2e)
    __ARKodeSetARKTables(arkode_mem, convert(Cint, s), convert(Cint, q), convert(Cint, p), ci, ce, Ai, Ae, bi, be, b2i, b2e)
end

function __ARKodeSetERKTableNum(arkode_mem, itable::Cint)
    ccall((:ARKodeSetERKTableNum, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, itable)
end

function ARKodeSetERKTableNum(arkode_mem, itable)
    __ARKodeSetERKTableNum(arkode_mem, convert(Cint, itable))
end

function __ARKodeSetIRKTableNum(arkode_mem, itable::Cint)
    ccall((:ARKodeSetIRKTableNum, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, itable)
end

function ARKodeSetIRKTableNum(arkode_mem, itable)
    __ARKodeSetIRKTableNum(arkode_mem, convert(Cint, itable))
end

function __ARKodeSetARKTableNum(arkode_mem, itable::Cint, etable::Cint)
    ccall((:ARKodeSetARKTableNum, libsundials_arkode), Cint, (ARKODEMemPtr, Cint, Cint), arkode_mem, itable, etable)
end

function ARKodeSetARKTableNum(arkode_mem, itable, etable)
    __ARKodeSetARKTableNum(arkode_mem, convert(Cint, itable), convert(Cint, etable))
end

function __ARKodeSetMaxNumSteps(arkode_mem, mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps, libsundials_arkode), Cint, (ARKODEMemPtr, Clong), arkode_mem, mxsteps)
end

function ARKodeSetMaxNumSteps(arkode_mem, mxsteps)
    __ARKodeSetMaxNumSteps(arkode_mem, convert(Clong, mxsteps))
end

function __ARKodeSetMaxHnilWarns(arkode_mem, mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, mxhnil)
end

function ARKodeSetMaxHnilWarns(arkode_mem, mxhnil)
    __ARKodeSetMaxHnilWarns(arkode_mem, convert(Cint, mxhnil))
end

function ARKodeSetInitStep(arkode_mem, hin::realtype)
    ccall((:ARKodeSetInitStep, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, hin)
end

function ARKodeSetMinStep(arkode_mem, hmin::realtype)
    ccall((:ARKodeSetMinStep, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, hmin)
end

function ARKodeSetMaxStep(arkode_mem, hmax::realtype)
    ccall((:ARKodeSetMaxStep, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, hmax)
end

function ARKodeSetStopTime(arkode_mem, tstop::realtype)
    ccall((:ARKodeSetStopTime, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, tstop)
end

function ARKodeSetFixedStep(arkode_mem, hfixed::realtype)
    ccall((:ARKodeSetFixedStep, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, hfixed)
end

function ARKodeSetCFLFraction(arkode_mem, cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem, safety::realtype)
    ccall((:ARKodeSetSafetyFactor, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, safety)
end

function ARKodeSetErrorBias(arkode_mem, bias::realtype)
    ccall((:ARKodeSetErrorBias, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, bias)
end

function ARKodeSetMaxGrowth(arkode_mem, mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem, lb::realtype, ub::realtype)
    ccall((:ARKodeSetFixedStepBounds, libsundials_arkode), Cint, (ARKODEMemPtr, realtype, realtype), arkode_mem, lb, ub)
end

function __ARKodeSetAdaptivityMethod(arkode_mem, imethod::Cint, idefault::Cint, pq::Cint, adapt_params)
    ccall((:ARKodeSetAdaptivityMethod, libsundials_arkode), Cint, (ARKODEMemPtr, Cint, Cint, Cint, Ptr{realtype}), arkode_mem, imethod, idefault, pq, adapt_params)
end

function ARKodeSetAdaptivityMethod(arkode_mem, imethod, idefault, pq, adapt_params)
    __ARKodeSetAdaptivityMethod(arkode_mem, convert(Cint, imethod), convert(Cint, idefault), convert(Cint, pq), adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem, hfun::ARKAdaptFn, h_data)
    ccall((:ARKodeSetAdaptivityFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKAdaptFn, Ptr{Cvoid}), arkode_mem, hfun, h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem, etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem, etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, etamxf)
end

function __ARKodeSetSmallNumEFails(arkode_mem, small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, small_nef)
end

function ARKodeSetSmallNumEFails(arkode_mem, small_nef)
    __ARKodeSetSmallNumEFails(arkode_mem, convert(Cint, small_nef))
end

function ARKodeSetMaxCFailGrowth(arkode_mem, etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem, crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem, rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem, dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, dgmax)
end

function __ARKodeSetMaxStepsBetweenLSet(arkode_mem, msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, msbp)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem, msbp)
    __ARKodeSetMaxStepsBetweenLSet(arkode_mem, convert(Cint, msbp))
end

function __ARKodeSetPredictorMethod(arkode_mem, method::Cint)
    ccall((:ARKodeSetPredictorMethod, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, method)
end

function ARKodeSetPredictorMethod(arkode_mem, method)
    __ARKodeSetPredictorMethod(arkode_mem, convert(Cint, method))
end

function ARKodeSetStabilityFn(arkode_mem, EStab::ARKExpStabFn, estab_data)
    ccall((:ARKodeSetStabilityFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKExpStabFn, Ptr{Cvoid}), arkode_mem, EStab, estab_data)
end

function __ARKodeSetMaxErrTestFails(arkode_mem, maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, maxnef)
end

function ARKodeSetMaxErrTestFails(arkode_mem, maxnef)
    __ARKodeSetMaxErrTestFails(arkode_mem, convert(Cint, maxnef))
end

function __ARKodeSetMaxNonlinIters(arkode_mem, maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, maxcor)
end

function ARKodeSetMaxNonlinIters(arkode_mem, maxcor)
    __ARKodeSetMaxNonlinIters(arkode_mem, convert(Cint, maxcor))
end

function __ARKodeSetMaxConvFails(arkode_mem, maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails, libsundials_arkode), Cint, (ARKODEMemPtr, Cint), arkode_mem, maxncf)
end

function ARKodeSetMaxConvFails(arkode_mem, maxncf)
    __ARKodeSetMaxConvFails(arkode_mem, convert(Cint, maxncf))
end

function ARKodeSetNonlinConvCoef(arkode_mem, nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, nlscoef)
end

function ARKodeSetRootDirection(arkode_mem, rootdir)
    ccall((:ARKodeSetRootDirection, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Cint}), arkode_mem, rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn, libsundials_arkode), Cint, (ARKODEMemPtr,), arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem, ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKPostProcessStepFn), arkode_mem, ProcessStep)
end

function __ARKodeInit(arkode_mem, fe::ARKRhsFn, fi::ARKRhsFn, t0::realtype, y0::N_Vector)
    ccall((:ARKodeInit, libsundials_arkode), Cint, (ARKODEMemPtr, ARKRhsFn, ARKRhsFn, realtype, N_Vector), arkode_mem, fe, fi, t0, y0)
end

function ARKodeInit(arkode_mem, fe, fi, t0, y0)
    __y0 = convert(NVector, y0)
    __ARKodeInit(arkode_mem, ARKRhsFn_wrapper(fe), ARKRhsFn_wrapper(fi), t0, convert(N_Vector, __y0))
end

function __ARKodeReInit(arkode_mem, fe::ARKRhsFn, fi::ARKRhsFn, t0::realtype, y0::N_Vector)
    ccall((:ARKodeReInit, libsundials_arkode), Cint, (ARKODEMemPtr, ARKRhsFn, ARKRhsFn, realtype, N_Vector), arkode_mem, fe, fi, t0, y0)
end

function ARKodeReInit(arkode_mem, fe, fi, t0, y0)
    __y0 = convert(NVector, y0)
    __ARKodeReInit(arkode_mem, ARKRhsFn_wrapper(fe), ARKRhsFn_wrapper(fi), t0, convert(N_Vector, __y0))
end

function __ARKodeResize(arkode_mem, ynew::N_Vector, hscale::realtype, t0::realtype, resize::ARKVecResizeFn, resize_data)
    ccall((:ARKodeResize, libsundials_arkode), Cint, (ARKODEMemPtr, N_Vector, realtype, realtype, ARKVecResizeFn, Ptr{Cvoid}), arkode_mem, ynew, hscale, t0, resize, resize_data)
end

function ARKodeResize(arkode_mem, ynew, hscale, t0, resize, resize_data)
    __ynew = convert(NVector, ynew)
    __ARKodeResize(arkode_mem, convert(N_Vector, __ynew), hscale, t0, resize, resize_data)
end

function ARKodeSStolerances(arkode_mem, reltol::realtype, abstol::realtype)
    ccall((:ARKodeSStolerances, libsundials_arkode), Cint, (ARKODEMemPtr, realtype, realtype), arkode_mem, reltol, abstol)
end

function __ARKodeSVtolerances(arkode_mem, reltol::realtype, abstol::N_Vector)
    ccall((:ARKodeSVtolerances, libsundials_arkode), Cint, (ARKODEMemPtr, realtype, N_Vector), arkode_mem, reltol, abstol)
end

function ARKodeSVtolerances(arkode_mem, reltol, abstol)
    __abstol = convert(NVector, abstol)
    __ARKodeSVtolerances(arkode_mem, reltol, convert(N_Vector, __abstol))
end

function ARKodeWFtolerances(arkode_mem, efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances, libsundials_arkode), Cint, (ARKODEMemPtr, ARKEwtFn), arkode_mem, efun)
end

function ARKodeResStolerance(arkode_mem, rabstol::realtype)
    ccall((:ARKodeResStolerance, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, rabstol)
end

function __ARKodeResVtolerance(arkode_mem, rabstol::N_Vector)
    ccall((:ARKodeResVtolerance, libsundials_arkode), Cint, (ARKODEMemPtr, N_Vector), arkode_mem, rabstol)
end

function ARKodeResVtolerance(arkode_mem, rabstol)
    __rabstol = convert(NVector, rabstol)
    __ARKodeResVtolerance(arkode_mem, convert(N_Vector, __rabstol))
end

function ARKodeResFtolerance(arkode_mem, rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance, libsundials_arkode), Cint, (ARKODEMemPtr, ARKRwtFn), arkode_mem, rfun)
end

function __ARKodeRootInit(arkode_mem, nrtfn::Cint, g::ARKRootFn)
    ccall((:ARKodeRootInit, libsundials_arkode), Cint, (ARKODEMemPtr, Cint, ARKRootFn), arkode_mem, nrtfn, g)
end

function ARKodeRootInit(arkode_mem, nrtfn, g)
    __ARKodeRootInit(arkode_mem, convert(Cint, nrtfn), g)
end

function __ARKode(arkode_mem, tout::realtype, yout::N_Vector, tret, itask::Cint)
    ccall((:ARKode, libsundials_arkode), Cint, (ARKODEMemPtr, realtype, N_Vector, Ptr{realtype}, Cint), arkode_mem, tout, yout, tret, itask)
end

function ARKode(arkode_mem, tout, yout, tret, itask)
    __yout = convert(NVector, yout)
    __ARKode(arkode_mem, tout, convert(N_Vector, __yout), tret, convert(Cint, itask))
end

function __ARKodeGetDky(arkode_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:ARKodeGetDky, libsundials_arkode), Cint, (ARKODEMemPtr, realtype, Cint, N_Vector), arkode_mem, t, k, dky)
end

function ARKodeGetDky(arkode_mem, t, k, dky)
    __dky = convert(NVector, dky)
    __ARKodeGetDky(arkode_mem, t, convert(Cint, k), convert(N_Vector, __dky))
end

function ARKodeGetWorkSpace(arkode_mem, lenrw, leniw)
    ccall((:ARKodeGetWorkSpace, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrw, leniw)
end

function ARKodeGetNumSteps(arkode_mem, nsteps)
    ccall((:ARKodeGetNumSteps, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem, expsteps)
    ccall((:ARKodeGetNumExpSteps, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem, accsteps)
    ccall((:ARKodeGetNumAccSteps, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem, step_attempts)
    ccall((:ARKodeGetNumStepAttempts, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem, nfe_evals, nfi_evals)
    ccall((:ARKodeGetNumRhsEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, nfe_evals, nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem, nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem, nMassSolves)
    ccall((:ARKodeGetNumMassSolves, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem, nMassMult)
    ccall((:ARKodeGetNumMassMultiplies, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem, netfails)
    ccall((:ARKodeGetNumErrTestFails, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, netfails)
end

function ARKodeGetActualInitStep(arkode_mem, hinused)
    ccall((:ARKodeGetActualInitStep, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{realtype}), arkode_mem, hinused)
end

function ARKodeGetLastStep(arkode_mem, hlast)
    ccall((:ARKodeGetLastStep, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{realtype}), arkode_mem, hlast)
end

function ARKodeGetCurrentStep(arkode_mem, hcur)
    ccall((:ARKodeGetCurrentStep, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{realtype}), arkode_mem, hcur)
end

function ARKodeGetCurrentTime(arkode_mem, tcur)
    ccall((:ARKodeGetCurrentTime, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{realtype}), arkode_mem, tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem, s, q, p, Ai, Ae, ci, ce, bi, be, b2i, b2e)
    ccall((:ARKodeGetCurrentButcherTables, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), arkode_mem, s, q, p, Ai, Ae, ci, ce, bi, be, b2i, b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem, tolsfac)
    ccall((:ARKodeGetTolScaleFactor, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{realtype}), arkode_mem, tolsfac)
end

function __ARKodeGetErrWeights(arkode_mem, eweight::N_Vector)
    ccall((:ARKodeGetErrWeights, libsundials_arkode), Cint, (ARKODEMemPtr, N_Vector), arkode_mem, eweight)
end

function ARKodeGetErrWeights(arkode_mem, eweight)
    __eweight = convert(NVector, eweight)
    __ARKodeGetErrWeights(arkode_mem, convert(N_Vector, __eweight))
end

function __ARKodeGetResWeights(arkode_mem, rweight::N_Vector)
    ccall((:ARKodeGetResWeights, libsundials_arkode), Cint, (ARKODEMemPtr, N_Vector), arkode_mem, rweight)
end

function ARKodeGetResWeights(arkode_mem, rweight)
    __rweight = convert(NVector, rweight)
    __ARKodeGetResWeights(arkode_mem, convert(N_Vector, __rweight))
end

function __ARKodeGetEstLocalErrors(arkode_mem, ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors, libsundials_arkode), Cint, (ARKODEMemPtr, N_Vector), arkode_mem, ele)
end

function ARKodeGetEstLocalErrors(arkode_mem, ele)
    __ele = convert(NVector, ele)
    __ARKodeGetEstLocalErrors(arkode_mem, convert(N_Vector, __ele))
end

function ARKodeGetNumGEvals(arkode_mem, ngevals)
    ccall((:ARKodeGetNumGEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, ngevals)
end

function ARKodeGetRootInfo(arkode_mem, rootsfound)
    ccall((:ARKodeGetRootInfo, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Cint}), arkode_mem, rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem, nsteps, expsteps, accsteps, step_attempts, nfe_evals, nfi_evals, nlinsetups, netfails, hinused, hlast, hcur, tcur)
    ccall((:ARKodeGetIntegratorStats, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), arkode_mem, nsteps, expsteps, accsteps, step_attempts, nfe_evals, nfi_evals, nlinsetups, netfails, hinused, hlast, hcur, tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem, nniters)
    ccall((:ARKodeGetNumNonlinSolvIters, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem, nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem, nniters, nncfails)
    ccall((:ARKodeGetNonlinSolvStats, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, nniters, nncfails)
end

function __ARKodeLoadButcherTable(imethod::Cint, s, q, p, A, b, c, b2)
    ccall((:ARKodeLoadButcherTable, libsundials_arkode), Cint, (Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), imethod, s, q, p, A, b, c, b2)
end

function ARKodeLoadButcherTable(imethod, s, q, p, A, b, c, b2)
    __ARKodeLoadButcherTable(convert(Cint, imethod), s, q, p, A, b, c, b2)
end

function __ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function ARKodeGetReturnFlagName(flag)
    __ARKodeGetReturnFlagName(convert(Clong, flag))
end

function ARKodeWriteParameters(arkode_mem, fp)
    ccall((:ARKodeWriteParameters, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{FILE}), arkode_mem, fp)
end

function ARKodeWriteButcher(arkode_mem, fp)
    ccall((:ARKodeWriteButcher, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{FILE}), arkode_mem, fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree, libsundials_arkode), Cvoid, (Ref{ARKODEMemPtr},), arkode_mem)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/arkode/arkode_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function ARKSpilsSetLinearSolver(arkode_mem, LS::SUNLinearSolver)
    ccall((:ARKSpilsSetLinearSolver, libsundials_arkode), Cint, (ARKODEMemPtr, SUNLinearSolver), arkode_mem, LS)
end

function __ARKSpilsSetMassLinearSolver(arkode_mem, LS::SUNLinearSolver, time_dep::Cint)
    ccall((:ARKSpilsSetMassLinearSolver, libsundials_arkode), Cint, (ARKODEMemPtr, SUNLinearSolver, Cint), arkode_mem, LS, time_dep)
end

function ARKSpilsSetMassLinearSolver(arkode_mem, LS, time_dep)
    __ARKSpilsSetMassLinearSolver(arkode_mem, LS, convert(Cint, time_dep))
end

function ARKSpilsSetEpsLin(arkode_mem, eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem, eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin, libsundials_arkode), Cint, (ARKODEMemPtr, realtype), arkode_mem, eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem, psetup::ARKSpilsPrecSetupFn, psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner, libsundials_arkode), Cint, (ARKODEMemPtr, ARKSpilsPrecSetupFn, ARKSpilsPrecSolveFn), arkode_mem, psetup, psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem, psetup::ARKSpilsMassPrecSetupFn, psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner, libsundials_arkode), Cint, (ARKODEMemPtr, ARKSpilsMassPrecSetupFn, ARKSpilsMassPrecSolveFn), arkode_mem, psetup, psolve)
end

function ARKSpilsSetJacTimes(arkode_mem, jtsetup::ARKSpilsJacTimesSetupFn, jtimes::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimes, libsundials_arkode), Cint, (ARKODEMemPtr, ARKSpilsJacTimesSetupFn, ARKSpilsJacTimesVecFn), arkode_mem, jtsetup, jtimes)
end

function ARKSpilsSetMassTimes(arkode_mem, msetup::ARKSpilsMassTimesSetupFn, mtimes::ARKSpilsMassTimesVecFn, mtimes_data)
    ccall((:ARKSpilsSetMassTimes, libsundials_arkode), Cint, (ARKODEMemPtr, ARKSpilsMassTimesSetupFn, ARKSpilsMassTimesVecFn, Ptr{Cvoid}), arkode_mem, msetup, mtimes, mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem, lenrwLS, leniwLS)
    ccall((:ARKSpilsGetWorkSpace, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwLS, leniwLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem, npevals)
    ccall((:ARKSpilsGetNumPrecEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, npevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem, npsolves)
    ccall((:ARKSpilsGetNumPrecSolves, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, npsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem, nliters)
    ccall((:ARKSpilsGetNumLinIters, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nliters)
end

function ARKSpilsGetNumConvFails(arkode_mem, nlcfails)
    ccall((:ARKSpilsGetNumConvFails, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nlcfails)
end

function ARKSpilsGetNumJTSetupEvals(arkode_mem, njtsetups)
    ccall((:ARKSpilsGetNumJTSetupEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, njtsetups)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem, njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, njvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem, nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem, flag)
    ccall((:ARKSpilsGetLastFlag, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, flag)
end

function ARKSpilsGetMassWorkSpace(arkode_mem, lenrwMLS, leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwMLS, leniwMLS)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem, nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmpevals)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem, nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmpsolves)
end

function ARKSpilsGetNumMassIters(arkode_mem, nmiters)
    ccall((:ARKSpilsGetNumMassIters, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmiters)
end

function ARKSpilsGetNumMassConvFails(arkode_mem, nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmcfails)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem, nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmvevals)
end

function ARKSpilsGetLastMassFlag(arkode_mem, flag)
    ccall((:ARKSpilsGetLastMassFlag, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, flag)
end

function __ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function ARKSpilsGetReturnFlagName(flag)
    __ARKSpilsGetReturnFlagName(convert(Clong, flag))
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/arkode/arkode_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function ARKBandPrecInit(arkode_mem, N::sunindextype, mu::sunindextype, ml::sunindextype)
    ccall((:ARKBandPrecInit, libsundials_arkode), Cint, (ARKODEMemPtr, sunindextype, sunindextype, sunindextype), arkode_mem, N, mu, ml)
end

function ARKBandPrecGetWorkSpace(arkode_mem, lenrwLS, leniwLS)
    ccall((:ARKBandPrecGetWorkSpace, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwLS, leniwLS)
end

function ARKBandPrecGetNumRhsEvals(arkode_mem, nfevalsBP)
    ccall((:ARKBandPrecGetNumRhsEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nfevalsBP)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/arkode/arkode_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function ARKBBDPrecInit(arkode_mem, Nlocal::sunindextype, mudq::sunindextype, mldq::sunindextype, mukeep::sunindextype, mlkeep::sunindextype, dqrely::realtype, gloc::ARKLocalFn, cfn::ARKCommFn)
    ccall((:ARKBBDPrecInit, libsundials_arkode), Cint, (ARKODEMemPtr, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, ARKLocalFn, ARKCommFn), arkode_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn)
end

function ARKBBDPrecReInit(arkode_mem, mudq::sunindextype, mldq::sunindextype, dqrely::realtype)
    ccall((:ARKBBDPrecReInit, libsundials_arkode), Cint, (ARKODEMemPtr, sunindextype, sunindextype, realtype), arkode_mem, mudq, mldq, dqrely)
end

function ARKBBDPrecGetWorkSpace(arkode_mem, lenrwLS, leniwLS)
    ccall((:ARKBBDPrecGetWorkSpace, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwLS, leniwLS)
end

function ARKBBDPrecGetNumGfnEvals(arkode_mem, ngevalsBBDP)
    ccall((:ARKBBDPrecGetNumGfnEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, ngevalsBBDP)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/arkode/arkode_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function ARKDlsSetLinearSolver(arkode_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:ARKDlsSetLinearSolver, libsundials_arkode), Cint, (ARKODEMemPtr, SUNLinearSolver, SUNMatrix), arkode_mem, LS, A)
end

function __ARKDlsSetMassLinearSolver(arkode_mem, LS::SUNLinearSolver, M::SUNMatrix, time_dep::Cint)
    ccall((:ARKDlsSetMassLinearSolver, libsundials_arkode), Cint, (ARKODEMemPtr, SUNLinearSolver, SUNMatrix, Cint), arkode_mem, LS, M, time_dep)
end

function ARKDlsSetMassLinearSolver(arkode_mem, LS, M, time_dep)
    __ARKDlsSetMassLinearSolver(arkode_mem, LS, M, convert(Cint, time_dep))
end

function ARKDlsSetJacFn(arkode_mem, jac::ARKDlsJacFn)
    ccall((:ARKDlsSetJacFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKDlsJacFn), arkode_mem, jac)
end

function ARKDlsSetMassFn(arkode_mem, mass::ARKDlsMassFn)
    ccall((:ARKDlsSetMassFn, libsundials_arkode), Cint, (ARKODEMemPtr, ARKDlsMassFn), arkode_mem, mass)
end

function ARKDlsGetWorkSpace(arkode_mem, lenrwLS, leniwLS)
    ccall((:ARKDlsGetWorkSpace, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwLS, leniwLS)
end

function ARKDlsGetNumJacEvals(arkode_mem, njevals)
    ccall((:ARKDlsGetNumJacEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, njevals)
end

function ARKDlsGetNumRhsEvals(arkode_mem, nfevalsLS)
    ccall((:ARKDlsGetNumRhsEvals, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nfevalsLS)
end

function ARKDlsGetLastFlag(arkode_mem, flag)
    ccall((:ARKDlsGetLastFlag, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, flag)
end

function ARKDlsGetMassWorkSpace(arkode_mem, lenrwMLS, leniwMLS)
    ccall((:ARKDlsGetMassWorkSpace, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}, Ptr{Clong}), arkode_mem, lenrwMLS, leniwMLS)
end

function ARKDlsGetNumMassSetups(arkode_mem, nmsetups)
    ccall((:ARKDlsGetNumMassSetups, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmsetups)
end

function ARKDlsGetNumMassSolves(arkode_mem, nmsolves)
    ccall((:ARKDlsGetNumMassSolves, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmsolves)
end

function ARKDlsGetNumMassMult(arkode_mem, nmmults)
    ccall((:ARKDlsGetNumMassMult, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, nmmults)
end

function ARKDlsGetLastMassFlag(arkode_mem, flag)
    ccall((:ARKDlsGetLastMassFlag, libsundials_arkode), Cint, (ARKODEMemPtr, Ptr{Clong}), arkode_mem, flag)
end

function __ARKDlsGetReturnFlagName(flag::Clong)
    ccall((:ARKDlsGetReturnFlagName, libsundials_arkode), Cstring, (Clong,), flag)
end

function ARKDlsGetReturnFlagName(flag)
    __ARKDlsGetReturnFlagName(convert(Clong, flag))
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/arkode/arkode_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

