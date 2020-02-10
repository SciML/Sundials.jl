# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/kinsol/kinsol.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINCreate()
    ccall((:KINCreate, libsundials_kinsol), KINMemPtr, ())
end

function KINSetErrHandlerFn(kinmem, ehfun::KINErrHandlerFn, eh_data)
    ccall((:KINSetErrHandlerFn, libsundials_kinsol), Cint, (KINMemPtr, KINErrHandlerFn, Ptr{Cvoid}), kinmem, ehfun, eh_data)
end

function KINSetErrFile(kinmem, errfp)
    ccall((:KINSetErrFile, libsundials_kinsol), Cint, (KINMemPtr, Ptr{FILE}), kinmem, errfp)
end

function KINSetInfoHandlerFn(kinmem, ihfun::KINInfoHandlerFn, ih_data)
    ccall((:KINSetInfoHandlerFn, libsundials_kinsol), Cint, (KINMemPtr, KINInfoHandlerFn, Ptr{Cvoid}), kinmem, ihfun, ih_data)
end

function KINSetInfoFile(kinmem, infofp)
    ccall((:KINSetInfoFile, libsundials_kinsol), Cint, (KINMemPtr, Ptr{FILE}), kinmem, infofp)
end

function KINSetUserData(kinmem, user_data)
    ccall((:KINSetUserData, libsundials_kinsol), Cint, (KINMemPtr, Any), kinmem, user_data)
end

function __KINSetPrintLevel(kinmemm, printfl::Cint)
    ccall((:KINSetPrintLevel, libsundials_kinsol), Cint, (KINMemPtr, Cint), kinmemm, printfl)
end

function KINSetPrintLevel(kinmemm, printfl)
    __KINSetPrintLevel(kinmemm, convert(Cint, printfl))
end

function __KINSetMAA(kinmem, maa::Clong)
    ccall((:KINSetMAA, libsundials_kinsol), Cint, (KINMemPtr, Clong), kinmem, maa)
end

function KINSetMAA(kinmem, maa)
    __KINSetMAA(kinmem, convert(Clong, maa))
end

function __KINSetNumMaxIters(kinmem, mxiter::Clong)
    ccall((:KINSetNumMaxIters, libsundials_kinsol), Cint, (KINMemPtr, Clong), kinmem, mxiter)
end

function KINSetNumMaxIters(kinmem, mxiter)
    __KINSetNumMaxIters(kinmem, convert(Clong, mxiter))
end

function __KINSetNoInitSetup(kinmem, noInitSetup::Cint)
    ccall((:KINSetNoInitSetup, libsundials_kinsol), Cint, (KINMemPtr, Cint), kinmem, noInitSetup)
end

function KINSetNoInitSetup(kinmem, noInitSetup)
    __KINSetNoInitSetup(kinmem, convert(Cint, noInitSetup))
end

function __KINSetNoResMon(kinmem, noNNIResMon::Cint)
    ccall((:KINSetNoResMon, libsundials_kinsol), Cint, (KINMemPtr, Cint), kinmem, noNNIResMon)
end

function KINSetNoResMon(kinmem, noNNIResMon)
    __KINSetNoResMon(kinmem, convert(Cint, noNNIResMon))
end

function __KINSetMaxSetupCalls(kinmem, msbset::Clong)
    ccall((:KINSetMaxSetupCalls, libsundials_kinsol), Cint, (KINMemPtr, Clong), kinmem, msbset)
end

function KINSetMaxSetupCalls(kinmem, msbset)
    __KINSetMaxSetupCalls(kinmem, convert(Clong, msbset))
end

function __KINSetMaxSubSetupCalls(kinmem, msbsetsub::Clong)
    ccall((:KINSetMaxSubSetupCalls, libsundials_kinsol), Cint, (KINMemPtr, Clong), kinmem, msbsetsub)
end

function KINSetMaxSubSetupCalls(kinmem, msbsetsub)
    __KINSetMaxSubSetupCalls(kinmem, convert(Clong, msbsetsub))
end

function __KINSetEtaForm(kinmem, etachoice::Cint)
    ccall((:KINSetEtaForm, libsundials_kinsol), Cint, (KINMemPtr, Cint), kinmem, etachoice)
end

function KINSetEtaForm(kinmem, etachoice)
    __KINSetEtaForm(kinmem, convert(Cint, etachoice))
end

function KINSetEtaConstValue(kinmem, eta::realtype)
    ccall((:KINSetEtaConstValue, libsundials_kinsol), Cint, (KINMemPtr, realtype), kinmem, eta)
end

function KINSetEtaParams(kinmem, egamma::realtype, ealpha::realtype)
    ccall((:KINSetEtaParams, libsundials_kinsol), Cint, (KINMemPtr, realtype, realtype), kinmem, egamma, ealpha)
end

function KINSetResMonParams(kinmem, omegamin::realtype, omegamax::realtype)
    ccall((:KINSetResMonParams, libsundials_kinsol), Cint, (KINMemPtr, realtype, realtype), kinmem, omegamin, omegamax)
