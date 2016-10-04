# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/kinsol/kinsol.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINCreate()
    ccall((:KINCreate,libsundials_kinsol),KINMemPtr,())
end

function __KINSetErrHandlerFn(kinmem::KINMemPtr,ehfun::KINErrHandlerFn,eh_data::Ptr{Void})
    ccall((:KINSetErrHandlerFn,libsundials_kinsol),Cint,(KINMemPtr,KINErrHandlerFn,Ptr{Void}),kinmem,ehfun,eh_data)
end

function KINSetErrHandlerFn(kinmem,ehfun,eh_data)
    __KINSetErrHandlerFn(convert(KINMemPtr,kinmem),ehfun,pointer(eh_data))
end

function __KINSetErrFile(kinmem::KINMemPtr,errfp::Ptr{FILE})
    ccall((:KINSetErrFile,libsundials_kinsol),Cint,(KINMemPtr,Ptr{FILE}),kinmem,errfp)
end

function KINSetErrFile(kinmem,errfp)
    __KINSetErrFile(convert(KINMemPtr,kinmem),errfp)
end

function __KINSetInfoHandlerFn(kinmem::KINMemPtr,ihfun::KINInfoHandlerFn,ih_data::Ptr{Void})
    ccall((:KINSetInfoHandlerFn,libsundials_kinsol),Cint,(KINMemPtr,KINInfoHandlerFn,Ptr{Void}),kinmem,ihfun,ih_data)
end

function KINSetInfoHandlerFn(kinmem,ihfun,ih_data)
    __KINSetInfoHandlerFn(convert(KINMemPtr,kinmem),ihfun,pointer(ih_data))
end

function __KINSetInfoFile(kinmem::KINMemPtr,infofp::Ptr{FILE})
    ccall((:KINSetInfoFile,libsundials_kinsol),Cint,(KINMemPtr,Ptr{FILE}),kinmem,infofp)
end

function KINSetInfoFile(kinmem,infofp)
    __KINSetInfoFile(convert(KINMemPtr,kinmem),infofp)
end

function __KINSetUserData(kinmem::KINMemPtr,user_data::Any)
    ccall((:KINSetUserData,libsundials_kinsol),Cint,(KINMemPtr,Any),kinmem,user_data)
end

function KINSetUserData(kinmem,user_data)
    __KINSetUserData(convert(KINMemPtr,kinmem),user_data)
end

