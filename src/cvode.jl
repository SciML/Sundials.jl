# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,shlib),Ptr{Void},(Cint,Cint),lmm,iter)
end

function CVodeSetErrHandlerFn(cvode_mem,ehfun::CVErrHandlerFn,eh_data)
    ccall((:CVodeSetErrHandlerFn,shlib),Cint,(Ptr{Void},CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem,errfp)
    ccall((:CVodeSetErrFile,shlib),Cint,(Ptr{Void},Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem,user_data)
    ccall((:CVodeSetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem,maxord::Cint)
    ccall((:CVodeSetMaxOrd,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem,mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,shlib),Cint,(Ptr{Void},Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem,mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,shlib),Cint,(Ptr{Void},Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem,stldet::Cint)
    ccall((:CVodeSetStabLimDet,shlib),Cint,(Ptr{Void},Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem,hin::realtype)
    ccall((:CVodeSetInitStep,shlib),Cint,(Ptr{Void},realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem,hmin::realtype)
    ccall((:CVodeSetMinStep,shlib),Cint,(Ptr{Void},realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem,hmax::realtype)
    ccall((:CVodeSetMaxStep,shlib),Cint,(Ptr{Void},realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem,tstop::realtype)
    ccall((:CVodeSetStopTime,shlib),Cint,(Ptr{Void},realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem,maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem,maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem,maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,shlib),Cint,(Ptr{Void},realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem,iter::Cint)
    ccall((:CVodeSetIterType,shlib),Cint,(Ptr{Void},Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem,rootdir)
    ccall((:CVodeSetRootDirection,shlib),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem)
    ccall((:CVodeSetNoInactiveRootWarn,shlib),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeInit(cvode_mem,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,shlib),Cint,(Ptr{Void},CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,shlib),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,shlib),Cint,(Ptr{Void},CVEwtFn),cvode_mem,efun)
end

function CVodeRootInit(cvode_mem,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,shlib),Cint,(Ptr{Void},Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVode(cvode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:CVode,shlib),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetWorkSpace(cvode_mem,lenrw,leniw)
    ccall((:CVodeGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem,nsteps)
    ccall((:CVodeGetNumSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem,nfevals)
    ccall((:CVodeGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem,nlinsetups)
    ccall((:CVodeGetNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem,netfails)
    ccall((:CVodeGetNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem,qlast)
    ccall((:CVodeGetLastOrder,shlib),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem,qcur)
    ccall((:CVodeGetCurrentOrder,shlib),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem,nslred)
    ccall((:CVodeGetNumStabLimOrderReds,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem,hinused)
    ccall((:CVodeGetActualInitStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem,hlast)
    ccall((:CVodeGetLastStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem,hcur)
    ccall((:CVodeGetCurrentStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem,tcur)
    ccall((:CVodeGetCurrentTime,shlib),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem,tolsfac)
    ccall((:CVodeGetTolScaleFactor,shlib),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,shlib),Cint,(Ptr{Void},N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,shlib),Cint,(Ptr{Void},N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem,ngevals)
    ccall((:CVodeGetNumGEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem,rootsfound)
    ccall((:CVodeGetRootInfo,shlib),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    ccall((:CVodeGetIntegratorStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem,nniters)
    ccall((:CVodeGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem,nncfails)
    ccall((:CVodeGetNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem,nniters,nncfails)
    ccall((:CVodeGetNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function CVodeFree(cvode_mem)
    ccall((:CVodeFree,shlib),Void,(Ptr{Ptr{Void}},),cvode_mem)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/shlib.h
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

function CVDlsSetDenseJacFn(cvode_mem,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,shlib),Cint,(Ptr{Void},CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,shlib),Cint,(Ptr{Void},CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVDlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem,njevals)
    ccall((:CVDlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem,flag)
    ccall((:CVDlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/shlib.h
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

function CVSpilsSetPrecType(cvode_mem,pretype::Cint)
    ccall((:CVSpilsSetPrecType,shlib),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem,gstype::Cint)
    ccall((:CVSpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem,maxl::Cint)
    ccall((:CVSpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    ccall((:CVSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    ccall((:CVSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    ccall((:CVSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    ccall((:CVSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    ccall((:CVSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    ccall((:CVSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_band.h
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

function CVDlsSetDenseJacFn(cvode_mem,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,shlib),Cint,(Ptr{Void},CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,shlib),Cint,(Ptr{Void},CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVDlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem,njevals)
    ccall((:CVDlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem,flag)
    ccall((:CVDlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function CVBand(cvode_mem,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:CVBand,shlib),Cint,(Ptr{Void},Clong,Clong,Clong),cvode_mem,N,mupper,mlower)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBandPrecInit(cvode_mem,N::Clong,mu::Clong,ml::Clong)
    ccall((:CVBandPrecInit,shlib),Cint,(Ptr{Void},Clong,Clong,Clong),cvode_mem,N,mu,ml)
end

function CVBandPrecGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVBandPrecGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBandPrecGetNumRhsEvals(cvode_mem,nfevalsBP)
    ccall((:CVBandPrecGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsBP)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBBDPrecInit(cvode_mem,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,shlib),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function CVBBDPrecReInit(cvode_mem,mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:CVBBDPrecReInit,shlib),Cint,(Ptr{Void},Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVBBDPrecGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem,ngevalsBBDP)
    ccall((:CVBBDPrecGetNumGfnEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevalsBBDP)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/shlib.h
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

function CVDlsSetDenseJacFn(cvode_mem,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,shlib),Cint,(Ptr{Void},CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,shlib),Cint,(Ptr{Void},CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVDlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem,njevals)
    ccall((:CVDlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem,flag)
    ccall((:CVDlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function CVDense(cvode_mem,N::Clong)
    ccall((:CVDense,shlib),Cint,(Ptr{Void},Clong),cvode_mem,N)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_diag.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVDiag(cvode_mem)
    ccall((:CVDiag,shlib),Cint,(Ptr{Void},),cvode_mem)
end

function CVDiagGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVDiagGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDiagGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVDiagGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDiagGetLastFlag(cvode_mem,flag)
    ccall((:CVDiagGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,shlib),Ptr{Void},(Cint,Cint),lmm,iter)
end

function CVodeSetErrHandlerFn(cvode_mem,ehfun::CVErrHandlerFn,eh_data)
    ccall((:CVodeSetErrHandlerFn,shlib),Cint,(Ptr{Void},CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem,errfp)
    ccall((:CVodeSetErrFile,shlib),Cint,(Ptr{Void},Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem,user_data)
    ccall((:CVodeSetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem,maxord::Cint)
    ccall((:CVodeSetMaxOrd,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem,mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,shlib),Cint,(Ptr{Void},Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem,mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,shlib),Cint,(Ptr{Void},Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem,stldet::Cint)
    ccall((:CVodeSetStabLimDet,shlib),Cint,(Ptr{Void},Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem,hin::realtype)
    ccall((:CVodeSetInitStep,shlib),Cint,(Ptr{Void},realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem,hmin::realtype)
    ccall((:CVodeSetMinStep,shlib),Cint,(Ptr{Void},realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem,hmax::realtype)
    ccall((:CVodeSetMaxStep,shlib),Cint,(Ptr{Void},realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem,tstop::realtype)
    ccall((:CVodeSetStopTime,shlib),Cint,(Ptr{Void},realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem,maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem,maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem,maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,shlib),Cint,(Ptr{Void},realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem,iter::Cint)
    ccall((:CVodeSetIterType,shlib),Cint,(Ptr{Void},Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem,rootdir)
    ccall((:CVodeSetRootDirection,shlib),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem)
    ccall((:CVodeSetNoInactiveRootWarn,shlib),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeInit(cvode_mem,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,shlib),Cint,(Ptr{Void},CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,shlib),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,shlib),Cint,(Ptr{Void},CVEwtFn),cvode_mem,efun)
end

function CVodeRootInit(cvode_mem,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,shlib),Cint,(Ptr{Void},Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVode(cvode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:CVode,shlib),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetWorkSpace(cvode_mem,lenrw,leniw)
    ccall((:CVodeGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem,nsteps)
    ccall((:CVodeGetNumSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem,nfevals)
    ccall((:CVodeGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem,nlinsetups)
    ccall((:CVodeGetNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem,netfails)
    ccall((:CVodeGetNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem,qlast)
    ccall((:CVodeGetLastOrder,shlib),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem,qcur)
    ccall((:CVodeGetCurrentOrder,shlib),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem,nslred)
    ccall((:CVodeGetNumStabLimOrderReds,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem,hinused)
    ccall((:CVodeGetActualInitStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem,hlast)
    ccall((:CVodeGetLastStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem,hcur)
    ccall((:CVodeGetCurrentStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem,tcur)
    ccall((:CVodeGetCurrentTime,shlib),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem,tolsfac)
    ccall((:CVodeGetTolScaleFactor,shlib),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,shlib),Cint,(Ptr{Void},N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,shlib),Cint,(Ptr{Void},N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem,ngevals)
    ccall((:CVodeGetNumGEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem,rootsfound)
    ccall((:CVodeGetRootInfo,shlib),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    ccall((:CVodeGetIntegratorStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem,nniters)
    ccall((:CVodeGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem,nncfails)
    ccall((:CVodeGetNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem,nniters,nncfails)
    ccall((:CVodeGetNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function CVodeFree(cvode_mem)
    ccall((:CVodeFree,shlib),Void,(Ptr{Ptr{Void}},),cvode_mem)
end

function cvEwtSet(ycur::N_Vector,weight::N_Vector,data)
    ccall((:cvEwtSet,cvode_impl),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function cvErrHandler(error_code::Cint,_module,_function,msg,data)
    ccall((:cvErrHandler,cvode_impl),Void,(Cint,Cstring,Cstring,Cstring,Ptr{Void}),error_code,_module,_function,msg,data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function renameat(arg1::Cint,arg2,arg3::Cint,arg4)
    ccall((:renameat,stdio),Cint,(Cint,Cstring,Cint,Cstring),arg1,arg2,arg3,arg4)
end

function clearerr(arg1)
    ccall((:clearerr,stdio),Void,(Ptr{FILE},),arg1)
end

function fclose(arg1)
    ccall((:fclose,stdio),Cint,(Ptr{FILE},),arg1)
end

function feof(arg1)
    ccall((:feof,stdio),Cint,(Ptr{FILE},),arg1)
end

function ferror(arg1)
    ccall((:ferror,stdio),Cint,(Ptr{FILE},),arg1)
end

function fflush(arg1)
    ccall((:fflush,stdio),Cint,(Ptr{FILE},),arg1)
end

function fgetc(arg1)
    ccall((:fgetc,stdio),Cint,(Ptr{FILE},),arg1)
end

function fgetpos(arg1,arg2)
    ccall((:fgetpos,stdio),Cint,(Ptr{FILE},Ptr{fpos_t}),arg1,arg2)
end

function fgets(arg1,arg2::Cint,arg3)
    ccall((:fgets,stdio),Cstring,(Cstring,Cint,Ptr{FILE}),arg1,arg2,arg3)
end

function fopen(arg1,arg2)
    ccall((:fopen,stdio),Ptr{FILE},(Cstring,Cstring),arg1,arg2)
end

function fputc(arg1::Cint,arg2)
    ccall((:fputc,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function fputs(arg1,arg2)
    ccall((:fputs,stdio),Cint,(Cstring,Ptr{FILE}),arg1,arg2)
end

function fread(arg1,arg2::Csize_t,arg3::Csize_t,arg4)
    ccall((:fread,stdio),Csize_t,(Ptr{Void},Csize_t,Csize_t,Ptr{FILE}),arg1,arg2,arg3,arg4)
end

function freopen(arg1,arg2,arg3)
    ccall((:freopen,stdio),Ptr{FILE},(Cstring,Cstring,Ptr{FILE}),arg1,arg2,arg3)
end

function fseek(arg1,arg2::Clong,arg3::Cint)
    ccall((:fseek,stdio),Cint,(Ptr{FILE},Clong,Cint),arg1,arg2,arg3)
end

function fsetpos(arg1,arg2)
    ccall((:fsetpos,stdio),Cint,(Ptr{FILE},Ptr{fpos_t}),arg1,arg2)
end

function ftell(arg1)
    ccall((:ftell,stdio),Clong,(Ptr{FILE},),arg1)
end

function fwrite(arg1,arg2::Csize_t,arg3::Csize_t,arg4)
    ccall((:fwrite,stdio),Csize_t,(Ptr{Void},Csize_t,Csize_t,Ptr{FILE}),arg1,arg2,arg3,arg4)
end

function getc(arg1)
    ccall((:getc,stdio),Cint,(Ptr{FILE},),arg1)
end

function getchar()
    ccall((:getchar,stdio),Cint,())
end

function gets(arg1)
    ccall((:gets,stdio),Cstring,(Cstring,),arg1)
end

function perror(arg1)
    ccall((:perror,stdio),Void,(Cstring,),arg1)
end

function putc(arg1::Cint,arg2)
    ccall((:putc,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function putchar(arg1::Cint)
    ccall((:putchar,stdio),Cint,(Cint,),arg1)
end

function puts(arg1)
    ccall((:puts,stdio),Cint,(Cstring,),arg1)
end

function remove(arg1)
    ccall((:remove,stdio),Cint,(Cstring,),arg1)
end

function rename(arg1,arg2)
    ccall((:rename,stdio),Cint,(Cstring,Cstring),arg1,arg2)
end

function rewind(arg1)
    ccall((:rewind,stdio),Void,(Ptr{FILE},),arg1)
end

function setbuf(arg1,arg2)
    ccall((:setbuf,stdio),Void,(Ptr{FILE},Cstring),arg1,arg2)
end

function setvbuf(arg1,arg2,arg3::Cint,arg4::Csize_t)
    ccall((:setvbuf,stdio),Cint,(Ptr{FILE},Cstring,Cint,Csize_t),arg1,arg2,arg3,arg4)
end

function tmpfile()
    ccall((:tmpfile,stdio),Ptr{FILE},())
end

function tmpnam(arg1)
    ccall((:tmpnam,stdio),Cstring,(Cstring,),arg1)
end

function ungetc(arg1::Cint,arg2)
    ccall((:ungetc,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function vfprintf(arg1,arg2,arg3::va_list)
    ccall((:vfprintf,stdio),Cint,(Ptr{FILE},Cstring,va_list),arg1,arg2,arg3)
end

function vprintf(arg1,arg2)
    ccall((:vprintf,stdio),Cint,(Cstring,Ptr{__va_list_tag}),arg1,arg2)
end

function vsprintf(arg1,arg2,arg3)
    ccall((:vsprintf,stdio),Cint,(Cstring,Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3)
end

function ctermid(arg1)
    ccall((:ctermid,stdio),Cstring,(Cstring,),arg1)
end

function fdopen(arg1::Cint,arg2)
    ccall((:fdopen,stdio),Ptr{FILE},(Cint,Cstring),arg1,arg2)
end

function fileno(arg1)
    ccall((:fileno,stdio),Cint,(Ptr{FILE},),arg1)
end

function pclose(arg1)
    ccall((:pclose,stdio),Cint,(Ptr{FILE},),arg1)
end

function popen(arg1,arg2)
    ccall((:popen,stdio),Ptr{FILE},(Cstring,Cstring),arg1,arg2)
end

function flockfile(arg1)
    ccall((:flockfile,stdio),Void,(Ptr{FILE},),arg1)
end

function ftrylockfile(arg1)
    ccall((:ftrylockfile,stdio),Cint,(Ptr{FILE},),arg1)
end

function funlockfile(arg1)
    ccall((:funlockfile,stdio),Void,(Ptr{FILE},),arg1)
end

function getc_unlocked(arg1)
    ccall((:getc_unlocked,stdio),Cint,(Ptr{FILE},),arg1)
end

function getchar_unlocked()
    ccall((:getchar_unlocked,stdio),Cint,())
end

function putc_unlocked(arg1::Cint,arg2)
    ccall((:putc_unlocked,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function putchar_unlocked(arg1::Cint)
    ccall((:putchar_unlocked,stdio),Cint,(Cint,),arg1)
end

function getw(arg1)
    ccall((:getw,stdio),Cint,(Ptr{FILE},),arg1)
end

function putw(arg1::Cint,arg2)
    ccall((:putw,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function tempnam(arg1,arg2)
    ccall((:tempnam,stdio),Cstring,(Cstring,Cstring),arg1,arg2)
end

function vfscanf(arg1,arg2,arg3)
    ccall((:vfscanf,stdio),Cint,(Ptr{FILE},Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3)
end

function vscanf(arg1,arg2)
    ccall((:vscanf,stdio),Cint,(Cstring,Ptr{__va_list_tag}),arg1,arg2)
end

function vsnprintf(arg1,arg2::Culong,arg3,arg4)
    ccall((:vsnprintf,stdio),Cint,(Cstring,Culong,Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3,arg4)
end

function vsscanf(arg1,arg2,arg3)
    ccall((:vsscanf,stdio),Cint,(Cstring,Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3)
end

function vdprintf(arg1::Cint,arg2,arg3::va_list)
    ccall((:vdprintf,stdio),Cint,(Cint,Cstring,va_list),arg1,arg2,arg3)
end

function getdelim(arg1,arg2,arg3::Cint,arg4)
    ccall((:getdelim,stdio),ssize_t,(Ptr{Cstring},Ptr{Csize_t},Cint,Ptr{FILE}),arg1,arg2,arg3,arg4)
end

function getline(arg1,arg2,arg3)
    ccall((:getline,stdio),ssize_t,(Ptr{Cstring},Ptr{Csize_t},Ptr{FILE}),arg1,arg2,arg3)
end

function ctermid_r(arg1)
    ccall((:ctermid_r,stdio),Cstring,(Cstring,),arg1)
end

function fgetln(arg1,arg2)
    ccall((:fgetln,stdio),Cstring,(Ptr{FILE},Ptr{Csize_t}),arg1,arg2)
end

function fmtcheck(arg1,arg2)
    ccall((:fmtcheck,stdio),Cstring,(Cstring,Cstring),arg1,arg2)
end

function fpurge(arg1)
    ccall((:fpurge,stdio),Cint,(Ptr{FILE},),arg1)
end

function setbuffer(arg1,arg2,arg3::Cint)
    ccall((:setbuffer,stdio),Void,(Ptr{FILE},Cstring,Cint),arg1,arg2,arg3)
end

function setlinebuf(arg1)
    ccall((:setlinebuf,stdio),Cint,(Ptr{FILE},),arg1)
end

function vasprintf(arg1,arg2,arg3::va_list)
    ccall((:vasprintf,stdio),Cint,(Ptr{Cstring},Cstring,va_list),arg1,arg2,arg3)
end

function zopen(arg1,arg2,arg3::Cint)
    ccall((:zopen,stdio),Ptr{FILE},(Cstring,Cstring,Cint),arg1,arg2,arg3)
end

function funopen(arg1,arg2,arg3,arg4,arg5)
    ccall((:funopen,stdio),Ptr{FILE},(Ptr{Void},Ptr{Void},Ptr{Void},Ptr{Void},Ptr{Void}),arg1,arg2,arg3,arg4,arg5)
end

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

function SparseNewMat(M::Cint,N::Cint,NNZ::Cint,sparsetype::Cint)
    ccall((:SparseNewMat,shlib),SlsMat,(Cint,Cint,Cint,Cint),M,N,NNZ,sparsetype)
end

function SparseFromDenseMat(A::DlsMat,sparsetype::Cint)
    ccall((:SparseFromDenseMat,shlib),SlsMat,(DlsMat,Cint),A,sparsetype)
end

function SparseDestroyMat(A::SlsMat)
    ccall((:SparseDestroyMat,shlib),Cint,(SlsMat,),A)
end

function SparseSetMatToZero(A::SlsMat)
    ccall((:SparseSetMatToZero,shlib),Cint,(SlsMat,),A)
end

function SparseCopyMat(A::SlsMat,B::SlsMat)
    ccall((:SparseCopyMat,shlib),Cint,(SlsMat,SlsMat),A,B)
end

function SparseScaleMat(b::realtype,A::SlsMat)
    ccall((:SparseScaleMat,shlib),Cint,(realtype,SlsMat),b,A)
end

function SparseAddIdentityMat(A::SlsMat)
    ccall((:SparseAddIdentityMat,shlib),Cint,(SlsMat,),A)
end

function SparseAddMat(A::SlsMat,B::SlsMat)
    ccall((:SparseAddMat,shlib),Cint,(SlsMat,SlsMat),A,B)
end

function SparseReallocMat(A::SlsMat)
    ccall((:SparseReallocMat,shlib),Cint,(SlsMat,),A)
end

function SparseMatvec(A::SlsMat,x,y)
    ccall((:SparseMatvec,shlib),Cint,(SlsMat,Ptr{realtype},Ptr{realtype}),A,x,y)
end

function SparsePrintMat(A::SlsMat,outfile)
    ccall((:SparsePrintMat,shlib),Void,(SlsMat,Ptr{FILE}),A,outfile)
end

function CVSlsSetSparseJacFn(cvode_mem,jac::CVSlsSparseJacFn)
    ccall((:CVSlsSetSparseJacFn,shlib),Cint,(Ptr{Void},CVSlsSparseJacFn),cvode_mem,jac)
end

function CVSlsGetNumJacEvals(ida_mem,njevals)
    ccall((:CVSlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njevals)
end

function CVSlsGetLastFlag(ida_mem,flag)
    ccall((:CVSlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function CVSlsGetReturnFlagName(flag::Clong)
    ccall((:CVSlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_spbcgs.h
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

function CVSpilsSetPrecType(cvode_mem,pretype::Cint)
    ccall((:CVSpilsSetPrecType,shlib),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem,gstype::Cint)
    ccall((:CVSpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem,maxl::Cint)
    ccall((:CVSpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    ccall((:CVSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    ccall((:CVSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    ccall((:CVSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    ccall((:CVSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    ccall((:CVSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    ccall((:CVSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function CVSpbcg(cvode_mem,pretype::Cint,maxl::Cint)
    ccall((:CVSpbcg,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_spgmr.h
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

function CVSpilsSetPrecType(cvode_mem,pretype::Cint)
    ccall((:CVSpilsSetPrecType,shlib),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem,gstype::Cint)
    ccall((:CVSpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem,maxl::Cint)
    ccall((:CVSpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    ccall((:CVSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    ccall((:CVSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    ccall((:CVSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    ccall((:CVSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    ccall((:CVSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    ccall((:CVSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function CVSpgmr(cvode_mem,pretype::Cint,maxl::Cint)
    ccall((:CVSpgmr,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_sptfqmr.h
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

function CVSpilsSetPrecType(cvode_mem,pretype::Cint)
    ccall((:CVSpilsSetPrecType,shlib),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem,gstype::Cint)
    ccall((:CVSpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem,maxl::Cint)
    ccall((:CVSpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    ccall((:CVSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    ccall((:CVSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    ccall((:CVSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    ccall((:CVSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    ccall((:CVSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    ccall((:CVSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function CVSptfqmr(cvode_mem,pretype::Cint,maxl::Cint)
    ccall((:CVSptfqmr,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end
