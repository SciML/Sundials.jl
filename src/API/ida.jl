# Julia wrapper for header: ida.h
# Automatically generated using Clang.jl


function IDACreate()
    ccall((:IDACreate, libsundials_ida), IDAMemPtr, ())
end

function IDAInit(ida_mem, res::IDAResFn, t0::realtype, yy0::N_Vector, yp0::N_Vector)
    ccall((:IDAInit, libsundials_ida), Cint, (IDAMemPtr, IDAResFn, realtype, N_Vector, N_Vector), ida_mem, res, t0, yy0, yp0)
end

function IDAInit(ida_mem, res::IDAResFn, t0::realtype, yy0, yp0)
    __yy0 = convert(NVector, yy0)
    __yp0 = convert(NVector, yp0)
    IDAInit(ida_mem, res, t0, convert(N_vector, __yy0), convert(N_vector, __yp0))
end

function IDASStolerances(ida_mem, reltol::realtype, abstol::realtype)
    ccall((:IDASStolerances, libsundials_ida), Cint, (IDAMemPtr, realtype, realtype), ida_mem, reltol, abstol)
end

function IDASVtolerances(ida_mem, reltol::realtype, abstol::N_vector)
    ccall((:IDASVtolerances, libsundials_ida), Cint, (IDAMemPtr, realtype, N_Vector), ida_mem, reltol, abstol)
end

function IDASVtolerances(ida_mem, reltol::realtype, abstol)
    __abstol = Convert(NVector, abstol)
    IDASVtolerances(ida_mem, reltol::realtype, convert(N_vector, __abstol))
end

function IDAWFtolerances(ida_mem, efun::IDAEwtFn)
    ccall((:IDAWFtolerances, libsundials_ida), Cint, (IDAMemPtr, IDAEwtFn), ida_mem, efun)
end

function IDACalcIC(ida_mem, icopt::Cint, tout1::realtype)
    ccall((:IDACalcIC, libsundials_ida), Cint, (IDAMemPtr, Cint, realtype), ida_mem, icopt, tout1)
end

function IDACalcIC(ida_mem, icopt, tout1::realtype)
    IDACalcIC(ida_mem, convert(Cint, icopt), tout1)
end


function IDASetNonlinConvCoefIC(ida_mem, epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, epiccon)
end

function IDASetMaxNumStepsIC(ida_mem, maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxnh)
end

function IDASetMaxNumStepsIC(ida_mem, maxnh)
    IDASetMaxNumStepsIC(ida_mem, convert(Cint, maxnh))
end

function IDASetMaxNumJacsIC(ida_mem, maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxnj)
end

function IDASetMaxNumJacsIC(ida_mem, maxnj)
    IDASetMaxNumJacsIC(ida_mem, convert(Cint, maxnj))
end