function __KINSetPrintLevel(kinmemm::KINMemPtr,printfl::Cint)
    ccall((:KINSetPrintLevel,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmemm,printfl)
end

function KINSetPrintLevel(kinmemm,printfl)
    __KINSetPrintLevel(convert(KINMemPtr,kinmemm),convert(Cint,printfl))
end

function __KINSetMAA(kinmem::KINMemPtr,maa::Clong)
    ccall((:KINSetMAA,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,maa)
end

function KINSetMAA(kinmem,maa)
    __KINSetMAA(convert(KINMemPtr,kinmem),convert(Clong,maa))
end

function __KINSetNumMaxIters(kinmem::KINMemPtr,mxiter::Clong)
    ccall((:KINSetNumMaxIters,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,mxiter)
end

function KINSetNumMaxIters(kinmem,mxiter)
    __KINSetNumMaxIters(convert(KINMemPtr,kinmem),convert(Clong,mxiter))
end

function __KINSetNoInitSetup(kinmem::KINMemPtr,noInitSetup::Cint)
    ccall((:KINSetNoInitSetup,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,noInitSetup)
end

function KINSetNoInitSetup(kinmem,noInitSetup)
    __KINSetNoInitSetup(convert(KINMemPtr,kinmem),convert(Cint,noInitSetup))
end

function __KINSetNoResMon(kinmem::KINMemPtr,noNNIResMon::Cint)
    ccall((:KINSetNoResMon,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,noNNIResMon)
end

function KINSetNoResMon(kinmem,noNNIResMon)
    __KINSetNoResMon(convert(KINMemPtr,kinmem),convert(Cint,noNNIResMon))
end

function __KINSetMaxSetupCalls(kinmem::KINMemPtr,msbset::Clong)
    ccall((:KINSetMaxSetupCalls,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,msbset)
end

function KINSetMaxSetupCalls(kinmem,msbset)
    __KINSetMaxSetupCalls(convert(KINMemPtr,kinmem),convert(Clong,msbset))
end

function __KINSetMaxSubSetupCalls(kinmem::KINMemPtr,msbsetsub::Clong)
    ccall((:KINSetMaxSubSetupCalls,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,msbsetsub)
end

function KINSetMaxSubSetupCalls(kinmem,msbsetsub)
    __KINSetMaxSubSetupCalls(convert(KINMemPtr,kinmem),convert(Clong,msbsetsub))
end

function __KINSetEtaForm(kinmem::KINMemPtr,etachoice::Cint)
    ccall((:KINSetEtaForm,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,etachoice)
end

function KINSetEtaForm(kinmem,etachoice)
    __KINSetEtaForm(convert(KINMemPtr,kinmem),convert(Cint,etachoice))
end

function __KINSetEtaConstValue(kinmem::KINMemPtr,eta::realtype)
    ccall((:KINSetEtaConstValue,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,eta)
end

function KINSetEtaConstValue(kinmem,eta)
    __KINSetEtaConstValue(convert(KINMemPtr,kinmem),eta)
end

function __KINSetEtaParams(kinmem::KINMemPtr,egamma::realtype,ealpha::realtype)
    ccall((:KINSetEtaParams,libsundials_kinsol),Cint,(KINMemPtr,realtype,realtype),kinmem,egamma,ealpha)
end

function KINSetEtaParams(kinmem,egamma,ealpha)
    __KINSetEtaParams(convert(KINMemPtr,kinmem),egamma,ealpha)
end

function __KINSetResMonParams(kinmem::KINMemPtr,omegamin::realtype,omegamax::realtype)
    ccall((:KINSetResMonParams,libsundials_kinsol),Cint,(KINMemPtr,realtype,realtype),kinmem,omegamin,omegamax)
end

function KINSetResMonParams(kinmem,omegamin,omegamax)
    __KINSetResMonParams(convert(KINMemPtr,kinmem),omegamin,omegamax)
end

function __KINSetResMonConstValue(kinmem::KINMemPtr,omegaconst::realtype)
    ccall((:KINSetResMonConstValue,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,omegaconst)
end

function KINSetResMonConstValue(kinmem,omegaconst)
    __KINSetResMonConstValue(convert(KINMemPtr,kinmem),omegaconst)
end

function __KINSetNoMinEps(kinmem::KINMemPtr,noMinEps::Cint)
    ccall((:KINSetNoMinEps,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,noMinEps)
end

function KINSetNoMinEps(kinmem,noMinEps)
    __KINSetNoMinEps(convert(KINMemPtr,kinmem),convert(Cint,noMinEps))
end

function __KINSetMaxNewtonStep(kinmem::KINMemPtr,mxnewtstep::realtype)
    ccall((:KINSetMaxNewtonStep,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,mxnewtstep)
end

function KINSetMaxNewtonStep(kinmem,mxnewtstep)
    __KINSetMaxNewtonStep(convert(KINMemPtr,kinmem),mxnewtstep)
end

function __KINSetMaxBetaFails(kinmem::KINMemPtr,mxnbcf::Clong)
    ccall((:KINSetMaxBetaFails,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,mxnbcf)
end

function KINSetMaxBetaFails(kinmem,mxnbcf)
    __KINSetMaxBetaFails(convert(KINMemPtr,kinmem),convert(Clong,mxnbcf))
end

function __KINSetRelErrFunc(kinmem::KINMemPtr,relfunc::realtype)
    ccall((:KINSetRelErrFunc,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,relfunc)
end

function KINSetRelErrFunc(kinmem,relfunc)
    __KINSetRelErrFunc(convert(KINMemPtr,kinmem),relfunc)
end

function __KINSetFuncNormTol(kinmem::KINMemPtr,fnormtol::realtype)
    ccall((:KINSetFuncNormTol,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,fnormtol)
end

function KINSetFuncNormTol(kinmem,fnormtol)
    __KINSetFuncNormTol(convert(KINMemPtr,kinmem),fnormtol)
end

function __KINSetScaledStepTol(kinmem::KINMemPtr,scsteptol::realtype)
    ccall((:KINSetScaledStepTol,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,scsteptol)
end

function KINSetScaledStepTol(kinmem,scsteptol)
    __KINSetScaledStepTol(convert(KINMemPtr,kinmem),scsteptol)
end

function __KINSetConstraints(kinmem::KINMemPtr,constraints::N_Vector)
    ccall((:KINSetConstraints,libsundials_kinsol),Cint,(KINMemPtr,N_Vector),kinmem,constraints)
end

function KINSetConstraints(kinmem,constraints)
    __constraints = convert(NVector,constraints)
    __KINSetConstraints(convert(KINMemPtr,kinmem),convert(N_Vector,__constraints))
end

function __KINSetSysFunc(kinmem::KINMemPtr,func::KINSysFn)
    ccall((:KINSetSysFunc,libsundials_kinsol),Cint,(KINMemPtr,KINSysFn),kinmem,func)
end

function KINSetSysFunc(kinmem,func)
    __KINSetSysFunc(convert(KINMemPtr,kinmem),KINSysFn_wrapper(func))
end

function __KINInit(kinmem::KINMemPtr,func::KINSysFn,tmpl::N_Vector)
    ccall((:KINInit,libsundials_kinsol),Cint,(KINMemPtr,KINSysFn,N_Vector),kinmem,func,tmpl)
end

function KINInit(kinmem,func,tmpl)
    __tmpl = convert(NVector,tmpl)
    __KINInit(convert(KINMemPtr,kinmem),KINSysFn_wrapper(func),convert(N_Vector,__tmpl))
end

function __KINSol(kinmem::KINMemPtr,uu::N_Vector,strategy::Cint,u_scale::N_Vector,f_scale::N_Vector)
    ccall((:KINSol,libsundials_kinsol),Cint,(KINMemPtr,N_Vector,Cint,N_Vector,N_Vector),kinmem,uu,strategy,u_scale,f_scale)
end

function KINSol(kinmem,uu,strategy,u_scale,f_scale)
    __uu = convert(NVector,uu)
    __u_scale = convert(NVector,u_scale)
    __f_scale = convert(NVector,f_scale)
    __KINSol(convert(KINMemPtr,kinmem),convert(N_Vector,__uu),convert(Cint,strategy),convert(N_Vector,__u_scale),convert(N_Vector,__f_scale))
end

function __KINGetWorkSpace(kinmem::KINMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:KINGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrw,leniw)
end

function KINGetWorkSpace(kinmem,lenrw,leniw)
    __KINGetWorkSpace(convert(KINMemPtr,kinmem),pointer(lenrw),pointer(leniw))
end

function __KINGetNumNonlinSolvIters(kinmem::KINMemPtr,nniters::Ptr{Clong})
    ccall((:KINGetNumNonlinSolvIters,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nniters)
end

function KINGetNumNonlinSolvIters(kinmem,nniters)
    __KINGetNumNonlinSolvIters(convert(KINMemPtr,kinmem),pointer(nniters))
end

function __KINGetNumFuncEvals(kinmem::KINMemPtr,nfevals::Ptr{Clong})
    ccall((:KINGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevals)
end

function KINGetNumFuncEvals(kinmem,nfevals)
    __KINGetNumFuncEvals(convert(KINMemPtr,kinmem),pointer(nfevals))
end

function __KINGetNumBetaCondFails(kinmem::KINMemPtr,nbcfails::Ptr{Clong})
    ccall((:KINGetNumBetaCondFails,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nbcfails)
end

function KINGetNumBetaCondFails(kinmem,nbcfails)
    __KINGetNumBetaCondFails(convert(KINMemPtr,kinmem),pointer(nbcfails))
end

function __KINGetNumBacktrackOps(kinmem::KINMemPtr,nbacktr::Ptr{Clong})
    ccall((:KINGetNumBacktrackOps,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nbacktr)
end

function KINGetNumBacktrackOps(kinmem,nbacktr)
    __KINGetNumBacktrackOps(convert(KINMemPtr,kinmem),pointer(nbacktr))
end

function __KINGetFuncNorm(kinmem::KINMemPtr,fnorm::Ptr{realtype})
    ccall((:KINGetFuncNorm,libsundials_kinsol),Cint,(KINMemPtr,Ptr{realtype}),kinmem,fnorm)
end

function KINGetFuncNorm(kinmem,fnorm)
    __KINGetFuncNorm(convert(KINMemPtr,kinmem),pointer(fnorm))
end

function __KINGetStepLength(kinmem::KINMemPtr,steplength::Ptr{realtype})
    ccall((:KINGetStepLength,libsundials_kinsol),Cint,(KINMemPtr,Ptr{realtype}),kinmem,steplength)
end

function KINGetStepLength(kinmem,steplength)
    __KINGetStepLength(convert(KINMemPtr,kinmem),pointer(steplength))
end

function __KINGetReturnFlagName(flag::Clong)
    ccall((:KINGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end

function KINGetReturnFlagName(flag)
    __KINGetReturnFlagName(convert(Clong,flag))
end

function KINFree(kinmem::Ref{KINMemPtr})
    ccall((:KINFree,libsundials_kinsol),Void,(Ref{KINMemPtr},),kinmem)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/kinsol/kinsol_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINDlsSetDenseJacFn(kinmem::KINMemPtr,jac::KINDlsDenseJacFn)
    ccall((:KINDlsSetDenseJacFn,libsundials_kinsol),Cint,(KINMemPtr,KINDlsDenseJacFn),kinmem,jac)
end

function KINDlsSetDenseJacFn(kinmem,jac)
    __KINDlsSetDenseJacFn(convert(KINMemPtr,kinmem),jac)
end

function __KINDlsSetBandJacFn(kinmem::KINMemPtr,jac::KINDlsBandJacFn)
    ccall((:KINDlsSetBandJacFn,libsundials_kinsol),Cint,(KINMemPtr,KINDlsBandJacFn),kinmem,jac)
end

function KINDlsSetBandJacFn(kinmem,jac)
    __KINDlsSetBandJacFn(convert(KINMemPtr,kinmem),jac)
end

function __KINDlsGetWorkSpace(kinmem::KINMemPtr,lenrwB::Ptr{Clong},leniwB::Ptr{Clong})
    ccall((:KINDlsGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwB,leniwB)
end

function KINDlsGetWorkSpace(kinmem,lenrwB,leniwB)
    __KINDlsGetWorkSpace(convert(KINMemPtr,kinmem),pointer(lenrwB),pointer(leniwB))
end

function __KINDlsGetNumJacEvals(kinmem::KINMemPtr,njevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumJacEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,njevalsB)
end

function KINDlsGetNumJacEvals(kinmem,njevalsB)
    __KINDlsGetNumJacEvals(convert(KINMemPtr,kinmem),pointer(njevalsB))
end

function __KINDlsGetNumFuncEvals(kinmem::KINMemPtr,nfevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevalsB)
end

function KINDlsGetNumFuncEvals(kinmem,nfevalsB)
    __KINDlsGetNumFuncEvals(convert(KINMemPtr,kinmem),pointer(nfevalsB))
end

function __KINDlsGetLastFlag(kinmem::KINMemPtr,flag::Ptr{Clong})
    ccall((:KINDlsGetLastFlag,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,flag)
end

function KINDlsGetLastFlag(kinmem,flag)
    __KINDlsGetLastFlag(convert(KINMemPtr,kinmem),pointer(flag))
end

function __KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end

function KINDlsGetReturnFlagName(flag)
    __KINDlsGetReturnFlagName(convert(Clong,flag))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/kinsol/kinsol_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINSpilsSetMaxRestarts(kinmem::KINMemPtr,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxrs)
end

function KINSpilsSetMaxRestarts(kinmem,maxrs)
    __KINSpilsSetMaxRestarts(convert(KINMemPtr,kinmem),convert(Cint,maxrs))
end

function __KINSpilsSetPreconditioner(kinmem::KINMemPtr,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,libsundials_kinsol),Cint,(KINMemPtr,KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetPreconditioner(kinmem,pset,psolve)
    __KINSpilsSetPreconditioner(convert(KINMemPtr,kinmem),pset,psolve)
end

function __KINSpilsSetJacTimesVecFn(kinmem::KINMemPtr,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,libsundials_kinsol),Cint,(KINMemPtr,KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsSetJacTimesVecFn(kinmem,jtv)
    __KINSpilsSetJacTimesVecFn(convert(KINMemPtr,kinmem),jtv)
end

function __KINSpilsGetWorkSpace(kinmem::KINMemPtr,lenrwSG::Ptr{Clong},leniwSG::Ptr{Clong})
    ccall((:KINSpilsGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetWorkSpace(kinmem,lenrwSG,leniwSG)
    __KINSpilsGetWorkSpace(convert(KINMemPtr,kinmem),pointer(lenrwSG),pointer(leniwSG))
end

function __KINSpilsGetNumPrecEvals(kinmem::KINMemPtr,npevals::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecEvals(kinmem,npevals)
    __KINSpilsGetNumPrecEvals(convert(KINMemPtr,kinmem),pointer(npevals))
end

function __KINSpilsGetNumPrecSolves(kinmem::KINMemPtr,npsolves::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecSolves,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumPrecSolves(kinmem,npsolves)
    __KINSpilsGetNumPrecSolves(convert(KINMemPtr,kinmem),pointer(npsolves))
end

function __KINSpilsGetNumLinIters(kinmem::KINMemPtr,nliters::Ptr{Clong})
    ccall((:KINSpilsGetNumLinIters,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumLinIters(kinmem,nliters)
    __KINSpilsGetNumLinIters(convert(KINMemPtr,kinmem),pointer(nliters))
end

function __KINSpilsGetNumConvFails(kinmem::KINMemPtr,nlcfails::Ptr{Clong})
    ccall((:KINSpilsGetNumConvFails,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumConvFails(kinmem,nlcfails)
    __KINSpilsGetNumConvFails(convert(KINMemPtr,kinmem),pointer(nlcfails))
end

function __KINSpilsGetNumJtimesEvals(kinmem::KINMemPtr,njvevals::Ptr{Clong})
    ccall((:KINSpilsGetNumJtimesEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumJtimesEvals(kinmem,njvevals)
    __KINSpilsGetNumJtimesEvals(convert(KINMemPtr,kinmem),pointer(njvevals))
end

function __KINSpilsGetNumFuncEvals(kinmem::KINMemPtr,nfevalsS::Ptr{Clong})
    ccall((:KINSpilsGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetNumFuncEvals(kinmem,nfevalsS)
    __KINSpilsGetNumFuncEvals(convert(KINMemPtr,kinmem),pointer(nfevalsS))
end

function __KINSpilsGetLastFlag(kinmem::KINMemPtr,flag::Ptr{Clong})
    ccall((:KINSpilsGetLastFlag,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetLastFlag(kinmem,flag)
    __KINSpilsGetLastFlag(convert(KINMemPtr,kinmem),pointer(flag))
end

function __KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end

function KINSpilsGetReturnFlagName(flag)
    __KINSpilsGetReturnFlagName(convert(Clong,flag))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/kinsol/kinsol_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINBand(kinmem::KINMemPtr,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:KINBand,libsundials_kinsol),Cint,(KINMemPtr,Clong,Clong,Clong),kinmem,N,mupper,mlower)
end

function KINBand(kinmem,N,mupper,mlower)
    __KINBand(convert(KINMemPtr,kinmem),convert(Clong,N),convert(Clong,mupper),convert(Clong,mlower))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/kinsol/kinsol_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINBBDPrecInit(kinmem::KINMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_uu::realtype,gloc::KINLocalFn,gcomm::KINCommFn)
    ccall((:KINBBDPrecInit,libsundials_kinsol),Cint,(KINMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,KINLocalFn,KINCommFn),kinmem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_uu,gloc,gcomm)
end

function KINBBDPrecInit(kinmem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_uu,gloc,gcomm)
    __KINBBDPrecInit(convert(KINMemPtr,kinmem),convert(Clong,Nlocal),convert(Clong,mudq),convert(Clong,mldq),convert(Clong,mukeep),convert(Clong,mlkeep),dq_rel_uu,gloc,gcomm)
end

function __KINBBDPrecGetWorkSpace(kinmem::KINMemPtr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:KINBBDPrecGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwBBDP,leniwBBDP)
end

function KINBBDPrecGetWorkSpace(kinmem,lenrwBBDP,leniwBBDP)
    __KINBBDPrecGetWorkSpace(convert(KINMemPtr,kinmem),pointer(lenrwBBDP),pointer(leniwBBDP))
end

function __KINBBDPrecGetNumGfnEvals(kinmem::KINMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:KINBBDPrecGetNumGfnEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,ngevalsBBDP)
end

function KINBBDPrecGetNumGfnEvals(kinmem,ngevalsBBDP)
    __KINBBDPrecGetNumGfnEvals(convert(KINMemPtr,kinmem),pointer(ngevalsBBDP))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/kinsol/kinsol_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINDense(kinmem::KINMemPtr,N::Clong)
    ccall((:KINDense,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,N)
end

function KINDense(kinmem,N)
    __KINDense(convert(KINMemPtr,kinmem),convert(Clong,N))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/kinsol/kinsol_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/kinsol/kinsol_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINSpbcg(kinmem::KINMemPtr,maxl::Cint)
    ccall((:KINSpbcg,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxl)
end

function KINSpbcg(kinmem,maxl)
    __KINSpbcg(convert(KINMemPtr,kinmem),convert(Cint,maxl))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/kinsol/kinsol_spfgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINSpfgmr(kinmem::KINMemPtr,maxl::Cint)
    ccall((:KINSpfgmr,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxl)
end

function KINSpfgmr(kinmem,maxl)
    __KINSpfgmr(convert(KINMemPtr,kinmem),convert(Cint,maxl))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/kinsol/kinsol_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINSpgmr(kinmem::KINMemPtr,maxl::Cint)
    ccall((:KINSpgmr,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxl)
end

function KINSpgmr(kinmem,maxl)
    __KINSpgmr(convert(KINMemPtr,kinmem),convert(Cint,maxl))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/kinsol/kinsol_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __KINSptfqmr(kinmem::KINMemPtr,maxl::Cint)
    ccall((:KINSptfqmr,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxl)
end

function KINSptfqmr(kinmem,maxl)
    __KINSptfqmr(convert(KINMemPtr,kinmem),convert(Cint,maxl))
end
