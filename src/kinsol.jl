# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINCreate()
    ccall((:KINCreate,shlib), Ptr{Void},())
end

function KINSetErrHandlerFn(kinmem,ehfun::KINErrHandlerFn,eh_data)
    ccall((:KINSetErrHandlerFn,shlib), Cint,(Ptr{Void},KINErrHandlerFn,Ptr{Void}),kinmem,ehfun,eh_data)
end

function KINSetErrFile(kinmem,errfp)
    ccall((:KINSetErrFile,shlib), Cint,(Ptr{Void},Ptr{FILE}),kinmem,errfp)
end

function KINSetInfoHandlerFn(kinmem,ihfun::KINInfoHandlerFn,ih_data)
    ccall((:KINSetInfoHandlerFn,shlib), Cint,(Ptr{Void},KINInfoHandlerFn,Ptr{Void}),kinmem,ihfun,ih_data)
end

function KINSetInfoFile(kinmem,infofp)
    ccall((:KINSetInfoFile,shlib), Cint,(Ptr{Void},Ptr{FILE}),kinmem,infofp)
end

function KINSetUserData(kinmem,user_data)
    ccall((:KINSetUserData,shlib), Cint,(Ptr{Void},Ptr{Void}),kinmem,user_data)
end

function KINSetPrintLevel(kinmemm,printfl::Cint)
    ccall((:KINSetPrintLevel,shlib), Cint,(Ptr{Void},Cint),kinmemm,printfl)
end

function KINSetMAA(kinmem,maa::Clong)
    ccall((:KINSetMAA,shlib), Cint,(Ptr{Void},Clong),kinmem,maa)
end

function KINSetNumMaxIters(kinmem,mxiter::Clong)
    ccall((:KINSetNumMaxIters,shlib), Cint,(Ptr{Void},Clong),kinmem,mxiter)
end

function KINSetNoInitSetup(kinmem,noInitSetup::Cint)
    ccall((:KINSetNoInitSetup,shlib), Cint,(Ptr{Void},Cint),kinmem,noInitSetup)
end

function KINSetNoResMon(kinmem,noNNIResMon::Cint)
    ccall((:KINSetNoResMon,shlib), Cint,(Ptr{Void},Cint),kinmem,noNNIResMon)
end

function KINSetMaxSetupCalls(kinmem,msbset::Clong)
    ccall((:KINSetMaxSetupCalls,shlib), Cint,(Ptr{Void},Clong),kinmem,msbset)
end

function KINSetMaxSubSetupCalls(kinmem,msbsetsub::Clong)
    ccall((:KINSetMaxSubSetupCalls,shlib), Cint,(Ptr{Void},Clong),kinmem,msbsetsub)
end

function KINSetEtaForm(kinmem,etachoice::Cint)
    ccall((:KINSetEtaForm,shlib), Cint,(Ptr{Void},Cint),kinmem,etachoice)
end

function KINSetEtaConstValue(kinmem,eta::realtype)
    ccall((:KINSetEtaConstValue,shlib), Cint,(Ptr{Void},realtype),kinmem,eta)
end

function KINSetEtaParams(kinmem,egamma::realtype,ealpha::realtype)
    ccall((:KINSetEtaParams,shlib), Cint,(Ptr{Void},realtype,realtype),kinmem,egamma,ealpha)
end

function KINSetResMonParams(kinmem,omegamin::realtype,omegamax::realtype)
    ccall((:KINSetResMonParams,shlib), Cint,(Ptr{Void},realtype,realtype),kinmem,omegamin,omegamax)
end

function KINSetResMonConstValue(kinmem,omegaconst::realtype)
    ccall((:KINSetResMonConstValue,shlib), Cint,(Ptr{Void},realtype),kinmem,omegaconst)
end

function KINSetNoMinEps(kinmem,noMinEps::Cint)
    ccall((:KINSetNoMinEps,shlib), Cint,(Ptr{Void},Cint),kinmem,noMinEps)
end

function KINSetMaxNewtonStep(kinmem,mxnewtstep::realtype)
    ccall((:KINSetMaxNewtonStep,shlib), Cint,(Ptr{Void},realtype),kinmem,mxnewtstep)
end

