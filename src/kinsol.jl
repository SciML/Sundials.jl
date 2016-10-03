# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINCreate()
    ccall((:KINCreate,kinsol),Ptr{Void},())
end

function KINSetErrHandlerFn(kinmem,ehfun::KINErrHandlerFn,eh_data)
    ccall((:KINSetErrHandlerFn,kinsol),Cint,(Ptr{Void},KINErrHandlerFn,Ptr{Void}),kinmem,ehfun,eh_data)
end

function KINSetErrFile(kinmem,errfp)
    ccall((:KINSetErrFile,kinsol),Cint,(Ptr{Void},Ptr{FILE}),kinmem,errfp)
end

function KINSetInfoHandlerFn(kinmem,ihfun::KINInfoHandlerFn,ih_data)
    ccall((:KINSetInfoHandlerFn,kinsol),Cint,(Ptr{Void},KINInfoHandlerFn,Ptr{Void}),kinmem,ihfun,ih_data)
end

function KINSetInfoFile(kinmem,infofp)
    ccall((:KINSetInfoFile,kinsol),Cint,(Ptr{Void},Ptr{FILE}),kinmem,infofp)
end

function KINSetUserData(kinmem,user_data)
    ccall((:KINSetUserData,kinsol),Cint,(Ptr{Void},Ptr{Void}),kinmem,user_data)
end

function KINSetPrintLevel(kinmemm,printfl::Cint)
    ccall((:KINSetPrintLevel,kinsol),Cint,(Ptr{Void},Cint),kinmemm,printfl)
end

function KINSetMAA(kinmem,maa::Clong)
    ccall((:KINSetMAA,kinsol),Cint,(Ptr{Void},Clong),kinmem,maa)
end

function KINSetNumMaxIters(kinmem,mxiter::Clong)
    ccall((:KINSetNumMaxIters,kinsol),Cint,(Ptr{Void},Clong),kinmem,mxiter)
end

function KINSetNoInitSetup(kinmem,noInitSetup::Cint)
    ccall((:KINSetNoInitSetup,kinsol),Cint,(Ptr{Void},Cint),kinmem,noInitSetup)
end

function KINSetNoResMon(kinmem,noNNIResMon::Cint)
    ccall((:KINSetNoResMon,kinsol),Cint,(Ptr{Void},Cint),kinmem,noNNIResMon)
end

function KINSetMaxSetupCalls(kinmem,msbset::Clong)
    ccall((:KINSetMaxSetupCalls,kinsol),Cint,(Ptr{Void},Clong),kinmem,msbset)
end

function KINSetMaxSubSetupCalls(kinmem,msbsetsub::Clong)
    ccall((:KINSetMaxSubSetupCalls,kinsol),Cint,(Ptr{Void},Clong),kinmem,msbsetsub)
end

function KINSetEtaForm(kinmem,etachoice::Cint)
    ccall((:KINSetEtaForm,kinsol),Cint,(Ptr{Void},Cint),kinmem,etachoice)
end

function KINSetEtaConstValue(kinmem,eta::realtype)
    ccall((:KINSetEtaConstValue,kinsol),Cint,(Ptr{Void},realtype),kinmem,eta)
end

function KINSetEtaParams(kinmem,egamma::realtype,ealpha::realtype)
    ccall((:KINSetEtaParams,kinsol),Cint,(Ptr{Void},realtype,realtype),kinmem,egamma,ealpha)
end

function KINSetResMonParams(kinmem,omegamin::realtype,omegamax::realtype)
    ccall((:KINSetResMonParams,kinsol),Cint,(Ptr{Void},realtype,realtype),kinmem,omegamin,omegamax)
end

function KINSetResMonConstValue(kinmem,omegaconst::realtype)
    ccall((:KINSetResMonConstValue,kinsol),Cint,(Ptr{Void},realtype),kinmem,omegaconst)
end

function KINSetNoMinEps(kinmem,noMinEps::Cint)
    ccall((:KINSetNoMinEps,kinsol),Cint,(Ptr{Void},Cint),kinmem,noMinEps)
end

function KINSetMaxNewtonStep(kinmem,mxnewtstep::realtype)
    ccall((:KINSetMaxNewtonStep,kinsol),Cint,(Ptr{Void},realtype),kinmem,mxnewtstep)
end

function KINSetMaxBetaFails(kinmem,mxnbcf::Clong)
    ccall((:KINSetMaxBetaFails,kinsol),Cint,(Ptr{Void},Clong),kinmem,mxnbcf)
end