end

function KINSetResMonConstValue(kinmem, omegaconst::realtype)
    ccall((:KINSetResMonConstValue, libsundials_kinsol), Cint, (KINMemPtr, realtype), kinmem, omegaconst)
end

function __KINSetNoMinEps(kinmem, noMinEps::Cint)
    ccall((:KINSetNoMinEps, libsundials_kinsol), Cint, (KINMemPtr, Cint), kinmem, noMinEps)
end

function KINSetNoMinEps(kinmem, noMinEps)
    __KINSetNoMinEps(kinmem, convert(Cint, noMinEps))
end

function KINSetMaxNewtonStep(kinmem, mxnewtstep::realtype)
    ccall((:KINSetMaxNewtonStep, libsundials_kinsol), Cint, (KINMemPtr, realtype), kinmem, mxnewtstep)
end

function __KINSetMaxBetaFails(kinmem, mxnbcf::Clong)
    ccall((:KINSetMaxBetaFails, libsundials_kinsol), Cint, (KINMemPtr, Clong), kinmem, mxnbcf)
end

function KINSetMaxBetaFails(kinmem, mxnbcf)
    __KINSetMaxBetaFails(kinmem, convert(Clong, mxnbcf))
end

function KINSetRelErrFunc(kinmem, relfunc::realtype)
    ccall((:KINSetRelErrFunc, libsundials_kinsol), Cint, (KINMemPtr, realtype), kinmem, relfunc)
end

function KINSetFuncNormTol(kinmem, fnormtol::realtype)
    ccall((:KINSetFuncNormTol, libsundials_kinsol), Cint, (KINMemPtr, realtype), kinmem, fnormtol)
end

function KINSetScaledStepTol(kinmem, scsteptol::realtype)
    ccall((:KINSetScaledStepTol, libsundials_kinsol), Cint, (KINMemPtr, realtype), kinmem, scsteptol)
end

function __KINSetConstraints(kinmem, constraints::N_Vector)
    ccall((:KINSetConstraints, libsundials_kinsol), Cint, (KINMemPtr, N_Vector), kinmem, constraints)
end

function KINSetConstraints(kinmem, constraints)
    __constraints = convert(NVector, constraints)
    __KINSetConstraints(kinmem, convert(N_Vector, __constraints))
end

function __KINSetSysFunc(kinmem, func::KINSysFn)
    ccall((:KINSetSysFunc, libsundials_kinsol), Cint, (KINMemPtr, KINSysFn), kinmem, func)
end

function KINSetSysFunc(kinmem, func)
    __KINSetSysFunc(kinmem, KINSysFn_wrapper(func))
end

function __KINInit(kinmem, func::KINSysFn, tmpl::N_Vector)
    ccall((:KINInit, libsundials_kinsol), Cint, (KINMemPtr, KINSysFn, N_Vector), kinmem, func, tmpl)
end

function KINInit(kinmem, func, tmpl)
    __tmpl = convert(NVector, tmpl)
    __KINInit(kinmem, KINSysFn_wrapper(func), convert(N_Vector, __tmpl))
end

function __KINSol(kinmem, uu::N_Vector, strategy::Cint, u_scale::N_Vector, f_scale::N_Vector)
    ccall((:KINSol, libsundials_kinsol), Cint, (KINMemPtr, N_Vector, Cint, N_Vector, N_Vector), kinmem, uu, strategy, u_scale, f_scale)
end

function KINSol(kinmem, uu, strategy, u_scale, f_scale)
    __uu = convert(NVector, uu)
    __u_scale = convert(NVector, u_scale)
    __f_scale = convert(NVector, f_scale)
    __KINSol(kinmem, convert(N_Vector, __uu), convert(Cint, strategy), convert(N_Vector, __u_scale), convert(N_Vector, __f_scale))
end

function KINGetWorkSpace(kinmem, lenrw, leniw)
    ccall((:KINGetWorkSpace, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}, Ptr{Clong}), kinmem, lenrw, leniw)
end