function KINSetMaxBetaFails(kinmem,mxnbcf::Clong)
    ccall((:KINSetMaxBetaFails,shlib), Cint,(Ptr{Void},Clong),kinmem,mxnbcf)
end

function KINSetRelErrFunc(kinmem,relfunc::realtype)
    ccall((:KINSetRelErrFunc,shlib), Cint,(Ptr{Void},realtype),kinmem,relfunc)
end

function KINSetFuncNormTol(kinmem,fnormtol::realtype)
    ccall((:KINSetFuncNormTol,shlib), Cint,(Ptr{Void},realtype),kinmem,fnormtol)
end

function KINSetScaledStepTol(kinmem,scsteptol::realtype)
    ccall((:KINSetScaledStepTol,shlib), Cint,(Ptr{Void},realtype),kinmem,scsteptol)
end

function KINSetConstraints(kinmem,constraints::N_Vector)
    ccall((:KINSetConstraints,shlib), Cint,(Ptr{Void},N_Vector),kinmem,constraints)
end

function KINSetSysFunc(kinmem,func::KINSysFn)
    ccall((:KINSetSysFunc,shlib), Cint,(Ptr{Void},KINSysFn),kinmem,func)
end

function KINInit(kinmem,func::KINSysFn,tmpl::N_Vector)
    ccall((:KINInit,shlib), Cint,(Ptr{Void},KINSysFn,N_Vector),kinmem,func,tmpl)
end

function KINSol(kinmem,uu::N_Vector,strategy::Cint,u_scale::N_Vector,f_scale::N_Vector)
    ccall((:KINSol,shlib), Cint,(Ptr{Void},N_Vector,Cint,N_Vector,N_Vector),kinmem,uu,strategy,u_scale,f_scale)
end

function KINGetWorkSpace(kinmem,lenrw,leniw)
    ccall((:KINGetWorkSpace,shlib), Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrw,leniw)
end

function KINGetNumNonlinSolvIters(kinmem,nniters)
    ccall((:KINGetNumNonlinSolvIters,shlib), Cint,(Ptr{Void},Ptr{Clong}),kinmem,nniters)
end

function KINGetNumFuncEvals(kinmem,nfevals)
    ccall((:KINGetNumFuncEvals,shlib), Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevals)
end

function KINGetNumBetaCondFails(kinmem,nbcfails)
    ccall((:KINGetNumBetaCondFails,shlib), Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbcfails)
end

function KINGetNumBacktrackOps(kinmem,nbacktr)
    ccall((:KINGetNumBacktrackOps,shlib), Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbacktr)
end

function KINGetFuncNorm(kinmem,fnorm)
    ccall((:KINGetFuncNorm,shlib), Cint,(Ptr{Void},Ptr{realtype}),kinmem,fnorm)
end

function KINGetStepLength(kinmem,steplength)
    ccall((:KINGetStepLength,shlib), Cint,(Ptr{Void},Ptr{realtype}),kinmem,steplength)
end

function KINGetReturnFlagName(flag::Clong)
    ccall((:KINGetReturnFlagName,shlib), Cstring,(Clong,),flag)
end

function KINFree(kinmem)
    ccall((:KINFree,shlib), Void,(Ptr{Ptr{Void}},),kinmem)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Clong,N::Clong)
    ccall((:NewDenseMat,shlib),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:NewBandMat,shlib),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,shlib),Void,(DlsMat,),A)
end

function NewIntArray(N::Cint)
    ccall((:NewIntArray,shlib),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Clong)
    ccall((:NewLintArray,shlib),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Clong)
    ccall((:NewRealArray,shlib),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p)
    ccall((:DestroyArray,shlib),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,shlib),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,shlib),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,shlib),Void,(DlsMat,),A)
end

function newDenseMat(m::Clong,n::Clong)
    ccall((:newDenseMat,shlib),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Clong,smu::Clong,ml::Clong)
    ccall((:newBandMat,shlib),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a)
    ccall((:destroyMat,shlib),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Cint)
    ccall((:newIntArray,shlib),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Clong)
    ccall((:newLintArray,shlib),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Clong)
    ccall((:newRealArray,shlib),Ptr{realtype},(Clong,),m)
end

