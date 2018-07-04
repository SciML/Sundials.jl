# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/ida/ida.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDACreate()
    ccall((:IDACreate, libsundials_ida), IDAMemPtr, ())
end

function IDASetErrHandlerFn(ida_mem, ehfun::IDAErrHandlerFn, eh_data)
    ccall((:IDASetErrHandlerFn, libsundials_ida), Cint, (IDAMemPtr, IDAErrHandlerFn, Ptr{Cvoid}), ida_mem, ehfun, eh_data)
end

function IDASetErrFile(ida_mem, errfp)
    ccall((:IDASetErrFile, libsundials_ida), Cint, (IDAMemPtr, Ptr{FILE}), ida_mem, errfp)
end

function IDASetUserData(ida_mem, user_data)
    ccall((:IDASetUserData, libsundials_ida), Cint, (IDAMemPtr, Any), ida_mem, user_data)
end

function __IDASetMaxOrd(ida_mem, maxord::Cint)
    ccall((:IDASetMaxOrd, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxord)
end

function IDASetMaxOrd(ida_mem, maxord)
    __IDASetMaxOrd(ida_mem, convert(Cint, maxord))
end

function __IDASetMaxNumSteps(ida_mem, mxsteps::Clong)
    ccall((:IDASetMaxNumSteps, libsundials_ida), Cint, (IDAMemPtr, Clong), ida_mem, mxsteps)
end

function IDASetMaxNumSteps(ida_mem, mxsteps)
    __IDASetMaxNumSteps(ida_mem, convert(Clong, mxsteps))
end

function IDASetInitStep(ida_mem, hin::realtype)
    ccall((:IDASetInitStep, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, hin)
end

function IDASetMaxStep(ida_mem, hmax::realtype)
    ccall((:IDASetMaxStep, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, hmax)
end

function IDASetStopTime(ida_mem, tstop::realtype)
    ccall((:IDASetStopTime, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, tstop)
end

function IDASetNonlinConvCoef(ida_mem, epcon::realtype)
    ccall((:IDASetNonlinConvCoef, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, epcon)
end

function __IDASetMaxErrTestFails(ida_mem, maxnef::Cint)
    ccall((:IDASetMaxErrTestFails, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxnef)
end

function IDASetMaxErrTestFails(ida_mem, maxnef)
    __IDASetMaxErrTestFails(ida_mem, convert(Cint, maxnef))
end

function __IDASetMaxNonlinIters(ida_mem, maxcor::Cint)
    ccall((:IDASetMaxNonlinIters, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxcor)
end

function IDASetMaxNonlinIters(ida_mem, maxcor)
    __IDASetMaxNonlinIters(ida_mem, convert(Cint, maxcor))
end

function __IDASetMaxConvFails(ida_mem, maxncf::Cint)
    ccall((:IDASetMaxConvFails, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxncf)
end

function IDASetMaxConvFails(ida_mem, maxncf)
    __IDASetMaxConvFails(ida_mem, convert(Cint, maxncf))
end

function __IDASetSuppressAlg(ida_mem, suppressalg::Cint)
    ccall((:IDASetSuppressAlg, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, suppressalg)
end

function IDASetSuppressAlg(ida_mem, suppressalg)
    __IDASetSuppressAlg(ida_mem, convert(Cint, suppressalg))
end

function __IDASetId(ida_mem, id::N_Vector)
    ccall((:IDASetId, libsundials_ida), Cint, (IDAMemPtr, N_Vector), ida_mem, id)
end

function IDASetId(ida_mem, id)
    __id = convert(NVector, id)
    __IDASetId(ida_mem, convert(N_Vector, __id))
end

function __IDASetConstraints(ida_mem, constraints::N_Vector)
    ccall((:IDASetConstraints, libsundials_ida), Cint, (IDAMemPtr, N_Vector), ida_mem, constraints)
end

function IDASetConstraints(ida_mem, constraints)
    __constraints = convert(NVector, constraints)
    __IDASetConstraints(ida_mem, convert(N_Vector, __constraints))
end

function IDASetRootDirection(ida_mem, rootdir)
    ccall((:IDASetRootDirection, libsundials_ida), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem)
    ccall((:IDASetNoInactiveRootWarn, libsundials_ida), Cint, (IDAMemPtr,), ida_mem)
end

function __IDAInit(ida_mem, res::IDAResFn, t0::realtype, yy0::N_Vector, yp0::N_Vector)
    ccall((:IDAInit, libsundials_ida), Cint, (IDAMemPtr, IDAResFn, realtype, N_Vector, N_Vector), ida_mem, res, t0, yy0, yp0)
end

function IDAInit(ida_mem, res, t0, yy0, yp0)
    __yy0 = convert(NVector, yy0)
    __yp0 = convert(NVector, yp0)
    __IDAInit(ida_mem, IDAResFn_wrapper(res), t0, convert(N_Vector, __yy0), convert(N_Vector, __yp0))
end

function __IDAReInit(ida_mem, t0::realtype, yy0::N_Vector, yp0::N_Vector)
    ccall((:IDAReInit, libsundials_ida), Cint, (IDAMemPtr, realtype, N_Vector, N_Vector), ida_mem, t0, yy0, yp0)
end

function IDAReInit(ida_mem, t0, yy0, yp0)
    __yy0 = convert(NVector, yy0)
    __yp0 = convert(NVector, yp0)
    __IDAReInit(ida_mem, t0, convert(N_Vector, __yy0), convert(N_Vector, __yp0))
end

function IDASStolerances(ida_mem, reltol::realtype, abstol::realtype)
    ccall((:IDASStolerances, libsundials_ida), Cint, (IDAMemPtr, realtype, realtype), ida_mem, reltol, abstol)
end

function __IDASVtolerances(ida_mem, reltol::realtype, abstol::N_Vector)
    ccall((:IDASVtolerances, libsundials_ida), Cint, (IDAMemPtr, realtype, N_Vector), ida_mem, reltol, abstol)
end

function IDASVtolerances(ida_mem, reltol, abstol)
    __abstol = convert(NVector, abstol)
    __IDASVtolerances(ida_mem, reltol, convert(N_Vector, __abstol))
end

function IDAWFtolerances(ida_mem, efun::IDAEwtFn)
    ccall((:IDAWFtolerances, libsundials_ida), Cint, (IDAMemPtr, IDAEwtFn), ida_mem, efun)
end

function IDASetNonlinConvCoefIC(ida_mem, epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, epiccon)
end

function __IDASetMaxNumStepsIC(ida_mem, maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxnh)
end

function IDASetMaxNumStepsIC(ida_mem, maxnh)
    __IDASetMaxNumStepsIC(ida_mem, convert(Cint, maxnh))
end

function __IDASetMaxNumJacsIC(ida_mem, maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxnj)
end

function IDASetMaxNumJacsIC(ida_mem, maxnj)
    __IDASetMaxNumJacsIC(ida_mem, convert(Cint, maxnj))
end

function __IDASetMaxNumItersIC(ida_mem, maxnit::Cint)
    ccall((:IDASetMaxNumItersIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxnit)
end

function IDASetMaxNumItersIC(ida_mem, maxnit)
    __IDASetMaxNumItersIC(ida_mem, convert(Cint, maxnit))
end

function __IDASetLineSearchOffIC(ida_mem, lsoff::Cint)
    ccall((:IDASetLineSearchOffIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, lsoff)
end

function IDASetLineSearchOffIC(ida_mem, lsoff)
    __IDASetLineSearchOffIC(ida_mem, convert(Cint, lsoff))
end

function IDASetStepToleranceIC(ida_mem, steptol::realtype)
    ccall((:IDASetStepToleranceIC, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, steptol)
end

function __IDASetMaxBacksIC(ida_mem, maxbacks::Cint)
    ccall((:IDASetMaxBacksIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxbacks)
end

function IDASetMaxBacksIC(ida_mem, maxbacks)
    __IDASetMaxBacksIC(ida_mem, convert(Cint, maxbacks))
end

function __IDARootInit(ida_mem, nrtfn::Cint, g::IDARootFn)
    ccall((:IDARootInit, libsundials_ida), Cint, (IDAMemPtr, Cint, IDARootFn), ida_mem, nrtfn, g)
end

function IDARootInit(ida_mem, nrtfn, g)
    __IDARootInit(ida_mem, convert(Cint, nrtfn), IDARootFn_wrapper(g))
end

function __IDACalcIC(ida_mem, icopt::Cint, tout1::realtype)
    ccall((:IDACalcIC, libsundials_ida), Cint, (IDAMemPtr, Cint, realtype), ida_mem, icopt, tout1)
end

function IDACalcIC(ida_mem, icopt, tout1)
    __IDACalcIC(ida_mem, convert(Cint, icopt), tout1)
end

function __IDASolve(ida_mem, tout::realtype, tret, yret::N_Vector, ypret::N_Vector, itask::Cint)
    ccall((:IDASolve, libsundials_ida), Cint, (IDAMemPtr, realtype, Ptr{realtype}, N_Vector, N_Vector, Cint), ida_mem, tout, tret, yret, ypret, itask)
end

function IDASolve(ida_mem, tout, tret, yret, ypret, itask)
    __yret = convert(NVector, yret)
    __ypret = convert(NVector, ypret)
    __IDASolve(ida_mem, tout, tret, convert(N_Vector, __yret), convert(N_Vector, __ypret), convert(Cint, itask))
end

function __IDAGetDky(ida_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:IDAGetDky, libsundials_ida), Cint, (IDAMemPtr, realtype, Cint, N_Vector), ida_mem, t, k, dky)
end

function IDAGetDky(ida_mem, t, k, dky)
    __dky = convert(NVector, dky)
    __IDAGetDky(ida_mem, t, convert(Cint, k), convert(N_Vector, __dky))
end

function IDAGetWorkSpace(ida_mem, lenrw, leniw)
    ccall((:IDAGetWorkSpace, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrw, leniw)
end

function IDAGetNumSteps(ida_mem, nsteps)
    ccall((:IDAGetNumSteps, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nsteps)
end

function IDAGetNumResEvals(ida_mem, nrevals)
    ccall((:IDAGetNumResEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem, nlinsetups)
    ccall((:IDAGetNumLinSolvSetups, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem, netfails)
    ccall((:IDAGetNumErrTestFails, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, netfails)
end

function IDAGetNumBacktrackOps(ida_mem, nbacktr)
    ccall((:IDAGetNumBacktrackOps, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nbacktr)
end

function __IDAGetConsistentIC(ida_mem, yy0_mod::N_Vector, yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC, libsundials_ida), Cint, (IDAMemPtr, N_Vector, N_Vector), ida_mem, yy0_mod, yp0_mod)
end

function IDAGetConsistentIC(ida_mem, yy0_mod, yp0_mod)
    __yy0_mod = convert(NVector, yy0_mod)
    __yp0_mod = convert(NVector, yp0_mod)
    __IDAGetConsistentIC(ida_mem, convert(N_Vector, __yy0_mod), convert(N_Vector, __yp0_mod))
end

function IDAGetLastOrder(ida_mem, klast)
    ccall((:IDAGetLastOrder, libsundials_ida), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, klast)
end

function IDAGetCurrentOrder(ida_mem, kcur)
    ccall((:IDAGetCurrentOrder, libsundials_ida), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, kcur)
end

function IDAGetActualInitStep(ida_mem, hinused)
    ccall((:IDAGetActualInitStep, libsundials_ida), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, hinused)
end

function IDAGetLastStep(ida_mem, hlast)
    ccall((:IDAGetLastStep, libsundials_ida), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, hlast)
end

function IDAGetCurrentStep(ida_mem, hcur)
    ccall((:IDAGetCurrentStep, libsundials_ida), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, hcur)
end

function IDAGetCurrentTime(ida_mem, tcur)
    ccall((:IDAGetCurrentTime, libsundials_ida), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, tcur)
end

function IDAGetTolScaleFactor(ida_mem, tolsfact)
    ccall((:IDAGetTolScaleFactor, libsundials_ida), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, tolsfact)
end

function __IDAGetErrWeights(ida_mem, eweight::N_Vector)
    ccall((:IDAGetErrWeights, libsundials_ida), Cint, (IDAMemPtr, N_Vector), ida_mem, eweight)
end

function IDAGetErrWeights(ida_mem, eweight)
    __eweight = convert(NVector, eweight)
    __IDAGetErrWeights(ida_mem, convert(N_Vector, __eweight))
end

function __IDAGetEstLocalErrors(ida_mem, ele::N_Vector)
    ccall((:IDAGetEstLocalErrors, libsundials_ida), Cint, (IDAMemPtr, N_Vector), ida_mem, ele)
end

function IDAGetEstLocalErrors(ida_mem, ele)
    __ele = convert(NVector, ele)
    __IDAGetEstLocalErrors(ida_mem, convert(N_Vector, __ele))
end

function IDAGetNumGEvals(ida_mem, ngevals)
    ccall((:IDAGetNumGEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, ngevals)
end

function IDAGetRootInfo(ida_mem, rootsfound)
    ccall((:IDAGetRootInfo, libsundials_ida), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, rootsfound)
end

function IDAGetIntegratorStats(ida_mem, nsteps, nrevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
    ccall((:IDAGetIntegratorStats, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Cint}, Ptr{Cint}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), ida_mem, nsteps, nrevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem, nniters)
    ccall((:IDAGetNumNonlinSolvIters, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem, nncfails)
    ccall((:IDAGetNumNonlinSolvConvFails, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nncfails)
end

function IDAGetNonlinSolvStats(ida_mem, nniters, nncfails)
    ccall((:IDAGetNonlinSolvStats, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, nniters, nncfails)
end

function __IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName, libsundials_ida), Cstring, (Clong,), flag)
end

function IDAGetReturnFlagName(flag)
    __IDAGetReturnFlagName(convert(Clong, flag))
end

function IDAFree(ida_mem)
    ccall((:IDAFree, libsundials_ida), Cvoid, (Ref{IDAMemPtr},), ida_mem)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/ida/ida_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDABBDPrecInit(ida_mem, Nlocal::sunindextype, mudq::sunindextype, mldq::sunindextype, mukeep::sunindextype, mlkeep::sunindextype, dq_rel_yy::realtype, Gres::IDABBDLocalFn, Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit, libsundials_ida), Cint, (IDAMemPtr, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, IDABBDLocalFn, IDABBDCommFn), ida_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dq_rel_yy, Gres, Gcomm)
end

function IDABBDPrecReInit(ida_mem, mudq::sunindextype, mldq::sunindextype, dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit, libsundials_ida), Cint, (IDAMemPtr, sunindextype, sunindextype, realtype), ida_mem, mudq, mldq, dq_rel_yy)
end

function IDABBDPrecGetWorkSpace(ida_mem, lenrwBBDP, leniwBBDP)
    ccall((:IDABBDPrecGetWorkSpace, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwBBDP, leniwBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem, ngevalsBBDP)
    ccall((:IDABBDPrecGetNumGfnEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, ngevalsBBDP)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/ida/ida_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDADlsSetLinearSolver(ida_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:IDADlsSetLinearSolver, libsundials_ida), Cint, (IDAMemPtr, SUNLinearSolver, SUNMatrix), ida_mem, LS, A)
end

function IDADlsSetJacFn(ida_mem, jac::IDADlsJacFn)
    ccall((:IDADlsSetJacFn, libsundials_ida), Cint, (IDAMemPtr, IDADlsJacFn), ida_mem, jac)
end

function IDADlsGetWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDADlsGetWorkSpace, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem, njevals)
    ccall((:IDADlsGetNumJacEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njevals)
end

function IDADlsGetNumResEvals(ida_mem, nfevalsLS)
    ccall((:IDADlsGetNumResEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem, flag)
    ccall((:IDADlsGetLastFlag, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, flag)
end

function __IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName, libsundials_ida), Cstring, (Clong,), flag)
end

function IDADlsGetReturnFlagName(flag)
    __IDADlsGetReturnFlagName(convert(Clong, flag))
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/ida/ida_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/ida/ida_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDASpilsSetLinearSolver(ida_mem, LS::SUNLinearSolver)
    ccall((:IDASpilsSetLinearSolver, libsundials_ida), Cint, (IDAMemPtr, SUNLinearSolver), ida_mem, LS)
end

function IDASpilsSetPreconditioner(ida_mem, pset::IDASpilsPrecSetupFn, psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner, libsundials_ida), Cint, (IDAMemPtr, IDASpilsPrecSetupFn, IDASpilsPrecSolveFn), ida_mem, pset, psolve)
end

function IDASpilsSetJacTimes(ida_mem, jtsetup::IDASpilsJacTimesSetupFn, jtimes::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimes, libsundials_ida), Cint, (IDAMemPtr, IDASpilsJacTimesSetupFn, IDASpilsJacTimesVecFn), ida_mem, jtsetup, jtimes)
end

function IDASpilsSetEpsLin(ida_mem, eplifac::realtype)
    ccall((:IDASpilsSetEpsLin, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem, dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDASpilsGetWorkSpace, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem, npevals)
    ccall((:IDASpilsGetNumPrecEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem, npsolves)
    ccall((:IDASpilsGetNumPrecSolves, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npsolves)
end

function IDASpilsGetNumLinIters(ida_mem, nliters)
    ccall((:IDASpilsGetNumLinIters, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nliters)
end

function IDASpilsGetNumConvFails(ida_mem, nlcfails)
    ccall((:IDASpilsGetNumConvFails, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem, njvevals)
    ccall((:IDASpilsGetNumJtimesEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njvevals)
end

function IDASpilsGetNumResEvals(ida_mem, nrevalsLS)
    ccall((:IDASpilsGetNumResEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem, flag)
    ccall((:IDASpilsGetLastFlag, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, flag)
end

function __IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName, libsundials_ida), Cstring, (Clong,), flag)
end

function IDASpilsGetReturnFlagName(flag)
    __IDASpilsGetReturnFlagName(convert(Clong, flag))
end