function KINGetNumNonlinSolvIters(kinmem, nniters)
    ccall((:KINGetNumNonlinSolvIters, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nniters)
end

function KINGetNumFuncEvals(kinmem, nfevals)
    ccall((:KINGetNumFuncEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nfevals)
end

function KINGetNumBetaCondFails(kinmem, nbcfails)
    ccall((:KINGetNumBetaCondFails, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nbcfails)
end

function KINGetNumBacktrackOps(kinmem, nbacktr)
    ccall((:KINGetNumBacktrackOps, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nbacktr)
end

function KINGetFuncNorm(kinmem, fnorm)
    ccall((:KINGetFuncNorm, libsundials_kinsol), Cint, (KINMemPtr, Ptr{realtype}), kinmem, fnorm)
end

function KINGetStepLength(kinmem, steplength)
    ccall((:KINGetStepLength, libsundials_kinsol), Cint, (KINMemPtr, Ptr{realtype}), kinmem, steplength)
end

function __KINGetReturnFlagName(flag::Clong)
    ccall((:KINGetReturnFlagName, libsundials_kinsol), Cstring, (Clong,), flag)
end

function KINGetReturnFlagName(flag)
    __KINGetReturnFlagName(convert(Clong, flag))
end

function KINFree(kinmem)
    ccall((:KINFree, libsundials_kinsol), Cvoid, (Ref{KINMemPtr},), kinmem)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/kinsol/kinsol_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINBBDPrecInit(kinmem, Nlocal::sunindextype, mudq::sunindextype, mldq::sunindextype, mukeep::sunindextype, mlkeep::sunindextype, dq_rel_uu::realtype, gloc::KINBBDLocalFn, gcomm::KINBBDCommFn)
    ccall((:KINBBDPrecInit, libsundials_kinsol), Cint, (KINMemPtr, sunindextype, sunindextype, sunindextype, sunindextype, sunindextype, realtype, KINBBDLocalFn, KINBBDCommFn), kinmem, Nlocal, mudq, mldq, mukeep, mlkeep, dq_rel_uu, gloc, gcomm)
end

function KINBBDPrecGetWorkSpace(kinmem, lenrwBBDP, leniwBBDP)
    ccall((:KINBBDPrecGetWorkSpace, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}, Ptr{Clong}), kinmem, lenrwBBDP, leniwBBDP)
end

function KINBBDPrecGetNumGfnEvals(kinmem, ngevalsBBDP)
    ccall((:KINBBDPrecGetNumGfnEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, ngevalsBBDP)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/kinsol/kinsol_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINDlsSetLinearSolver(kinmem, LS::SUNLinearSolver, A::SUNMatrix)
    ccall((:KINDlsSetLinearSolver, libsundials_kinsol), Cint, (KINMemPtr, SUNLinearSolver, SUNMatrix), kinmem, LS, A)
end

function KINDlsSetJacFn(kinmem, jac::KINDlsJacFn)
    ccall((:KINDlsSetJacFn, libsundials_kinsol), Cint, (KINMemPtr, KINDlsJacFn), kinmem, jac)
end

function KINDlsGetWorkSpace(kinmem, lenrw, leniw)
    ccall((:KINDlsGetWorkSpace, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}, Ptr{Clong}), kinmem, lenrw, leniw)
end

function KINDlsGetNumJacEvals(kinmem, njevals)
    ccall((:KINDlsGetNumJacEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, njevals)
end

function KINDlsGetNumFuncEvals(kinmem, nfevals)
    ccall((:KINDlsGetNumFuncEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nfevals)
end

function KINDlsGetLastFlag(kinmem, flag)
    ccall((:KINDlsGetLastFlag, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, flag)
end

function __KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName, libsundials_kinsol), Cstring, (Clong,), flag)
end

function KINDlsGetReturnFlagName(flag)
    __KINDlsGetReturnFlagName(convert(Clong, flag))
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/kinsol/kinsol_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/kinsol/kinsol_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINSpilsSetLinearSolver(kinmem, LS::SUNLinearSolver)
    ccall((:KINSpilsSetLinearSolver, libsundials_kinsol), Cint, (KINMemPtr, SUNLinearSolver), kinmem, LS)
end

function KINSpilsSetPreconditioner(kinmem, psetup::KINSpilsPrecSetupFn, psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner, libsundials_kinsol), Cint, (KINMemPtr, KINSpilsPrecSetupFn, KINSpilsPrecSolveFn), kinmem, psetup, psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem, jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn, libsundials_kinsol), Cint, (KINMemPtr, KINSpilsJacTimesVecFn), kinmem, jtv)
end

function KINSpilsGetWorkSpace(kinmem, lenrwLS, leniwLS)
    ccall((:KINSpilsGetWorkSpace, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}, Ptr{Clong}), kinmem, lenrwLS, leniwLS)
end

function KINSpilsGetNumPrecEvals(kinmem, npevals)
    ccall((:KINSpilsGetNumPrecEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, npevals)
end

function KINSpilsGetNumPrecSolves(kinmem, npsolves)
    ccall((:KINSpilsGetNumPrecSolves, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, npsolves)
end

function KINSpilsGetNumLinIters(kinmem, nliters)
    ccall((:KINSpilsGetNumLinIters, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nliters)
end

function KINSpilsGetNumConvFails(kinmem, nlcfails)
    ccall((:KINSpilsGetNumConvFails, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem, njvevals)
    ccall((:KINSpilsGetNumJtimesEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem, nfevals)
    ccall((:KINSpilsGetNumFuncEvals, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, nfevals)
end

function KINSpilsGetLastFlag(kinmem, flag)
    ccall((:KINSpilsGetLastFlag, libsundials_kinsol), Cint, (KINMemPtr, Ptr{Clong}), kinmem, flag)
end

function __KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName, libsundials_kinsol), Cstring, (Clong,), flag)
end

function KINSpilsGetReturnFlagName(flag)
    __KINSpilsGetReturnFlagName(convert(Clong, flag))
end