function destroyArray(v)
    ccall((:destroyArray,shlib),Void,(Ptr{Void},),v)
end

function KINDlsSetDenseJacFn(kinmem,jac::KINDlsDenseJacFn)
    ccall((:KINDlsSetDenseJacFn,shlib),Cint,(Ptr{Void},KINDlsDenseJacFn),kinmem,jac)
end

function KINDlsSetBandJacFn(kinmem,jac::KINDlsBandJacFn)
    ccall((:KINDlsSetBandJacFn,shlib),Cint,(Ptr{Void},KINDlsBandJacFn),kinmem,jac)
end

function KINDlsGetWorkSpace(kinmem,lenrwB,leniwB)
    ccall((:KINDlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwB,leniwB)
end

function KINDlsGetNumJacEvals(kinmem,njevalsB)
    ccall((:KINDlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njevalsB)
end

function KINDlsGetNumFuncEvals(kinmem,nfevalsB)
    ccall((:KINDlsGetNumFuncEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsB)
end

function KINDlsGetLastFlag(kinmem,flag)
    ccall((:KINDlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,shlib),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,shlib),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,shlib),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,shlib),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function KINSpilsSetMaxRestarts(kinmem,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,shlib),Cint,(Ptr{Void},Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem,lenrwSG,leniwSG)
    ccall((:KINSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem,npevals)
    ccall((:KINSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem,npsolves)
    ccall((:KINSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem,nliters)
    ccall((:KINSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem,nlcfails)
    ccall((:KINSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem,njvevals)
    ccall((:KINSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem,nfevalsS)
    ccall((:KINSpilsGetNumFuncEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem,flag)
    ccall((:KINSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Clong,N::Clong)
    ccall((:NewDenseMat,shlib),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:NewBandMat,shlib),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,shlib),Void,(DlsMat,),A)
end

function NewIntArray(N::Cint)
    ccall((:NewIntArray,shlib),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Clong)
    ccall((:NewLintArray,shlib),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Clong)
    ccall((:NewRealArray,shlib),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p)
    ccall((:DestroyArray,shlib),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,shlib),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,shlib),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,shlib),Void,(DlsMat,),A)
end

function newDenseMat(m::Clong,n::Clong)
    ccall((:newDenseMat,shlib),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Clong,smu::Clong,ml::Clong)
    ccall((:newBandMat,shlib),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a)
    ccall((:destroyMat,shlib),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Cint)
    ccall((:newIntArray,shlib),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Clong)
    ccall((:newLintArray,shlib),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Clong)
    ccall((:newRealArray,shlib),Ptr{realtype},(Clong,),m)
end

function destroyArray(v)
    ccall((:destroyArray,shlib),Void,(Ptr{Void},),v)
end

function KINDlsSetDenseJacFn(kinmem,jac::KINDlsDenseJacFn)
    ccall((:KINDlsSetDenseJacFn,shlib),Cint,(Ptr{Void},KINDlsDenseJacFn),kinmem,jac)
end

function KINDlsSetBandJacFn(kinmem,jac::KINDlsBandJacFn)
    ccall((:KINDlsSetBandJacFn,shlib),Cint,(Ptr{Void},KINDlsBandJacFn),kinmem,jac)
end

function KINDlsGetWorkSpace(kinmem,lenrwB,leniwB)
    ccall((:KINDlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwB,leniwB)
end

function KINDlsGetNumJacEvals(kinmem,njevalsB)
    ccall((:KINDlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njevalsB)
end

function KINDlsGetNumFuncEvals(kinmem,nfevalsB)
    ccall((:KINDlsGetNumFuncEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsB)
end

function KINDlsGetLastFlag(kinmem,flag)
    ccall((:KINDlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function BandGBTRF(A::DlsMat,p)
    ccall((:BandGBTRF,shlib),Clong,(DlsMat,Ptr{Clong}),A,p)
end

function bandGBTRF(a,n::Clong,mu::Clong,ml::Clong,smu::Clong,p)
    ccall((:bandGBTRF,shlib),Clong,(Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong,Ptr{Clong}),a,n,mu,ml,smu,p)
end

function BandGBTRS(A::DlsMat,p,b)
    ccall((:BandGBTRS,shlib),Void,(DlsMat,Ptr{Clong},Ptr{realtype}),A,p,b)
end

function bandGBTRS(a,n::Clong,smu::Clong,ml::Clong,p,b)
    ccall((:bandGBTRS,shlib),Void,(Ptr{Ptr{realtype}},Clong,Clong,Clong,Ptr{Clong},Ptr{realtype}),a,n,smu,ml,p,b)
end

function BandCopy(A::DlsMat,B::DlsMat,copymu::Clong,copyml::Clong)
    ccall((:BandCopy,shlib),Void,(DlsMat,DlsMat,Clong,Clong),A,B,copymu,copyml)
end

function bandCopy(a,b,n::Clong,a_smu::Clong,b_smu::Clong,copymu::Clong,copyml::Clong)
    ccall((:bandCopy,shlib),Void,(Ptr{Ptr{realtype}},Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong,Clong),a,b,n,a_smu,b_smu,copymu,copyml)
end

function BandScale(c::realtype,A::DlsMat)
    ccall((:BandScale,shlib),Void,(realtype,DlsMat),c,A)
end

function bandScale(c::realtype,a,n::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:bandScale,shlib),Void,(realtype,Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong),c,a,n,mu,ml,smu)
end

function bandAddIdentity(a,n::Clong,smu::Clong)
    ccall((:bandAddIdentity,shlib),Void,(Ptr{Ptr{realtype}},Clong,Clong),a,n,smu)
end

function BandMatvec(A::DlsMat,x,y)
    ccall((:BandMatvec,shlib),Void,(DlsMat,Ptr{realtype},Ptr{realtype}),A,x,y)
end

function bandMatvec(a,x,y,n::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:bandMatvec,shlib),Void,(Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype},Clong,Clong,Clong,Clong),a,x,y,n,mu,ml,smu)
end

function KINBand(kinmem,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:KINBand,shlib),Cint,(Ptr{Void},Clong,Clong,Clong),kinmem,N,mupper,mlower)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINBBDPrecInit(kinmem,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_uu::realtype,gloc::KINLocalFn,gcomm::KINCommFn)
    ccall((:KINBBDPrecInit,shlib),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,KINLocalFn,KINCommFn),kinmem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_uu,gloc,gcomm)
end

function KINBBDPrecGetWorkSpace(kinmem,lenrwBBDP,leniwBBDP)
    ccall((:KINBBDPrecGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwBBDP,leniwBBDP)
end

function KINBBDPrecGetNumGfnEvals(kinmem,ngevalsBBDP)
    ccall((:KINBBDPrecGetNumGfnEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,ngevalsBBDP)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Clong,N::Clong)
    ccall((:NewDenseMat,shlib),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:NewBandMat,shlib),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,shlib),Void,(DlsMat,),A)
end

function NewIntArray(N::Cint)
    ccall((:NewIntArray,shlib),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Clong)
    ccall((:NewLintArray,shlib),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Clong)
    ccall((:NewRealArray,shlib),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p)
    ccall((:DestroyArray,shlib),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,shlib),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,shlib),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,shlib),Void,(DlsMat,),A)
