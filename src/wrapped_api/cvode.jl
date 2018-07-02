# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/cvode/cvode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVodeCreate(lmm::Cint, iter::Cint)
    ccall((:CVodeCreate, libsundials_cvode), CVODEMemPtr, (Cint, Cint), lmm, iter)
end

function CVodeCreate(lmm, iter)
    __CVodeCreate(convert(Cint, lmm), convert(Cint, iter))
end

function CVodeSetErrHandlerFn(cvode_mem, ehfun::CVErrHandlerFn, eh_data)
    ccall((:CVodeSetErrHandlerFn, libsundials_cvode), Cint, (CVODEMemPtr, CVErrHandlerFn, Ptr{Cvoid}), cvode_mem, ehfun, eh_data)
end

function CVodeSetErrFile(cvode_mem, errfp)
    ccall((:CVodeSetErrFile, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{FILE}), cvode_mem, errfp)
end

function CVodeSetUserData(cvode_mem, user_data)
    ccall((:CVodeSetUserData, libsundials_cvode), Cint, (CVODEMemPtr, Any), cvode_mem, user_data)
end

function __CVodeSetMaxOrd(cvode_mem, maxord::Cint)
    ccall((:CVodeSetMaxOrd, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, maxord)
end

function CVodeSetMaxOrd(cvode_mem, maxord)
    __CVodeSetMaxOrd(cvode_mem, convert(Cint, maxord))
end

function __CVodeSetMaxNumSteps(cvode_mem, mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps, libsundials_cvode), Cint, (CVODEMemPtr, Clong), cvode_mem, mxsteps)
end

function CVodeSetMaxNumSteps(cvode_mem, mxsteps)
    __CVodeSetMaxNumSteps(cvode_mem, convert(Clong, mxsteps))
end

function __CVodeSetMaxHnilWarns(cvode_mem, mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, mxhnil)
end

function CVodeSetMaxHnilWarns(cvode_mem, mxhnil)
    __CVodeSetMaxHnilWarns(cvode_mem, convert(Cint, mxhnil))
end

