# Julia wrapper for header: cvodes.h
# Automatically generated using Clang.jl


function CVodeCreate(lmm::Cint)
    ccall((:CVodeCreate, libsundials_cvodes), CVODEMemPtr, (Cint,), lmm)
end

function CVodeCreate(lmm)
    CVodeCreate(convert(Cint, lmm))
end

function CVodeInit(cvode_mem, f::CVRhsFn, t0::realtype, y0::N_Vector)
    ccall((:CVodeInit, libsundials_cvodes), Cint, (CVODEMemPtr, CVRhsFn, realtype, N_Vector), cvode_mem, f, t0, y0)
end

function CVodeInit(cvode_mem, f, t0::realtype, y0)
    __y0 = convert(NVector, y0)
    CVodeInit(cvode_mem, CVRhsFn_wrapper(f), t0, convert(N_Vector, __y0))
end

function CVodeReInit(cvode_mem, t0::realtype, y0::N_Vector)
    ccall((:CVodeReInit, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, N_Vector), cvode_mem, t0, y0)
end

function CVodeReInit(cvode_mem, t0::realtype, y0)
    __y0 = convert(NVector, y0)
    CVodeReInit(cvode_mem, t0, convert(N_Vector, __y0))
end

function CVodeSStolerances(cvode_mem, reltol::realtype, abstol::realtype)
    ccall((:CVodeSStolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, realtype), cvode_mem, reltol, abstol)
end

function CVodeSVtolerances(cvode_mem, reltol::realtype, abstol::N_Vector)
    ccall((:CVodeSVtolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, N_Vector), cvode_mem, reltol, abstol)
end

function CVodeSVtolerances(cvode_mem, reltol, abstol)
    __abstol = convert(NVector, abstol)
    CVodeSVtolerances(cvode_mem, reltol, convert(N_Vector, __abstol))
end

function CVodeWFtolerances(cvode_mem, efun::CVEwtFn)
    ccall((:CVodeWFtolerances, libsundials_cvodes), Cint, (CVODEMemPtr, CVEwtFn), cvode_mem, efun)
end

function CVodeSetErrHandlerFn(cvode_mem, ehfun::CVErrHandlerFn, eh_data)
    ccall((:CVodeSetErrHandlerFn, libsundials_cvodes), Cint, (CVODEMemPtr, CVErrHandlerFn, Ptr{Cvoid}), cvode_mem, ehfun, eh_data)
end

function CVodeSetErrFile(cvode_mem, errfp)
    ccall((:CVodeSetErrFile, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{FILE}), cvode_mem, errfp)
end

function CVodeSetUserData(cvode_mem, user_data)
    ccall((:CVodeSetUserData, libsundials_cvodes), Cint, (CVODEMemPtr, Any), cvode_mem, user_data)
end

function CVodeSetMaxOrd(cvode_mem, maxord::Cint)
    ccall((:CVodeSetMaxOrd, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, maxord)
end

function CVodeSetMaxOrd(cvode_mem, maxord)
    CVodeSetMaxOrd(cvode_mem, convert(Cint, maxord))
end

function CVodeSetMaxNumSteps(cvode_mem, mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps, libsundials_cvodes), Cint, (CVODEMemPtr, Clong), cvode_mem, mxsteps)
end

function CVodeSetMaxNumSteps(cvode_mem, mxsteps)
    CVodeSetMaxNumSteps(cvode_mem, convert(Clong, mxsteps))
end

function CVodeSetMaxHnilWarns(cvode_mem, mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, mxhnil)
end

function CVodeSetMaxHnilWarns(cvode_mem, mxhnil)
    CVodeSetMaxHnilWarns(cvode_mem, convert(Cint, mxhnil))
end

