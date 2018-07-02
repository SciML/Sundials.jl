# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/idas/idas.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDACreate()
    ccall((:IDACreate, libsundials_idas), IDAMemPtr, ())
end

function IDASetErrHandlerFn(ida_mem, ehfun::IDAErrHandlerFn, eh_data)
    ccall((:IDASetErrHandlerFn, libsundials_idas), Cint, (IDAMemPtr, IDAErrHandlerFn, Ptr{Cvoid}), ida_mem, ehfun, eh_data)
end

function IDASetErrFile(ida_mem, errfp)
    ccall((:IDASetErrFile, libsundials_idas), Cint, (IDAMemPtr, Ptr{FILE}), ida_mem, errfp)
end

function IDASetUserData(ida_mem, user_data)
    ccall((:IDASetUserData, libsundials_idas), Cint, (IDAMemPtr, Any), ida_mem, user_data)
end

function __IDASetMaxOrd(ida_mem, maxord::Cint)
    ccall((:IDASetMaxOrd, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxord)
end

function IDASetMaxOrd(ida_mem, maxord)
    __IDASetMaxOrd(ida_mem, convert(Cint, maxord))
end

function __IDASetMaxNumSteps(ida_mem, mxsteps::Clong)
    ccall((:IDASetMaxNumSteps, libsundials_idas), Cint, (IDAMemPtr, Clong), ida_mem, mxsteps)
end

function IDASetMaxNumSteps(ida_mem, mxsteps)
    __IDASetMaxNumSteps(ida_mem, convert(Clong, mxsteps))
end

function IDASetInitStep(ida_mem, hin::realtype)
    ccall((:IDASetInitStep, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, hin)
end

function IDASetMaxStep(ida_mem, hmax::realtype)
    ccall((:IDASetMaxStep, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, hmax)
end

function IDASetStopTime(ida_mem, tstop::realtype)
    ccall((:IDASetStopTime, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, tstop)
end

function IDASetNonlinConvCoef(ida_mem, epcon::realtype)
    ccall((:IDASetNonlinConvCoef, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, epcon)
end

function __IDASetMaxErrTestFails(ida_mem, maxnef::Cint)
    ccall((:IDASetMaxErrTestFails, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxnef)
end

function IDASetMaxErrTestFails(ida_mem, maxnef)
    __IDASetMaxErrTestFails(ida_mem, convert(Cint, maxnef))
end

function __IDASetMaxNonlinIters(ida_mem, maxcor::Cint)
    ccall((:IDASetMaxNonlinIters, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxcor)
end

function IDASetMaxNonlinIters(ida_mem, maxcor)
    __IDASetMaxNonlinIters(ida_mem, convert(Cint, maxcor))
end

function __IDASetMaxConvFails(ida_mem, maxncf::Cint)
    ccall((:IDASetMaxConvFails, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxncf)
end

function IDASetMaxConvFails(ida_mem, maxncf)
    __IDASetMaxConvFails(ida_mem, convert(Cint, maxncf))
end

function __IDASetSuppressAlg(ida_mem, suppressalg::Cint)
    ccall((:IDASetSuppressAlg, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, suppressalg)
end

function IDASetSuppressAlg(ida_mem, suppressalg)
    __IDASetSuppressAlg(ida_mem, convert(Cint, suppressalg))
end

function __IDASetId(ida_mem, id::N_Vector)
    ccall((:IDASetId, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, id)
end

function IDASetId(ida_mem, id)
    __id = convert(NVector, id)
    __IDASetId(ida_mem, convert(N_Vector, __id))
end

function __IDASetConstraints(ida_mem, constraints::N_Vector)
    ccall((:IDASetConstraints, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, constraints)
end

function IDASetConstraints(ida_mem, constraints)
    __constraints = convert(NVector, constraints)
    __IDASetConstraints(ida_mem, convert(N_Vector, __constraints))
end

function IDASetRootDirection(ida_mem, rootdir)
    ccall((:IDASetRootDirection, libsundials_idas), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem)
    ccall((:IDASetNoInactiveRootWarn, libsundials_idas), Cint, (IDAMemPtr,), ida_mem)
end

function __IDAInit(ida_mem, res::IDAResFn, t0::realtype, yy0::N_Vector, yp0::N_Vector)
    ccall((:IDAInit, libsundials_idas), Cint, (IDAMemPtr, IDAResFn, realtype, N_Vector, N_Vector), ida_mem, res, t0, yy0, yp0)
end

function IDAInit(ida_mem, res, t0, yy0, yp0)
    __yy0 = convert(NVector, yy0)
    __yp0 = convert(NVector, yp0)
    __IDAInit(ida_mem, IDAResFn_wrapper(res), t0, convert(N_Vector, __yy0), convert(N_Vector, __yp0))
end

function __IDAReInit(ida_mem, t0::realtype, yy0::N_Vector, yp0::N_Vector)
    ccall((:IDAReInit, libsundials_idas), Cint, (IDAMemPtr, realtype, N_Vector, N_Vector), ida_mem, t0, yy0, yp0)
end

function IDAReInit(ida_mem, t0, yy0, yp0)
    __yy0 = convert(NVector, yy0)
    __yp0 = convert(NVector, yp0)
    __IDAReInit(ida_mem, t0, convert(N_Vector, __yy0), convert(N_Vector, __yp0))
end

function IDASStolerances(ida_mem, reltol::realtype, abstol::realtype)
    ccall((:IDASStolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, realtype), ida_mem, reltol, abstol)
end

function __IDASVtolerances(ida_mem, reltol::realtype, abstol::N_Vector)
    ccall((:IDASVtolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, N_Vector), ida_mem, reltol, abstol)
end

function IDASVtolerances(ida_mem, reltol, abstol)
    __abstol = convert(NVector, abstol)
    __IDASVtolerances(ida_mem, reltol, convert(N_Vector, __abstol))
end

function IDAWFtolerances(ida_mem, efun::IDAEwtFn)
    ccall((:IDAWFtolerances, libsundials_idas), Cint, (IDAMemPtr, IDAEwtFn), ida_mem, efun)
end

function IDASetNonlinConvCoefIC(ida_mem, epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, epiccon)
end

function __IDASetMaxNumStepsIC(ida_mem, maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxnh)
end

function IDASetMaxNumStepsIC(ida_mem, maxnh)
    __IDASetMaxNumStepsIC(ida_mem, convert(Cint, maxnh))
end

function __IDASetMaxNumJacsIC(ida_mem, maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxnj)
end

function IDASetMaxNumJacsIC(ida_mem, maxnj)
    __IDASetMaxNumJacsIC(ida_mem, convert(Cint, maxnj))
end

function __IDASetMaxNumItersIC(ida_mem, maxnit::Cint)
    ccall((:IDASetMaxNumItersIC, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxnit)
end

function IDASetMaxNumItersIC(ida_mem, maxnit)
    __IDASetMaxNumItersIC(ida_mem, convert(Cint, maxnit))
end

function __IDASetLineSearchOffIC(ida_mem, lsoff::Cint)
    ccall((:IDASetLineSearchOffIC, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, lsoff)
end

function IDASetLineSearchOffIC(ida_mem, lsoff)
    __IDASetLineSearchOffIC(ida_mem, convert(Cint, lsoff))
end

function IDASetStepToleranceIC(ida_mem, steptol::realtype)
    ccall((:IDASetStepToleranceIC, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, steptol)
end

function __IDASetMaxBacksIC(ida_mem, maxbacks::Cint)
    ccall((:IDASetMaxBacksIC, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxbacks)
end

function IDASetMaxBacksIC(ida_mem, maxbacks)
    __IDASetMaxBacksIC(ida_mem, convert(Cint, maxbacks))
end

function __IDARootInit(ida_mem, nrtfn::Cint, g::IDARootFn)
    ccall((:IDARootInit, libsundials_idas), Cint, (IDAMemPtr, Cint, IDARootFn), ida_mem, nrtfn, g)
end

function IDARootInit(ida_mem, nrtfn, g)
    __IDARootInit(ida_mem, convert(Cint, nrtfn), IDARootFn_wrapper(g))
end

function __IDASetQuadErrCon(ida_mem, errconQ::Cint)
    ccall((:IDASetQuadErrCon, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, errconQ)
end

function IDASetQuadErrCon(ida_mem, errconQ)
    __IDASetQuadErrCon(ida_mem, convert(Cint, errconQ))
end

function __IDAQuadInit(ida_mem, rhsQ::IDAQuadRhsFn, yQ0::N_Vector)
    ccall((:IDAQuadInit, libsundials_idas), Cint, (IDAMemPtr, IDAQuadRhsFn, N_Vector), ida_mem, rhsQ, yQ0)
end

function IDAQuadInit(ida_mem, rhsQ, yQ0)
    __yQ0 = convert(NVector, yQ0)
    __IDAQuadInit(ida_mem, rhsQ, convert(N_Vector, __yQ0))
end

function __IDAQuadReInit(ida_mem, yQ0::N_Vector)
    ccall((:IDAQuadReInit, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, yQ0)
end

function IDAQuadReInit(ida_mem, yQ0)
    __yQ0 = convert(NVector, yQ0)
    __IDAQuadReInit(ida_mem, convert(N_Vector, __yQ0))
end

function IDAQuadSStolerances(ida_mem, reltolQ::realtype, abstolQ::realtype)
    ccall((:IDAQuadSStolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, realtype), ida_mem, reltolQ, abstolQ)
end

function __IDAQuadSVtolerances(ida_mem, reltolQ::realtype, abstolQ::N_Vector)
    ccall((:IDAQuadSVtolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, N_Vector), ida_mem, reltolQ, abstolQ)
end

function IDAQuadSVtolerances(ida_mem, reltolQ, abstolQ)
    __abstolQ = convert(NVector, abstolQ)
    __IDAQuadSVtolerances(ida_mem, reltolQ, convert(N_Vector, __abstolQ))
end

function __IDASetSensDQMethod(ida_mem, DQtype::Cint, DQrhomax::realtype)
    ccall((:IDASetSensDQMethod, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, DQtype, DQrhomax)
end

function IDASetSensDQMethod(ida_mem, DQtype, DQrhomax)
    __IDASetSensDQMethod(ida_mem, convert(Cint, DQtype), DQrhomax)
end

function IDASetSensParams(ida_mem, p, pbar, plist)
    ccall((:IDASetSensParams, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}, Ptr{realtype}, Ptr{Cint}), ida_mem, p, pbar, plist)
end

function __IDASetSensErrCon(ida_mem, errconS::Cint)
    ccall((:IDASetSensErrCon, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, errconS)
end

function IDASetSensErrCon(ida_mem, errconS)
    __IDASetSensErrCon(ida_mem, convert(Cint, errconS))
end

function __IDASetSensMaxNonlinIters(ida_mem, maxcorS::Cint)
    ccall((:IDASetSensMaxNonlinIters, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, maxcorS)
end

function IDASetSensMaxNonlinIters(ida_mem, maxcorS)
    __IDASetSensMaxNonlinIters(ida_mem, convert(Cint, maxcorS))
end

function __IDASensInit(ida_mem, Ns::Cint, ism::Cint, resS::IDASensResFn, yS0, ypS0)
    ccall((:IDASensInit, libsundials_idas), Cint, (IDAMemPtr, Cint, Cint, IDASensResFn, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, Ns, ism, resS, yS0, ypS0)
end

function IDASensInit(ida_mem, Ns, ism, resS, yS0, ypS0)
    __IDASensInit(ida_mem, convert(Cint, Ns), convert(Cint, ism), resS, yS0, ypS0)
end

function __IDASensReInit(ida_mem, ism::Cint, yS0, ypS0)
    ccall((:IDASensReInit, libsundials_idas), Cint, (IDAMemPtr, Cint, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, ism, yS0, ypS0)
end

function IDASensReInit(ida_mem, ism, yS0, ypS0)
    __IDASensReInit(ida_mem, convert(Cint, ism), yS0, ypS0)
end

function IDASensToggleOff(ida_mem)
    ccall((:IDASensToggleOff, libsundials_idas), Cint, (IDAMemPtr,), ida_mem)
end

function IDASensSStolerances(ida_mem, reltolS::realtype, abstolS)
    ccall((:IDASensSStolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, Ptr{realtype}), ida_mem, reltolS, abstolS)
end

function IDASensSVtolerances(ida_mem, reltolS::realtype, abstolS)
    ccall((:IDASensSVtolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, Ptr{N_Vector}), ida_mem, reltolS, abstolS)
end

function IDASensEEtolerances(ida_mem)
    ccall((:IDASensEEtolerances, libsundials_idas), Cint, (IDAMemPtr,), ida_mem)
end

function IDAQuadSensInit(ida_mem, resQS::IDAQuadSensRhsFn, yQS0)
    ccall((:IDAQuadSensInit, libsundials_idas), Cint, (IDAMemPtr, IDAQuadSensRhsFn, Ptr{N_Vector}), ida_mem, resQS, yQS0)
end

function IDAQuadSensReInit(ida_mem, yQS0)
    ccall((:IDAQuadSensReInit, libsundials_idas), Cint, (IDAMemPtr, Ptr{N_Vector}), ida_mem, yQS0)
end

function IDAQuadSensSStolerances(ida_mem, reltolQS::realtype, abstolQS)
    ccall((:IDAQuadSensSStolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, Ptr{realtype}), ida_mem, reltolQS, abstolQS)
end

function IDAQuadSensSVtolerances(ida_mem, reltolQS::realtype, abstolQS)
    ccall((:IDAQuadSensSVtolerances, libsundials_idas), Cint, (IDAMemPtr, realtype, Ptr{N_Vector}), ida_mem, reltolQS, abstolQS)
end

function IDAQuadSensEEtolerances(ida_mem)
    ccall((:IDAQuadSensEEtolerances, libsundials_idas), Cint, (IDAMemPtr,), ida_mem)
end

function __IDASetQuadSensErrCon(ida_mem, errconQS::Cint)
    ccall((:IDASetQuadSensErrCon, libsundials_idas), Cint, (IDAMemPtr, Cint), ida_mem, errconQS)
end

function IDASetQuadSensErrCon(ida_mem, errconQS)
    __IDASetQuadSensErrCon(ida_mem, convert(Cint, errconQS))
end

function __IDACalcIC(ida_mem, icopt::Cint, tout1::realtype)
    ccall((:IDACalcIC, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, icopt, tout1)
end

function IDACalcIC(ida_mem, icopt, tout1)
    __IDACalcIC(ida_mem, convert(Cint, icopt), tout1)
end

function __IDASolve(ida_mem, tout::realtype, tret, yret::N_Vector, ypret::N_Vector, itask::Cint)
    ccall((:IDASolve, libsundials_idas), Cint, (IDAMemPtr, realtype, Ptr{realtype}, N_Vector, N_Vector, Cint), ida_mem, tout, tret, yret, ypret, itask)
end

function IDASolve(ida_mem, tout, tret, yret, ypret, itask)
    __yret = convert(NVector, yret)
    __ypret = convert(NVector, ypret)
    __IDASolve(ida_mem, tout, tret, convert(N_Vector, __yret), convert(N_Vector, __ypret), convert(Cint, itask))
end

function __IDAGetDky(ida_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:IDAGetDky, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint, N_Vector), ida_mem, t, k, dky)
end

function IDAGetDky(ida_mem, t, k, dky)
    __dky = convert(NVector, dky)
    __IDAGetDky(ida_mem, t, convert(Cint, k), convert(N_Vector, __dky))
end

function IDAGetWorkSpace(ida_mem, lenrw, leniw)
    ccall((:IDAGetWorkSpace, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrw, leniw)
end

function IDAGetNumSteps(ida_mem, nsteps)
    ccall((:IDAGetNumSteps, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nsteps)
end

function IDAGetNumResEvals(ida_mem, nrevals)
    ccall((:IDAGetNumResEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem, nlinsetups)
    ccall((:IDAGetNumLinSolvSetups, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem, netfails)
    ccall((:IDAGetNumErrTestFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, netfails)
end

function IDAGetNumBacktrackOps(ida_mem, nbacktr)
    ccall((:IDAGetNumBacktrackOps, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nbacktr)
end

function __IDAGetConsistentIC(ida_mem, yy0_mod::N_Vector, yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC, libsundials_idas), Cint, (IDAMemPtr, N_Vector, N_Vector), ida_mem, yy0_mod, yp0_mod)
end

function IDAGetConsistentIC(ida_mem, yy0_mod, yp0_mod)
    __yy0_mod = convert(NVector, yy0_mod)
    __yp0_mod = convert(NVector, yp0_mod)
    __IDAGetConsistentIC(ida_mem, convert(N_Vector, __yy0_mod), convert(N_Vector, __yp0_mod))
end

function IDAGetLastOrder(ida_mem, klast)
    ccall((:IDAGetLastOrder, libsundials_idas), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, klast)
end

function IDAGetCurrentOrder(ida_mem, kcur)
    ccall((:IDAGetCurrentOrder, libsundials_idas), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, kcur)
end

function IDAGetActualInitStep(ida_mem, hinused)
    ccall((:IDAGetActualInitStep, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, hinused)
end

function IDAGetLastStep(ida_mem, hlast)
    ccall((:IDAGetLastStep, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, hlast)
end

function IDAGetCurrentStep(ida_mem, hcur)
    ccall((:IDAGetCurrentStep, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, hcur)
end

function IDAGetCurrentTime(ida_mem, tcur)
    ccall((:IDAGetCurrentTime, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, tcur)
end

function IDAGetTolScaleFactor(ida_mem, tolsfact)
    ccall((:IDAGetTolScaleFactor, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, tolsfact)
end

function __IDAGetErrWeights(ida_mem, eweight::N_Vector)
    ccall((:IDAGetErrWeights, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, eweight)
end

function IDAGetErrWeights(ida_mem, eweight)
    __eweight = convert(NVector, eweight)
    __IDAGetErrWeights(ida_mem, convert(N_Vector, __eweight))
end

function __IDAGetEstLocalErrors(ida_mem, ele::N_Vector)
    ccall((:IDAGetEstLocalErrors, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, ele)
end

function IDAGetEstLocalErrors(ida_mem, ele)
    __ele = convert(NVector, ele)
    __IDAGetEstLocalErrors(ida_mem, convert(N_Vector, __ele))
end

function IDAGetNumGEvals(ida_mem, ngevals)
    ccall((:IDAGetNumGEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, ngevals)
end

function IDAGetRootInfo(ida_mem, rootsfound)
    ccall((:IDAGetRootInfo, libsundials_idas), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, rootsfound)
end

function IDAGetIntegratorStats(ida_mem, nsteps, nrevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
    ccall((:IDAGetIntegratorStats, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Cint}, Ptr{Cint}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), ida_mem, nsteps, nrevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem, nniters)
    ccall((:IDAGetNumNonlinSolvIters, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem, nncfails)
    ccall((:IDAGetNumNonlinSolvConvFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nncfails)
end

function IDAGetNonlinSolvStats(ida_mem, nniters, nncfails)
    ccall((:IDAGetNonlinSolvStats, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, nniters, nncfails)
end

function __IDAGetQuad(ida_mem, t, yQout::N_Vector)
    ccall((:IDAGetQuad, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}, N_Vector), ida_mem, t, yQout)
end

function IDAGetQuad(ida_mem, t, yQout)
    __yQout = convert(NVector, yQout)
    __IDAGetQuad(ida_mem, t, convert(N_Vector, __yQout))
end

function __IDAGetQuadDky(ida_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:IDAGetQuadDky, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint, N_Vector), ida_mem, t, k, dky)
end

function IDAGetQuadDky(ida_mem, t, k, dky)
    __dky = convert(NVector, dky)
    __IDAGetQuadDky(ida_mem, t, convert(Cint, k), convert(N_Vector, __dky))
end

function IDAGetQuadNumRhsEvals(ida_mem, nrhsQevals)
    ccall((:IDAGetQuadNumRhsEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrhsQevals)
end

function IDAGetQuadNumErrTestFails(ida_mem, nQetfails)
    ccall((:IDAGetQuadNumErrTestFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nQetfails)
end

function __IDAGetQuadErrWeights(ida_mem, eQweight::N_Vector)
    ccall((:IDAGetQuadErrWeights, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, eQweight)
end

function IDAGetQuadErrWeights(ida_mem, eQweight)
    __eQweight = convert(NVector, eQweight)
    __IDAGetQuadErrWeights(ida_mem, convert(N_Vector, __eQweight))
end

function IDAGetQuadStats(ida_mem, nrhsQevals, nQetfails)
    ccall((:IDAGetQuadStats, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, nrhsQevals, nQetfails)
end

function IDAGetSens(ida_mem, tret, yySout)
    ccall((:IDAGetSens, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}, Ptr{N_Vector}), ida_mem, tret, yySout)
end

function __IDAGetSens1(ida_mem, tret, is::Cint, yySret::N_Vector)
    ccall((:IDAGetSens1, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}, Cint, N_Vector), ida_mem, tret, is, yySret)
end

function IDAGetSens1(ida_mem, tret, is, yySret)
    __yySret = convert(NVector, yySret)
    __IDAGetSens1(ida_mem, tret, convert(Cint, is), convert(N_Vector, __yySret))
end

function __IDAGetSensDky(ida_mem, t::realtype, k::Cint, dkyS)
    ccall((:IDAGetSensDky, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint, Ptr{N_Vector}), ida_mem, t, k, dkyS)
end

function IDAGetSensDky(ida_mem, t, k, dkyS)
    __IDAGetSensDky(ida_mem, t, convert(Cint, k), dkyS)
end

function __IDAGetSensDky1(ida_mem, t::realtype, k::Cint, is::Cint, dkyS::N_Vector)
    ccall((:IDAGetSensDky1, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint, Cint, N_Vector), ida_mem, t, k, is, dkyS)
end

function IDAGetSensDky1(ida_mem, t, k, is, dkyS)
    __dkyS = convert(NVector, dkyS)
    __IDAGetSensDky1(ida_mem, t, convert(Cint, k), convert(Cint, is), convert(N_Vector, __dkyS))
end

function IDAGetSensConsistentIC(ida_mem, yyS0, ypS0)
    ccall((:IDAGetSensConsistentIC, libsundials_idas), Cint, (IDAMemPtr, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, yyS0, ypS0)
end

function IDAGetSensNumResEvals(ida_mem, nresSevals)
    ccall((:IDAGetSensNumResEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nresSevals)
end

function IDAGetNumResEvalsSens(ida_mem, nresevalsS)
    ccall((:IDAGetNumResEvalsSens, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nresevalsS)
end

function IDAGetSensNumErrTestFails(ida_mem, nSetfails)
    ccall((:IDAGetSensNumErrTestFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nSetfails)
end

function IDAGetSensNumLinSolvSetups(ida_mem, nlinsetupsS)
    ccall((:IDAGetSensNumLinSolvSetups, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nlinsetupsS)
end

function IDAGetSensErrWeights(ida_mem, eSweight::N_Vector_S)
    ccall((:IDAGetSensErrWeights, libsundials_idas), Cint, (IDAMemPtr, N_Vector_S), ida_mem, eSweight)
end

function IDAGetSensStats(ida_mem, nresSevals, nresevalsS, nSetfails, nlinsetupsS)
    ccall((:IDAGetSensStats, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}), ida_mem, nresSevals, nresevalsS, nSetfails, nlinsetupsS)
end

function IDAGetSensNumNonlinSolvIters(ida_mem, nSniters)
    ccall((:IDAGetSensNumNonlinSolvIters, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nSniters)
end

function IDAGetSensNumNonlinSolvConvFails(ida_mem, nSncfails)
    ccall((:IDAGetSensNumNonlinSolvConvFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nSncfails)
end

function IDAGetSensNonlinSolvStats(ida_mem, nSniters, nSncfails)
    ccall((:IDAGetSensNonlinSolvStats, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, nSniters, nSncfails)
end

function IDAGetQuadSensNumRhsEvals(ida_mem, nrhsQSevals)
    ccall((:IDAGetQuadSensNumRhsEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrhsQSevals)
end

function IDAGetQuadSensNumErrTestFails(ida_mem, nQSetfails)
    ccall((:IDAGetQuadSensNumErrTestFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nQSetfails)
end

function IDAGetQuadSensErrWeights(ida_mem, eQSweight)
    ccall((:IDAGetQuadSensErrWeights, libsundials_idas), Cint, (IDAMemPtr, Ptr{N_Vector}), ida_mem, eQSweight)
end

function IDAGetQuadSensStats(ida_mem, nrhsQSevals, nQSetfails)
    ccall((:IDAGetQuadSensStats, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, nrhsQSevals, nQSetfails)
end

function IDAGetQuadSens(ida_mem, tret, yyQSout)
    ccall((:IDAGetQuadSens, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}, Ptr{N_Vector}), ida_mem, tret, yyQSout)
end

function __IDAGetQuadSens1(ida_mem, tret, is::Cint, yyQSret::N_Vector)
    ccall((:IDAGetQuadSens1, libsundials_idas), Cint, (IDAMemPtr, Ptr{realtype}, Cint, N_Vector), ida_mem, tret, is, yyQSret)
end

function IDAGetQuadSens1(ida_mem, tret, is, yyQSret)
    __yyQSret = convert(NVector, yyQSret)
    __IDAGetQuadSens1(ida_mem, tret, convert(Cint, is), convert(N_Vector, __yyQSret))
end

function __IDAGetQuadSensDky(ida_mem, t::realtype, k::Cint, dkyQS)
    ccall((:IDAGetQuadSensDky, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint, Ptr{N_Vector}), ida_mem, t, k, dkyQS)
end

function IDAGetQuadSensDky(ida_mem, t, k, dkyQS)
    __IDAGetQuadSensDky(ida_mem, t, convert(Cint, k), dkyQS)
end

function __IDAGetQuadSensDky1(ida_mem, t::realtype, k::Cint, is::Cint, dkyQS::N_Vector)
    ccall((:IDAGetQuadSensDky1, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint, Cint, N_Vector), ida_mem, t, k, is, dkyQS)
end

function IDAGetQuadSensDky1(ida_mem, t, k, is, dkyQS)
    __dkyQS = convert(NVector, dkyQS)
    __IDAGetQuadSensDky1(ida_mem, t, convert(Cint, k), convert(Cint, is), convert(N_Vector, __dkyQS))
end

function __IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName, libsundials_idas), Cstring, (Clong,), flag)
end

function IDAGetReturnFlagName(flag)
    __IDAGetReturnFlagName(convert(Clong, flag))
end

function IDAFree(ida_mem)
    ccall((:IDAFree, libsundials_idas), Cvoid, (Ref{IDAMemPtr},), ida_mem)
end

function IDAQuadFree(ida_mem)
    ccall((:IDAQuadFree, libsundials_idas), Cvoid, (IDAMemPtr,), ida_mem)
end

function IDASensFree(ida_mem)
    ccall((:IDASensFree, libsundials_idas), Cvoid, (IDAMemPtr,), ida_mem)
end

function IDAQuadSensFree(ida_mem)
    ccall((:IDAQuadSensFree, libsundials_idas), Cvoid, (IDAMemPtr,), ida_mem)
end

function __IDAAdjInit(ida_mem, steps::Clong, interp::Cint)
    ccall((:IDAAdjInit, libsundials_idas), Cint, (IDAMemPtr, Clong, Cint), ida_mem, steps, interp)
end

function IDAAdjInit(ida_mem, steps, interp)
    __IDAAdjInit(ida_mem, convert(Clong, steps), convert(Cint, interp))
end

function IDAAdjReInit(ida_mem)
    ccall((:IDAAdjReInit, libsundials_idas), Cint, (IDAMemPtr,), ida_mem)
end

function IDAAdjFree(ida_mem)
    ccall((:IDAAdjFree, libsundials_idas), Cvoid, (IDAMemPtr,), ida_mem)
end

function IDACreateB(ida_mem, which)
    ccall((:IDACreateB, libsundials_idas), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, which)
end

function __IDAInitB(ida_mem, which::Cint, resB::IDAResFnB, tB0::realtype, yyB0::N_Vector, ypB0::N_Vector)
    ccall((:IDAInitB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDAResFnB, realtype, N_Vector, N_Vector), ida_mem, which, resB, tB0, yyB0, ypB0)
end

function IDAInitB(ida_mem, which, resB, tB0, yyB0, ypB0)
    __yyB0 = convert(NVector, yyB0)
    __ypB0 = convert(NVector, ypB0)
    __IDAInitB(ida_mem, convert(Cint, which), resB, tB0, convert(N_Vector, __yyB0), convert(N_Vector, __ypB0))
end

function __IDAInitBS(ida_mem, which::Cint, resS::IDAResFnBS, tB0::realtype, yyB0::N_Vector, ypB0::N_Vector)
    ccall((:IDAInitBS, libsundials_idas), Cint, (IDAMemPtr, Cint, IDAResFnBS, realtype, N_Vector, N_Vector), ida_mem, which, resS, tB0, yyB0, ypB0)
end

function IDAInitBS(ida_mem, which, resS, tB0, yyB0, ypB0)
    __yyB0 = convert(NVector, yyB0)
    __ypB0 = convert(NVector, ypB0)
    __IDAInitBS(ida_mem, convert(Cint, which), resS, tB0, convert(N_Vector, __yyB0), convert(N_Vector, __ypB0))
end

function __IDAReInitB(ida_mem, which::Cint, tB0::realtype, yyB0::N_Vector, ypB0::N_Vector)
    ccall((:IDAReInitB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, N_Vector, N_Vector), ida_mem, which, tB0, yyB0, ypB0)
end

function IDAReInitB(ida_mem, which, tB0, yyB0, ypB0)
    __yyB0 = convert(NVector, yyB0)
    __ypB0 = convert(NVector, ypB0)
    __IDAReInitB(ida_mem, convert(Cint, which), tB0, convert(N_Vector, __yyB0), convert(N_Vector, __ypB0))
end

function __IDASStolerancesB(ida_mem, which::Cint, relTolB::realtype, absTolB::realtype)
    ccall((:IDASStolerancesB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, realtype), ida_mem, which, relTolB, absTolB)
end

function IDASStolerancesB(ida_mem, which, relTolB, absTolB)
    __IDASStolerancesB(ida_mem, convert(Cint, which), relTolB, absTolB)
end

function __IDASVtolerancesB(ida_mem, which::Cint, relTolB::realtype, absTolB::N_Vector)
    ccall((:IDASVtolerancesB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, N_Vector), ida_mem, which, relTolB, absTolB)
end

function IDASVtolerancesB(ida_mem, which, relTolB, absTolB)
    __absTolB = convert(NVector, absTolB)
    __IDASVtolerancesB(ida_mem, convert(Cint, which), relTolB, convert(N_Vector, __absTolB))
end

function __IDAQuadInitB(ida_mem, which::Cint, rhsQB::IDAQuadRhsFnB, yQB0::N_Vector)
    ccall((:IDAQuadInitB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDAQuadRhsFnB, N_Vector), ida_mem, which, rhsQB, yQB0)
end

function IDAQuadInitB(ida_mem, which, rhsQB, yQB0)
    __yQB0 = convert(NVector, yQB0)
    __IDAQuadInitB(ida_mem, convert(Cint, which), rhsQB, convert(N_Vector, __yQB0))
end

function __IDAQuadInitBS(ida_mem, which::Cint, rhsQS::IDAQuadRhsFnBS, yQB0::N_Vector)
    ccall((:IDAQuadInitBS, libsundials_idas), Cint, (IDAMemPtr, Cint, IDAQuadRhsFnBS, N_Vector), ida_mem, which, rhsQS, yQB0)
end

function IDAQuadInitBS(ida_mem, which, rhsQS, yQB0)
    __yQB0 = convert(NVector, yQB0)
    __IDAQuadInitBS(ida_mem, convert(Cint, which), rhsQS, convert(N_Vector, __yQB0))
end

function __IDAQuadReInitB(ida_mem, which::Cint, yQB0::N_Vector)
    ccall((:IDAQuadReInitB, libsundials_idas), Cint, (IDAMemPtr, Cint, N_Vector), ida_mem, which, yQB0)
end

function IDAQuadReInitB(ida_mem, which, yQB0)
    __yQB0 = convert(NVector, yQB0)
    __IDAQuadReInitB(ida_mem, convert(Cint, which), convert(N_Vector, __yQB0))
end

function __IDAQuadSStolerancesB(ida_mem, which::Cint, reltolQB::realtype, abstolQB::realtype)
    ccall((:IDAQuadSStolerancesB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, realtype), ida_mem, which, reltolQB, abstolQB)
end

function IDAQuadSStolerancesB(ida_mem, which, reltolQB, abstolQB)
    __IDAQuadSStolerancesB(ida_mem, convert(Cint, which), reltolQB, abstolQB)
end

function __IDAQuadSVtolerancesB(ida_mem, which::Cint, reltolQB::realtype, abstolQB::N_Vector)
    ccall((:IDAQuadSVtolerancesB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, N_Vector), ida_mem, which, reltolQB, abstolQB)
end

function IDAQuadSVtolerancesB(ida_mem, which, reltolQB, abstolQB)
    __abstolQB = convert(NVector, abstolQB)
    __IDAQuadSVtolerancesB(ida_mem, convert(Cint, which), reltolQB, convert(N_Vector, __abstolQB))
end

function __IDACalcICB(ida_mem, which::Cint, tout1::realtype, yy0::N_Vector, yp0::N_Vector)
    ccall((:IDACalcICB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, N_Vector, N_Vector), ida_mem, which, tout1, yy0, yp0)
end

function IDACalcICB(ida_mem, which, tout1, yy0, yp0)
    __yy0 = convert(NVector, yy0)
    __yp0 = convert(NVector, yp0)
    __IDACalcICB(ida_mem, convert(Cint, which), tout1, convert(N_Vector, __yy0), convert(N_Vector, __yp0))
end

function __IDACalcICBS(ida_mem, which::Cint, tout1::realtype, yy0::N_Vector, yp0::N_Vector, yyS0, ypS0)
    ccall((:IDACalcICBS, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype, N_Vector, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), ida_mem, which, tout1, yy0, yp0, yyS0, ypS0)
end

function IDACalcICBS(ida_mem, which, tout1, yy0, yp0, yyS0, ypS0)
    __yy0 = convert(NVector, yy0)
    __yp0 = convert(NVector, yp0)
    __IDACalcICBS(ida_mem, convert(Cint, which), tout1, convert(N_Vector, __yy0), convert(N_Vector, __yp0), yyS0, ypS0)
end

function __IDASolveF(ida_mem, tout::realtype, tret, yret::N_Vector, ypret::N_Vector, itask::Cint, ncheckPtr)
    ccall((:IDASolveF, libsundials_idas), Cint, (IDAMemPtr, realtype, Ptr{realtype}, N_Vector, N_Vector, Cint, Ptr{Cint}), ida_mem, tout, tret, yret, ypret, itask, ncheckPtr)
end

function IDASolveF(ida_mem, tout, tret, yret, ypret, itask, ncheckPtr)
    __yret = convert(NVector, yret)
    __ypret = convert(NVector, ypret)
    __IDASolveF(ida_mem, tout, tret, convert(N_Vector, __yret), convert(N_Vector, __ypret), convert(Cint, itask), ncheckPtr)
end

function __IDASolveB(ida_mem, tBout::realtype, itaskB::Cint)
    ccall((:IDASolveB, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint), ida_mem, tBout, itaskB)
end

function IDASolveB(ida_mem, tBout, itaskB)
    __IDASolveB(ida_mem, tBout, convert(Cint, itaskB))
end

function IDAAdjSetNoSensi(ida_mem)
    ccall((:IDAAdjSetNoSensi, libsundials_idas), Cint, (IDAMemPtr,), ida_mem)
end

function __IDASetUserDataB(ida_mem, which::Cint, user_dataB)
    ccall((:IDASetUserDataB, libsundials_idas), Cint, (IDAMemPtr, Cint, Any), ida_mem, which, user_dataB)
end

function IDASetUserDataB(ida_mem, which, user_dataB)
    __IDASetUserDataB(ida_mem, convert(Cint, which), user_dataB)
end

function __IDASetMaxOrdB(ida_mem, which::Cint, maxordB::Cint)
    ccall((:IDASetMaxOrdB, libsundials_idas), Cint, (IDAMemPtr, Cint, Cint), ida_mem, which, maxordB)
end

function IDASetMaxOrdB(ida_mem, which, maxordB)
    __IDASetMaxOrdB(ida_mem, convert(Cint, which), convert(Cint, maxordB))
end

function __IDASetMaxNumStepsB(ida_mem, which::Cint, mxstepsB::Clong)
    ccall((:IDASetMaxNumStepsB, libsundials_idas), Cint, (IDAMemPtr, Cint, Clong), ida_mem, which, mxstepsB)
end

function IDASetMaxNumStepsB(ida_mem, which, mxstepsB)
    __IDASetMaxNumStepsB(ida_mem, convert(Cint, which), convert(Clong, mxstepsB))
end

function __IDASetInitStepB(ida_mem, which::Cint, hinB::realtype)
    ccall((:IDASetInitStepB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, which, hinB)
end

function IDASetInitStepB(ida_mem, which, hinB)
    __IDASetInitStepB(ida_mem, convert(Cint, which), hinB)
end

function __IDASetMaxStepB(ida_mem, which::Cint, hmaxB::realtype)
    ccall((:IDASetMaxStepB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, which, hmaxB)
end

function IDASetMaxStepB(ida_mem, which, hmaxB)
    __IDASetMaxStepB(ida_mem, convert(Cint, which), hmaxB)
end

function __IDASetSuppressAlgB(ida_mem, which::Cint, suppressalgB::Cint)
    ccall((:IDASetSuppressAlgB, libsundials_idas), Cint, (IDAMemPtr, Cint, Cint), ida_mem, which, suppressalgB)
end

function IDASetSuppressAlgB(ida_mem, which, suppressalgB)
    __IDASetSuppressAlgB(ida_mem, convert(Cint, which), convert(Cint, suppressalgB))
end

function __IDASetIdB(ida_mem, which::Cint, idB::N_Vector)
    ccall((:IDASetIdB, libsundials_idas), Cint, (IDAMemPtr, Cint, N_Vector), ida_mem, which, idB)
end

function IDASetIdB(ida_mem, which, idB)
    __idB = convert(NVector, idB)
    __IDASetIdB(ida_mem, convert(Cint, which), convert(N_Vector, __idB))
end

function __IDASetConstraintsB(ida_mem, which::Cint, constraintsB::N_Vector)
    ccall((:IDASetConstraintsB, libsundials_idas), Cint, (IDAMemPtr, Cint, N_Vector), ida_mem, which, constraintsB)
end

function IDASetConstraintsB(ida_mem, which, constraintsB)
    __constraintsB = convert(NVector, constraintsB)
    __IDASetConstraintsB(ida_mem, convert(Cint, which), convert(N_Vector, __constraintsB))
end

function __IDASetQuadErrConB(ida_mem, which::Cint, errconQB::Cint)
    ccall((:IDASetQuadErrConB, libsundials_idas), Cint, (IDAMemPtr, Cint, Cint), ida_mem, which, errconQB)
end

function IDASetQuadErrConB(ida_mem, which, errconQB)
    __IDASetQuadErrConB(ida_mem, convert(Cint, which), convert(Cint, errconQB))
end

function __IDAGetB(ida_mem, which::Cint, tret, yy::N_Vector, yp::N_Vector)
    ccall((:IDAGetB, libsundials_idas), Cint, (IDAMemPtr, Cint, Ptr{realtype}, N_Vector, N_Vector), ida_mem, which, tret, yy, yp)
end

function IDAGetB(ida_mem, which, tret, yy, yp)
    __yy = convert(NVector, yy)
    __yp = convert(NVector, yp)
    __IDAGetB(ida_mem, convert(Cint, which), tret, convert(N_Vector, __yy), convert(N_Vector, __yp))
end

function __IDAGetQuadB(ida_mem, which::Cint, tret, qB::N_Vector)
    ccall((:IDAGetQuadB, libsundials_idas), Cint, (IDAMemPtr, Cint, Ptr{realtype}, N_Vector), ida_mem, which, tret, qB)
end

function IDAGetQuadB(ida_mem, which, tret, qB)
    __qB = convert(NVector, qB)
    __IDAGetQuadB(ida_mem, convert(Cint, which), tret, convert(N_Vector, __qB))
end

function __IDAGetAdjIDABmem(ida_mem, which::Cint)
    ccall((:IDAGetAdjIDABmem, libsundials_idas), Ptr{Cvoid}, (IDAMemPtr, Cint), ida_mem, which)
end

function IDAGetAdjIDABmem(ida_mem, which)
    __IDAGetAdjIDABmem(ida_mem, convert(Cint, which))
end

function __IDAGetConsistentICB(ida_mem, which::Cint, yyB0::N_Vector, ypB0::N_Vector)
    ccall((:IDAGetConsistentICB, libsundials_idas), Cint, (IDAMemPtr, Cint, N_Vector, N_Vector), ida_mem, which, yyB0, ypB0)
end

function IDAGetConsistentICB(ida_mem, which, yyB0, ypB0)
    __yyB0 = convert(NVector, yyB0)
    __ypB0 = convert(NVector, ypB0)
    __IDAGetConsistentICB(ida_mem, convert(Cint, which), convert(N_Vector, __yyB0), convert(N_Vector, __ypB0))
end

function __IDAGetAdjY(ida_mem, t::realtype, yy::N_Vector, yp::N_Vector)
    ccall((:IDAGetAdjY, libsundials_idas), Cint, (IDAMemPtr, realtype, N_Vector, N_Vector), ida_mem, t, yy, yp)
end

function IDAGetAdjY(ida_mem, t, yy, yp)
    __yy = convert(NVector, yy)
    __yp = convert(NVector, yp)
    __IDAGetAdjY(ida_mem, t, convert(N_Vector, __yy), convert(N_Vector, __yp))
end

function IDAGetAdjCheckPointsInfo(ida_mem, ckpnt)
    ccall((:IDAGetAdjCheckPointsInfo, libsundials_idas), Cint, (IDAMemPtr, Ptr{IDAadjCheckPointRec}), ida_mem, ckpnt)
end

function __IDAGetAdjDataPointHermite(ida_mem, which::Cint, t, yy::N_Vector, yd::N_Vector)
    ccall((:IDAGetAdjDataPointHermite, libsundials_idas), Cint, (IDAMemPtr, Cint, Ptr{realtype}, N_Vector, N_Vector), ida_mem, which, t, yy, yd)
end

function IDAGetAdjDataPointHermite(ida_mem, which, t, yy, yd)
    __yy = convert(NVector, yy)
    __yd = convert(NVector, yd)
    __IDAGetAdjDataPointHermite(ida_mem, convert(Cint, which), t, convert(N_Vector, __yy), convert(N_Vector, __yd))
end

function __IDAGetAdjDataPointPolynomial(ida_mem, which::Cint, t, order, y::N_Vector)
    ccall((:IDAGetAdjDataPointPolynomial, libsundials_idas), Cint, (IDAMemPtr, Cint, Ptr{realtype}, Ptr{Cint}, N_Vector), ida_mem, which, t, order, y)
end

function IDAGetAdjDataPointPolynomial(ida_mem, which, t, order, y)
    __y = convert(NVector, y)
    __IDAGetAdjDataPointPolynomial(ida_mem, convert(Cint, which), t, order, convert(N_Vector, __y))
end

function IDAGetAdjCurrentCheckPoint(ida_mem, addr)
    ccall((:IDAGetAdjCurrentCheckPoint, libsundials_idas), Cint, (IDAMemPtr, Ptr{Ptr{Cvoid}}), ida_mem, addr)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/idas/idas_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDABBDPrecInit(ida_mem, Nlocal::sunindextype, mudq::sunindextype, mldq::sunindextype, mukeep::sunindextype, mlkeep::sunindextype, dq_rel_yy::realtype, Gres::IDABBDLocalFn, Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit, libsundials_idas), Cint, (IDAMemPtr, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, IDABBDLocalFn, IDABBDCommFn), ida_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dq_rel_yy, Gres, Gcomm)
end

function IDABBDPrecReInit(ida_mem, mudq::sunindextype, mldq::sunindextype, dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit, libsundials_idas), Cint, (IDAMemPtr, sunindextype, sunindextype, realtype), ida_mem, mudq, mldq, dq_rel_yy)
end

function IDABBDPrecGetWorkSpace(ida_mem, lenrwBBDP, leniwBBDP)
    ccall((:IDABBDPrecGetWorkSpace, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwBBDP, leniwBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem, ngevalsBBDP)
    ccall((:IDABBDPrecGetNumGfnEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, ngevalsBBDP)
end

function __IDABBDPrecInitB(ida_mem, which::Cint, NlocalB::sunindextype, mudqB::sunindextype, mldqB::sunindextype, mukeepB::sunindextype, mlkeepB::sunindextype, dq_rel_yyB::realtype, GresB::IDABBDLocalFnB, GcommB::IDABBDCommFnB)
    ccall((:IDABBDPrecInitB, libsundials_idas), Cint, (IDAMemPtr, Cint, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, IDABBDLocalFnB, IDABBDCommFnB), ida_mem, which, NlocalB, mudqB, mldqB, mukeepB, mlkeepB, dq_rel_yyB, GresB, GcommB)
end

function IDABBDPrecInitB(ida_mem, which, NlocalB, mudqB, mldqB, mukeepB, mlkeepB, dq_rel_yyB, GresB, GcommB)
    __IDABBDPrecInitB(ida_mem, convert(Cint, which), NlocalB, mudqB, mldqB, mukeepB, mlkeepB, dq_rel_yyB, GresB, GcommB)
end

function __IDABBDPrecReInitB(ida_mem, which::Cint, mudqB::sunindextype, mldqB::sunindextype, dq_rel_yyB::realtype)
    ccall((:IDABBDPrecReInitB, libsundials_idas), Cint, (IDAMemPtr, Cint, sunindextype, sunindextype, realtype), ida_mem, which, mudqB, mldqB, dq_rel_yyB)
end

function IDABBDPrecReInitB(ida_mem, which, mudqB, mldqB, dq_rel_yyB)
    __IDABBDPrecReInitB(ida_mem, convert(Cint, which), mudqB, mldqB, dq_rel_yyB)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/idas/idas_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDADlsSetLinearSolver(ida_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:IDADlsSetLinearSolver, libsundials_idas), Cint, (IDAMemPtr, SUNLinearSolver, SUNMatrix), ida_mem, LS, A)
end

function IDADlsSetJacFn(ida_mem, jac::IDADlsJacFn)
    ccall((:IDADlsSetJacFn, libsundials_idas), Cint, (IDAMemPtr, IDADlsJacFn), ida_mem, jac)
end

function IDADlsGetWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDADlsGetWorkSpace, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem, njevals)
    ccall((:IDADlsGetNumJacEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njevals)
end

function IDADlsGetNumResEvals(ida_mem, nfevalsLS)
    ccall((:IDADlsGetNumResEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem, flag)
    ccall((:IDADlsGetLastFlag, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, flag)
end

function __IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName, libsundials_idas), Cstring, (Clong,), flag)
end

function IDADlsGetReturnFlagName(flag)
    __IDADlsGetReturnFlagName(convert(Clong, flag))
end

function __IDADlsSetLinearSolverB(ida_mem, which::Cint, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:IDADlsSetLinearSolverB, libsundials_idas), Cint, (IDAMemPtr, Cint, SUNLinearSolver, SUNMatrix), ida_mem, which, LS, A)
end

function IDADlsSetLinearSolverB(ida_mem, which, LS, A)
    __IDADlsSetLinearSolverB(ida_mem, convert(Cint, which), LS, A)
end

function __IDADlsSetJacFnB(ida_mem, which::Cint, jacB::IDADlsJacFnB)
    ccall((:IDADlsSetJacFnB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDADlsJacFnB), ida_mem, which, jacB)
end

function IDADlsSetJacFnB(ida_mem, which, jacB)
    __IDADlsSetJacFnB(ida_mem, convert(Cint, which), jacB)
end

function __IDADlsSetJacFnBS(ida_mem, which::Cint, jacBS::IDADlsJacFnBS)
    ccall((:IDADlsSetJacFnBS, libsundials_idas), Cint, (IDAMemPtr, Cint, IDADlsJacFnBS), ida_mem, which, jacBS)
end

function IDADlsSetJacFnBS(ida_mem, which, jacBS)
    __IDADlsSetJacFnBS(ida_mem, convert(Cint, which), jacBS)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/idas/idas_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/idas/idas_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDASpilsSetLinearSolver(ida_mem, LS::SUNLinearSolver)
    ccall((:IDASpilsSetLinearSolver, libsundials_idas), Cint, (IDAMemPtr, SUNLinearSolver), ida_mem, LS)
end

function IDASpilsSetPreconditioner(ida_mem, pset::IDASpilsPrecSetupFn, psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner, libsundials_idas), Cint, (IDAMemPtr, IDASpilsPrecSetupFn, IDASpilsPrecSolveFn), ida_mem, pset, psolve)
end

function IDASpilsSetJacTimes(ida_mem, jtsetup::IDASpilsJacTimesSetupFn, jtimes::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimes, libsundials_idas), Cint, (IDAMemPtr, IDASpilsJacTimesSetupFn, IDASpilsJacTimesVecFn), ida_mem, jtsetup, jtimes)
end

function IDASpilsSetEpsLin(ida_mem, eplifac::realtype)
    ccall((:IDASpilsSetEpsLin, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem, dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor, libsundials_idas), Cint, (IDAMemPtr, realtype), ida_mem, dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDASpilsGetWorkSpace, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem, npevals)
    ccall((:IDASpilsGetNumPrecEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem, npsolves)
    ccall((:IDASpilsGetNumPrecSolves, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npsolves)
end

function IDASpilsGetNumLinIters(ida_mem, nliters)
    ccall((:IDASpilsGetNumLinIters, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nliters)
end

function IDASpilsGetNumConvFails(ida_mem, nlcfails)
    ccall((:IDASpilsGetNumConvFails, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem, njvevals)
    ccall((:IDASpilsGetNumJtimesEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njvevals)
end

function IDASpilsGetNumResEvals(ida_mem, nrevalsLS)
    ccall((:IDASpilsGetNumResEvals, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem, flag)
    ccall((:IDASpilsGetLastFlag, libsundials_idas), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, flag)
end

function __IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName, libsundials_idas), Cstring, (Clong,), flag)
end

function IDASpilsGetReturnFlagName(flag)
    __IDASpilsGetReturnFlagName(convert(Clong, flag))
end

function __IDASpilsSetLinearSolverB(ida_mem, which::Cint, LS::SUNLinearSolver)
    ccall((:IDASpilsSetLinearSolverB, libsundials_idas), Cint, (IDAMemPtr, Cint, SUNLinearSolver), ida_mem, which, LS)
end

function IDASpilsSetLinearSolverB(ida_mem, which, LS)
    __IDASpilsSetLinearSolverB(ida_mem, convert(Cint, which), LS)
end

function __IDASpilsSetEpsLinB(ida_mem, which::Cint, eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, which, eplifacB)
end

function IDASpilsSetEpsLinB(ida_mem, which, eplifacB)
    __IDASpilsSetEpsLinB(ida_mem, convert(Cint, which), eplifacB)
end

function __IDASpilsSetIncrementFactorB(ida_mem, which::Cint, dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB, libsundials_idas), Cint, (IDAMemPtr, Cint, realtype), ida_mem, which, dqincfacB)
end

function IDASpilsSetIncrementFactorB(ida_mem, which, dqincfacB)
    __IDASpilsSetIncrementFactorB(ida_mem, convert(Cint, which), dqincfacB)
end

function __IDASpilsSetPreconditionerB(ida_mem, which::Cint, psetB::IDASpilsPrecSetupFnB, psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDASpilsPrecSetupFnB, IDASpilsPrecSolveFnB), ida_mem, which, psetB, psolveB)
end

function IDASpilsSetPreconditionerB(ida_mem, which, psetB, psolveB)
    __IDASpilsSetPreconditionerB(ida_mem, convert(Cint, which), psetB, psolveB)
end

function __IDASpilsSetPreconditionerBS(ida_mem, which::Cint, psetBS::IDASpilsPrecSetupFnBS, psolveBS::IDASpilsPrecSolveFnBS)
    ccall((:IDASpilsSetPreconditionerBS, libsundials_idas), Cint, (IDAMemPtr, Cint, IDASpilsPrecSetupFnBS, IDASpilsPrecSolveFnBS), ida_mem, which, psetBS, psolveBS)
end

function IDASpilsSetPreconditionerBS(ida_mem, which, psetBS, psolveBS)
    __IDASpilsSetPreconditionerBS(ida_mem, convert(Cint, which), psetBS, psolveBS)
end

function __IDASpilsSetJacTimesB(ida_mem, which::Cint, jtsetupB::IDASpilsJacTimesSetupFnB, jtimesB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesB, libsundials_idas), Cint, (IDAMemPtr, Cint, IDASpilsJacTimesSetupFnB, IDASpilsJacTimesVecFnB), ida_mem, which, jtsetupB, jtimesB)
end

function IDASpilsSetJacTimesB(ida_mem, which, jtsetupB, jtimesB)
    __IDASpilsSetJacTimesB(ida_mem, convert(Cint, which), jtsetupB, jtimesB)
end

function __IDASpilsSetJacTimesBS(ida_mem, which::Cint, jtsetupBS::IDASpilsJacTimesSetupFnBS, jtimesBS::IDASpilsJacTimesVecFnBS)
    ccall((:IDASpilsSetJacTimesBS, libsundials_idas), Cint, (IDAMemPtr, Cint, IDASpilsJacTimesSetupFnBS, IDASpilsJacTimesVecFnBS), ida_mem, which, jtsetupBS, jtimesBS)
end

function IDASpilsSetJacTimesBS(ida_mem, which, jtsetupBS, jtimesBS)
    __IDASpilsSetJacTimesBS(ida_mem, convert(Cint, which), jtsetupBS, jtimesBS)
end
