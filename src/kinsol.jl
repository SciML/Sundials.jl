# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINCreate()
    ccall((:KINCreate,libsundials_kinsol),KINMemPtr,())
end

function __KINSetErrHandlerFn(kinmem::KINMemPtr,ehfun::KINErrHandlerFn,eh_data::Ptr{Void})
    ccall((:KINSetErrHandlerFn,libsundials_kinsol),Cint,(KINMemPtr,KINErrHandlerFn,Ptr{Void}),kinmem,ehfun,eh_data)
end

KINSetErrHandlerFn(kinmem,ehfun,eh_data) = __KINSetErrHandlerFn(convert(KINMemPtr,kinmem),ehfun,pointer(eh_data))

function __KINSetErrFile(kinmem::KINMemPtr,errfp::Ptr{FILE})
    ccall((:KINSetErrFile,libsundials_kinsol),Cint,(KINMemPtr,Ptr{FILE}),kinmem,errfp)
end

KINSetErrFile(kinmem,errfp) = __KINSetErrFile(convert(KINMemPtr,kinmem),errfp)

function __KINSetInfoHandlerFn(kinmem::KINMemPtr,ihfun::KINInfoHandlerFn,ih_data::Ptr{Void})
    ccall((:KINSetInfoHandlerFn,libsundials_kinsol),Cint,(KINMemPtr,KINInfoHandlerFn,Ptr{Void}),kinmem,ihfun,ih_data)
end

KINSetInfoHandlerFn(kinmem,ihfun,ih_data) = __KINSetInfoHandlerFn(convert(KINMemPtr,kinmem),ihfun,pointer(ih_data))

function __KINSetInfoFile(kinmem::KINMemPtr,infofp::Ptr{FILE})
    ccall((:KINSetInfoFile,libsundials_kinsol),Cint,(KINMemPtr,Ptr{FILE}),kinmem,infofp)
end

KINSetInfoFile(kinmem,infofp) = __KINSetInfoFile(convert(KINMemPtr,kinmem),infofp)

function __KINSetUserData(kinmem::KINMemPtr,user_data::Any)
    ccall((:KINSetUserData,libsundials_kinsol),Cint,(KINMemPtr,Any),kinmem,user_data)
end

KINSetUserData(kinmem,user_data) = __KINSetUserData(convert(KINMemPtr,kinmem),user_data)

