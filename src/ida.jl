# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/ida/ida.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDACreate()
    ccall((:IDACreate,shlib),Ptr{Void},())
end

function IDASetErrHandlerFn(ida_mem,ehfun::IDAErrHandlerFn,eh_data)
    ccall((:IDASetErrHandlerFn,shlib),Cint,(Ptr{Void},IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

function IDASetErrFile(ida_mem,errfp)
    ccall((:IDASetErrFile,shlib),Cint,(Ptr{Void},Ptr{FILE}),ida_mem,errfp)
end

function IDASetUserData(ida_mem,user_data)
    ccall((:IDASetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),ida_mem,user_data)
end

function IDASetMaxOrd(ida_mem,maxord::Cint)
    ccall((:IDASetMaxOrd,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxord)
end

function IDASetMaxNumSteps(ida_mem,mxsteps::Clong)
    ccall((:IDASetMaxNumSteps,shlib),Cint,(Ptr{Void},Clong),ida_mem,mxsteps)
end

function IDASetInitStep(ida_mem,hin::realtype)
    ccall((:IDASetInitStep,shlib),Cint,(Ptr{Void},realtype),ida_mem,hin)
end

function IDASetMaxStep(ida_mem,hmax::realtype)
    ccall((:IDASetMaxStep,shlib),Cint,(Ptr{Void},realtype),ida_mem,hmax)
end

function IDASetStopTime(ida_mem,tstop::realtype)
    ccall((:IDASetStopTime,shlib),Cint,(Ptr{Void},realtype),ida_mem,tstop)
end

function IDASetNonlinConvCoef(ida_mem,epcon::realtype)
    ccall((:IDASetNonlinConvCoef,shlib),Cint,(Ptr{Void},realtype),ida_mem,epcon)
end

function IDASetMaxErrTestFails(ida_mem,maxnef::Cint)
    ccall((:IDASetMaxErrTestFails,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnef)
end

function IDASetMaxNonlinIters(ida_mem,maxcor::Cint)
    ccall((:IDASetMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxcor)
end

function IDASetMaxConvFails(ida_mem,maxncf::Cint)
    ccall((:IDASetMaxConvFails,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxncf)
end

function IDASetSuppressAlg(ida_mem,suppressalg::Cint)
    ccall((:IDASetSuppressAlg,shlib),Cint,(Ptr{Void},Cint),ida_mem,suppressalg)
end

function IDASetId(ida_mem,id::N_Vector)
    ccall((:IDASetId,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,id)
end

function IDASetConstraints(ida_mem,constraints::N_Vector)
    ccall((:IDASetConstraints,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,constraints)
end

function IDASetRootDirection(ida_mem,rootdir)
    ccall((:IDASetRootDirection,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem)
    ccall((:IDASetNoInactiveRootWarn,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDAInit(ida_mem,res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,shlib),Cint,(Ptr{Void},IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

function IDAReInit(ida_mem,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,shlib),Cint,(Ptr{Void},realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

function IDASStolerances(ida_mem,reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),ida_mem,reltol,abstol)
end

function IDASVtolerances(ida_mem,reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),ida_mem,reltol,abstol)
end

function IDAWFtolerances(ida_mem,efun::IDAEwtFn)
    ccall((:IDAWFtolerances,shlib),Cint,(Ptr{Void},IDAEwtFn),ida_mem,efun)
end

function IDASetNonlinConvCoefIC(ida_mem,epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,shlib),Cint,(Ptr{Void},realtype),ida_mem,epiccon)
end

function IDASetMaxNumStepsIC(ida_mem,maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnh)
end

function IDASetMaxNumJacsIC(ida_mem,maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnj)
end

function IDASetMaxNumItersIC(ida_mem,maxnit::Cint)
    ccall((:IDASetMaxNumItersIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnit)
end

function IDASetLineSearchOffIC(ida_mem,lsoff::Cint)
    ccall((:IDASetLineSearchOffIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,lsoff)
end

function IDASetStepToleranceIC(ida_mem,steptol::realtype)
    ccall((:IDASetStepToleranceIC,shlib),Cint,(Ptr{Void},realtype),ida_mem,steptol)
end

function IDARootInit(ida_mem,nrtfn::Cint,g::IDARootFn)
    ccall((:IDARootInit,shlib),Cint,(Ptr{Void},Cint,IDARootFn),ida_mem,nrtfn,g)
end

function IDACalcIC(ida_mem,icopt::Cint,tout1::realtype)
    ccall((:IDACalcIC,shlib),Cint,(Ptr{Void},Cint,realtype),ida_mem,icopt,tout1)
end

function IDASolve(ida_mem,tout::realtype,tret,yret::N_Vector,ypret::N_Vector,itask::Cint)
    ccall((:IDASolve,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

function IDAGetDky(ida_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetWorkSpace(ida_mem,lenrw,leniw)
    ccall((:IDAGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

function IDAGetNumSteps(ida_mem,nsteps)
    ccall((:IDAGetNumSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nsteps)
end

function IDAGetNumResEvals(ida_mem,nrevals)
    ccall((:IDAGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem,nlinsetups)
    ccall((:IDAGetNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem,netfails)
    ccall((:IDAGetNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,netfails)
end

function IDAGetNumBacktrackOps(ida_mem,nbacktr)
    ccall((:IDAGetNumBacktrackOps,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nbacktr)
end

function IDAGetConsistentIC(ida_mem,yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,shlib),Cint,(Ptr{Void},N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

function IDAGetLastOrder(ida_mem,klast)
    ccall((:IDAGetLastOrder,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,klast)
end

function IDAGetCurrentOrder(ida_mem,kcur)
    ccall((:IDAGetCurrentOrder,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,kcur)
end

function IDAGetActualInitStep(ida_mem,hinused)
    ccall((:IDAGetActualInitStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hinused)
end

function IDAGetLastStep(ida_mem,hlast)
    ccall((:IDAGetLastStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hlast)
end

function IDAGetCurrentStep(ida_mem,hcur)
    ccall((:IDAGetCurrentStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hcur)
end

function IDAGetCurrentTime(ida_mem,tcur)
    ccall((:IDAGetCurrentTime,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tcur)
end

function IDAGetTolScaleFactor(ida_mem,tolsfact)
    ccall((:IDAGetTolScaleFactor,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tolsfact)
end

function IDAGetErrWeights(ida_mem,eweight::N_Vector)
    ccall((:IDAGetErrWeights,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,eweight)
end

function IDAGetEstLocalErrors(ida_mem,ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,ele)
end

function IDAGetNumGEvals(ida_mem,ngevals)
    ccall((:IDAGetNumGEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,ngevals)
end

function IDAGetRootInfo(ida_mem,rootsfound)
    ccall((:IDAGetRootInfo,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootsfound)
end

function IDAGetIntegratorStats(ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    ccall((:IDAGetIntegratorStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem,nniters)
    ccall((:IDAGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem,nncfails)
    ccall((:IDAGetNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nncfails)
end

function IDAGetNonlinSolvStats(ida_mem,nniters,nncfails)
    ccall((:IDAGetNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

function IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function IDAFree(ida_mem)
    ccall((:IDAFree,shlib),Void,(Ptr{Ptr{Void}},),ida_mem)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/ida/shlib.h
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

function IDADlsSetDenseJacFn(ida_mem,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,shlib),Cint,(Ptr{Void},IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,shlib),Cint,(Ptr{Void},IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDADlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem,njevals)
    ccall((:IDADlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem,nfevalsLS)
    ccall((:IDADlsGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem,flag)
    ccall((:IDADlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/ida/shlib.h
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

function IDASpilsSetPreconditioner(ida_mem,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,shlib),Cint,(Ptr{Void},IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem,gstype::Cint)
    ccall((:IDASpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem,maxl::Cint)
    ccall((:IDASpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,shlib),Cint,(Ptr{Void},realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDASpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem,npevals)
    ccall((:IDASpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem,npsolves)
    ccall((:IDASpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem,nliters)
    ccall((:IDASpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem,nlcfails)
    ccall((:IDASpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem,njvevals)
    ccall((:IDASpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem,nrevalsLS)
    ccall((:IDASpilsGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem,flag)
    ccall((:IDASpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/ida/ida_band.h
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

function IDADlsSetDenseJacFn(ida_mem,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,shlib),Cint,(Ptr{Void},IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,shlib),Cint,(Ptr{Void},IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDADlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem,njevals)
    ccall((:IDADlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem,nfevalsLS)
    ccall((:IDADlsGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem,flag)
    ccall((:IDADlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function IDABand(ida_mem,Neq::Clong,mupper::Clong,mlower::Clong)
    ccall((:IDABand,ida_band),Cint,(Ptr{Void},Clong,Clong,Clong),ida_mem,Neq,mupper,mlower)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/ida/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDABBDPrecInit(ida_mem,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_yy::realtype,Gres::IDABBDLocalFn,Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit,shlib),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFn,IDABBDCommFn),ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)
end

function IDABBDPrecReInit(ida_mem,mudq::Clong,mldq::Clong,dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit,shlib),Cint,(Ptr{Void},Clong,Clong,realtype),ida_mem,mudq,mldq,dq_rel_yy)
end

function IDABBDPrecGetWorkSpace(ida_mem,lenrwBBDP,leniwBBDP)
    ccall((:IDABBDPrecGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwBBDP,leniwBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem,ngevalsBBDP)
    ccall((:IDABBDPrecGetNumGfnEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,ngevalsBBDP)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/ida/ida_dense.h
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

function IDADlsSetDenseJacFn(ida_mem,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,shlib),Cint,(Ptr{Void},IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,shlib),Cint,(Ptr{Void},IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDADlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem,njevals)
    ccall((:IDADlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem,nfevalsLS)
    ccall((:IDADlsGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem,flag)
    ccall((:IDADlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function IDADense(ida_mem,Neq::Clong)
    ccall((:IDADense,shlib),Cint,(Ptr{Void},Clong),ida_mem,Neq)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/ida/ida_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDACreate()
    ccall((:IDACreate,shlib),Ptr{Void},())
end

function IDASetErrHandlerFn(ida_mem,ehfun::IDAErrHandlerFn,eh_data)
    ccall((:IDASetErrHandlerFn,shlib),Cint,(Ptr{Void},IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

function IDASetErrFile(ida_mem,errfp)
    ccall((:IDASetErrFile,shlib),Cint,(Ptr{Void},Ptr{FILE}),ida_mem,errfp)
end

function IDASetUserData(ida_mem,user_data)
    ccall((:IDASetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),ida_mem,user_data)
end

function IDASetMaxOrd(ida_mem,maxord::Cint)
    ccall((:IDASetMaxOrd,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxord)
end

function IDASetMaxNumSteps(ida_mem,mxsteps::Clong)
    ccall((:IDASetMaxNumSteps,shlib),Cint,(Ptr{Void},Clong),ida_mem,mxsteps)
end

function IDASetInitStep(ida_mem,hin::realtype)
    ccall((:IDASetInitStep,shlib),Cint,(Ptr{Void},realtype),ida_mem,hin)
end

function IDASetMaxStep(ida_mem,hmax::realtype)
    ccall((:IDASetMaxStep,shlib),Cint,(Ptr{Void},realtype),ida_mem,hmax)
end

function IDASetStopTime(ida_mem,tstop::realtype)
    ccall((:IDASetStopTime,shlib),Cint,(Ptr{Void},realtype),ida_mem,tstop)
end

function IDASetNonlinConvCoef(ida_mem,epcon::realtype)
    ccall((:IDASetNonlinConvCoef,shlib),Cint,(Ptr{Void},realtype),ida_mem,epcon)
end

function IDASetMaxErrTestFails(ida_mem,maxnef::Cint)
    ccall((:IDASetMaxErrTestFails,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnef)
end

function IDASetMaxNonlinIters(ida_mem,maxcor::Cint)
    ccall((:IDASetMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxcor)
end

function IDASetMaxConvFails(ida_mem,maxncf::Cint)
    ccall((:IDASetMaxConvFails,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxncf)
end

function IDASetSuppressAlg(ida_mem,suppressalg::Cint)
    ccall((:IDASetSuppressAlg,shlib),Cint,(Ptr{Void},Cint),ida_mem,suppressalg)
end

function IDASetId(ida_mem,id::N_Vector)
    ccall((:IDASetId,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,id)
end

function IDASetConstraints(ida_mem,constraints::N_Vector)
    ccall((:IDASetConstraints,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,constraints)
end

function IDASetRootDirection(ida_mem,rootdir)
    ccall((:IDASetRootDirection,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem)
    ccall((:IDASetNoInactiveRootWarn,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDAInit(ida_mem,res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,shlib),Cint,(Ptr{Void},IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

function IDAReInit(ida_mem,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,shlib),Cint,(Ptr{Void},realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

function IDASStolerances(ida_mem,reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),ida_mem,reltol,abstol)
end

function IDASVtolerances(ida_mem,reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),ida_mem,reltol,abstol)
end

function IDAWFtolerances(ida_mem,efun::IDAEwtFn)
    ccall((:IDAWFtolerances,shlib),Cint,(Ptr{Void},IDAEwtFn),ida_mem,efun)
end

function IDASetNonlinConvCoefIC(ida_mem,epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,shlib),Cint,(Ptr{Void},realtype),ida_mem,epiccon)
end

function IDASetMaxNumStepsIC(ida_mem,maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnh)
end

function IDASetMaxNumJacsIC(ida_mem,maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnj)
end

function IDASetMaxNumItersIC(ida_mem,maxnit::Cint)
    ccall((:IDASetMaxNumItersIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnit)
end

function IDASetLineSearchOffIC(ida_mem,lsoff::Cint)
    ccall((:IDASetLineSearchOffIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,lsoff)
end

function IDASetStepToleranceIC(ida_mem,steptol::realtype)
    ccall((:IDASetStepToleranceIC,shlib),Cint,(Ptr{Void},realtype),ida_mem,steptol)
end

function IDARootInit(ida_mem,nrtfn::Cint,g::IDARootFn)
    ccall((:IDARootInit,shlib),Cint,(Ptr{Void},Cint,IDARootFn),ida_mem,nrtfn,g)
end

function IDACalcIC(ida_mem,icopt::Cint,tout1::realtype)
    ccall((:IDACalcIC,shlib),Cint,(Ptr{Void},Cint,realtype),ida_mem,icopt,tout1)
end

function IDASolve(ida_mem,tout::realtype,tret,yret::N_Vector,ypret::N_Vector,itask::Cint)
    ccall((:IDASolve,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

function IDAGetDky(ida_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetWorkSpace(ida_mem,lenrw,leniw)
    ccall((:IDAGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

function IDAGetNumSteps(ida_mem,nsteps)
    ccall((:IDAGetNumSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nsteps)
end

function IDAGetNumResEvals(ida_mem,nrevals)
    ccall((:IDAGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem,nlinsetups)
    ccall((:IDAGetNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem,netfails)
    ccall((:IDAGetNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,netfails)
end

function IDAGetNumBacktrackOps(ida_mem,nbacktr)
    ccall((:IDAGetNumBacktrackOps,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nbacktr)
end

function IDAGetConsistentIC(ida_mem,yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,shlib),Cint,(Ptr{Void},N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

function IDAGetLastOrder(ida_mem,klast)
    ccall((:IDAGetLastOrder,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,klast)
end

function IDAGetCurrentOrder(ida_mem,kcur)
    ccall((:IDAGetCurrentOrder,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,kcur)
end

function IDAGetActualInitStep(ida_mem,hinused)
    ccall((:IDAGetActualInitStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hinused)
end

function IDAGetLastStep(ida_mem,hlast)
    ccall((:IDAGetLastStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hlast)
end

function IDAGetCurrentStep(ida_mem,hcur)
    ccall((:IDAGetCurrentStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hcur)
end

function IDAGetCurrentTime(ida_mem,tcur)
    ccall((:IDAGetCurrentTime,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tcur)
end

function IDAGetTolScaleFactor(ida_mem,tolsfact)
    ccall((:IDAGetTolScaleFactor,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tolsfact)
end

function IDAGetErrWeights(ida_mem,eweight::N_Vector)
    ccall((:IDAGetErrWeights,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,eweight)
end

function IDAGetEstLocalErrors(ida_mem,ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,ele)
end

function IDAGetNumGEvals(ida_mem,ngevals)
    ccall((:IDAGetNumGEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,ngevals)
end

function IDAGetRootInfo(ida_mem,rootsfound)
    ccall((:IDAGetRootInfo,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootsfound)
end

function IDAGetIntegratorStats(ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    ccall((:IDAGetIntegratorStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem,nniters)
    ccall((:IDAGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem,nncfails)
    ccall((:IDAGetNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nncfails)
end

function IDAGetNonlinSolvStats(ida_mem,nniters,nncfails)
    ccall((:IDAGetNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

function IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function IDAFree(ida_mem)
    ccall((:IDAFree,shlib),Void,(Ptr{Ptr{Void}},),ida_mem)
end

function IDAEwtSet(ycur::N_Vector,weight::N_Vector,data)
    ccall((:IDAEwtSet,shlib),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function IDAErrHandler(error_code::Cint,_module,_function,msg,data)
    ccall((:IDAErrHandler,shlib),Void,(Cint,Cstring,Cstring,Cstring,Ptr{Void}),error_code,_module,_function,msg,data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/ida/shlib.h
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

function IDASpilsSetPreconditioner(ida_mem,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,shlib),Cint,(Ptr{Void},IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem,gstype::Cint)
    ccall((:IDASpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem,maxl::Cint)
    ccall((:IDASpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,shlib),Cint,(Ptr{Void},realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDASpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem,npevals)
    ccall((:IDASpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem,npsolves)
    ccall((:IDASpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem,nliters)
    ccall((:IDASpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem,nlcfails)
    ccall((:IDASpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem,njvevals)
    ccall((:IDASpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem,nrevalsLS)
    ccall((:IDASpilsGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem,flag)
    ccall((:IDASpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function IDASpbcg(ida_mem,maxl::Cint)
    ccall((:IDASpbcg,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/ida/shlib.h
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

function IDASpilsSetPreconditioner(ida_mem,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,shlib),Cint,(Ptr{Void},IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem,gstype::Cint)
    ccall((:IDASpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem,maxl::Cint)
    ccall((:IDASpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,shlib),Cint,(Ptr{Void},realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDASpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem,npevals)
    ccall((:IDASpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem,npsolves)
    ccall((:IDASpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem,nliters)
    ccall((:IDASpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem,nlcfails)
    ccall((:IDASpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem,njvevals)
    ccall((:IDASpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem,nrevalsLS)
    ccall((:IDASpilsGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem,flag)
    ccall((:IDASpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function IDASpgmr(ida_mem,maxl::Cint)
    ccall((:IDASpgmr,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/ida/shlib.h
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

function IDASpilsSetPreconditioner(ida_mem,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,shlib),Cint,(Ptr{Void},IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem,gstype::Cint)
    ccall((:IDASpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem,maxl::Cint)
    ccall((:IDASpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,shlib),Cint,(Ptr{Void},realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDASpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem,npevals)
    ccall((:IDASpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem,npsolves)
    ccall((:IDASpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem,nliters)
    ccall((:IDASpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem,nlcfails)
    ccall((:IDASpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem,njvevals)
    ccall((:IDASpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem,nrevalsLS)
    ccall((:IDASpilsGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem,flag)
    ccall((:IDASpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function IDASptfqmr(ida_mem,maxl::Cint)
    ccall((:IDASptfqmr,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end