function __CVodeSetStabLimDet(cvode_mem, stldet::Cint)
    ccall((:CVodeSetStabLimDet, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, stldet)
end

function CVodeSetStabLimDet(cvode_mem, stldet)
    __CVodeSetStabLimDet(cvode_mem, convert(Cint, stldet))
end

function CVodeSetInitStep(cvode_mem, hin::realtype)
    ccall((:CVodeSetInitStep, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, hin)
end

function CVodeSetMinStep(cvode_mem, hmin::realtype)
    ccall((:CVodeSetMinStep, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, hmin)
end

function CVodeSetMaxStep(cvode_mem, hmax::realtype)
    ccall((:CVodeSetMaxStep, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, hmax)
end

function CVodeSetStopTime(cvode_mem, tstop::realtype)
    ccall((:CVodeSetStopTime, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, tstop)
end

function __CVodeSetMaxErrTestFails(cvode_mem, maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, maxnef)
end

function CVodeSetMaxErrTestFails(cvode_mem, maxnef)
    __CVodeSetMaxErrTestFails(cvode_mem, convert(Cint, maxnef))
end

function __CVodeSetMaxNonlinIters(cvode_mem, maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, maxcor)
end

function CVodeSetMaxNonlinIters(cvode_mem, maxcor)
    __CVodeSetMaxNonlinIters(cvode_mem, convert(Cint, maxcor))
end

function __CVodeSetMaxConvFails(cvode_mem, maxncf::Cint)
    ccall((:CVodeSetMaxConvFails, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, maxncf)
end

function CVodeSetMaxConvFails(cvode_mem, maxncf)
    __CVodeSetMaxConvFails(cvode_mem, convert(Cint, maxncf))
end

function CVodeSetNonlinConvCoef(cvode_mem, nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, nlscoef)
end

function __CVodeSetIterType(cvode_mem, iter::Cint)
    ccall((:CVodeSetIterType, libsundials_cvode), Cint, (CVODEMemPtr, Cint), cvode_mem, iter)
end

function CVodeSetIterType(cvode_mem, iter)
    __CVodeSetIterType(cvode_mem, convert(Cint, iter))
end

function CVodeSetRootDirection(cvode_mem, rootdir)
    ccall((:CVodeSetRootDirection, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem)
    ccall((:CVodeSetNoInactiveRootWarn, libsundials_cvode), Cint, (CVODEMemPtr,), cvode_mem)
end

function __CVodeInit(cvode_mem, f::CVRhsFn, t0::realtype, y0::N_Vector)
    ccall((:CVodeInit, libsundials_cvode), Cint, (CVODEMemPtr, CVRhsFn, realtype, N_Vector), cvode_mem, f, t0, y0)
end

function CVodeInit(cvode_mem, f, t0, y0)
    __y0 = convert(NVector, y0)
    __CVodeInit(cvode_mem, CVRhsFn_wrapper(f), t0, convert(N_Vector, __y0))
end

function __CVodeReInit(cvode_mem, t0::realtype, y0::N_Vector)
    ccall((:CVodeReInit, libsundials_cvode), Cint, (CVODEMemPtr, realtype, N_Vector), cvode_mem, t0, y0)
end

function CVodeReInit(cvode_mem, t0, y0)
    __y0 = convert(NVector, y0)
    __CVodeReInit(cvode_mem, t0, convert(N_Vector, __y0))
end

function CVodeSStolerances(cvode_mem, reltol::realtype, abstol::realtype)
    ccall((:CVodeSStolerances, libsundials_cvode), Cint, (CVODEMemPtr, realtype, realtype), cvode_mem, reltol, abstol)
end

function __CVodeSVtolerances(cvode_mem, reltol::realtype, abstol::N_Vector)
    ccall((:CVodeSVtolerances, libsundials_cvode), Cint, (CVODEMemPtr, realtype, N_Vector), cvode_mem, reltol, abstol)
end

function CVodeSVtolerances(cvode_mem, reltol, abstol)
    __abstol = convert(NVector, abstol)
    __CVodeSVtolerances(cvode_mem, reltol, convert(N_Vector, __abstol))
end

function CVodeWFtolerances(cvode_mem, efun::CVEwtFn)
    ccall((:CVodeWFtolerances, libsundials_cvode), Cint, (CVODEMemPtr, CVEwtFn), cvode_mem, efun)
end

function __CVodeRootInit(cvode_mem, nrtfn::Cint, g::CVRootFn)
    ccall((:CVodeRootInit, libsundials_cvode), Cint, (CVODEMemPtr, Cint, CVRootFn), cvode_mem, nrtfn, g)
end

function CVodeRootInit(cvode_mem, nrtfn, g)
    __CVodeRootInit(cvode_mem, convert(Cint, nrtfn), CVRootFn_wrapper(g))
end

function __CVode(cvode_mem, tout::realtype, yout::N_Vector, tret, itask::Cint)
    ccall((:CVode, libsundials_cvode), Cint, (CVODEMemPtr, realtype, N_Vector, Ptr{realtype}, Cint), cvode_mem, tout, yout, tret, itask)
end

function CVode(cvode_mem, tout, yout, tret, itask)
    __yout = convert(NVector, yout)
    __CVode(cvode_mem, tout, convert(N_Vector, __yout), tret, convert(Cint, itask))
end

function __CVodeGetDky(cvode_mem, t::realtype, k::Cint, dky::N_Vector)
    ccall((:CVodeGetDky, libsundials_cvode), Cint, (CVODEMemPtr, realtype, Cint, N_Vector), cvode_mem, t, k, dky)
end

function CVodeGetDky(cvode_mem, t, k, dky)
    __dky = convert(NVector, dky)
    __CVodeGetDky(cvode_mem, t, convert(Cint, k), convert(N_Vector, __dky))
end

function CVodeGetWorkSpace(cvode_mem, lenrw, leniw)
    ccall((:CVodeGetWorkSpace, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrw, leniw)
end

function CVodeGetNumSteps(cvode_mem, nsteps)
    ccall((:CVodeGetNumSteps, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem, nfevals)
    ccall((:CVodeGetNumRhsEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem, nlinsetups)
    ccall((:CVodeGetNumLinSolvSetups, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem, netfails)
    ccall((:CVodeGetNumErrTestFails, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, netfails)
end

function CVodeGetLastOrder(cvode_mem, qlast)
    ccall((:CVodeGetLastOrder, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, qlast)
end

function CVodeGetCurrentOrder(cvode_mem, qcur)
    ccall((:CVodeGetCurrentOrder, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem, nslred)
    ccall((:CVodeGetNumStabLimOrderReds, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nslred)
end

function CVodeGetActualInitStep(cvode_mem, hinused)
    ccall((:CVodeGetActualInitStep, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, hinused)
end

function CVodeGetLastStep(cvode_mem, hlast)
    ccall((:CVodeGetLastStep, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, hlast)
end

function CVodeGetCurrentStep(cvode_mem, hcur)
    ccall((:CVodeGetCurrentStep, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, hcur)
end

function CVodeGetCurrentTime(cvode_mem, tcur)
    ccall((:CVodeGetCurrentTime, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, tcur)
end

function CVodeGetTolScaleFactor(cvode_mem, tolsfac)
    ccall((:CVodeGetTolScaleFactor, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{realtype}), cvode_mem, tolsfac)
end

function __CVodeGetErrWeights(cvode_mem, eweight::N_Vector)
    ccall((:CVodeGetErrWeights, libsundials_cvode), Cint, (CVODEMemPtr, N_Vector), cvode_mem, eweight)
end

function CVodeGetErrWeights(cvode_mem, eweight)
    __eweight = convert(NVector, eweight)
    __CVodeGetErrWeights(cvode_mem, convert(N_Vector, __eweight))
end

function __CVodeGetEstLocalErrors(cvode_mem, ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors, libsundials_cvode), Cint, (CVODEMemPtr, N_Vector), cvode_mem, ele)
end

function CVodeGetEstLocalErrors(cvode_mem, ele)
    __ele = convert(NVector, ele)
    __CVodeGetEstLocalErrors(cvode_mem, convert(N_Vector, __ele))
end

function CVodeGetNumGEvals(cvode_mem, ngevals)
    ccall((:CVodeGetNumGEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, ngevals)
end

function CVodeGetRootInfo(cvode_mem, rootsfound)
    ccall((:CVodeGetRootInfo, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Cint}), cvode_mem, rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem, nsteps, nfevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
    ccall((:CVodeGetIntegratorStats, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Clong}, Ptr{Cint}, Ptr{Cint}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}, Ptr{realtype}), cvode_mem, nsteps, nfevals, nlinsetups, netfails, qlast, qcur, hinused, hlast, hcur, tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem, nniters)
    ccall((:CVodeGetNumNonlinSolvIters, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem, nncfails)
    ccall((:CVodeGetNumNonlinSolvConvFails, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem, nniters, nncfails)
    ccall((:CVodeGetNonlinSolvStats, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, nniters, nncfails)
end

function __CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName, libsundials_cvode), Cstring, (Clong,), flag)
end

function CVodeGetReturnFlagName(flag)
    __CVodeGetReturnFlagName(convert(Clong, flag))
end

function CVodeFree(cvode_mem)
    ccall((:CVodeFree, libsundials_cvode), Cvoid, (Ref{CVODEMemPtr},), cvode_mem)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/cvode/cvode_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVBandPrecInit(cvode_mem, N::sunindextype, mu::sunindextype, ml::sunindextype)
    ccall((:CVBandPrecInit, libsundials_cvode), Cint, (CVODEMemPtr, sunindextype, sunindextype, sunindextype), cvode_mem, N, mu, ml)
end

function CVBandPrecGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVBandPrecGetWorkSpace, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVBandPrecGetNumRhsEvals(cvode_mem, nfevalsBP)
    ccall((:CVBandPrecGetNumRhsEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsBP)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/cvode/cvode_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVBBDPrecInit(cvode_mem, Nlocal::sunindextype, mudq::sunindextype, mldq::sunindextype, mukeep::sunindextype, mlkeep::sunindextype, dqrely::realtype, gloc::CVLocalFn, cfn::CVCommFn)
    ccall((:CVBBDPrecInit, libsundials_cvode), Cint, (CVODEMemPtr, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, CVLocalFn, CVCommFn), cvode_mem, Nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn)
end

function CVBBDPrecReInit(cvode_mem, mudq::sunindextype, mldq::sunindextype, dqrely::realtype)
    ccall((:CVBBDPrecReInit, libsundials_cvode), Cint, (CVODEMemPtr, sunindextype, sunindextype, realtype), cvode_mem, mudq, mldq, dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVBBDPrecGetWorkSpace, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem, ngevalsBBDP)
    ccall((:CVBBDPrecGetNumGfnEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, ngevalsBBDP)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/cvode/cvode_diag.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDiag(cvode_mem)
    ccall((:CVDiag, libsundials_cvode), Cint, (CVODEMemPtr,), cvode_mem)
end

function CVDiagGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVDiagGetWorkSpace, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVDiagGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVDiagGetNumRhsEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVDiagGetLastFlag(cvode_mem, flag)
    ccall((:CVDiagGetLastFlag, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function __CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName, libsundials_cvode), Cstring, (Clong,), flag)
end

function CVDiagGetReturnFlagName(flag)
    __CVDiagGetReturnFlagName(convert(Clong, flag))
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/cvode/cvode_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDlsSetLinearSolver(cvode_mem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:CVDlsSetLinearSolver, libsundials_cvode), Cint, (CVODEMemPtr, SUNLinearSolver, SUNMatrix), cvode_mem, LS, A)
end

function CVDlsSetJacFn(cvode_mem, jac::CVDlsJacFn)
    ccall((:CVDlsSetJacFn, libsundials_cvode), Cint, (CVODEMemPtr, CVDlsJacFn), cvode_mem, jac)
end

function CVDlsGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVDlsGetWorkSpace, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem, njevals)
    ccall((:CVDlsGetNumJacEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem, flag)
    ccall((:CVDlsGetLastFlag, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function __CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName, libsundials_cvode), Cstring, (Clong,), flag)
end

function CVDlsGetReturnFlagName(flag)
    __CVDlsGetReturnFlagName(convert(Clong, flag))
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/cvode/cvode_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/cvode/cvode_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVSpilsSetLinearSolver(cvode_mem, LS::SUNLinearSolver)
    ccall((:CVSpilsSetLinearSolver, libsundials_cvode), Cint, (CVODEMemPtr, SUNLinearSolver), cvode_mem, LS)
end

function CVSpilsSetEpsLin(cvode_mem, eplifac::realtype)
    ccall((:CVSpilsSetEpsLin, libsundials_cvode), Cint, (CVODEMemPtr, realtype), cvode_mem, eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem, pset::CVSpilsPrecSetupFn, psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner, libsundials_cvode), Cint, (CVODEMemPtr, CVSpilsPrecSetupFn, CVSpilsPrecSolveFn), cvode_mem, pset, psolve)
end

function CVSpilsSetJacTimes(cvode_mem, jtsetup::CVSpilsJacTimesSetupFn, jtimes::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimes, libsundials_cvode), Cint, (CVODEMemPtr, CVSpilsJacTimesSetupFn, CVSpilsJacTimesVecFn), cvode_mem, jtsetup, jtimes)
end

function CVSpilsGetWorkSpace(cvode_mem, lenrwLS, leniwLS)
    ccall((:CVSpilsGetWorkSpace, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}, Ptr{Clong}), cvode_mem, lenrwLS, leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem, npevals)
    ccall((:CVSpilsGetNumPrecEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem, npsolves)
    ccall((:CVSpilsGetNumPrecSolves, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem, nliters)
    ccall((:CVSpilsGetNumLinIters, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nliters)
end

function CVSpilsGetNumConvFails(cvode_mem, nlcfails)
    ccall((:CVSpilsGetNumConvFails, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nlcfails)
end

function CVSpilsGetNumJTSetupEvals(cvode_mem, njtsetups)
    ccall((:CVSpilsGetNumJTSetupEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njtsetups)
end

function CVSpilsGetNumJtimesEvals(cvode_mem, njvevals)
    ccall((:CVSpilsGetNumJtimesEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem, nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem, flag)
    ccall((:CVSpilsGetLastFlag, libsundials_cvode), Cint, (CVODEMemPtr, Ptr{Clong}), cvode_mem, flag)
end

function __CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName, libsundials_cvode), Cstring, (Clong,), flag)
end

function CVSpilsGetReturnFlagName(flag)
    __CVSpilsGetReturnFlagName(convert(Clong, flag))
end