function KINSetRelErrFunc(kinmem,relfunc::realtype)
    ccall((:KINSetRelErrFunc,kinsol),Cint,(Ptr{Void},realtype),kinmem,relfunc)
end

function KINSetFuncNormTol(kinmem,fnormtol::realtype)
    ccall((:KINSetFuncNormTol,kinsol),Cint,(Ptr{Void},realtype),kinmem,fnormtol)
end

function KINSetScaledStepTol(kinmem,scsteptol::realtype)
    ccall((:KINSetScaledStepTol,kinsol),Cint,(Ptr{Void},realtype),kinmem,scsteptol)
end

function KINSetConstraints(kinmem,constraints::N_Vector)
    ccall((:KINSetConstraints,kinsol),Cint,(Ptr{Void},N_Vector),kinmem,constraints)
end

function KINSetSysFunc(kinmem,func::KINSysFn)
    ccall((:KINSetSysFunc,kinsol),Cint,(Ptr{Void},KINSysFn),kinmem,func)
end

function KINInit(kinmem,func::KINSysFn,tmpl::N_Vector)
    ccall((:KINInit,kinsol),Cint,(Ptr{Void},KINSysFn,N_Vector),kinmem,func,tmpl)
end

function KINSol(kinmem,uu::N_Vector,strategy::Cint,u_scale::N_Vector,f_scale::N_Vector)
    ccall((:KINSol,kinsol),Cint,(Ptr{Void},N_Vector,Cint,N_Vector,N_Vector),kinmem,uu,strategy,u_scale,f_scale)
end

function KINGetWorkSpace(kinmem,lenrw,leniw)
    ccall((:KINGetWorkSpace,kinsol),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrw,leniw)
end

function KINGetNumNonlinSolvIters(kinmem,nniters)
    ccall((:KINGetNumNonlinSolvIters,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nniters)
end

function KINGetNumFuncEvals(kinmem,nfevals)
    ccall((:KINGetNumFuncEvals,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevals)
end

function KINGetNumBetaCondFails(kinmem,nbcfails)
    ccall((:KINGetNumBetaCondFails,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbcfails)
end

function KINGetNumBacktrackOps(kinmem,nbacktr)
    ccall((:KINGetNumBacktrackOps,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbacktr)
end

function KINGetFuncNorm(kinmem,fnorm)
    ccall((:KINGetFuncNorm,kinsol),Cint,(Ptr{Void},Ptr{realtype}),kinmem,fnorm)
end

function KINGetStepLength(kinmem,steplength)
    ccall((:KINGetStepLength,kinsol),Cint,(Ptr{Void},Ptr{realtype}),kinmem,steplength)
end

function KINGetReturnFlagName(flag::Clong)
    ccall((:KINGetReturnFlagName,kinsol),Cstring,(Clong,),flag)
end

function KINFree(kinmem)
    ccall((:KINFree,kinsol),Void,(Ptr{Ptr{Void}},),kinmem)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Clong,N::Clong)
    ccall((:NewDenseMat,sundials_direct),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:NewBandMat,sundials_direct),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,sundials_direct),Void,(DlsMat,),A)
end

function NewIntArray(N::Cint)
    ccall((:NewIntArray,sundials_direct),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Clong)
    ccall((:NewLintArray,sundials_direct),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Clong)
    ccall((:NewRealArray,sundials_direct),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p)
    ccall((:DestroyArray,sundials_direct),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,sundials_direct),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,sundials_direct),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,sundials_direct),Void,(DlsMat,),A)
end