end

function newDenseMat(m::Clong,n::Clong)
    ccall((:newDenseMat,shlib),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Clong,smu::Clong,ml::Clong)
    ccall((:newBandMat,shlib),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a)
    ccall((:destroyMat,shlib),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Cint)
    ccall((:newIntArray,shlib),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Clong)
    ccall((:newLintArray,shlib),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Clong)
    ccall((:newRealArray,shlib),Ptr{realtype},(Clong,),m)
end

function destroyArray(v)
    ccall((:destroyArray,shlib),Void,(Ptr{Void},),v)
end

function KINDlsSetDenseJacFn(kinmem,jac::KINDlsDenseJacFn)
    ccall((:KINDlsSetDenseJacFn,shlib),Cint,(Ptr{Void},KINDlsDenseJacFn),kinmem,jac)
end

function KINDlsSetBandJacFn(kinmem,jac::KINDlsBandJacFn)
    ccall((:KINDlsSetBandJacFn,shlib),Cint,(Ptr{Void},KINDlsBandJacFn),kinmem,jac)
end

function KINDlsGetWorkSpace(kinmem,lenrwB,leniwB)
    ccall((:KINDlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwB,leniwB)
end

function KINDlsGetNumJacEvals(kinmem,njevalsB)
    ccall((:KINDlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njevalsB)
end

function KINDlsGetNumFuncEvals(kinmem,nfevalsB)
    ccall((:KINDlsGetNumFuncEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsB)
end

function KINDlsGetLastFlag(kinmem,flag)
    ccall((:KINDlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function DenseGETRF(A::DlsMat,p)
    ccall((:DenseGETRF,shlib),Clong,(DlsMat,Ptr{Clong}),A,p)
end

function DenseGETRS(A::DlsMat,p,b)
    ccall((:DenseGETRS,shlib),Void,(DlsMat,Ptr{Clong},Ptr{realtype}),A,p,b)
end

function denseGETRF(a,m::Clong,n::Clong,p)
    ccall((:denseGETRF,shlib),Clong,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{Clong}),a,m,n,p)
end

function denseGETRS(a,n::Clong,p,b)
    ccall((:denseGETRS,shlib),Void,(Ptr{Ptr{realtype}},Clong,Ptr{Clong},Ptr{realtype}),a,n,p,b)
end

function DensePOTRF(A::DlsMat)
    ccall((:DensePOTRF,shlib),Clong,(DlsMat,),A)
end

function DensePOTRS(A::DlsMat,b)
    ccall((:DensePOTRS,shlib),Void,(DlsMat,Ptr{realtype}),A,b)
end

function densePOTRF(a,m::Clong)
    ccall((:densePOTRF,shlib),Clong,(Ptr{Ptr{realtype}},Clong),a,m)
end

function densePOTRS(a,m::Clong,b)
    ccall((:densePOTRS,shlib),Void,(Ptr{Ptr{realtype}},Clong,Ptr{realtype}),a,m,b)
end

function DenseGEQRF(A::DlsMat,beta,wrk)
    ccall((:DenseGEQRF,shlib),Cint,(DlsMat,Ptr{realtype},Ptr{realtype}),A,beta,wrk)
end

function DenseORMQR(A::DlsMat,beta,vn,vm,wrk)
    ccall((:DenseORMQR,shlib),Cint,(DlsMat,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),A,beta,vn,vm,wrk)
end

function denseGEQRF(a,m::Clong,n::Clong,beta,wrk)
    ccall((:denseGEQRF,shlib),Cint,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{realtype},Ptr{realtype}),a,m,n,beta,wrk)
end

function denseORMQR(a,m::Clong,n::Clong,beta,v,w,wrk)
    ccall((:denseORMQR,shlib),Cint,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),a,m,n,beta,v,w,wrk)
end

function DenseCopy(A::DlsMat,B::DlsMat)
    ccall((:DenseCopy,shlib),Void,(DlsMat,DlsMat),A,B)
end

function denseCopy(a,b,m::Clong,n::Clong)
    ccall((:denseCopy,shlib),Void,(Ptr{Ptr{realtype}},Ptr{Ptr{realtype}},Clong,Clong),a,b,m,n)
end

function DenseScale(c::realtype,A::DlsMat)
    ccall((:DenseScale,shlib),Void,(realtype,DlsMat),c,A)
end

function denseScale(c::realtype,a,m::Clong,n::Clong)
    ccall((:denseScale,shlib),Void,(realtype,Ptr{Ptr{realtype}},Clong,Clong),c,a,m,n)
end

function denseAddIdentity(a,n::Clong)
    ccall((:denseAddIdentity,shlib),Void,(Ptr{Ptr{realtype}},Clong),a,n)
end

function DenseMatvec(A::DlsMat,x,y)
    ccall((:DenseMatvec,shlib),Void,(DlsMat,Ptr{realtype},Ptr{realtype}),A,x,y)
end

function denseMatvec(a,x,y,m::Clong,n::Clong)
    ccall((:denseMatvec,shlib),Void,(Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype},Clong,Clong),a,x,y,m,n)
end

function KINDense(kinmem,N::Clong)
    ccall((:KINDense,shlib),Cint,(Ptr{Void},Clong),kinmem,N)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINCreate()
    ccall((:KINCreate,shlib), Ptr{Void},())
end

function KINSetErrHandlerFn(kinmem,ehfun::KINErrHandlerFn,eh_data)
    ccall((:KINSetErrHandlerFn,shlib), Cint,(Ptr{Void},KINErrHandlerFn,Ptr{Void}),kinmem,ehfun,eh_data)
end

function KINSetErrFile(kinmem,errfp)
    ccall((:KINSetErrFile,shlib), Cint,(Ptr{Void},Ptr{FILE}),kinmem,errfp)
end

function KINSetInfoHandlerFn(kinmem,ihfun::KINInfoHandlerFn,ih_data)
    ccall((:KINSetInfoHandlerFn,shlib), Cint,(Ptr{Void},KINInfoHandlerFn,Ptr{Void}),kinmem,ihfun,ih_data)
end

function KINSetInfoFile(kinmem,infofp)
    ccall((:KINSetInfoFile,shlib), Cint,(Ptr{Void},Ptr{FILE}),kinmem,infofp)
end

function KINSetUserData(kinmem,user_data)
    ccall((:KINSetUserData,shlib), Cint,(Ptr{Void},Ptr{Void}),kinmem,user_data)
end

function KINSetPrintLevel(kinmemm,printfl::Cint)
    ccall((:KINSetPrintLevel,shlib), Cint,(Ptr{Void},Cint),kinmemm,printfl)
end

function KINSetMAA(kinmem,maa::Clong)
    ccall((:KINSetMAA,shlib), Cint,(Ptr{Void},Clong),kinmem,maa)
end

function KINSetNumMaxIters(kinmem,mxiter::Clong)
    ccall((:KINSetNumMaxIters,shlib), Cint,(Ptr{Void},Clong),kinmem,mxiter)
end

function KINSetNoInitSetup(kinmem,noInitSetup::Cint)
    ccall((:KINSetNoInitSetup,shlib), Cint,(Ptr{Void},Cint),kinmem,noInitSetup)
end

function KINSetNoResMon(kinmem,noNNIResMon::Cint)
    ccall((:KINSetNoResMon,shlib), Cint,(Ptr{Void},Cint),kinmem,noNNIResMon)
end

function KINSetMaxSetupCalls(kinmem,msbset::Clong)
    ccall((:KINSetMaxSetupCalls,shlib), Cint,(Ptr{Void},Clong),kinmem,msbset)
end

function KINSetMaxSubSetupCalls(kinmem,msbsetsub::Clong)
    ccall((:KINSetMaxSubSetupCalls,shlib), Cint,(Ptr{Void},Clong),kinmem,msbsetsub)
end

function KINSetEtaForm(kinmem,etachoice::Cint)
    ccall((:KINSetEtaForm,shlib), Cint,(Ptr{Void},Cint),kinmem,etachoice)
end

function KINSetEtaConstValue(kinmem,eta::realtype)
    ccall((:KINSetEtaConstValue,shlib), Cint,(Ptr{Void},realtype),kinmem,eta)
end

function KINSetEtaParams(kinmem,egamma::realtype,ealpha::realtype)
    ccall((:KINSetEtaParams,shlib), Cint,(Ptr{Void},realtype,realtype),kinmem,egamma,ealpha)
end

function KINSetResMonParams(kinmem,omegamin::realtype,omegamax::realtype)
    ccall((:KINSetResMonParams,shlib), Cint,(Ptr{Void},realtype,realtype),kinmem,omegamin,omegamax)
end

function KINSetResMonConstValue(kinmem,omegaconst::realtype)
    ccall((:KINSetResMonConstValue,shlib), Cint,(Ptr{Void},realtype),kinmem,omegaconst)
end

function KINSetNoMinEps(kinmem,noMinEps::Cint)
    ccall((:KINSetNoMinEps,shlib), Cint,(Ptr{Void},Cint),kinmem,noMinEps)
end

function KINSetMaxNewtonStep(kinmem,mxnewtstep::realtype)
    ccall((:KINSetMaxNewtonStep,shlib), Cint,(Ptr{Void},realtype),kinmem,mxnewtstep)
end

function KINSetMaxBetaFails(kinmem,mxnbcf::Clong)
    ccall((:KINSetMaxBetaFails,shlib), Cint,(Ptr{Void},Clong),kinmem,mxnbcf)
end

function KINSetRelErrFunc(kinmem,relfunc::realtype)
    ccall((:KINSetRelErrFunc,shlib), Cint,(Ptr{Void},realtype),kinmem,relfunc)
end

function KINSetFuncNormTol(kinmem,fnormtol::realtype)
    ccall((:KINSetFuncNormTol,shlib), Cint,(Ptr{Void},realtype),kinmem,fnormtol)
end

function KINSetScaledStepTol(kinmem,scsteptol::realtype)
    ccall((:KINSetScaledStepTol,shlib), Cint,(Ptr{Void},realtype),kinmem,scsteptol)
end

function KINSetConstraints(kinmem,constraints::N_Vector)
    ccall((:KINSetConstraints,shlib), Cint,(Ptr{Void},N_Vector),kinmem,constraints)
end

function KINSetSysFunc(kinmem,func::KINSysFn)
    ccall((:KINSetSysFunc,shlib), Cint,(Ptr{Void},KINSysFn),kinmem,func)
end

function KINInit(kinmem,func::KINSysFn,tmpl::N_Vector)
    ccall((:KINInit,shlib), Cint,(Ptr{Void},KINSysFn,N_Vector),kinmem,func,tmpl)
end

function KINSol(kinmem,uu::N_Vector,strategy::Cint,u_scale::N_Vector,f_scale::N_Vector)
    ccall((:KINSol,shlib), Cint,(Ptr{Void},N_Vector,Cint,N_Vector,N_Vector),kinmem,uu,strategy,u_scale,f_scale)
end

function KINGetWorkSpace(kinmem,lenrw,leniw)
    ccall((:KINGetWorkSpace,shlib), Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrw,leniw)
end

function KINGetNumNonlinSolvIters(kinmem,nniters)
    ccall((:KINGetNumNonlinSolvIters,shlib), Cint,(Ptr{Void},Ptr{Clong}),kinmem,nniters)
end

function KINGetNumFuncEvals(kinmem,nfevals)
    ccall((:KINGetNumFuncEvals,shlib), Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevals)
end

function KINGetNumBetaCondFails(kinmem,nbcfails)
    ccall((:KINGetNumBetaCondFails,shlib), Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbcfails)
end

function KINGetNumBacktrackOps(kinmem,nbacktr)
    ccall((:KINGetNumBacktrackOps,shlib), Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbacktr)
end

function KINGetFuncNorm(kinmem,fnorm)
    ccall((:KINGetFuncNorm,shlib), Cint,(Ptr{Void},Ptr{realtype}),kinmem,fnorm)
end

function KINGetStepLength(kinmem,steplength)
    ccall((:KINGetStepLength,shlib), Cint,(Ptr{Void},Ptr{realtype}),kinmem,steplength)
end

function KINGetReturnFlagName(flag::Clong)
    ccall((:KINGetReturnFlagName,shlib), Cstring,(Clong,),flag)
end

function KINFree(kinmem)
    ccall((:KINFree,shlib), Void,(Ptr{Ptr{Void}},),kinmem)
end

function KINErrHandler(error_code::Cint,_module,_function,msg,user_data)
    ccall((:KINErrHandler,shlib),Void,(Cint,Cstring,Cstring,Cstring,Ptr{Void}),error_code,_module,_function,msg,user_data)
end

function KINInfoHandler(_module,_function,msg,user_data)
    ccall((:KINInfoHandler,shlib),Void,(Cstring,Cstring,Cstring,Ptr{Void}),_module,_function,msg,user_data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,shlib),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,shlib),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,shlib),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,shlib),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function KINSpilsSetMaxRestarts(kinmem,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,shlib),Cint,(Ptr{Void},Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem,lenrwSG,leniwSG)
    ccall((:KINSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem,npevals)
    ccall((:KINSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem,npsolves)
    ccall((:KINSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem,nliters)
    ccall((:KINSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem,nlcfails)
    ccall((:KINSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem,njvevals)
    ccall((:KINSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem,nfevalsS)
    ccall((:KINSpilsGetNumFuncEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem,flag)
    ccall((:KINSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function SpbcgMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpbcgMalloc,shlib),SpbcgMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpbcgSolve(mem::SpbcgMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,delta::realtype,P_data,sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:SpbcgSolve,shlib),Cint,(SpbcgMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SpbcgFree(mem::SpbcgMem)
    ccall((:SpbcgFree,shlib),Void,(SpbcgMem,),mem)
end

function KINSpbcg(kinmem,maxl::Cint)
    ccall((:KINSpbcg,shlib),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_spfgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,shlib),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,shlib),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,shlib),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,shlib),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function KINSpilsSetMaxRestarts(kinmem,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,shlib),Cint,(Ptr{Void},Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem,lenrwSG,leniwSG)
    ccall((:KINSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem,npevals)
    ccall((:KINSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem,npsolves)
    ccall((:KINSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem,nliters)
    ccall((:KINSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem,nlcfails)
    ccall((:KINSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem,njvevals)
    ccall((:KINSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem,nfevalsS)
    ccall((:KINSpilsGetNumFuncEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem,flag)
    ccall((:KINSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function SpfgmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpfgmrMalloc,shlib),SpfgmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpfgmrSolve(mem::SpfgmrMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,gstype::Cint,delta::realtype,max_restarts::Cint,maxit::Cint,P_data,s1::N_Vector,s2::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:SpfgmrSolve,shlib),Cint,(SpfgmrMem,Ptr{Void},N_Vector,N_Vector,Cint,Cint,realtype,Cint,Cint,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,gstype,delta,max_restarts,maxit,P_data,s1,s2,atimes,psolve,res_norm,nli,nps)
end

function SpfgmrFree(mem::SpfgmrMem)
    ccall((:SpfgmrFree,shlib),Void,(SpfgmrMem,),mem)
end

function KINSpfgmr(kinmem,maxl::Cint)
    ccall((:KINSpfgmr,shlib),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,shlib),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,shlib),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,shlib),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,shlib),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function KINSpilsSetMaxRestarts(kinmem,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,shlib),Cint,(Ptr{Void},Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem,lenrwSG,leniwSG)
    ccall((:KINSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem,npevals)
    ccall((:KINSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem,npsolves)
    ccall((:KINSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem,nliters)
    ccall((:KINSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem,nlcfails)
    ccall((:KINSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem,njvevals)
    ccall((:KINSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem,nfevalsS)
    ccall((:KINSpilsGetNumFuncEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem,flag)
    ccall((:KINSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function SpgmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpgmrMalloc,shlib),SpgmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpgmrSolve(mem::SpgmrMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,gstype::Cint,delta::realtype,max_restarts::Cint,P_data,s1::N_Vector,s2::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:SpgmrSolve,shlib),Cint,(SpgmrMem,Ptr{Void},N_Vector,N_Vector,Cint,Cint,realtype,Cint,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,gstype,delta,max_restarts,P_data,s1,s2,atimes,psolve,res_norm,nli,nps)
end

function SpgmrFree(mem::SpgmrMem)
    ccall((:SpgmrFree,shlib),Void,(SpgmrMem,),mem)
end

function KINSpgmr(kinmem,maxl::Cint)
    ccall((:KINSpgmr,shlib),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,shlib),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,shlib),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,shlib),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,shlib),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function KINSpilsSetMaxRestarts(kinmem,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,shlib),Cint,(Ptr{Void},Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem,lenrwSG,leniwSG)
    ccall((:KINSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem,npevals)
    ccall((:KINSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem,npsolves)
    ccall((:KINSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem,nliters)
    ccall((:KINSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem,nlcfails)
    ccall((:KINSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem,njvevals)
    ccall((:KINSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem,nfevalsS)
    ccall((:KINSpilsGetNumFuncEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem,flag)
    ccall((:KINSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function SptfqmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SptfqmrMalloc,shlib),SptfqmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SptfqmrSolve(mem::SptfqmrMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,delta::realtype,P_data,sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:SptfqmrSolve,shlib),Cint,(SptfqmrMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SptfqmrFree(mem::SptfqmrMem)
    ccall((:SptfqmrFree,shlib),Void,(SptfqmrMem,),mem)
end

function KINSptfqmr(kinmem,maxl::Cint)
    ccall((:KINSptfqmr,shlib),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