function __KINSetPrintLevel(kinmemm::KINMemPtr,printfl::Cint)
    ccall((:KINSetPrintLevel,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmemm,printfl)
end

KINSetPrintLevel(kinmemm,printfl) = __KINSetPrintLevel(convert(KINMemPtr,kinmemm),printfl)

function __KINSetNumMaxIters(kinmem::KINMemPtr,mxiter::Clong)
    ccall((:KINSetNumMaxIters,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,mxiter)
end

KINSetNumMaxIters(kinmem,mxiter) = __KINSetNumMaxIters(convert(KINMemPtr,kinmem),convert(Clong,mxiter))

function __KINSetNoInitSetup(kinmem::KINMemPtr,noInitSetup::Cint)
    ccall((:KINSetNoInitSetup,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,noInitSetup)
end

KINSetNoInitSetup(kinmem,noInitSetup) = __KINSetNoInitSetup(convert(KINMemPtr,kinmem),noInitSetup)

function __KINSetNoResMon(kinmem::KINMemPtr,noNNIResMon::Cint)
    ccall((:KINSetNoResMon,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,noNNIResMon)
end

KINSetNoResMon(kinmem,noNNIResMon) = __KINSetNoResMon(convert(KINMemPtr,kinmem),noNNIResMon)

function __KINSetMaxSetupCalls(kinmem::KINMemPtr,msbset::Clong)
    ccall((:KINSetMaxSetupCalls,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,msbset)
end

KINSetMaxSetupCalls(kinmem,msbset) = __KINSetMaxSetupCalls(convert(KINMemPtr,kinmem),convert(Clong,msbset))

function __KINSetMaxSubSetupCalls(kinmem::KINMemPtr,msbsetsub::Clong)
    ccall((:KINSetMaxSubSetupCalls,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,msbsetsub)
end

KINSetMaxSubSetupCalls(kinmem,msbsetsub) = __KINSetMaxSubSetupCalls(convert(KINMemPtr,kinmem),convert(Clong,msbsetsub))

function __KINSetEtaForm(kinmem::KINMemPtr,etachoice::Cint)
    ccall((:KINSetEtaForm,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,etachoice)
end

KINSetEtaForm(kinmem,etachoice) = __KINSetEtaForm(convert(KINMemPtr,kinmem),etachoice)

function __KINSetEtaConstValue(kinmem::KINMemPtr,eta::realtype)
    ccall((:KINSetEtaConstValue,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,eta)
end

KINSetEtaConstValue(kinmem,eta) = __KINSetEtaConstValue(convert(KINMemPtr,kinmem),eta)

function __KINSetEtaParams(kinmem::KINMemPtr,egamma::realtype,ealpha::realtype)
    ccall((:KINSetEtaParams,libsundials_kinsol),Cint,(KINMemPtr,realtype,realtype),kinmem,egamma,ealpha)
end

KINSetEtaParams(kinmem,egamma,ealpha) = __KINSetEtaParams(convert(KINMemPtr,kinmem),egamma,ealpha)

function __KINSetResMonParams(kinmem::KINMemPtr,omegamin::realtype,omegamax::realtype)
    ccall((:KINSetResMonParams,libsundials_kinsol),Cint,(KINMemPtr,realtype,realtype),kinmem,omegamin,omegamax)
end

KINSetResMonParams(kinmem,omegamin,omegamax) = __KINSetResMonParams(convert(KINMemPtr,kinmem),omegamin,omegamax)

function __KINSetResMonConstValue(kinmem::KINMemPtr,omegaconst::realtype)
    ccall((:KINSetResMonConstValue,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,omegaconst)
end

KINSetResMonConstValue(kinmem,omegaconst) = __KINSetResMonConstValue(convert(KINMemPtr,kinmem),omegaconst)

function __KINSetNoMinEps(kinmem::KINMemPtr,noMinEps::Cint)
    ccall((:KINSetNoMinEps,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,noMinEps)
end

KINSetNoMinEps(kinmem,noMinEps) = __KINSetNoMinEps(convert(KINMemPtr,kinmem),noMinEps)

function __KINSetMaxNewtonStep(kinmem::KINMemPtr,mxnewtstep::realtype)
    ccall((:KINSetMaxNewtonStep,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,mxnewtstep)
end

KINSetMaxNewtonStep(kinmem,mxnewtstep) = __KINSetMaxNewtonStep(convert(KINMemPtr,kinmem),mxnewtstep)

function __KINSetMaxBetaFails(kinmem::KINMemPtr,mxnbcf::Clong)
    ccall((:KINSetMaxBetaFails,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,mxnbcf)
end

KINSetMaxBetaFails(kinmem,mxnbcf) = __KINSetMaxBetaFails(convert(KINMemPtr,kinmem),convert(Clong,mxnbcf))

function __KINSetRelErrFunc(kinmem::KINMemPtr,relfunc::realtype)
    ccall((:KINSetRelErrFunc,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,relfunc)
end

KINSetRelErrFunc(kinmem,relfunc) = __KINSetRelErrFunc(convert(KINMemPtr,kinmem),relfunc)

function __KINSetFuncNormTol(kinmem::KINMemPtr,fnormtol::realtype)
    ccall((:KINSetFuncNormTol,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,fnormtol)
end

KINSetFuncNormTol(kinmem,fnormtol) = __KINSetFuncNormTol(convert(KINMemPtr,kinmem),fnormtol)

function __KINSetScaledStepTol(kinmem::KINMemPtr,scsteptol::realtype)
    ccall((:KINSetScaledStepTol,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,scsteptol)
end

KINSetScaledStepTol(kinmem,scsteptol) = __KINSetScaledStepTol(convert(KINMemPtr,kinmem),scsteptol)

function __KINSetConstraints(kinmem::KINMemPtr,constraints::N_Vector)
    ccall((:KINSetConstraints,libsundials_kinsol),Cint,(KINMemPtr,N_Vector),kinmem,constraints)
end

KINSetConstraints(kinmem,constraints) = __KINSetConstraints(convert(KINMemPtr,kinmem),convert(N_Vector,constraints))

function __KINSetSysFunc(kinmem::KINMemPtr,func::KINSysFn)
    ccall((:KINSetSysFunc,libsundials_kinsol),Cint,(KINMemPtr,KINSysFn),kinmem,func)
end

KINSetSysFunc(kinmem,func) = __KINSetSysFunc(convert(KINMemPtr,kinmem),KINSysFn_wrapper(func))

function __KINInit(kinmem::KINMemPtr,func::KINSysFn,tmpl::N_Vector)
    ccall((:KINInit,libsundials_kinsol),Cint,(KINMemPtr,KINSysFn,N_Vector),kinmem,func,tmpl)
end

KINInit(kinmem,func,tmpl) = __KINInit(convert(KINMemPtr,kinmem),KINSysFn_wrapper(func),convert(N_Vector,tmpl))

function __KINSol(kinmem::KINMemPtr,uu::N_Vector,strategy::Cint,u_scale::N_Vector,f_scale::N_Vector)
    ccall((:KINSol,libsundials_kinsol),Cint,(KINMemPtr,N_Vector,Cint,N_Vector,N_Vector),kinmem,uu,strategy,u_scale,f_scale)
end

KINSol(kinmem,uu,strategy,u_scale,f_scale) = __KINSol(convert(KINMemPtr,kinmem),convert(N_Vector,uu),strategy,convert(N_Vector,u_scale),convert(N_Vector,f_scale))

function __KINGetWorkSpace(kinmem::KINMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:KINGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrw,leniw)
end

KINGetWorkSpace(kinmem,lenrw,leniw) = __KINGetWorkSpace(convert(KINMemPtr,kinmem),pointer(lenrw),pointer(leniw))

function __KINGetNumNonlinSolvIters(kinmem::KINMemPtr,nniters::Ptr{Clong})
    ccall((:KINGetNumNonlinSolvIters,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nniters)
end

KINGetNumNonlinSolvIters(kinmem,nniters) = __KINGetNumNonlinSolvIters(convert(KINMemPtr,kinmem),pointer(nniters))

function __KINGetNumFuncEvals(kinmem::KINMemPtr,nfevals::Ptr{Clong})
    ccall((:KINGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevals)
end

KINGetNumFuncEvals(kinmem,nfevals) = __KINGetNumFuncEvals(convert(KINMemPtr,kinmem),pointer(nfevals))

function __KINGetNumBetaCondFails(kinmem::KINMemPtr,nbcfails::Ptr{Clong})
    ccall((:KINGetNumBetaCondFails,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nbcfails)
end

KINGetNumBetaCondFails(kinmem,nbcfails) = __KINGetNumBetaCondFails(convert(KINMemPtr,kinmem),pointer(nbcfails))

function __KINGetNumBacktrackOps(kinmem::KINMemPtr,nbacktr::Ptr{Clong})
    ccall((:KINGetNumBacktrackOps,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nbacktr)
end

KINGetNumBacktrackOps(kinmem,nbacktr) = __KINGetNumBacktrackOps(convert(KINMemPtr,kinmem),pointer(nbacktr))

function __KINGetFuncNorm(kinmem::KINMemPtr,fnorm::Ptr{realtype})
    ccall((:KINGetFuncNorm,libsundials_kinsol),Cint,(KINMemPtr,Ptr{realtype}),kinmem,fnorm)
end

KINGetFuncNorm(kinmem,fnorm) = __KINGetFuncNorm(convert(KINMemPtr,kinmem),pointer(fnorm))

function __KINGetStepLength(kinmem::KINMemPtr,steplength::Ptr{realtype})
    ccall((:KINGetStepLength,libsundials_kinsol),Cint,(KINMemPtr,Ptr{realtype}),kinmem,steplength)
end

KINGetStepLength(kinmem,steplength) = __KINGetStepLength(convert(KINMemPtr,kinmem),pointer(steplength))

function __KINGetReturnFlagName(flag::Clong)
    ccall((:KINGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end

KINGetReturnFlagName(flag) = __KINGetReturnFlagName(convert(Clong,flag))

function KINFree(kinmem::Ref{KINMemPtr})
    ccall((:KINFree,libsundials_kinsol),Void,(Ref{KINMemPtr},),kinmem)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINDlsSetDenseJacFn(kinmem::KINMemPtr,jac::KINDlsDenseJacFn)
    ccall((:KINDlsSetDenseJacFn,libsundials_kinsol),Cint,(KINMemPtr,KINDlsDenseJacFn),kinmem,jac)
end

KINDlsSetDenseJacFn(kinmem,jac) = __KINDlsSetDenseJacFn(convert(KINMemPtr,kinmem),jac)

function __KINDlsSetBandJacFn(kinmem::KINMemPtr,jac::KINDlsBandJacFn)
    ccall((:KINDlsSetBandJacFn,libsundials_kinsol),Cint,(KINMemPtr,KINDlsBandJacFn),kinmem,jac)
end

KINDlsSetBandJacFn(kinmem,jac) = __KINDlsSetBandJacFn(convert(KINMemPtr,kinmem),jac)

function __KINDlsGetWorkSpace(kinmem::KINMemPtr,lenrwB::Ptr{Clong},leniwB::Ptr{Clong})
    ccall((:KINDlsGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwB,leniwB)
end

KINDlsGetWorkSpace(kinmem,lenrwB,leniwB) = __KINDlsGetWorkSpace(convert(KINMemPtr,kinmem),pointer(lenrwB),pointer(leniwB))

function __KINDlsGetNumJacEvals(kinmem::KINMemPtr,njevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumJacEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,njevalsB)
end

KINDlsGetNumJacEvals(kinmem,njevalsB) = __KINDlsGetNumJacEvals(convert(KINMemPtr,kinmem),pointer(njevalsB))

function __KINDlsGetNumFuncEvals(kinmem::KINMemPtr,nfevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevalsB)
end

KINDlsGetNumFuncEvals(kinmem,nfevalsB) = __KINDlsGetNumFuncEvals(convert(KINMemPtr,kinmem),pointer(nfevalsB))

function __KINDlsGetLastFlag(kinmem::KINMemPtr,flag::Ptr{Clong})
    ccall((:KINDlsGetLastFlag,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,flag)
end

KINDlsGetLastFlag(kinmem,flag) = __KINDlsGetLastFlag(convert(KINMemPtr,kinmem),pointer(flag))

function __KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end

KINDlsGetReturnFlagName(flag) = __KINDlsGetReturnFlagName(convert(Clong,flag))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINSpilsSetMaxRestarts(kinmem::KINMemPtr,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxrs)
end

KINSpilsSetMaxRestarts(kinmem,maxrs) = __KINSpilsSetMaxRestarts(convert(KINMemPtr,kinmem),maxrs)

function __KINSpilsSetPreconditioner(kinmem::KINMemPtr,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,libsundials_kinsol),Cint,(KINMemPtr,KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

KINSpilsSetPreconditioner(kinmem,pset,psolve) = __KINSpilsSetPreconditioner(convert(KINMemPtr,kinmem),pset,psolve)

function __KINSpilsSetJacTimesVecFn(kinmem::KINMemPtr,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,libsundials_kinsol),Cint,(KINMemPtr,KINSpilsJacTimesVecFn),kinmem,jtv)
end

KINSpilsSetJacTimesVecFn(kinmem,jtv) = __KINSpilsSetJacTimesVecFn(convert(KINMemPtr,kinmem),jtv)

function __KINSpilsGetWorkSpace(kinmem::KINMemPtr,lenrwSG::Ptr{Clong},leniwSG::Ptr{Clong})
    ccall((:KINSpilsGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

KINSpilsGetWorkSpace(kinmem,lenrwSG,leniwSG) = __KINSpilsGetWorkSpace(convert(KINMemPtr,kinmem),pointer(lenrwSG),pointer(leniwSG))

function __KINSpilsGetNumPrecEvals(kinmem::KINMemPtr,npevals::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,npevals)
end

KINSpilsGetNumPrecEvals(kinmem,npevals) = __KINSpilsGetNumPrecEvals(convert(KINMemPtr,kinmem),pointer(npevals))

function __KINSpilsGetNumPrecSolves(kinmem::KINMemPtr,npsolves::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecSolves,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,npsolves)
end

KINSpilsGetNumPrecSolves(kinmem,npsolves) = __KINSpilsGetNumPrecSolves(convert(KINMemPtr,kinmem),pointer(npsolves))

function __KINSpilsGetNumLinIters(kinmem::KINMemPtr,nliters::Ptr{Clong})
    ccall((:KINSpilsGetNumLinIters,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nliters)
end

KINSpilsGetNumLinIters(kinmem,nliters) = __KINSpilsGetNumLinIters(convert(KINMemPtr,kinmem),pointer(nliters))

function __KINSpilsGetNumConvFails(kinmem::KINMemPtr,nlcfails::Ptr{Clong})
    ccall((:KINSpilsGetNumConvFails,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nlcfails)
end

KINSpilsGetNumConvFails(kinmem,nlcfails) = __KINSpilsGetNumConvFails(convert(KINMemPtr,kinmem),pointer(nlcfails))

function __KINSpilsGetNumJtimesEvals(kinmem::KINMemPtr,njvevals::Ptr{Clong})
    ccall((:KINSpilsGetNumJtimesEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,njvevals)
end

KINSpilsGetNumJtimesEvals(kinmem,njvevals) = __KINSpilsGetNumJtimesEvals(convert(KINMemPtr,kinmem),pointer(njvevals))

function __KINSpilsGetNumFuncEvals(kinmem::KINMemPtr,nfevalsS::Ptr{Clong})
    ccall((:KINSpilsGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevalsS)
end

KINSpilsGetNumFuncEvals(kinmem,nfevalsS) = __KINSpilsGetNumFuncEvals(convert(KINMemPtr,kinmem),pointer(nfevalsS))

function __KINSpilsGetLastFlag(kinmem::KINMemPtr,flag::Ptr{Clong})
    ccall((:KINSpilsGetLastFlag,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,flag)
end

KINSpilsGetLastFlag(kinmem,flag) = __KINSpilsGetLastFlag(convert(KINMemPtr,kinmem),pointer(flag))

function __KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end

KINSpilsGetReturnFlagName(flag) = __KINSpilsGetReturnFlagName(convert(Clong,flag))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINBand(kinmem::KINMemPtr,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:KINBand,libsundials_kinsol),Cint,(KINMemPtr,Clong,Clong,Clong),kinmem,N,mupper,mlower)
end

KINBand(kinmem,N,mupper,mlower) = __KINBand(convert(KINMemPtr,kinmem),convert(Clong,N),convert(Clong,mupper),convert(Clong,mlower))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINBBDPrecInit(kinmem::KINMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_uu::realtype,gloc::KINLocalFn,gcomm::KINCommFn)
    ccall((:KINBBDPrecInit,libsundials_kinsol),Cint,(KINMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,KINLocalFn,KINCommFn),kinmem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_uu,gloc,gcomm)
end

KINBBDPrecInit(kinmem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_uu,gloc,gcomm) = __KINBBDPrecInit(convert(KINMemPtr,kinmem),convert(Clong,Nlocal),convert(Clong,mudq),convert(Clong,mldq),convert(Clong,mukeep),convert(Clong,mlkeep),dq_rel_uu,gloc,gcomm)

function __KINBBDPrecGetWorkSpace(kinmem::KINMemPtr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:KINBBDPrecGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwBBDP,leniwBBDP)
end

KINBBDPrecGetWorkSpace(kinmem,lenrwBBDP,leniwBBDP) = __KINBBDPrecGetWorkSpace(convert(KINMemPtr,kinmem),pointer(lenrwBBDP),pointer(leniwBBDP))

function __KINBBDPrecGetNumGfnEvals(kinmem::KINMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:KINBBDPrecGetNumGfnEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,ngevalsBBDP)
end

KINBBDPrecGetNumGfnEvals(kinmem,ngevalsBBDP) = __KINBBDPrecGetNumGfnEvals(convert(KINMemPtr,kinmem),pointer(ngevalsBBDP))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINDense(kinmem::KINMemPtr,N::Clong)
    ccall((:KINDense,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,N)
end

KINDense(kinmem,N) = __KINDense(convert(KINMemPtr,kinmem),convert(Clong,N))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINSpbcg(kinmem::KINMemPtr,maxl::Cint)
    ccall((:KINSpbcg,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxl)
end

KINSpbcg(kinmem,maxl) = __KINSpbcg(convert(KINMemPtr,kinmem),maxl)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINSpgmr(kinmem::KINMemPtr,maxl::Cint)
    ccall((:KINSpgmr,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxl)
end

KINSpgmr(kinmem,maxl) = __KINSpgmr(convert(KINMemPtr,kinmem),maxl)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINSptfqmr(kinmem::KINMemPtr,maxl::Cint)
    ccall((:KINSptfqmr,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxl)
end

KINSptfqmr(kinmem,maxl) = __KINSptfqmr(convert(KINMemPtr,kinmem),maxl)