function CVodeSetStabLimDet(cvode_mem, stldet::Cint)
    ccall((:CVodeSetStabLimDet, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, stldet)
end

function CVodeSetStabLimDet(cvode_mem, stldet)
    CVodeSetStabLimDet(cvode_mem, convert(Cint, stldet))
end

function CVodeSetInitStep(cvode_mem, hin::realtype)
    ccall((:CVodeSetInitStep, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, hin)
end

function CVodeSetMinStep(cvode_mem, hmin::realtype)
    ccall((:CVodeSetMinStep, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, hmin)
end

function CVodeSetMaxStep(cvode_mem, hmax::realtype)
    ccall((:CVodeSetMaxStep, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, hmax)
end

function CVodeSetStopTime(cvode_mem, tstop::realtype)
    ccall((:CVodeSetStopTime, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem, maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, maxnef)
end

function CVodeSetMaxErrTestFails(cvode_mem, maxnef)
    CVodeSetMaxErrTestFails(cvode_mem, convert(Cint, maxnef))
end

function CVodeSetMaxNonlinIters(cvode_mem, maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, maxcor)
end

function CVodeSetMaxNonlinIters(cvode_mem, maxcor)
    CVodeSetMaxNonlinIters(cvode_mem, convert(Cint, maxcor))
end

function CVodeSetMaxConvFails(cvode_mem, maxncf::Cint)
    ccall((:CVodeSetMaxConvFails, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, maxncf)
end

function CVodeSetMaxConvFails(cvode_mem, maxncf)
    CVodeSetMaxConvFails(cvode_mem, convert(Cint, maxncf))
end

function CVodeSetNonlinConvCoef(cvode_mem, nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, nlscoef)
end

function CVodeSetConstraints(cvode_mem, constraints::N_Vector)
    ccall((:CVodeSetConstraints, libsundials_cvodes), Cint, (CVODEMemPtr, N_Vector), cvode_mem, constraints)
end

function CVodeSetConstraints(cvode_mem, constraints)
    __constraints = convert(NVector, constraints)
    CVodeSetConstraints(cvode_mem, convert(N_Vector, __constraints))
end

function CVodeSetNonlinearSolver(cvode_mem, NLS::SUNNonlinearSolver)
    ccall((:CVodeSetNonlinearSolver, libsundials_cvodes), Cint, (CVODEMemPtr, SUNNonlinearSolver), cvode_mem, NLS)
end

function CVodeRootInit(cvode_mem, nrtfn::Cint, g::CVRootFn)
    ccall((:CVodeRootInit, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVRootFn), cvode_mem, nrtfn, g)
end

function CVodeRootInit(cvode_mem, nrtfn, g)
    CVodeRootInit(cvode_mem, convert(Cint, nrtfn), CVRootFn_wrapper(g))
end

function CVodeSetRootDirection(cvode_mem, rootdir)
    ccall((:CVodeSetRootDirection, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem)
    ccall((:CVodeSetNoInactiveRootWarn, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVode(cvode_mem, tout::realtype, yout::N_Vector, tret, itask::Cint)
    ccall((:CVode, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, N_Vector, Ptr{realtype}, Cint), cvode_mem, tout, yout, tret, itask)
end

function CVode(cvode_mem, tout, yout, tret, itask)
    __yout = convert(NVector, yout)
    CVode(cvode_mem, tout, convert(N_Vector, __yout), tret, convert(Cint, itask))
end

function CVodeGetDky(cvode_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:CVodeGetDky, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint, N_Vector), cvode_mem, t, k, dky)
end

function CVodeGetDky(cvode_mem, t, k, dky)
    __dky = convert(NVector, dky)
    CVodeGetDky(cvode_mem, t, convert(Cint, k), convert(N_Vector, __dky))
end

function CVodeGetWorkSpace(cvode_mem, lenrw, leniw)
    ccall((:CVodeGetWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrw, leniw)
end

function CVodeGetNumSteps(cvode_mem, nsteps)
    ccall((:CVodeGetNumSteps, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem, nfevals)
    ccall((:CVodeGetNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem, nlinsetups)
    ccall((:CVodeGetNumLinSolvSetups, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem, netfails)
    ccall((:CVodeGetNumErrTestFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, netfails)
end

function CVodeGetLastOrder(cvode_mem, qlast)
    ccall((:CVodeGetLastOrder, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, qlast)
end

function CVodeGetCurrentOrder(cvode_mem, qcur)
    ccall((:CVodeGetCurrentOrder, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, qcur)
end

function CVodeGetCurrentGamma(cvode_mem, gamma)
    ccall((:CVodeGetCurrentGamma, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, gamma)
end

function CVodeGetNumStabLimOrderReds(cvode_mem, nslred)
    ccall((:CVodeGetNumStabLimOrderReds, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nslred)
end

function CVodeGetActualInitStep(cvode_mem, hinused)
    ccall((:CVodeGetActualInitStep, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, hinused)
end

function CVodeGetLastStep(cvode_mem, hlast)
    ccall((:CVodeGetLastStep, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, hlast)
end

function CVodeGetCurrentStep(cvode_mem, hcur)
    ccall((:CVodeGetCurrentStep, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, hcur)
end

function CVodeGetCurrentState(cvode_mem, y)
    ccall((:CVodeGetCurrentState, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{N_Vector}), cvode_mem, y)
end

function CVodeGetCurrentStateSens(cvode_mem, yS)
    ccall((:CVodeGetCurrentStateSens, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Ptr{N_Vector}}), cvode_mem, yS)
end

function CVodeGetCurrentSensSolveIndex(cvode_mem, index)
    ccall((:CVodeGetCurrentSensSolveIndex, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, index)
end

function CVodeGetCurrentTime(cvode_mem, tcur)
    ccall((:CVodeGetCurrentTime, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, tcur)
end

function CVodeGetTolScaleFactor(cvode_mem, tolsfac)
    ccall((:CVodeGetTolScaleFactor, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, tolsfac)
end

function CVodeGetErrWeights(cvode_mem, eweight::N_Vector)
    ccall((:CVodeGetErrWeights, libsundials_cvodes), Cint, (CVODEMemPtr, N_Vector), cvode_mem, eweight)
end

function CVodeGetErrWeights(cvode_mem, eweight)
    __eweight = convert(NVector, eweight)
    CVodeGetErrWeights(cvode_mem, convert(N_Vector, __eweight))
end

function CVodeGetEstLocalErrors(cvode_mem, ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors, libsundials_cvodes), Cint, (CVODEMemPtr, N_Vector), cvode_mem, ele)
end

function CVodeGetEstLocalErrors(cvode_mem, ele)
    __ele = convert(NVector, ele)
    CVodeGetEstLocalErrors(cvode_mem, convert(N_Vector, __ele))
end

function CVodeGetNumGEvals(cvode_mem, ngevals)
    ccall((:CVodeGetNumGEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, ngevals)
end

function CVodeGetRootInfo(cvode_mem, rootsfound)
    ccall((:CVodeGetRootInfo, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem, nsteps, nfevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
    ccall((:CVodeGetIntegratorStats, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Cint}, Ptr{Cint}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), cvode_mem, nsteps, nfevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem, nniters)
    ccall((:CVodeGetNumNonlinSolvIters, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem, nncfails)
    ccall((:CVodeGetNumNonlinSolvConvFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem, nniters, nncfails)
    ccall((:CVodeGetNonlinSolvStats, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, nniters, nncfails)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVodeGetReturnFlagName(flag)
    CVodeGetReturnFlagName(convert(Clong, flag))
end

function CVodeFree(cvode_mem)
    ccall((:CVodeFree, libsundials_cvodes), Cvoid, (Ref{CVODEMemPtr},), cvode_mem)
end

function CVodeQuadInit(cvode_mem, fQ::CVQuadRhsFn, yQ0::N_Vector)
    ccall((:CVodeQuadInit, libsundials_cvodes), Cint, (CVODEMemPtr, CVQuadRhsFn, N_Vector), cvode_mem, fQ, yQ0)
end

function CVodeQuadInit(cvode_mem, fQ, yQ0)
    __yQ0 = convert(NVector, yQ0)
    CVodeQuadInit(cvode_mem, fQ, convert(N_Vector, __yQ0))
end

function CVodeQuadReInit(cvode_mem, yQ0::N_Vector)
    ccall((:CVodeQuadReInit, libsundials_cvodes), Cint, (CVODEMemPtr, N_Vector), cvode_mem, yQ0)
end

function CVodeQuadReInit(cvode_mem, yQ0)
    __yQ0 = convert(NVector, yQ0)
    CVodeQuadReInit(cvode_mem, convert(N_Vector, __yQ0))
end

function CVodeQuadSStolerances(cvode_mem, reltolQ::realtype, abstolQ::realtype)
    ccall((:CVodeQuadSStolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, realtype), cvode_mem, reltolQ, abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem, reltolQ::realtype, abstolQ::N_Vector)
    ccall((:CVodeQuadSVtolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, N_Vector), cvode_mem, reltolQ, abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem, reltolQ, abstolQ)
    __abstolQ = convert(NVector, abstolQ)
    CVodeQuadSVtolerances(cvode_mem, reltolQ, convert(N_Vector, __abstolQ))
end

function CVodeSetQuadErrCon(cvode_mem, errconQ::Cint)
    ccall((:CVodeSetQuadErrCon, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, errconQ)
end

function CVodeSetQuadErrCon(cvode_mem, errconQ)
    CVodeSetQuadErrCon(cvode_mem, convert(Cint, errconQ))
end

function CVodeGetQuad(cvode_mem, tret, yQout::N_Vector)
    ccall((:CVodeGetQuad, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}, N_Vector), cvode_mem, tret, yQout)
end

function CVodeGetQuad(cvode_mem, tret, yQout)
    __yQout = convert(NVector, yQout)
    CVodeGetQuad(cvode_mem, tret, convert(N_Vector, yQout))
end

function CVodeGetQuadDky(cvode_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:CVodeGetQuadDky, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint, N_Vector), cvode_mem, t, k, dky)
end

function CVodeGetQuadDky(cvode_mem, t, k, dky)
    __dky = convert(NVector, dky)
    CVodeGetQuadDky(cvode_mem, t, convert(Cint, k), convert(N_Vector, __dky))
end

function CVodeGetQuadNumRhsEvals(cvode_mem, nfQevals)
    ccall((:CVodeGetQuadNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfQevals)
end

function CVodeGetQuadNumErrTestFails(cvode_mem, nQetfails)
    ccall((:CVodeGetQuadNumErrTestFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nQetfails)
end

function CVodeGetQuadErrWeights(cvode_mem, eQweight::N_Vector)
    ccall((:CVodeGetQuadErrWeights, libsundials_cvodes), Cint, (CVODEMemPtr, N_Vector), cvode_mem, eQweight)
end

function CVodeGetQuadErrWeights(cvode_mem, eQweight)
    __eQweight = convert(NVector, eQweight)
    CVodeGetQuadErrWeights(cvode_mem, convert(N_Vector, __eQweight))
end

function CVodeGetQuadStats(cvode_mem, nfQevals, nQetfails)
    ccall((:CVodeGetQuadStats, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, nfQevals, nQetfails)
end

function CVodeQuadFree(cvode_mem)
    ccall((:CVodeQuadFree, libsundials_cvodes), Cvoid, (CVODEMemPtr,), cvode_mem)
end

function CVodeSensInit(cvode_mem, Ns::Cint, ism::Cint, fS::CVSensRhsFn, yS0)
    ccall((:CVodeSensInit, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Cint, CVSensRhsFn, Ptr{N_Vector}), cvode_mem, Ns, ism, fS, yS0)
end

function CVodeSensInit(cvode_mem, Ns, ism, fS, yS0)
    CVodeSensInit(cvode_mem, convert(Cint, Ns), convert(Cint, ism), fS, yS0)
end

function CVodeSensInit1(cvode_mem, Ns::Cint, ism::Cint, fS1::CVSensRhs1Fn, yS0)
    ccall((:CVodeSensInit1, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Cint, CVSensRhs1Fn, Ptr{N_Vector}), cvode_mem, Ns, ism, fS1, yS0)
end

function CVodeSensInit1(cvode_mem, Ns, ism, fS1, yS0)
    CVodeSensInit1(cvode_mem, convert(Cint, Ns), convert(Cint, ism), fS1, yS0)
end

function CVodeSensReInit(cvode_mem, ism::Cint, yS0)
    ccall((:CVodeSensReInit, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Ptr{N_Vector}), cvode_mem, ism, yS0)
end

function CVodeSensReInit(cvode_mem, ism, yS0)
    CVodeSensReInit(cvode_mem, convert(Cint, ism), yS0)
end

function CVodeSensSStolerances(cvode_mem, reltolS::realtype, abstolS)
    ccall((:CVodeSensSStolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Ptr{realtype}), cvode_mem, reltolS, abstolS)
end

function CVodeSensSVtolerances(cvode_mem, reltolS::realtype, abstolS)
    ccall((:CVodeSensSVtolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Ptr{N_Vector}), cvode_mem, reltolS, abstolS)
end

function CVodeSensEEtolerances(cvode_mem)
    ccall((:CVodeSensEEtolerances, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVodeSetSensDQMethod(cvode_mem, DQtype::Cint, DQrhomax::realtype)
    ccall((:CVodeSetSensDQMethod, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype), cvode_mem, DQtype, DQrhomax)
end

function CVodeSetSensDQMethod(cvode_mem, DQtype, DQrhomax)
    CVodeSetSensDQMethod(cvode_mem, convert(Cint, DQtype), DQrhomax)
end

function CVodeSetSensErrCon(cvode_mem, errconS::Cint)
    ccall((:CVodeSetSensErrCon, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, errconS)
end

function CVodeSetSensErrCon(cvode_mem, errconS)
    CVodeSetSensErrCon(cvode_mem, convert(Cint, errconS))
end

function CVodeSetSensMaxNonlinIters(cvode_mem, maxcorS::Cint)
    ccall((:CVodeSetSensMaxNonlinIters, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, maxcorS)
end

function CVodeSetSensMaxNonlinIters(cvode_mem, maxcorS)
    CVodeSetSensMaxNonlinIters(cvode_mem, convert(Cint, maxcorS))
end

function CVodeSetSensParams(cvode_mem, p, pbar, plist)
    ccall((:CVodeSetSensParams, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}, Ptr{realtype}, Ptr{Cint}), cvode_mem, p, pbar, plist)
end

function CVodeSetNonlinearSolverSensSim(cvode_mem, NLS::SUNNonlinearSolver)
    ccall((:CVodeSetNonlinearSolverSensSim, libsundials_cvodes), Cint, (CVODEMemPtr, SUNNonlinearSolver), cvode_mem, NLS)
end

function CVodeSetNonlinearSolverSensStg(cvode_mem, NLS::SUNNonlinearSolver)
    ccall((:CVodeSetNonlinearSolverSensStg, libsundials_cvodes), Cint, (CVODEMemPtr, SUNNonlinearSolver), cvode_mem, NLS)
end

function CVodeSetNonlinearSolverSensStg1(cvode_mem, NLS::SUNNonlinearSolver)
    ccall((:CVodeSetNonlinearSolverSensStg1, libsundials_cvodes), Cint, (CVODEMemPtr, SUNNonlinearSolver), cvode_mem, NLS)
end

function CVodeSensToggleOff(cvode_mem)
    ccall((:CVodeSensToggleOff, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVodeGetSens(cvode_mem, tret, ySout)
    ccall((:CVodeGetSens, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}, Ptr{N_Vector}), cvode_mem, tret, ySout)
end

function CVodeGetSens1(cvode_mem, tret, is::Cint, ySout::N_Vector)
    ccall((:CVodeGetSens1, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}, Cint, N_Vector), cvode_mem, tret, is, ySout)
end

function CVodeGetSens1(cvode_mem, tret, is, ySout)
    __ySout = convert(NVector, ySout)
    CVodeGetSens1(cvode_mem, tret, convert(Cint, is), convert(N_Vector, __ySout))
end

function CVodeGetSensDky(cvode_mem, t::realtype, k::Cint, dkyA)
    ccall((:CVodeGetSensDky, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint, Ptr{N_Vector}), cvode_mem, t, k, dkyA)
end

function CVodeGetSensDky(cvode_mem, t, k, dkyA)
    CVodeGetSensDky(cvode_mem, t, convert(Cint, k), dkyA)
end

function CVodeGetSensDky1(cvode_mem, t::realtype, k::Cint, is::Cint, dky::N_Vector)
    ccall((:CVodeGetSensDky1, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint, Cint, N_Vector), cvode_mem, t, k, is, dky)
end

function CVodeGetSensDky1(cvode_mem, t, k, is, dky)
    __dky = convert(NVector, dky)
    CVodeGetSensDky1(cvode_mem, t, convert(Cint, k), convert(Cint, is), convert(N_Vector, __dky))
end

function CVodeGetSensNumRhsEvals(cvode_mem, nfSevals)
    ccall((:CVodeGetSensNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfSevals)
end

function CVodeGetNumRhsEvalsSens(cvode_mem, nfevalsS)
    ccall((:CVodeGetNumRhsEvalsSens, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsS)
end

function CVodeGetSensNumErrTestFails(cvode_mem, nSetfails)
    ccall((:CVodeGetSensNumErrTestFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nSetfails)
end

function CVodeGetSensNumLinSolvSetups(cvode_mem, nlinsetupsS)
    ccall((:CVodeGetSensNumLinSolvSetups, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nlinsetupsS)
end

function CVodeGetSensErrWeights(cvode_mem, eSweight)
    ccall((:CVodeGetSensErrWeights, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{N_Vector}), cvode_mem, eSweight)
end

function CVodeGetSensStats(cvode_mem, nfSevals, nfevalsS, nSetfails, nlinsetupsS)
    ccall((:CVodeGetSensStats, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}), cvode_mem, nfSevals, nfevalsS, nSetfails, nlinsetupsS)
end

function CVodeGetSensNumNonlinSolvIters(cvode_mem, nSniters)
    ccall((:CVodeGetSensNumNonlinSolvIters, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nSniters)
end

function CVodeGetSensNumNonlinSolvConvFails(cvode_mem, nSncfails)
    ccall((:CVodeGetSensNumNonlinSolvConvFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nSncfails)
end

function CVodeGetStgrSensNumNonlinSolvIters(cvode_mem, nSTGR1niters)
    ccall((:CVodeGetStgrSensNumNonlinSolvIters, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nSTGR1niters)
end

function CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem, nSTGR1ncfails)
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nSTGR1ncfails)
end

function CVodeGetSensNonlinSolvStats(cvode_mem, nSniters, nSncfails)
    ccall((:CVodeGetSensNonlinSolvStats, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, nSniters, nSncfails)
end

function CVodeSensFree(cvode_mem)
    ccall((:CVodeSensFree, libsundials_cvodes), Cvoid, (CVODEMemPtr,), cvode_mem)
end

function CVodeQuadSensInit(cvode_mem, fQS::CVQuadSensRhsFn, yQS0)
    ccall((:CVodeQuadSensInit, libsundials_cvodes), Cint, (CVODEMemPtr, CVQuadSensRhsFn, Ptr{N_Vector}), cvode_mem, fQS, yQS0)
end

function CVodeQuadSensReInit(cvode_mem, yQS0)
    ccall((:CVodeQuadSensReInit, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{N_Vector}), cvode_mem, yQS0)
end

function CVodeQuadSensSStolerances(cvode_mem, reltolQS::realtype, abstolQS)
    ccall((:CVodeQuadSensSStolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Ptr{realtype}), cvode_mem, reltolQS, abstolQS)
end

function CVodeQuadSensSVtolerances(cvode_mem, reltolQS::realtype, abstolQS)
    ccall((:CVodeQuadSensSVtolerances, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Ptr{N_Vector}), cvode_mem, reltolQS, abstolQS)
end

function CVodeQuadSensEEtolerances(cvode_mem)
    ccall((:CVodeQuadSensEEtolerances, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVodeSetQuadSensErrCon(cvode_mem, errconQS::Cint)
    ccall((:CVodeSetQuadSensErrCon, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, errconQS)
end

function CVodeSetQuadSensErrCon(cvode_mem, errconQS)
    CVodeSetQuadSensErrCon(cvode_mem, convert(Cint, errconQS))
end

function CVodeGetQuadSens(cvode_mem, tret, yQSout)
    ccall((:CVodeGetQuadSens, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}, Ptr{N_Vector}), cvode_mem, tret, yQSout)
end

function CVodeGetQuadSens1(cvode_mem, tret, is::Cint, yQSout::N_Vector)
    ccall((:CVodeGetQuadSens1, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{realtype}, Cint, N_Vector), cvode_mem, tret, is, yQSout)
end

function CVodeGetQuadSens1(cvode_mem, tret, is, yQSout)
    __yQSout = convert(NVector, yQSout)
    CVodeGetQuadSens1(cvode_mem, tret, convert(Cint, is), convert(N_Vector, yQSout))
end

function CVodeGetQuadSensDky(cvode_mem, t::realtype, k::Cint, dkyQS_all)
    ccall((:CVodeGetQuadSensDky, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint, Ptr{N_Vector}), cvode_mem, t, k, dkyQS_all)
end

function CVodeGetQuadSensDky(cvode_mem, t, k, dkyQS_all)
    CVodeGetQuadSensDky(cvode_mem, t, convert(Cint, k), dkyQS_all)
end

function CVodeGetQuadSensDky1(cvode_mem, t::realtype, k::Cint, is::Cint, dkyQS::N_Vector)
    ccall((:CVodeGetQuadSensDky1, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint, Cint, N_Vector), cvode_mem, t, k, is, dkyQS)
end

function CVodeGetQuadSensDky1(cvode_mem, t, k, is, dkyQS)
    __dkyQS = convert(NVector, dkyQS)
    CVodeGetQuadSensDky1(cvode_mem, t, convert(Cint, k), convert(Cint, is), convert(N_Vector, __dkyQS))
end

function CVodeGetQuadSensNumRhsEvals(cvode_mem, nfQSevals)
    ccall((:CVodeGetQuadSensNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfQSevals)
end

function CVodeGetQuadSensNumErrTestFails(cvode_mem, nQSetfails)
    ccall((:CVodeGetQuadSensNumErrTestFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nQSetfails)
end

function CVodeGetQuadSensErrWeights(cvode_mem, eQSweight)
    ccall((:CVodeGetQuadSensErrWeights, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{N_Vector}), cvode_mem, eQSweight)
end

function CVodeGetQuadSensStats(cvode_mem, nfQSevals, nQSetfails)
    ccall((:CVodeGetQuadSensStats, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, nfQSevals, nQSetfails)
end

function CVodeQuadSensFree(cvode_mem)
    ccall((:CVodeQuadSensFree, libsundials_cvodes), Cvoid, (CVODEMemPtr,), cvode_mem)
end

function CVodeAdjInit(cvode_mem, steps::Clong, interp::Cint)
    ccall((:CVodeAdjInit, libsundials_cvodes), Cint, (CVODEMemPtr, Clong, Cint), cvode_mem, steps, interp)
end

function CVodeAdjInit(cvode_mem, steps, interp)
    CVodeAdjInit(cvode_mem, convert(Clong, steps), convert(Cint, interp))
end

function CVodeAdjReInit(cvode_mem)
    ccall((:CVodeAdjReInit, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVodeAdjFree(cvode_mem)
    ccall((:CVodeAdjFree, libsundials_cvodes), Cvoid, (CVODEMemPtr,), cvode_mem)
end

function CVodeCreateB(cvode_mem, lmmB::Cint, which)
    ccall((:CVodeCreateB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Ptr{Cint}), cvode_mem, lmmB, which)
end

function CVodeCreateB(cvode_mem, lmmB, which)
    CVodeCreateB(cvode_mem, convert(Cint, lmmB), which)
end

function CVodeInitB(cvode_mem, which::Cint, fB::CVRhsFnB, tB0::realtype, yB0::N_Vector)
    ccall((:CVodeInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVRhsFnB, realtype, N_Vector), cvode_mem, which, fB, tB0, yB0)
end

function CVodeInitB(cvode_mem, which, fB, tB0, yB0)
    __yB0 = convert(NVector, yB0)
    CVodeInitB(cvode_mem, convert(Cint, which), fB, tB0, convert(N_Vector, __yB0))
end

function CVodeInitBS(cvode_mem, which::Cint, fBs::CVRhsFnBS, tB0::realtype, yB0::N_Vector)
    ccall((:CVodeInitBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVRhsFnBS, realtype, N_Vector), cvode_mem, which, fBs, tB0, yB0)
end

function CVodeInitBS(cvode_mem, which, fBs, tB0, yB0)
    __yB0 = convert(NVector, yB0)
    CVodeInitBS(cvode_mem, convert(Cint, which), fBs, tB0, convert(N_Vector, __yB0))
end

function CVodeReInitB(cvode_mem, which::Cint, tB0::realtype, yB0::N_Vector)
    ccall((:CVodeReInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype, N_Vector), cvode_mem, which, tB0, yB0)
end

function CVodeReInitB(cvode_mem, which, tB0, yB0)
    __yB0 = convert(NVector, yB0)
    CVodeReInitB(cvode_mem, convert(Cint, which), tB0, convert(N_Vector, __yB0))
end

function CVodeSStolerancesB(cvode_mem, which::Cint, reltolB::realtype, abstolB::realtype)
    ccall((:CVodeSStolerancesB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype, realtype), cvode_mem, which, reltolB, abstolB)
end

function CVodeSStolerancesB(cvode_mem, which, reltolB, abstolB)
    CVodeSStolerancesB(cvode_mem, convert(Cint, which), reltolB, abstolB)
end

function CVodeSVtolerancesB(cvode_mem, which::Cint, reltolB::realtype, abstolB::N_Vector)
    ccall((:CVodeSVtolerancesB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype, N_Vector), cvode_mem, which, reltolB, abstolB)
end

function CVodeSVtolerancesB(cvode_mem, which, reltolB, abstolB)
    __abstolB = convert(NVector, abstolB)
    CVodeSVtolerancesB(cvode_mem, convert(Cint, which), reltolB, convert(N_Vector, __abstolB))
end

function CVodeQuadInitB(cvode_mem, which::Cint, fQB::CVQuadRhsFnB, yQB0::N_Vector)
    ccall((:CVodeQuadInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVQuadRhsFnB, N_Vector), cvode_mem, which, fQB, yQB0)
end

function CVodeQuadInitB(cvode_mem, which, fQB, yQB0)
    __yQB0 = convert(NVector, yQB0)
    CVodeQuadInitB(cvode_mem, convert(Cint, which), fQB, convert(N_Vector, __yQB0))
end

function CVodeQuadInitBS(cvode_mem, which::Cint, fQBs::CVQuadRhsFnBS, yQB0::N_Vector)
    ccall((:CVodeQuadInitBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVQuadRhsFnBS, N_Vector), cvode_mem, which, fQBs, yQB0)
end

function CVodeQuadInitBS(cvode_mem, which, fQBs, yQB0)
    __yQB0 = convert(NVector, yQB0)
    CVodeQuadInitBS(cvode_mem, convert(Cint, which), fQBs, convert(N_Vector, __yQB0))
end

function CVodeQuadReInitB(cvode_mem, which::Cint, yQB0::N_Vector)
    ccall((:CVodeQuadReInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, N_Vector), cvode_mem, which, yQB0)
end

function CVodeQuadReInitB(cvode_mem, which, yQB0)
    __yQB0 = convert(NVector, yQB0)
    CVodeQuadReInitB(cvode_mem, convert(Cint, which), convert(N_Vector, __yQB0))
end

function CVodeQuadSStolerancesB(cvode_mem, which::Cint, reltolQB::realtype, abstolQB::realtype)
    ccall((:CVodeQuadSStolerancesB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype, realtype), cvode_mem, which, reltolQB, abstolQB)
end

function CVodeQuadSStolerancesB(cvode_mem, which, reltolQB, abstolQB)
    CVodeQuadSStolerancesB(cvode_mem, convert(Cint, which), reltolQB, abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem, which::Cint, reltolQB::realtype, abstolQB::N_Vector)
    ccall((:CVodeQuadSVtolerancesB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype, N_Vector), cvode_mem, which, reltolQB, abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem, which, reltolQB, abstolQB)
    __abstolQB = convert(NVector, abstolQB)
    CVodeQuadSVtolerancesB(cvode_mem, convert(Cint, which), reltolQB, convert(N_Vector, __abstolQB))
end

function CVodeF(cvode_mem, tout::realtype, yout::N_Vector, tret, itask::Cint, ncheckPtr)
    ccall((:CVodeF, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, N_Vector, Ptr{realtype}, Cint, Ptr{Cint}), cvode_mem, tout, yout, tret, itask, ncheckPtr)
end

function CVodeF(cvode_mem, tout, yout, tret, itask, ncheckPtr)
    __yout = convert(NVector, yout)
    CVodeF(cvode_mem, tout, convert(N_Vector, __yout), tret, convert(Cint, itask), ncheckPtr)
end

function CVodeB(cvode_mem, tBout::realtype, itaskB::Cint)
    ccall((:CVodeB, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, Cint), cvode_mem, tBout, itaskB)
end

function CVodeB(cvode_mem, tBout, itaskB)
    CVodeB(cvode_mem, tBout, convert(Cint, itaskB))
end

function CVodeSetAdjNoSensi(cvode_mem)
    ccall((:CVodeSetAdjNoSensi, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVodeSetUserDataB(cvode_mem, which::Cint, user_dataB)
    ccall((:CVodeSetUserDataB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Any), cvode_mem, which, user_dataB)
end

function CVodeSetUserDataB(cvode_mem, which, user_dataB)
    CVodeSetUserDataB(cvode_mem, convert(Cint, which), user_dataB)
end

function CVodeSetMaxOrdB(cvode_mem, which::Cint, maxordB::Cint)
    ccall((:CVodeSetMaxOrdB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Cint), cvode_mem, which, maxordB)
end

function CVodeSetMaxOrdB(cvode_mem, which, maxordB)
    CVodeSetMaxOrdB(cvode_mem, convert(Cint, which), convert(Cint, maxordB))
end

function CVodeSetMaxNumStepsB(cvode_mem, which::Cint, mxstepsB::Clong)
    ccall((:CVodeSetMaxNumStepsB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Clong), cvode_mem, which, mxstepsB)
end

function CVodeSetMaxNumStepsB(cvode_mem, whichs, mxstepsB)
    CVodeSetMaxNumStepsB(cvode_mem, convert(Cint, which), convert(Clong, mxstepsB))
end

function CVodeSetStabLimDetB(cvode_mem, which::Cint, stldetB::Cint)
    ccall((:CVodeSetStabLimDetB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Cint), cvode_mem, which, stldetB)
end

function CVodeSetStabLimDetB(cvode_mem, which, stldetB)
    CVodeSetStabLimDetB(cvode_mem, convert(Cint, which), convert(Cint, stldetB))
end

function CVodeSetInitStepB(cvode_mem, which::Cint, hinB::realtype)
    ccall((:CVodeSetInitStepB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype), cvode_mem, which, hinB)
end

function CVodeSetInitStepB(cvode_mem, which, hinB)
    CVodeSetInitStepB(cvode_mem, convert(Cint, which), hinB)
end

function CVodeSetMinStepB(cvode_mem, which::Cint, hminB::realtype)
    ccall((:CVodeSetMinStepB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype), cvode_mem, which, hminB)
end

function CVodeSetMinStepB(cvode_mem, which, hminB)
    CVodeSetMinStepB(cvode_mem, convert(Cint, which), hminB)
end

function CVodeSetMaxStepB(cvode_mem, which::Cint, hmaxB::realtype)
    ccall((:CVodeSetMaxStepB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype), cvode_mem, which, hmaxB)
end

function CVodeSetMaxStepB(cvode_mem, which, hmaxB)
    CVodeSetMaxStepB(cvode_mem, convert(Cint, which), hmaxB)
end

function CVodeSetConstraintsB(cvode_mem, which::Cint, constraintsB::N_Vector)
    ccall((:CVodeSetConstraintsB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, N_Vector), cvode_mem, which, constraintsB)
end

function CVodeSetConstraintsB(cvode_mem, which, constraintsB)
    __constraintsB = convert(NVector, constraintsB)
    CVodeSetConstraintsB(cvode_mem, convert(Cint, which), convert(N_Vector, __constraintsB))
end

function CVodeSetQuadErrConB(cvode_mem, which::Cint, errconQB::Cint)
    ccall((:CVodeSetQuadErrConB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Cint), cvode_mem, which, errconQB)
end

function CVodeSetQuadErrConB(cvode_mem, which, errconQB)
    CVodeSetQuadErrConB(cvode_mem, convert(Cint, which), convert(Cint, errconQB))
end

function CVodeSetNonlinearSolverB(cvode_mem, which::Cint, NLS::SUNNonlinearSolver)
    ccall((:CVodeSetNonlinearSolverB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, SUNNonlinearSolver), cvode_mem, which, NLS)
end

function CVodeSetNonlinearSolverB(cvode_mem, which, NLS)
    CVodeSetNonlinearSolverB(cvode_mem, convert(Cint, which), NLS)
end

function CVodeGetB(cvode_mem, which::Cint, tBret, yB::N_Vector)
    ccall((:CVodeGetB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Ptr{realtype}, N_Vector), cvode_mem, which, tBret, yB)
end

function CVodeGetB(cvode_mem, which, tBret, yB)
    __yB = convert(NVector, yB)
    CVodeGetB(cvode_mem, convert(Cint, which), tBret, convert(N_Vector, __yB))
end

function CVodeGetQuadB(cvode_mem, which::Cint, tBret, qB::N_Vector)
    ccall((:CVodeGetQuadB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Ptr{realtype}, N_Vector), cvode_mem, which, tBret, qB)
end

function CVodeGetQuadB(cvode_mem, which, tBret, qB)
    __qB = convert(NVector, qB)
    CVodeGetQuadB(cvode_mem, convert(Cint, which), tBret, convert(N_Vector, __qB))
end

function CVodeGetAdjCVodeBmem(cvode_mem, which::Cint)
    ccall((:CVodeGetAdjCVodeBmem, libsundials_cvodes), Ptr{Cvoid}, (CVODEMemPtr, Cint), cvode_mem, which)
end

function CVodeGetAdjCVodeBmem(cvode_mem, which)
    CVodeGetAdjCVodeBmem(cvode_mem, convert(Cint, which))
end

function CVodeGetAdjY(cvode_mem, t::realtype, y::N_Vector)
    ccall((:CVodeGetAdjY, libsundials_cvodes), Cint, (CVODEMemPtr, realtype, N_Vector), cvode_mem, t, y)
end

function CVodeGetAdjY(cvode_mem, t, y)
    __y = convert(NVector, y)
    CVodeGetAdjY(cvode_mem, t, convert(N_Vector, __y))
end

function CVodeGetAdjCheckPointsInfo(cvode_mem, ckpnt)
    ccall((:CVodeGetAdjCheckPointsInfo, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{CVadjCheckPointRec}), cvode_mem, ckpnt)
end

function CVodeGetAdjDataPointHermite(cvode_mem, which::Cint, t, y::N_Vector, yd::N_Vector)
    ccall((:CVodeGetAdjDataPointHermite, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Ptr{realtype}, N_Vector, N_Vector), cvode_mem, which, t, y, yd)
end

function CVodeGetAdjDataPointHermite(cvode_mem, which, t, y, yd)
    __y = convert(NVector, y)
    __yd = convert(NVector, yd)
    CVodeGetAdjDataPointHermite(cvode_mem, convert(Cint, which), t, convert(N_Vector, __y), convert(N_Vector, __yd))
end

function CVodeGetAdjDataPointPolynomial(cvode_mem, which::Cint, t, order, y::N_Vector)
    ccall((:CVodeGetAdjDataPointPolynomial, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, Ptr{realtype}, Ptr{Cint}, N_Vector), cvode_mem, which, t, order, y)
end

function CVodeGetAdjDataPointPolynomial(cvode_mem, which, t, order, y)
    __y = convert(NVector, y)
    CVodeGetAdjDataPointPolynomial(cvode_mem, convert(Cint, which), t, order, convert(N_Vector, __y))
end

function CVodeGetAdjCurrentCheckPoint(cvode_mem, addr)
    ccall((:CVodeGetAdjCurrentCheckPoint, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Ptr{Cvoid}}), cvode_mem, addr)
end
# Julia wrapper for header: cvodes_bandpre.h
# Automatically generated using Clang.jl


function CVBandPrecInit(cvode_mem, N::sunindextype, mu::sunindextype, ml::sunindextype)
    ccall((:CVBandPrecInit, libsundials_cvodes), Cint, (CVODEMemPtr, sunindextype, sunindextype, sunindextype), cvode_mem, N, mu, ml)
end

function CVBandPrecGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVBandPrecGetWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVBandPrecGetNumRhsEvals(cvode_mem, nfevalsBP)
    ccall((:CVBandPrecGetNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsBP)
end

function CVBandPrecInitB(cvode_mem, which::Cint, nB::sunindextype, muB::sunindextype, mlB::sunindextype)
    ccall((:CVBandPrecInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, sunindextype, sunindextype, sunindextype), cvode_mem, which, nB, muB, mlB)
end

function CVBandPrecInitB(cvode_mem, which, nB::sunindextype, muB::sunindextype, mlB::sunindextype)
    CVBandPrecInitB(cvode_mem, convert(Cint, which), nB, muB, mlB)
end
# Julia wrapper for header: cvodes_bbdpre.h
# Automatically generated using Clang.jl


function CVBBDPrecInit(cvode_mem, Nlocal::sunindextype, mudq::sunindextype, mldq::sunindextype, mukeep::sunindextype, mlkeep::sunindextype, dqrely::realtype, gloc::CVLocalFn, cfn::CVCommFn)
    ccall((:CVBBDPrecInit, libsundials_cvodes), Cint, (CVODEMemPtr, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, CVLocalFn, CVCommFn), cvode_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn)
end

function CVBBDPrecReInit(cvode_mem, mudq::sunindextype, mldq::sunindextype, dqrely::realtype)
    ccall((:CVBBDPrecReInit, libsundials_cvodes), Cint, (CVODEMemPtr, sunindextype, sunindextype, realtype), cvode_mem, mudq, mldq, dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem, lenrwBBDP, leniwBBDP)
    ccall((:CVBBDPrecGetWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwBBDP, leniwBBDP)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem, ngevalsBBDP)
    ccall((:CVBBDPrecGetNumGfnEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, ngevalsBBDP)
end

function CVBBDPrecInitB(cvode_mem, which::Cint, NlocalB::sunindextype, mudqB::sunindextype, mldqB::sunindextype, mukeepB::sunindextype, mlkeepB::sunindextype, dqrelyB::realtype, glocB::CVLocalFnB, cfnB::CVCommFnB)
    ccall((:CVBBDPrecInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, CVLocalFnB, CVCommFnB), cvode_mem, which, NlocalB, mudqB, mldqB, mukeepB, mlkeepB, dqrelyB, glocB, cfnB)
end

function CVBBDPrecInitB(cvode_mem, which, NlocalB::sunindextype, mudqB::sunindextype, mldqB::sunindextype, mukeepB::sunindextype, mlkeepB::sunindextype, dqrelyB::realtype, glocB::CVLocalFnB, cfnB::CVCommFnB)
    CVBBDPrecInitB(cvode_mem, convert(Cint, which), NlocalB, mudqB, mldqB, mukeepB, mlkeepB, dqrelyB, glocB, cfnB)
end

function CVBBDPrecReInitB(cvode_mem, which::Cint, mudqB::sunindextype, mldqB::sunindextype, dqrelyB::realtype)
    ccall((:CVBBDPrecReInitB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, sunindextype, sunindextype, realtype), cvode_mem, which, mudqB, mldqB, dqrelyB)
end

function CVBBDPrecReInitB(cvode_mem, which, mudqB::sunindextype, mldqB::sunindextype, dqrelyB::realtype)
    CVBBDPrecReInitB(cvode_mem, convert(Cint, which), mudqB, mldqB, dqrelyB)
end
# Julia wrapper for header: cvodes_diag.h
# Automatically generated using Clang.jl


function CVDiag(cvode_mem)
    ccall((:CVDiag, libsundials_cvodes), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVDiagGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVDiagGetWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVDiagGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVDiagGetNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVDiagGetLastFlag(cvode_mem, flag)
    ccall((:CVDiagGetLastFlag, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVDiagGetReturnFlagName(flag)
    CVDiagGetReturnFlagName(convert(Clong, flag))
end


function CVDiagB(cvode_mem, which::Cint)
    ccall((:CVDiagB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint), cvode_mem, which)
end

function CVDiagB(cvode_mem, which)
    CVDiagB(cvode_mem, convert(Cint, which))
end
# Julia wrapper for header: cvodes_direct.h
# Automatically generated using Clang.jl


function CVDlsSetLinearSolver(cvode_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:CVDlsSetLinearSolver, libsundials_cvodes), Cint, (CVODEMemPtr, SUNLinearSolver, SUNMatrix), cvode_mem, LS, A)
end

function CVDlsSetJacFn(cvode_mem, jac::CVDlsJacFn)
    ccall((:CVDlsSetJacFn, libsundials_cvodes), Cint, (CVODEMemPtr, CVDlsJacFn), cvode_mem, jac)
end

function CVDlsGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVDlsGetWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem, njevals)
    ccall((:CVDlsGetNumJacEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem, flag)
    ccall((:CVDlsGetLastFlag, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVDlsGetReturnFlagName(flag)
    CVDlsGetReturnFlagName(convert(Clong, flag))
end

function CVDlsSetLinearSolverB(cvode_mem, which::Cint, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:CVDlsSetLinearSolverB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, SUNLinearSolver, SUNMatrix), cvode_mem, which, LS, A)
end

function CVDlsSetLinearSolverB(cvode_mem, which, LS::SUNLinearSolver, A::SUNMatrix)
    CVDlsSetLinearSolverB(cvode_mem, convert(Cint, which), LS, A)
end

function CVDlsSetJacFnB(cvode_mem, which::Cint, jacB::CVDlsJacFnB)
    ccall((:CVDlsSetJacFnB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVDlsJacFnB), cvode_mem, which, jacB)
end

function CVDlsSetJacFnB(cvode_mem, which, jacB::CVDlsJacFnB)
    CVDlsSetJacFnB(cvode_mem, convert(Cint, which), jacB)
end

function CVDlsSetJacFnBS(cvode_mem, which::Cint, jacBS::CVDlsJacFnBS)
    ccall((:CVDlsSetJacFnBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVDlsJacFnBS), cvode_mem, which, jacBS)
end

function CVDlsSetJacFnBS(cvode_mem, which, jacBS::CVDlsJacFnBS)
    CVDlsSetJacFnBS(cvode_mem, convert(Cint, which), jacBS)
end
# Julia wrapper for header: cvodes_ls.h
# Automatically generated using Clang.jl


function CVodeSetLinearSolver(cvode_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:CVodeSetLinearSolver, libsundials_cvodes), Cint, (CVODEMemPtr, SUNLinearSolver, SUNMatrix), cvode_mem, LS, A)
end

function CVodeSetJacFn(cvode_mem, jac::CVLsJacFn)
    ccall((:CVodeSetJacFn, libsundials_cvodes), Cint, (CVODEMemPtr, CVLsJacFn), cvode_mem, jac)
end

function CVodeSetMaxStepsBetweenJac(cvode_mem, msbj::Clong)
    ccall((:CVodeSetMaxStepsBetweenJac, libsundials_cvodes), Cint, (CVODEMemPtr, Clong), cvode_mem, msbj)
end

function CVodeSetMaxStepsBetweenJac(cvode_mem, msbj)
    CVodeSetMaxStepsBetweenJac(cvode_mem, convert(Clong, msbj))
end

function CVodeSetEpsLin(cvode_mem, eplifac::realtype)
    ccall((:CVodeSetEpsLin, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, eplifac)
end

function CVodeSetPreconditioner(cvode_mem, pset::CVLsPrecSetupFn, psolve::CVLsPrecSolveFn)
    ccall((:CVodeSetPreconditioner, libsundials_cvodes), Cint, (CVODEMemPtr, CVLsPrecSetupFn, CVLsPrecSolveFn), cvode_mem, pset, psolve)
end

function CVodeSetJacTimes(cvode_mem, jtsetup::CVLsJacTimesSetupFn, jtimes::CVLsJacTimesVecFn)
    ccall((:CVodeSetJacTimes, libsundials_cvodes), Cint, (CVODEMemPtr, CVLsJacTimesSetupFn, CVLsJacTimesVecFn), cvode_mem, jtsetup, jtimes)
end

function CVodeSetLinSysFn(cvode_mem, linsys::CVLsLinSysFn)
    ccall((:CVodeSetLinSysFn, libsundials_cvodes), Cint, (CVODEMemPtr, CVLsLinSysFn), cvode_mem, linsys)
end

function CVodeGetLinWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVodeGetLinWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVodeGetNumJacEvals(cvode_mem, njevals)
    ccall((:CVodeGetNumJacEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njevals)
end

function CVodeGetNumPrecEvals(cvode_mem, npevals)
    ccall((:CVodeGetNumPrecEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npevals)
end

function CVodeGetNumPrecSolves(cvode_mem, npsolves)
    ccall((:CVodeGetNumPrecSolves, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npsolves)
end

function CVodeGetNumLinIters(cvode_mem, nliters)
    ccall((:CVodeGetNumLinIters, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nliters)
end

function CVodeGetNumLinConvFails(cvode_mem, nlcfails)
    ccall((:CVodeGetNumLinConvFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nlcfails)
end

function CVodeGetNumJTSetupEvals(cvode_mem, njtsetups)
    ccall((:CVodeGetNumJTSetupEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njtsetups)
end

function CVodeGetNumJtimesEvals(cvode_mem, njvevals)
    ccall((:CVodeGetNumJtimesEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njvevals)
end

function CVodeGetNumLinRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVodeGetNumLinRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVodeGetLastLinFlag(cvode_mem, flag)
    ccall((:CVodeGetLastLinFlag, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function CVodeGetLinReturnFlagName(flag::Clong)
    ccall((:CVodeGetLinReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVodeGetLinReturnFlagName(flag)
    CVodeGetLinReturnFlagName(convert(Clong, flag))
end

function CVodeSetLinearSolverB(cvode_mem, which::Cint, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:CVodeSetLinearSolverB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, SUNLinearSolver, SUNMatrix), cvode_mem, which, LS, A)
end

function CVodeSetLinearSolverB(cvode_mem, which, LS::SUNLinearSolver, A::SUNMatrix)
    CVodeSetLinearSolverB(cvode_mem, convert(Cint, which), LS, A)
end

function CVodeSetJacFnB(cvode_mem, which::Cint, jacB::CVLsJacFnB)
    ccall((:CVodeSetJacFnB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsJacFnB), cvode_mem, which, jacB)
end

function CVodeSetJacFnB(cvode_mem, which, jacB::CVLsJacFnB)
    CVodeSetJacFnB(cvode_mem, convert(Cint, which), jacB)
end

function CVodeSetJacFnBS(cvode_mem, which::Cint, jacBS::CVLsJacFnBS)
    ccall((:CVodeSetJacFnBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsJacFnBS), cvode_mem, which, jacBS)
end

function CVodeSetJacFnBS(cvode_mem, which, jacBS::CVLsJacFnBS)
    CVodeSetJacFnBS(cvode_mem, convert(Cint, which), jacBS)
end

function CVodeSetEpsLinB(cvode_mem, which::Cint, eplifacB::realtype)
    ccall((:CVodeSetEpsLinB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype), cvode_mem, which, eplifacB)
end

function CVodeSetEpsLinB(cvode_mem, which, eplifacB::realtype)
    CVodeSetEpsLinB(cvode_mem, convert(Cint, which), eplifacB)
end

function CVodeSetPreconditionerB(cvode_mem, which::Cint, psetB::CVLsPrecSetupFnB, psolveB::CVLsPrecSolveFnB)
    ccall((:CVodeSetPreconditionerB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsPrecSetupFnB, CVLsPrecSolveFnB), cvode_mem, which, psetB, psolveB)
end

function CVodeSetPreconditionerB(cvode_mem, which, psetB::CVLsPrecSetupFnB, psolveB::CVLsPrecSolveFnB)
    CVodeSetPreconditionerB(cvode_mem, convert(Cint, which), psetB, psolveB)
end

function CVodeSetPreconditionerBS(cvode_mem, which::Cint, psetBS::CVLsPrecSetupFnBS, psolveBS::CVLsPrecSolveFnBS)
    ccall((:CVodeSetPreconditionerBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsPrecSetupFnBS, CVLsPrecSolveFnBS), cvode_mem, which, psetBS, psolveBS)
end

function CVodeSetPreconditionerBS(cvode_mem, which, psetBS::CVLsPrecSetupFnBS, psolveBS::CVLsPrecSolveFnBS)
    CVodeSetPreconditionerBS(cvode_mem, convert(Cint, which), psetBS, psolveBS)
end

function CVodeSetJacTimesB(cvode_mem, which::Cint, jtsetupB::CVLsJacTimesSetupFnB, jtimesB::CVLsJacTimesVecFnB)
    ccall((:CVodeSetJacTimesB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsJacTimesSetupFnB, CVLsJacTimesVecFnB), cvode_mem, which, jtsetupB, jtimesB)
end

function CVodeSetJacTimesB(cvode_mem, which, jtsetupB::CVLsJacTimesSetupFnB, jtimesB::CVLsJacTimesVecFnB)
    CVodeSetJacTimesB(cvode_mem, convert(Cint, which), jtsetupB, jtimesB)
end

function CVodeSetJacTimesBS(cvode_mem, which::Cint, jtsetupBS::CVLsJacTimesSetupFnBS, jtimesBS::CVLsJacTimesVecFnBS)
    ccall((:CVodeSetJacTimesBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsJacTimesSetupFnBS, CVLsJacTimesVecFnBS), cvode_mem, which, jtsetupBS, jtimesBS)
end

function CVodeSetJacTimesBS(cvode_mem, which, jtsetupBS::CVLsJacTimesSetupFnBS, jtimesBS::CVLsJacTimesVecFnBS)
    CVodeSetJacTimesBS(cvode_mem, convert(Cint, which), jtsetupBS, jtimesBS)
end

function CVodeSetLinSysFnB(cvode_mem, which::Cint, linsys::CVLsLinSysFnB)
    ccall((:CVodeSetLinSysFnB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsLinSysFnB), cvode_mem, which, linsys)
end

function CVodeSetLinSysFnB(cvode_mem, which, linsys::CVLsLinSysFnB)
    CVodeSetLinSysFnB(cvode_mem, convert(Cint, which), linsys)
end

function CVodeSetLinSysFnBS(cvode_mem, which::Cint, linsys::CVLsLinSysFnBS)
    ccall((:CVodeSetLinSysFnBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVLsLinSysFnBS), cvode_mem, which, linsys)
end

function CVodeSetLinSysFnBS(cvode_mem, which, linsys::CVLsLinSysFnBS)
    CVodeSetLinSysFnBS(cvode_mem, convert(Cint, which), linsys)
end
# Julia wrapper for header: cvodes_spils.h
# Automatically generated using Clang.jl


function CVSpilsSetLinearSolver(cvode_mem, LS::SUNLinearSolver)
    ccall((:CVSpilsSetLinearSolver, libsundials_cvodes), Cint, (CVODEMemPtr, SUNLinearSolver), cvode_mem, LS)
end

function CVSpilsSetEpsLin(cvode_mem, eplifac::realtype)
    ccall((:CVSpilsSetEpsLin, libsundials_cvodes), Cint, (CVODEMemPtr, realtype), cvode_mem, eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem, pset::CVSpilsPrecSetupFn, psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner, libsundials_cvodes), Cint, (CVODEMemPtr, CVSpilsPrecSetupFn, CVSpilsPrecSolveFn), cvode_mem, pset, psolve)
end

function CVSpilsSetJacTimes(cvode_mem, jtsetup::CVSpilsJacTimesSetupFn, jtimes::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimes, libsundials_cvodes), Cint, (CVODEMemPtr, CVSpilsJacTimesSetupFn, CVSpilsJacTimesVecFn), cvode_mem, jtsetup, jtimes)
end

function CVSpilsGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVSpilsGetWorkSpace, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem, npevals)
    ccall((:CVSpilsGetNumPrecEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem, npsolves)
    ccall((:CVSpilsGetNumPrecSolves, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem, nliters)
    ccall((:CVSpilsGetNumLinIters, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nliters)
end

function CVSpilsGetNumConvFails(cvode_mem, nlcfails)
    ccall((:CVSpilsGetNumConvFails, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nlcfails)
end

function CVSpilsGetNumJTSetupEvals(cvode_mem, njtsetups)
    ccall((:CVSpilsGetNumJTSetupEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njtsetups)
end

function CVSpilsGetNumJtimesEvals(cvode_mem, njvevals)
    ccall((:CVSpilsGetNumJtimesEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem, flag)
    ccall((:CVSpilsGetLastFlag, libsundials_cvodes), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function CVSpilsGetReturnFlagName(flag)
    ccall((:CVSpilsGetReturnFlagName, libsundials_cvodes), Cstring, (Clong,), flag)
end

function CVSpilsSetLinearSolverB(cvode_mem, which::Cint, LS::SUNLinearSolver)
    ccall((:CVSpilsSetLinearSolverB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, SUNLinearSolver), cvode_mem, which, LS)
end

function CVSpilsSetLinearSolverB(cvode_mem, which, LS::SUNLinearSolver)
    CVSpilsSetLinearSolverB(cvode_mem, convert(Cint, which), LS)
end

function CVSpilsSetEpsLinB(cvode_mem, which::Cint, eplifacB::realtype)
    ccall((:CVSpilsSetEpsLinB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, realtype), cvode_mem, which, eplifacB)
end

function CVSpilsSetEpsLinB(cvode_mem, which, eplifacB::realtype)
    CVSpilsSetEpsLinB(cvode_mem, convert(Cint, which), eplifacB)
end

function CVSpilsSetPreconditionerB(cvode_mem, which::Cint, psetB::CVSpilsPrecSetupFnB, psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVSpilsPrecSetupFnB, CVSpilsPrecSolveFnB), cvode_mem, which, psetB, psolveB)
end

function CVSpilsSetPreconditionerB(cvode_mem, which, psetB, psolveB)
    CVSpilsSetPreconditionerB(cvode_mem, convert(Cint, which), psetB, psolveB)
end

function CVSpilsSetPreconditionerBS(cvode_mem, which::Cint, psetBS::CVSpilsPrecSetupFnBS, psolveBS::CVSpilsPrecSolveFnBS)
    ccall((:CVSpilsSetPreconditionerBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVSpilsPrecSetupFnBS, CVSpilsPrecSolveFnBS), cvode_mem, which, psetBS, psolveBS)
end

function CVSpilsSetPreconditionerBS(cvode_mem, which, psetBS::CVSpilsPrecSetupFnBS, psolveBS::CVSpilsPrecSolveFnBS)
    CVSpilsSetPreconditionerBS(cvode_mem, convert(Cint, which), psetBS, psolveBS)
end

function CVSpilsSetJacTimesB(cvode_mem, which::Cint, jtsetupB::CVSpilsJacTimesSetupFnB, jtimesB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesB, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVSpilsJacTimesSetupFnB, CVSpilsJacTimesVecFnB), cvode_mem, which, jtsetupB, jtimesB)
end

function CVSpilsSetJacTimesB(cvode_mem, which, jtsetupB::CVSpilsJacTimesSetupFnB, jtimesB::CVSpilsJacTimesVecFnB)
    CVSpilsSetJacTimesB(cvode_mem, convert(Cint, which), jtsetupB, jtimesB)
end

function CVSpilsSetJacTimesBS(cvode_mem, which::Cint, jtsetupBS::CVSpilsJacTimesSetupFnBS, jtimesBS::CVSpilsJacTimesVecFnBS)
    ccall((:CVSpilsSetJacTimesBS, libsundials_cvodes), Cint, (CVODEMemPtr, Cint, CVSpilsJacTimesSetupFnBS, CVSpilsJacTimesVecFnBS), cvode_mem, which, jtsetupBS, jtimesBS)
end

function CVSpilsSetJacTimesBS(cvode_mem, which, jtsetupBS::CVSpilsJacTimesSetupFnBS, jtimesBS::CVSpilsJacTimesVecFnBS)
    CVSpilsSetJacTimesBS(cvode_mem, convert(Cint, which), jtsetupBS, jtimesBS)
end