function newDenseMat(m::Clong,n::Clong)
    ccall((:newDenseMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Clong,smu::Clong,ml::Clong)
    ccall((:newBandMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a)
    ccall((:destroyMat,sundials_direct),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Cint)
    ccall((:newIntArray,sundials_direct),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Clong)
    ccall((:newLintArray,sundials_direct),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Clong)
    ccall((:newRealArray,sundials_direct),Ptr{realtype},(Clong,),m)
end

function destroyArray(v)
    ccall((:destroyArray,sundials_direct),Void,(Ptr{Void},),v)
end

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function KINDlsSetDenseJacFn(kinmem,jac::KINDlsDenseJacFn)
    ccall((:KINDlsSetDenseJacFn,kinsol_direct),Cint,(Ptr{Void},KINDlsDenseJacFn),kinmem,jac)
end

function KINDlsSetBandJacFn(kinmem,jac::KINDlsBandJacFn)
    ccall((:KINDlsSetBandJacFn,kinsol_direct),Cint,(Ptr{Void},KINDlsBandJacFn),kinmem,jac)
end

function KINDlsGetWorkSpace(kinmem,lenrwB,leniwB)
    ccall((:KINDlsGetWorkSpace,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwB,leniwB)
end

function KINDlsGetNumJacEvals(kinmem,njevalsB)
    ccall((:KINDlsGetNumJacEvals,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njevalsB)
end

function KINDlsGetNumFuncEvals(kinmem,nfevalsB)
    ccall((:KINDlsGetNumFuncEvals,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsB)
end

function KINDlsGetLastFlag(kinmem,flag)
    ccall((:KINDlsGetLastFlag,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName,kinsol_direct),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function KINSpilsSetMaxRestarts(kinmem,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,kinsol_spils),Cint,(Ptr{Void},Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,kinsol_spils),Cint,(Ptr{Void},KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,kinsol_spils),Cint,(Ptr{Void},KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem,lenrwSG,leniwSG)
    ccall((:KINSpilsGetWorkSpace,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem,npevals)
    ccall((:KINSpilsGetNumPrecEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem,npsolves)
    ccall((:KINSpilsGetNumPrecSolves,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem,nliters)
    ccall((:KINSpilsGetNumLinIters,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem,nlcfails)
    ccall((:KINSpilsGetNumConvFails,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem,njvevals)
    ccall((:KINSpilsGetNumJtimesEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem,nfevalsS)
    ccall((:KINSpilsGetNumFuncEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem,flag)
    ccall((:KINSpilsGetLastFlag,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,kinsol_spils),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Clong,N::Clong)
    ccall((:NewDenseMat,sundials_direct),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:NewBandMat,sundials_direct),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,sundials_direct),Void,(DlsMat,),A)
end

function NewIntArray(N::Cint)
    ccall((:NewIntArray,sundials_direct),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Clong)
    ccall((:NewLintArray,sundials_direct),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Clong)
    ccall((:NewRealArray,sundials_direct),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p)
    ccall((:DestroyArray,sundials_direct),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,sundials_direct),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,sundials_direct),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,sundials_direct),Void,(DlsMat,),A)
end

function newDenseMat(m::Clong,n::Clong)
    ccall((:newDenseMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Clong,smu::Clong,ml::Clong)
    ccall((:newBandMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a)
    ccall((:destroyMat,sundials_direct),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Cint)
    ccall((:newIntArray,sundials_direct),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Clong)
    ccall((:newLintArray,sundials_direct),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Clong)
    ccall((:newRealArray,sundials_direct),Ptr{realtype},(Clong,),m)
end

function destroyArray(v)
    ccall((:destroyArray,sundials_direct),Void,(Ptr{Void},),v)
end

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function KINDlsSetDenseJacFn(kinmem,jac::KINDlsDenseJacFn)
    ccall((:KINDlsSetDenseJacFn,kinsol_direct),Cint,(Ptr{Void},KINDlsDenseJacFn),kinmem,jac)
end

function KINDlsSetBandJacFn(kinmem,jac::KINDlsBandJacFn)
    ccall((:KINDlsSetBandJacFn,kinsol_direct),Cint,(Ptr{Void},KINDlsBandJacFn),kinmem,jac)
end

function KINDlsGetWorkSpace(kinmem,lenrwB,leniwB)
    ccall((:KINDlsGetWorkSpace,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwB,leniwB)
end

function KINDlsGetNumJacEvals(kinmem,njevalsB)
    ccall((:KINDlsGetNumJacEvals,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njevalsB)
end

function KINDlsGetNumFuncEvals(kinmem,nfevalsB)
    ccall((:KINDlsGetNumFuncEvals,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsB)
end

function KINDlsGetLastFlag(kinmem,flag)
    ccall((:KINDlsGetLastFlag,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName,kinsol_direct),Cstring,(Clong,),flag)
end

function BandGBTRF(A::DlsMat,p)
    ccall((:BandGBTRF,sundials_band),Clong,(DlsMat,Ptr{Clong}),A,p)
end

function bandGBTRF(a,n::Clong,mu::Clong,ml::Clong,smu::Clong,p)
    ccall((:bandGBTRF,sundials_band),Clong,(Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong,Ptr{Clong}),a,n,mu,ml,smu,p)
end

function BandGBTRS(A::DlsMat,p,b)
    ccall((:BandGBTRS,sundials_band),Void,(DlsMat,Ptr{Clong},Ptr{realtype}),A,p,b)
end

function bandGBTRS(a,n::Clong,smu::Clong,ml::Clong,p,b)
    ccall((:bandGBTRS,sundials_band),Void,(Ptr{Ptr{realtype}},Clong,Clong,Clong,Ptr{Clong},Ptr{realtype}),a,n,smu,ml,p,b)
end

function BandCopy(A::DlsMat,B::DlsMat,copymu::Clong,copyml::Clong)
    ccall((:BandCopy,sundials_band),Void,(DlsMat,DlsMat,Clong,Clong),A,B,copymu,copyml)
end

function bandCopy(a,b,n::Clong,a_smu::Clong,b_smu::Clong,copymu::Clong,copyml::Clong)
    ccall((:bandCopy,sundials_band),Void,(Ptr{Ptr{realtype}},Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong,Clong),a,b,n,a_smu,b_smu,copymu,copyml)
end

function BandScale(c::realtype,A::DlsMat)
    ccall((:BandScale,sundials_band),Void,(realtype,DlsMat),c,A)
end

function bandScale(c::realtype,a,n::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:bandScale,sundials_band),Void,(realtype,Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong),c,a,n,mu,ml,smu)
end

function bandAddIdentity(a,n::Clong,smu::Clong)
    ccall((:bandAddIdentity,sundials_band),Void,(Ptr{Ptr{realtype}},Clong,Clong),a,n,smu)
end

function BandMatvec(A::DlsMat,x,y)
    ccall((:BandMatvec,sundials_band),Void,(DlsMat,Ptr{realtype},Ptr{realtype}),A,x,y)
end

function bandMatvec(a,x,y,n::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:bandMatvec,sundials_band),Void,(Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype},Clong,Clong,Clong,Clong),a,x,y,n,mu,ml,smu)
end

function KINBand(kinmem,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:KINBand,kinsol_band),Cint,(Ptr{Void},Clong,Clong,Clong),kinmem,N,mupper,mlower)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function KINBBDPrecInit(kinmem,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_uu::realtype,gloc::KINLocalFn,gcomm::KINCommFn)
    ccall((:KINBBDPrecInit,kinsol_bbdpre),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,KINLocalFn,KINCommFn),kinmem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_uu,gloc,gcomm)
end

function KINBBDPrecGetWorkSpace(kinmem,lenrwBBDP,leniwBBDP)
    ccall((:KINBBDPrecGetWorkSpace,kinsol_bbdpre),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwBBDP,leniwBBDP)
end

function KINBBDPrecGetNumGfnEvals(kinmem,ngevalsBBDP)
    ccall((:KINBBDPrecGetNumGfnEvals,kinsol_bbdpre),Cint,(Ptr{Void},Ptr{Clong}),kinmem,ngevalsBBDP)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Clong,N::Clong)
    ccall((:NewDenseMat,sundials_direct),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:NewBandMat,sundials_direct),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,sundials_direct),Void,(DlsMat,),A)
end

function NewIntArray(N::Cint)
    ccall((:NewIntArray,sundials_direct),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Clong)
    ccall((:NewLintArray,sundials_direct),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Clong)
    ccall((:NewRealArray,sundials_direct),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p)
    ccall((:DestroyArray,sundials_direct),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,sundials_direct),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,sundials_direct),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,sundials_direct),Void,(DlsMat,),A)
end

function newDenseMat(m::Clong,n::Clong)
    ccall((:newDenseMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Clong,smu::Clong,ml::Clong)
    ccall((:newBandMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a)
    ccall((:destroyMat,sundials_direct),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Cint)
    ccall((:newIntArray,sundials_direct),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Clong)
    ccall((:newLintArray,sundials_direct),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Clong)
    ccall((:newRealArray,sundials_direct),Ptr{realtype},(Clong,),m)
end

function destroyArray(v)
    ccall((:destroyArray,sundials_direct),Void,(Ptr{Void},),v)
end

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function KINDlsSetDenseJacFn(kinmem,jac::KINDlsDenseJacFn)
    ccall((:KINDlsSetDenseJacFn,kinsol_direct),Cint,(Ptr{Void},KINDlsDenseJacFn),kinmem,jac)
end

function KINDlsSetBandJacFn(kinmem,jac::KINDlsBandJacFn)
    ccall((:KINDlsSetBandJacFn,kinsol_direct),Cint,(Ptr{Void},KINDlsBandJacFn),kinmem,jac)
end

function KINDlsGetWorkSpace(kinmem,lenrwB,leniwB)
    ccall((:KINDlsGetWorkSpace,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwB,leniwB)
end

function KINDlsGetNumJacEvals(kinmem,njevalsB)
    ccall((:KINDlsGetNumJacEvals,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njevalsB)
end

function KINDlsGetNumFuncEvals(kinmem,nfevalsB)
    ccall((:KINDlsGetNumFuncEvals,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsB)
end

function KINDlsGetLastFlag(kinmem,flag)
    ccall((:KINDlsGetLastFlag,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName,kinsol_direct),Cstring,(Clong,),flag)
end

function DenseGETRF(A::DlsMat,p)
    ccall((:DenseGETRF,sundials_dense),Clong,(DlsMat,Ptr{Clong}),A,p)
end

function DenseGETRS(A::DlsMat,p,b)
    ccall((:DenseGETRS,sundials_dense),Void,(DlsMat,Ptr{Clong},Ptr{realtype}),A,p,b)
end

function denseGETRF(a,m::Clong,n::Clong,p)
    ccall((:denseGETRF,sundials_dense),Clong,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{Clong}),a,m,n,p)
end

function denseGETRS(a,n::Clong,p,b)
    ccall((:denseGETRS,sundials_dense),Void,(Ptr{Ptr{realtype}},Clong,Ptr{Clong},Ptr{realtype}),a,n,p,b)
end

function DensePOTRF(A::DlsMat)
    ccall((:DensePOTRF,sundials_dense),Clong,(DlsMat,),A)
end

function DensePOTRS(A::DlsMat,b)
    ccall((:DensePOTRS,sundials_dense),Void,(DlsMat,Ptr{realtype}),A,b)
end

function densePOTRF(a,m::Clong)
    ccall((:densePOTRF,sundials_dense),Clong,(Ptr{Ptr{realtype}},Clong),a,m)
end

function densePOTRS(a,m::Clong,b)
    ccall((:densePOTRS,sundials_dense),Void,(Ptr{Ptr{realtype}},Clong,Ptr{realtype}),a,m,b)
end

function DenseGEQRF(A::DlsMat,beta,wrk)
    ccall((:DenseGEQRF,sundials_dense),Cint,(DlsMat,Ptr{realtype},Ptr{realtype}),A,beta,wrk)
end

function DenseORMQR(A::DlsMat,beta,vn,vm,wrk)
    ccall((:DenseORMQR,sundials_dense),Cint,(DlsMat,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),A,beta,vn,vm,wrk)
end

function denseGEQRF(a,m::Clong,n::Clong,beta,wrk)
    ccall((:denseGEQRF,sundials_dense),Cint,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{realtype},Ptr{realtype}),a,m,n,beta,wrk)
end

function denseORMQR(a,m::Clong,n::Clong,beta,v,w,wrk)
    ccall((:denseORMQR,sundials_dense),Cint,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),a,m,n,beta,v,w,wrk)
end

function DenseCopy(A::DlsMat,B::DlsMat)
    ccall((:DenseCopy,sundials_dense),Void,(DlsMat,DlsMat),A,B)
end

function denseCopy(a,b,m::Clong,n::Clong)
    ccall((:denseCopy,sundials_dense),Void,(Ptr{Ptr{realtype}},Ptr{Ptr{realtype}},Clong,Clong),a,b,m,n)
end

function DenseScale(c::realtype,A::DlsMat)
    ccall((:DenseScale,sundials_dense),Void,(realtype,DlsMat),c,A)
end

function denseScale(c::realtype,a,m::Clong,n::Clong)
    ccall((:denseScale,sundials_dense),Void,(realtype,Ptr{Ptr{realtype}},Clong,Clong),c,a,m,n)
end

function denseAddIdentity(a,n::Clong)
    ccall((:denseAddIdentity,sundials_dense),Void,(Ptr{Ptr{realtype}},Clong),a,n)
end

function DenseMatvec(A::DlsMat,x,y)
    ccall((:DenseMatvec,sundials_dense),Void,(DlsMat,Ptr{realtype},Ptr{realtype}),A,x,y)
end

function denseMatvec(a,x,y,m::Clong,n::Clong)
    ccall((:denseMatvec,sundials_dense),Void,(Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype},Clong,Clong),a,x,y,m,n)
end

function KINDense(kinmem,N::Clong)
    ccall((:KINDense,kinsol_dense),Cint,(Ptr{Void},Clong),kinmem,N)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINCreate()
    ccall((:KINCreate,kinsol),Ptr{Void},())
end

function KINSetErrHandlerFn(kinmem,ehfun::KINErrHandlerFn,eh_data)
    ccall((:KINSetErrHandlerFn,kinsol),Cint,(Ptr{Void},KINErrHandlerFn,Ptr{Void}),kinmem,ehfun,eh_data)
end

function KINSetErrFile(kinmem,errfp)
    ccall((:KINSetErrFile,kinsol),Cint,(Ptr{Void},Ptr{FILE}),kinmem,errfp)
end

function KINSetInfoHandlerFn(kinmem,ihfun::KINInfoHandlerFn,ih_data)
    ccall((:KINSetInfoHandlerFn,kinsol),Cint,(Ptr{Void},KINInfoHandlerFn,Ptr{Void}),kinmem,ihfun,ih_data)
end

function KINSetInfoFile(kinmem,infofp)
    ccall((:KINSetInfoFile,kinsol),Cint,(Ptr{Void},Ptr{FILE}),kinmem,infofp)
end

function KINSetUserData(kinmem,user_data)
    ccall((:KINSetUserData,kinsol),Cint,(Ptr{Void},Ptr{Void}),kinmem,user_data)
end

function KINSetPrintLevel(kinmemm,printfl::Cint)
    ccall((:KINSetPrintLevel,kinsol),Cint,(Ptr{Void},Cint),kinmemm,printfl)
end

function KINSetMAA(kinmem,maa::Clong)
    ccall((:KINSetMAA,kinsol),Cint,(Ptr{Void},Clong),kinmem,maa)
end

function KINSetNumMaxIters(kinmem,mxiter::Clong)
    ccall((:KINSetNumMaxIters,kinsol),Cint,(Ptr{Void},Clong),kinmem,mxiter)
end

function KINSetNoInitSetup(kinmem,noInitSetup::Cint)
    ccall((:KINSetNoInitSetup,kinsol),Cint,(Ptr{Void},Cint),kinmem,noInitSetup)
end

function KINSetNoResMon(kinmem,noNNIResMon::Cint)
    ccall((:KINSetNoResMon,kinsol),Cint,(Ptr{Void},Cint),kinmem,noNNIResMon)
end

function KINSetMaxSetupCalls(kinmem,msbset::Clong)
    ccall((:KINSetMaxSetupCalls,kinsol),Cint,(Ptr{Void},Clong),kinmem,msbset)
end

function KINSetMaxSubSetupCalls(kinmem,msbsetsub::Clong)
    ccall((:KINSetMaxSubSetupCalls,kinsol),Cint,(Ptr{Void},Clong),kinmem,msbsetsub)
end

function KINSetEtaForm(kinmem,etachoice::Cint)
    ccall((:KINSetEtaForm,kinsol),Cint,(Ptr{Void},Cint),kinmem,etachoice)
end

function KINSetEtaConstValue(kinmem,eta::realtype)
    ccall((:KINSetEtaConstValue,kinsol),Cint,(Ptr{Void},realtype),kinmem,eta)
end

function KINSetEtaParams(kinmem,egamma::realtype,ealpha::realtype)
    ccall((:KINSetEtaParams,kinsol),Cint,(Ptr{Void},realtype,realtype),kinmem,egamma,ealpha)
end

function KINSetResMonParams(kinmem,omegamin::realtype,omegamax::realtype)
    ccall((:KINSetResMonParams,kinsol),Cint,(Ptr{Void},realtype,realtype),kinmem,omegamin,omegamax)
end

function KINSetResMonConstValue(kinmem,omegaconst::realtype)
    ccall((:KINSetResMonConstValue,kinsol),Cint,(Ptr{Void},realtype),kinmem,omegaconst)
end

function KINSetNoMinEps(kinmem,noMinEps::Cint)
    ccall((:KINSetNoMinEps,kinsol),Cint,(Ptr{Void},Cint),kinmem,noMinEps)
end

function KINSetMaxNewtonStep(kinmem,mxnewtstep::realtype)
    ccall((:KINSetMaxNewtonStep,kinsol),Cint,(Ptr{Void},realtype),kinmem,mxnewtstep)
end

function KINSetMaxBetaFails(kinmem,mxnbcf::Clong)
    ccall((:KINSetMaxBetaFails,kinsol),Cint,(Ptr{Void},Clong),kinmem,mxnbcf)
end

function KINSetRelErrFunc(kinmem,relfunc::realtype)
    ccall((:KINSetRelErrFunc,kinsol),Cint,(Ptr{Void},realtype),kinmem,relfunc)
end

function KINSetFuncNormTol(kinmem,fnormtol::realtype)
    ccall((:KINSetFuncNormTol,kinsol),Cint,(Ptr{Void},realtype),kinmem,fnormtol)
end

function KINSetScaledStepTol(kinmem,scsteptol::realtype)
    ccall((:KINSetScaledStepTol,kinsol),Cint,(Ptr{Void},realtype),kinmem,scsteptol)
end

function KINSetConstraints(kinmem,constraints::N_Vector)
    ccall((:KINSetConstraints,kinsol),Cint,(Ptr{Void},N_Vector),kinmem,constraints)
end

function KINSetSysFunc(kinmem,func::KINSysFn)
    ccall((:KINSetSysFunc,kinsol),Cint,(Ptr{Void},KINSysFn),kinmem,func)
end

function KINInit(kinmem,func::KINSysFn,tmpl::N_Vector)
    ccall((:KINInit,kinsol),Cint,(Ptr{Void},KINSysFn,N_Vector),kinmem,func,tmpl)
end

function KINSol(kinmem,uu::N_Vector,strategy::Cint,u_scale::N_Vector,f_scale::N_Vector)
    ccall((:KINSol,kinsol),Cint,(Ptr{Void},N_Vector,Cint,N_Vector,N_Vector),kinmem,uu,strategy,u_scale,f_scale)
end

function KINGetWorkSpace(kinmem,lenrw,leniw)
    ccall((:KINGetWorkSpace,kinsol),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrw,leniw)
end

function KINGetNumNonlinSolvIters(kinmem,nniters)
    ccall((:KINGetNumNonlinSolvIters,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nniters)
end

function KINGetNumFuncEvals(kinmem,nfevals)
    ccall((:KINGetNumFuncEvals,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevals)
end

function KINGetNumBetaCondFails(kinmem,nbcfails)
    ccall((:KINGetNumBetaCondFails,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbcfails)
end

function KINGetNumBacktrackOps(kinmem,nbacktr)
    ccall((:KINGetNumBacktrackOps,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbacktr)
end

function KINGetFuncNorm(kinmem,fnorm)
    ccall((:KINGetFuncNorm,kinsol),Cint,(Ptr{Void},Ptr{realtype}),kinmem,fnorm)
end

function KINGetStepLength(kinmem,steplength)
    ccall((:KINGetStepLength,kinsol),Cint,(Ptr{Void},Ptr{realtype}),kinmem,steplength)
end

function KINGetReturnFlagName(flag::Clong)
    ccall((:KINGetReturnFlagName,kinsol),Cstring,(Clong,),flag)
end

function KINFree(kinmem)
    ccall((:KINFree,kinsol),Void,(Ptr{Ptr{Void}},),kinmem)
end

function KINErrHandler(error_code::Cint,_module,_function,msg,user_data)
    ccall((:KINErrHandler,kinsol_impl),Void,(Cint,Cstring,Cstring,Cstring,Ptr{Void}),error_code,_module,_function,msg,user_data)
end

function KINInfoHandler(_module,_function,msg,user_data)
    ccall((:KINInfoHandler,kinsol_impl),Void,(Cstring,Cstring,Cstring,Ptr{Void}),_module,_function,msg,user_data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function KINSpilsSetMaxRestarts(kinmem,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,kinsol_spils),Cint,(Ptr{Void},Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,kinsol_spils),Cint,(Ptr{Void},KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,kinsol_spils),Cint,(Ptr{Void},KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem,lenrwSG,leniwSG)
    ccall((:KINSpilsGetWorkSpace,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem,npevals)
    ccall((:KINSpilsGetNumPrecEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem,npsolves)
    ccall((:KINSpilsGetNumPrecSolves,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem,nliters)
    ccall((:KINSpilsGetNumLinIters,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem,nlcfails)
    ccall((:KINSpilsGetNumConvFails,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem,njvevals)
    ccall((:KINSpilsGetNumJtimesEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem,nfevalsS)
    ccall((:KINSpilsGetNumFuncEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem,flag)
    ccall((:KINSpilsGetLastFlag,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,kinsol_spils),Cstring,(Clong,),flag)
end

function SpbcgMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpbcgMalloc,sundials_spbcgs),SpbcgMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpbcgSolve(mem::SpbcgMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,delta::realtype,P_data,sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:SpbcgSolve,sundials_spbcgs),Cint,(SpbcgMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SpbcgFree(mem::SpbcgMem)
    ccall((:SpbcgFree,sundials_spbcgs),Void,(SpbcgMem,),mem)
end

function KINSpbcg(kinmem,maxl::Cint)
    ccall((:KINSpbcg,kinsol_spbcgs),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_spfgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function KINSpilsSetMaxRestarts(kinmem,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,kinsol_spils),Cint,(Ptr{Void},Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,kinsol_spils),Cint,(Ptr{Void},KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,kinsol_spils),Cint,(Ptr{Void},KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem,lenrwSG,leniwSG)
    ccall((:KINSpilsGetWorkSpace,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem,npevals)
    ccall((:KINSpilsGetNumPrecEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem,npsolves)
    ccall((:KINSpilsGetNumPrecSolves,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem,nliters)
    ccall((:KINSpilsGetNumLinIters,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem,nlcfails)
    ccall((:KINSpilsGetNumConvFails,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem,njvevals)
    ccall((:KINSpilsGetNumJtimesEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem,nfevalsS)
    ccall((:KINSpilsGetNumFuncEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem,flag)
    ccall((:KINSpilsGetLastFlag,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,kinsol_spils),Cstring,(Clong,),flag)
end

function SpfgmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpfgmrMalloc,sundials_spfgmr),SpfgmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpfgmrSolve(mem::SpfgmrMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,gstype::Cint,delta::realtype,max_restarts::Cint,maxit::Cint,P_data,s1::N_Vector,s2::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:SpfgmrSolve,sundials_spfgmr),Cint,(SpfgmrMem,Ptr{Void},N_Vector,N_Vector,Cint,Cint,realtype,Cint,Cint,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,gstype,delta,max_restarts,maxit,P_data,s1,s2,atimes,psolve,res_norm,nli,nps)
end

function SpfgmrFree(mem::SpfgmrMem)
    ccall((:SpfgmrFree,sundials_spfgmr),Void,(SpfgmrMem,),mem)
end

function KINSpfgmr(kinmem,maxl::Cint)
    ccall((:KINSpfgmr,kinsol_spfgmr),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function KINSpilsSetMaxRestarts(kinmem,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,kinsol_spils),Cint,(Ptr{Void},Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,kinsol_spils),Cint,(Ptr{Void},KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,kinsol_spils),Cint,(Ptr{Void},KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem,lenrwSG,leniwSG)
    ccall((:KINSpilsGetWorkSpace,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem,npevals)
    ccall((:KINSpilsGetNumPrecEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem,npsolves)
    ccall((:KINSpilsGetNumPrecSolves,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem,nliters)
    ccall((:KINSpilsGetNumLinIters,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem,nlcfails)
    ccall((:KINSpilsGetNumConvFails,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem,njvevals)
    ccall((:KINSpilsGetNumJtimesEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem,nfevalsS)
    ccall((:KINSpilsGetNumFuncEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem,flag)
    ccall((:KINSpilsGetLastFlag,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,kinsol_spils),Cstring,(Clong,),flag)
end

function SpgmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpgmrMalloc,sundials_spgmr),SpgmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpgmrSolve(mem::SpgmrMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,gstype::Cint,delta::realtype,max_restarts::Cint,P_data,s1::N_Vector,s2::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:SpgmrSolve,sundials_spgmr),Cint,(SpgmrMem,Ptr{Void},N_Vector,N_Vector,Cint,Cint,realtype,Cint,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,gstype,delta,max_restarts,P_data,s1,s2,atimes,psolve,res_norm,nli,nps)
end

function SpgmrFree(mem::SpgmrMem)
    ccall((:SpgmrFree,sundials_spgmr),Void,(SpgmrMem,),mem)
end

function KINSpgmr(kinmem,maxl::Cint)
    ccall((:KINSpgmr,kinsol_spgmr),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/kinsol/kinsol_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function KINSpilsSetMaxRestarts(kinmem,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,kinsol_spils),Cint,(Ptr{Void},Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,kinsol_spils),Cint,(Ptr{Void},KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,kinsol_spils),Cint,(Ptr{Void},KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem,lenrwSG,leniwSG)
    ccall((:KINSpilsGetWorkSpace,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem,npevals)
    ccall((:KINSpilsGetNumPrecEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem,npsolves)
    ccall((:KINSpilsGetNumPrecSolves,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem,nliters)
    ccall((:KINSpilsGetNumLinIters,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem,nlcfails)
    ccall((:KINSpilsGetNumConvFails,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem,njvevals)
    ccall((:KINSpilsGetNumJtimesEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem,nfevalsS)
    ccall((:KINSpilsGetNumFuncEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem,flag)
    ccall((:KINSpilsGetLastFlag,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,kinsol_spils),Cstring,(Clong,),flag)
end

function SptfqmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SptfqmrMalloc,sundials_sptfqmr),SptfqmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SptfqmrSolve(mem::SptfqmrMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,delta::realtype,P_data,sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:SptfqmrSolve,sundials_sptfqmr),Cint,(SptfqmrMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SptfqmrFree(mem::SptfqmrMem)
    ccall((:SptfqmrFree,sundials_sptfqmr),Void,(SptfqmrMem,),mem)
end

function KINSptfqmr(kinmem,maxl::Cint)
    ccall((:KINSptfqmr,kinsol_sptfqmr),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