function IDASetMaxNumItersIC(ida_mem, maxnit::Cint)
    ccall((:IDASetMaxNumItersIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxnit)
end

function IDASetMaxNumItersIC(ida_mem, maxnit)
    IDASetMaxNumItersIC(ida_mem, convert(Cint, maxnit))
end

function IDASetLineSearchOffIC(ida_mem, lsoff::Cint)
    ccall((:IDASetLineSearchOffIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, lsoff)
end

function IDASetLineSearchOffIC(ida_mem, lsoff)
    IDASetLineSearchOffIC(ida_mem, convert(Cint, lsoff))
end

function IDASetStepToleranceIC(ida_mem, steptol::realtype)
    ccall((:IDASetStepToleranceIC, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, steptol)
end

function IDASetMaxBacksIC(ida_mem, maxbacks::Cint)
    ccall((:IDASetMaxBacksIC, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxbacks)
end

function IDASetMaxBacksIC(ida_mem, maxbacks)
    IDASetMaxBacksIC(ida_mem, convert(Cint, maxbacks))
end

function IDASetErrHandlerFn(ida_mem, ehfun, eh_data)
    ccall((:IDASetErrHandlerFn, libsundials_ida), Cint, (IDAMemPtr, IDAErrHandlerFn, Ptr{Cvoid}), ida_mem, ehfun, eh_data)
end

function IDASetErrFile(ida_mem, errfp)
    ccall((:IDASetErrFile, libsundials_ida), Cint, (IDAMemPtr, Ptr{FILE}), ida_mem, errfp)
end

function IDASetUserData(ida_mem, user_data)
    ccall((:IDASetUserData, libsundials_ida), Cint, (IDAMemPtr, Any), ida_mem, user_data)
end

function IDASetMaxOrd(ida_mem, maxord::Cint)
    ccall((:IDASetMaxOrd, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxord)
end

function IDASetMaxOrd(ida_mem, maxord)
    IDASetMaxOrd(ida_mem, convert(Cint, maxord))
end

function IDASetMaxNumSteps(ida_mem, mxsteps::Clong)
    ccall((:IDASetMaxNumSteps, libsundials_ida), Cint, (IDAMemPtr, Clong), ida_mem, mxsteps)
end

function IDASetMaxNumSteps(ida_mem, mxsteps)
    IDASetMaxNumSteps(ida_mem, convert(Cint, mxsteps))
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

function IDASetMaxErrTestFails(ida_mem, maxnef::Cint)
    ccall((:IDASetMaxErrTestFails, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxnef)
end

function IDASetMaxErrTestFails(ida_mem, maxnef)
    IDASetMaxErrTestFails(ida_mem, convert(Cint, maxnef))
end

function IDASetMaxNonlinIters(ida_mem, maxcor::Cint)
    ccall((:IDASetMaxNonlinIters, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxcor)
end

function IDASetMaxNonlinIters(ida_mem, maxcor)
    IDASetMaxNonlinIters(ida_mem, convert(Cint,maxcor))
end

function IDASetMaxConvFails(ida_mem, maxncf::Cint)
    ccall((:IDASetMaxConvFails, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, maxncf)
end

function IDASetMaxConvFails(ida_mem, maxncf)
    IDASetMaxConvFails(ida_mem, convert(Cint, maxncf))
end

function IDASetSuppressAlg(ida_mem, suppressalg::Cint)
    ccall((:IDASetSuppressAlg, libsundials_ida), Cint, (IDAMemPtr, Cint), ida_mem, suppressalg)
end

function IDASetSuppressAlg(ida_mem, suppressalg)
    IDASetSuppressAlg(ida_mem, convert(Cint, suppressalg))
end

function IDASetId(ida_mem, id::N_Vector)
    ccall((:IDASetId, libsundials_ida), Cint, (IDAMemPtr, N_Vector), ida_mem, id)
end

function IDASetId(ida_mem, id)
    __id = convert(NVector, id)
    IDASetId(ida_mem, convert(N_Vector, __id))
end

function IDASetConstraints(ida_mem, constraints::N_Vector)
    ccall((:IDASetConstraints, libsundials_ida), Cint, (IDAMemPtr, N_Vector), ida_mem, constraints)
end

function IDASetConstraints(ida_mem, constraints)
    __constraints = convert(NVector, constraints)
    IDASetConstraints(ida_mem, convert(N_Vector, constraints))
end

function IDASetNonlinearSolver(ida_mem, NLS::SUNNonlinearSolver)
    ccall((:IDASetNonlinearSolver, libsundials_ida), Cint, (IDAMemPtr, SUNNonlinearSolver), ida_mem, NLS)
end

function IDARootInit(ida_mem, nrtfn::Cint, g::IDARootFn)
    ccall((:IDARootInit, libsundials_ida), Cint, (IDAMemPtr, Cint, IDARootFn), ida_mem, nrtfn, g)
end

function IDARootInit(ida_mem, nrtfn, g::IDARootFn)
    IDARootInit(ida_mem, convert(Cint, nrtfn), g)
end

function IDASetRootDirection(ida_mem, rootdir)
    ccall((:IDASetRootDirection, libsundials_ida), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem)
    ccall((:IDASetNoInactiveRootWarn, libsundials_ida), Cint, (IDAMemPtr,), ida_mem)
end

function IDASolve(ida_mem, tout::realtype, tret, yret::N_Vector, ypret::N_Vector, itask::Cint)
    ccall((:IDASolve, libsundials_ida), Cint, (IDAMemPtr, realtype, Ptr{realtype}, N_Vector, N_Vector, Cint), ida_mem, tout, tret, yret, ypret, itask)
end

function IDASolve(ida_mem, tout::realtype, tret, yret, ypret, itask)
    __yret = convert(NVector, yret)
    __ypret = convert(NVector, ypret)
    IDASolve(ida_mem, tout::realtype, tret, convert(N_Vector, __yret), convert(N_Vector, __ypret), convert(Cint, itask))
end

function IDAComputeY(ida_mem, ycor::N_Vector, y::N_Vector)
    ccall((:IDAComputeY, libsundials_ida), Cint, (IDAMemPtr, N_Vector, N_Vector), ida_mem, ycor, y)
end

function IDAComputeY(ida_mem, ycor, y)
    __ycor = convert(NVector, ycor)
    __y = convert(NVector, y)
    IDAComputeY(ida_mem, convert(N_Vector, __ycor), convert(N_Vector, __y))
end

function IDAComputeYp(ida_mem, ycor::N_Vector, yp::N_Vector)
    ccall((:IDAComputeYp, libsundials_ida), Cint, (IDAMemPtr, N_Vector, N_Vector), ida_mem, ycor, yp)
end

function IDAComputeYp(ida_mem, ycor, yp)
    __ycor = convert(NVector, ycor)
    __yp = convert(NVector, yp)
    IDAComputeY(ida_mem, convert(N_Vector, __ycor), convert(N_Vector, __y))
end

function IDAGetDky(ida_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:IDAGetDky, libsundials_idas), Cint, (IDAMemPtr, realtype, Cint, N_Vector), ida_mem, t, k, dky)
end

function IDAGetDky(ida_mem, t, k, dky)
    __dky = convert(NVector, dky)
    IDAGetDky(ida_mem, t, convert(Cint, k), convert(N_Vector, __dky))
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

function IDAGetConsistentIC(ida_mem, yy0_mod::N_Vector, yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC, libsundials_idas), Cint, (IDAMemPtr, N_Vector, N_Vector), ida_mem, yy0_mod, yp0_mod)
end

function IDAGetConsistentIC(ida_mem, yy0_mod, yp0_mod)
    __yy0_mod = convert(NVector, yy0_mod)
    __yp0_mod = convert(NVector, yp0_mod)
    IDAGetConsistentIC(ida_mem, convert(N_Vector, __yy0_mod), convert(N_Vector, __yp0_mod))
end

function IDAGetLastOrder(ida_mem, klast)
    ccall((:IDAGetLastOrder, libsundials_ida), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, klast)
end

function IDAGetCurrentOrder(ida_mem, kcur)
    ccall((:IDAGetCurrentOrder, libsundials_ida), Cint, (IDAMemPtr, Ptr{Cint}), ida_mem, kcur)
end

function IDAGetCurrentCj(ida_mem, cj)
    ccall((:IDAGetCurrentCj, libsundials_ida), Cint, (IDAMemPtr, Ptr{realtype}), ida_mem, cj)
end

function IDAGetCurrentY(ida_mem, ycur)
    ccall((:IDAGetCurrentY, libsundials_ida), Cint, (IDAMemPtr, Ptr{N_Vector}), ida_mem, ycur)
end

function IDAGetCurrentYp(ida_mem, ypcur)
    ccall((:IDAGetCurrentYp, libsundials_ida), Cint, (IDAMemPtr, Ptr{N_Vector}), ida_mem, ypcur)
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

function IDAGetErrWeights(ida_mem, eweight::N_Vector)
    ccall((:IDAGetErrWeights, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, eweight)
end

function IDAGetErrWeights(ida_mem, eweight)
    __eweight = convert(NVector, eweight)
    IDAGetErrWeights(ida_mem, convert(N_Vector, __eweight))
end

function IDAGetEstLocalErrors(ida_mem, ele::N_Vector)
    ccall((:IDAGetEstLocalErrors, libsundials_idas), Cint, (IDAMemPtr, N_Vector), ida_mem, ele)
end

function IDAGetEstLocalErrors(ida_mem, ele)
    __ele = convert(NVector, ele)
    IDAGetEstLocalErrors(ida_mem, convert(N_Vector, __ele))
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

function IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName, libsundials_ida), Cstring, (Clong,), flag)
end

function IDAGetReturnFlagName(flag)
    IDAGetReturnFlagName(convert(Clong, flag))
end

function IDAFree(ida_mem)
    ccall((:IDAFree, libsundials_ida), Cvoid, (Ref{IDAMemPtr},), ida_mem)
end
# Julia wrapper for header: ida_bbdpre.h
# Automatically generated using Clang.jl


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
# Julia wrapper for header: ida_direct.h
# Automatically generated using Clang.jl


function IDADlsSetLinearSolver(ida_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:IDADlsSetLinearSolver, libsundials_idas), Cint, (IDAMemPtr, SUNLinearSolver, SUNMatrix), ida_mem, LS, A)
end

function IDADlsSetJacFn(ida_mem, jac::IDADlsJacFn)
    ccall((:IDADlsSetJacFn, libsundials_idas), Cint, (IDAMemPtr, IDADlsJacFn), ida_mem, jac)
end

function IDADlsGetWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDADlsGetWorkSpace, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem, njevals)
    ccall((:IDADlsGetNumJacEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njevals)
end

function IDADlsGetNumResEvals(ida_mem, nrevalsLS)
    ccall((:IDADlsGetNumResEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevalsLS)
end

function IDADlsGetLastFlag(ida_mem, flag)
    ccall((:IDADlsGetLastFlag, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, flag)
end

function IDADlsGetReturnFlagName(flag)
    ccall((:IDADlsGetReturnFlagName, libsundials_ida), Cstring, (Clong,), flag)
end
# Julia wrapper for header: ida_ls.h
# Automatically generated using Clang.jl


function IDASetLinearSolver(ida_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:IDASetLinearSolver, libsundials_ida), Cint, (IDAMemPtr, SUNLinearSolver, SUNMatrix), ida_mem, LS, A)
end

function IDASetJacFn(ida_mem, jac::IDADlsJacFn)
    ccall((:IDASetJacFn, libsundials_ida), Cint, (IDAMemPtr, IDALsJacFn), ida_mem, jac)
end

function IDASetPreconditioner(ida_mem, pset::IDALsPrecSetupFn, psolve::IDALsPrecSolveFn)
    ccall((:IDASetPreconditioner, libsundials_ida), Cint, (IDAMemPtr, IDALsPrecSetupFn, IDALsPrecSolveFn), ida_mem, pset, psolve)
end

function IDASetJacTimes(ida_mem, jtsetup::IDALsJacTimesSetupFn, jtimes::IDALsJacTimesVecFn)
    ccall((:IDASetJacTimes, libsundials_ida), Cint, (IDAMemPtr, IDALsJacTimesSetupFn, IDALsJacTimesVecFn), ida_mem, jtsetup, jtimes)
end

function IDASetEpsLin(ida_mem, eplifac::realtype)
    ccall((:IDASetEpsLin, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, eplifac)
end

function IDASetIncrementFactor(ida_mem, dqincfac::realtype)
    ccall((:IDASetIncrementFactor, libsundials_ida), Cint, (IDAMemPtr, realtype), ida_mem, dqincfac)
end

function IDAGetLinWorkSpace(ida_mem, lenrwLS, leniwLS)
    ccall((:IDAGetLinWorkSpace, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}, Ptr{Clong}), ida_mem, lenrwLS, leniwLS)
end

function IDAGetNumJacEvals(ida_mem, njevals)
    ccall((:IDAGetNumJacEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njevals)
end

function IDAGetNumPrecEvals(ida_mem, npevals)
    ccall((:IDAGetNumPrecEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npevals)
end

function IDAGetNumPrecSolves(ida_mem, npsolves)
    ccall((:IDAGetNumPrecSolves, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, npsolves)
end

function IDAGetNumLinIters(ida_mem, nliters)
    ccall((:IDAGetNumLinIters, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nliters)
end

function IDAGetNumLinConvFails(ida_mem, nlcfails)
    ccall((:IDAGetNumLinConvFails, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nlcfails)
end

function IDAGetNumJTSetupEvals(ida_mem, njtsetups)
    ccall((:IDAGetNumJTSetupEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njtsetups)
end

function IDAGetNumJtimesEvals(ida_mem, njvevals)
    ccall((:IDAGetNumJtimesEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njvevals)
end

function IDAGetNumLinResEvals(ida_mem, nrevalsLS)
    ccall((:IDAGetNumLinResEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, nrevalsLS)
end

function IDAGetLastLinFlag(ida_mem, flag)
    ccall((:IDAGetLastLinFlag, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, flag)
end

function IDAGetLinReturnFlagName(flag::Clong)
    ccall((:IDAGetLinReturnFlagName, libsundials_ida), Cstring, (Clong,), flag)
end

function IDAGetLinReturnFlagName(flag)
    IDAGetLinReturnFlagName(convert(Clong,flag))
end

# Julia wrapper for header: ida_spils.h
# Automatically generated using Clang.jl


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

function IDASpilsGetNumJTSetupEvals(ida_mem, njtsetups)
    ccall((:IDASpilsGetNumJTSetupEvals, libsundials_ida), Cint, (IDAMemPtr, Ptr{Clong}), ida_mem, njtsetups)
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

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName, libsundials_ida), Cstring, (Clong,), flag)
end

function IDASpilsGetReturnFlagName(flag)
    IDASpilsGetReturnFlagName(convert(Clong, flag))
end
