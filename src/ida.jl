# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDACreate()
    ccall((:IDACreate,libsundials_ida),IDAMemPtr,())
end

function __IDASetErrHandlerFn(ida_mem::IDAMemPtr,ehfun::IDAErrHandlerFn,eh_data::Ptr{Void})
    ccall((:IDASetErrHandlerFn,libsundials_ida),Cint,(IDAMemPtr,IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

IDASetErrHandlerFn(ida_mem,ehfun,eh_data) = __IDASetErrHandlerFn(convert(IDAMemPtr,ida_mem),ehfun,pointer(eh_data))

function __IDASetErrFile(ida_mem::IDAMemPtr,errfp::Ptr{FILE})
    ccall((:IDASetErrFile,libsundials_ida),Cint,(IDAMemPtr,Ptr{FILE}),ida_mem,errfp)
end

IDASetErrFile(ida_mem,errfp) = __IDASetErrFile(convert(IDAMemPtr,ida_mem),errfp)

function __IDASetUserData(ida_mem::IDAMemPtr,user_data::Any)
    ccall((:IDASetUserData,libsundials_ida),Cint,(IDAMemPtr,Any),ida_mem,user_data)
end

IDASetUserData(ida_mem,user_data) = __IDASetUserData(convert(IDAMemPtr,ida_mem),user_data)

function __IDASetMaxOrd(ida_mem::IDAMemPtr,maxord::Cint)
    ccall((:IDASetMaxOrd,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxord)
end

IDASetMaxOrd(ida_mem,maxord) = __IDASetMaxOrd(convert(IDAMemPtr,ida_mem),maxord)

function __IDASetMaxNumSteps(ida_mem::IDAMemPtr,mxsteps::Clong)
    ccall((:IDASetMaxNumSteps,libsundials_ida),Cint,(IDAMemPtr,Clong),ida_mem,mxsteps)
end

IDASetMaxNumSteps(ida_mem,mxsteps) = __IDASetMaxNumSteps(convert(IDAMemPtr,ida_mem),convert(Clong,mxsteps))

function __IDASetInitStep(ida_mem::IDAMemPtr,hin::realtype)
    ccall((:IDASetInitStep,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,hin)
end

IDASetInitStep(ida_mem,hin) = __IDASetInitStep(convert(IDAMemPtr,ida_mem),hin)

function __IDASetMaxStep(ida_mem::IDAMemPtr,hmax::realtype)
    ccall((:IDASetMaxStep,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,hmax)
end

IDASetMaxStep(ida_mem,hmax) = __IDASetMaxStep(convert(IDAMemPtr,ida_mem),hmax)

function __IDASetStopTime(ida_mem::IDAMemPtr,tstop::realtype)
    ccall((:IDASetStopTime,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,tstop)
end

IDASetStopTime(ida_mem,tstop) = __IDASetStopTime(convert(IDAMemPtr,ida_mem),tstop)

function __IDASetNonlinConvCoef(ida_mem::IDAMemPtr,epcon::realtype)
    ccall((:IDASetNonlinConvCoef,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,epcon)
end

IDASetNonlinConvCoef(ida_mem,epcon) = __IDASetNonlinConvCoef(convert(IDAMemPtr,ida_mem),epcon)

function __IDASetMaxErrTestFails(ida_mem::IDAMemPtr,maxnef::Cint)
    ccall((:IDASetMaxErrTestFails,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxnef)
end

IDASetMaxErrTestFails(ida_mem,maxnef) = __IDASetMaxErrTestFails(convert(IDAMemPtr,ida_mem),maxnef)

function __IDASetMaxNonlinIters(ida_mem::IDAMemPtr,maxcor::Cint)
    ccall((:IDASetMaxNonlinIters,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxcor)
end

IDASetMaxNonlinIters(ida_mem,maxcor) = __IDASetMaxNonlinIters(convert(IDAMemPtr,ida_mem),maxcor)

function __IDASetMaxConvFails(ida_mem::IDAMemPtr,maxncf::Cint)
    ccall((:IDASetMaxConvFails,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxncf)
end

IDASetMaxConvFails(ida_mem,maxncf) = __IDASetMaxConvFails(convert(IDAMemPtr,ida_mem),maxncf)

function __IDASetSuppressAlg(ida_mem::IDAMemPtr,suppressalg::Cint)
    ccall((:IDASetSuppressAlg,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,suppressalg)
end

IDASetSuppressAlg(ida_mem,suppressalg) = __IDASetSuppressAlg(convert(IDAMemPtr,ida_mem),suppressalg)

function __IDASetId(ida_mem::IDAMemPtr,id::N_Vector)
    ccall((:IDASetId,libsundials_ida),Cint,(IDAMemPtr,N_Vector),ida_mem,id)
end

IDASetId(ida_mem,id) = __IDASetId(convert(IDAMemPtr,ida_mem),convert(N_Vector,id))

function __IDASetConstraints(ida_mem::IDAMemPtr,constraints::N_Vector)
    ccall((:IDASetConstraints,libsundials_ida),Cint,(IDAMemPtr,N_Vector),ida_mem,constraints)
end

IDASetConstraints(ida_mem,constraints) = __IDASetConstraints(convert(IDAMemPtr,ida_mem),convert(N_Vector,constraints))

function __IDASetRootDirection(ida_mem::IDAMemPtr,rootdir::Ptr{Cint})
    ccall((:IDASetRootDirection,libsundials_ida),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,rootdir)
end

IDASetRootDirection(ida_mem,rootdir) = __IDASetRootDirection(convert(IDAMemPtr,ida_mem),pointer(rootdir))

function __IDASetNoInactiveRootWarn(ida_mem::IDAMemPtr)
    ccall((:IDASetNoInactiveRootWarn,libsundials_ida),Cint,(IDAMemPtr,),ida_mem)
end

IDASetNoInactiveRootWarn(ida_mem) = __IDASetNoInactiveRootWarn(convert(IDAMemPtr,ida_mem))

function __IDAInit(ida_mem::IDAMemPtr,res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,libsundials_ida),Cint,(IDAMemPtr,IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

IDAInit(ida_mem,res,t0,yy0,yp0) = __IDAInit(convert(IDAMemPtr,ida_mem),IDAResFn_wrapper(res),t0,convert(N_Vector,yy0),convert(N_Vector,yp0))

function __IDAReInit(ida_mem::IDAMemPtr,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,libsundials_ida),Cint,(IDAMemPtr,realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

IDAReInit(ida_mem,t0,yy0,yp0) = __IDAReInit(convert(IDAMemPtr,ida_mem),t0,convert(N_Vector,yy0),convert(N_Vector,yp0))

function __IDASStolerances(ida_mem::IDAMemPtr,reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,libsundials_ida),Cint,(IDAMemPtr,realtype,realtype),ida_mem,reltol,abstol)
end

IDASStolerances(ida_mem,reltol,abstol) = __IDASStolerances(convert(IDAMemPtr,ida_mem),reltol,abstol)

function __IDASVtolerances(ida_mem::IDAMemPtr,reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,libsundials_ida),Cint,(IDAMemPtr,realtype,N_Vector),ida_mem,reltol,abstol)
end

IDASVtolerances(ida_mem,reltol,abstol) = __IDASVtolerances(convert(IDAMemPtr,ida_mem),reltol,convert(N_Vector,abstol))

function __IDAWFtolerances(ida_mem::IDAMemPtr,efun::IDAEwtFn)
    ccall((:IDAWFtolerances,libsundials_ida),Cint,(IDAMemPtr,IDAEwtFn),ida_mem,efun)
end

IDAWFtolerances(ida_mem,efun) = __IDAWFtolerances(convert(IDAMemPtr,ida_mem),efun)

function __IDASetNonlinConvCoefIC(ida_mem::IDAMemPtr,epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,epiccon)
end

IDASetNonlinConvCoefIC(ida_mem,epiccon) = __IDASetNonlinConvCoefIC(convert(IDAMemPtr,ida_mem),epiccon)

function __IDASetMaxNumStepsIC(ida_mem::IDAMemPtr,maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxnh)
end

IDASetMaxNumStepsIC(ida_mem,maxnh) = __IDASetMaxNumStepsIC(convert(IDAMemPtr,ida_mem),maxnh)

function __IDASetMaxNumJacsIC(ida_mem::IDAMemPtr,maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxnj)
end

IDASetMaxNumJacsIC(ida_mem,maxnj) = __IDASetMaxNumJacsIC(convert(IDAMemPtr,ida_mem),maxnj)

function __IDASetMaxNumItersIC(ida_mem::IDAMemPtr,maxnit::Cint)
    ccall((:IDASetMaxNumItersIC,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxnit)
end

IDASetMaxNumItersIC(ida_mem,maxnit) = __IDASetMaxNumItersIC(convert(IDAMemPtr,ida_mem),maxnit)

function __IDASetLineSearchOffIC(ida_mem::IDAMemPtr,lsoff::Cint)
    ccall((:IDASetLineSearchOffIC,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,lsoff)
end

IDASetLineSearchOffIC(ida_mem,lsoff) = __IDASetLineSearchOffIC(convert(IDAMemPtr,ida_mem),lsoff)

function __IDASetStepToleranceIC(ida_mem::IDAMemPtr,steptol::realtype)
    ccall((:IDASetStepToleranceIC,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,steptol)
end

IDASetStepToleranceIC(ida_mem,steptol) = __IDASetStepToleranceIC(convert(IDAMemPtr,ida_mem),steptol)

function __IDARootInit(ida_mem::IDAMemPtr,nrtfn::Cint,g::IDARootFn)
    ccall((:IDARootInit,libsundials_ida),Cint,(IDAMemPtr,Cint,IDARootFn),ida_mem,nrtfn,g)
end

IDARootInit(ida_mem,nrtfn,g) = __IDARootInit(convert(IDAMemPtr,ida_mem),nrtfn,IDARootFn_wrapper(g))

function __IDACalcIC(ida_mem::IDAMemPtr,icopt::Cint,tout1::realtype)
    ccall((:IDACalcIC,libsundials_ida),Cint,(IDAMemPtr,Cint,realtype),ida_mem,icopt,tout1)
end

IDACalcIC(ida_mem,icopt,tout1) = __IDACalcIC(convert(IDAMemPtr,ida_mem),icopt,tout1)

function __IDASolve(ida_mem::IDAMemPtr,tout::realtype,tret::Ptr{realtype},yret::N_Vector,ypret::N_Vector,itask::Cint)
    ccall((:IDASolve,libsundials_ida),Cint,(IDAMemPtr,realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

IDASolve(ida_mem,tout,tret,yret,ypret,itask) = __IDASolve(convert(IDAMemPtr,ida_mem),tout,pointer(tret),convert(N_Vector,yret),convert(N_Vector,ypret),itask)

function __IDAGetDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetDky,libsundials_ida),Cint,(IDAMemPtr,realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

IDAGetDky(ida_mem,t,k,dky) = __IDAGetDky(convert(IDAMemPtr,ida_mem),t,k,convert(N_Vector,dky))

function __IDAGetWorkSpace(ida_mem::IDAMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:IDAGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

IDAGetWorkSpace(ida_mem,lenrw,leniw) = __IDAGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrw),pointer(leniw))

function __IDAGetNumSteps(ida_mem::IDAMemPtr,nsteps::Ptr{Clong})
    ccall((:IDAGetNumSteps,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nsteps)
end

IDAGetNumSteps(ida_mem,nsteps) = __IDAGetNumSteps(convert(IDAMemPtr,ida_mem),pointer(nsteps))

function __IDAGetNumResEvals(ida_mem::IDAMemPtr,nrevals::Ptr{Clong})
    ccall((:IDAGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevals)
end

IDAGetNumResEvals(ida_mem,nrevals) = __IDAGetNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nrevals))

function __IDAGetNumLinSolvSetups(ida_mem::IDAMemPtr,nlinsetups::Ptr{Clong})
    ccall((:IDAGetNumLinSolvSetups,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlinsetups)
end

IDAGetNumLinSolvSetups(ida_mem,nlinsetups) = __IDAGetNumLinSolvSetups(convert(IDAMemPtr,ida_mem),pointer(nlinsetups))

function __IDAGetNumErrTestFails(ida_mem::IDAMemPtr,netfails::Ptr{Clong})
    ccall((:IDAGetNumErrTestFails,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,netfails)
end

IDAGetNumErrTestFails(ida_mem,netfails) = __IDAGetNumErrTestFails(convert(IDAMemPtr,ida_mem),pointer(netfails))

function __IDAGetNumBacktrackOps(ida_mem::IDAMemPtr,nbacktr::Ptr{Clong})
    ccall((:IDAGetNumBacktrackOps,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nbacktr)
end

IDAGetNumBacktrackOps(ida_mem,nbacktr) = __IDAGetNumBacktrackOps(convert(IDAMemPtr,ida_mem),pointer(nbacktr))

function __IDAGetConsistentIC(ida_mem::IDAMemPtr,yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,libsundials_ida),Cint,(IDAMemPtr,N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

IDAGetConsistentIC(ida_mem,yy0_mod,yp0_mod) = __IDAGetConsistentIC(convert(IDAMemPtr,ida_mem),convert(N_Vector,yy0_mod),convert(N_Vector,yp0_mod))

function __IDAGetLastOrder(ida_mem::IDAMemPtr,klast::Ptr{Cint})
    ccall((:IDAGetLastOrder,libsundials_ida),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,klast)
end

IDAGetLastOrder(ida_mem,klast) = __IDAGetLastOrder(convert(IDAMemPtr,ida_mem),pointer(klast))

function __IDAGetCurrentOrder(ida_mem::IDAMemPtr,kcur::Ptr{Cint})
    ccall((:IDAGetCurrentOrder,libsundials_ida),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,kcur)
end

IDAGetCurrentOrder(ida_mem,kcur) = __IDAGetCurrentOrder(convert(IDAMemPtr,ida_mem),pointer(kcur))

function __IDAGetActualInitStep(ida_mem::IDAMemPtr,hinused::Ptr{realtype})
    ccall((:IDAGetActualInitStep,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hinused)
end

IDAGetActualInitStep(ida_mem,hinused) = __IDAGetActualInitStep(convert(IDAMemPtr,ida_mem),pointer(hinused))

function __IDAGetLastStep(ida_mem::IDAMemPtr,hlast::Ptr{realtype})
    ccall((:IDAGetLastStep,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hlast)
end

IDAGetLastStep(ida_mem,hlast) = __IDAGetLastStep(convert(IDAMemPtr,ida_mem),pointer(hlast))

function __IDAGetCurrentStep(ida_mem::IDAMemPtr,hcur::Ptr{realtype})
    ccall((:IDAGetCurrentStep,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hcur)
end

IDAGetCurrentStep(ida_mem,hcur) = __IDAGetCurrentStep(convert(IDAMemPtr,ida_mem),pointer(hcur))

function __IDAGetCurrentTime(ida_mem::IDAMemPtr,tcur::Ptr{realtype})
    ccall((:IDAGetCurrentTime,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,tcur)
end

IDAGetCurrentTime(ida_mem,tcur) = __IDAGetCurrentTime(convert(IDAMemPtr,ida_mem),pointer(tcur))

function __IDAGetTolScaleFactor(ida_mem::IDAMemPtr,tolsfact::Ptr{realtype})
    ccall((:IDAGetTolScaleFactor,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,tolsfact)
end

IDAGetTolScaleFactor(ida_mem,tolsfact) = __IDAGetTolScaleFactor(convert(IDAMemPtr,ida_mem),pointer(tolsfact))

function __IDAGetErrWeights(ida_mem::IDAMemPtr,eweight::N_Vector)
    ccall((:IDAGetErrWeights,libsundials_ida),Cint,(IDAMemPtr,N_Vector),ida_mem,eweight)
end

IDAGetErrWeights(ida_mem,eweight) = __IDAGetErrWeights(convert(IDAMemPtr,ida_mem),convert(N_Vector,eweight))

function __IDAGetEstLocalErrors(ida_mem::IDAMemPtr,ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,libsundials_ida),Cint,(IDAMemPtr,N_Vector),ida_mem,ele)
end

IDAGetEstLocalErrors(ida_mem,ele) = __IDAGetEstLocalErrors(convert(IDAMemPtr,ida_mem),convert(N_Vector,ele))

function __IDAGetNumGEvals(ida_mem::IDAMemPtr,ngevals::Ptr{Clong})
    ccall((:IDAGetNumGEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,ngevals)
end

IDAGetNumGEvals(ida_mem,ngevals) = __IDAGetNumGEvals(convert(IDAMemPtr,ida_mem),pointer(ngevals))

function __IDAGetRootInfo(ida_mem::IDAMemPtr,rootsfound::Ptr{Cint})
    ccall((:IDAGetRootInfo,libsundials_ida),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,rootsfound)
end

IDAGetRootInfo(ida_mem,rootsfound) = __IDAGetRootInfo(convert(IDAMemPtr,ida_mem),pointer(rootsfound))

function __IDAGetIntegratorStats(ida_mem::IDAMemPtr,nsteps::Ptr{Clong},nrevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:IDAGetIntegratorStats,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

IDAGetIntegratorStats(ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur) = __IDAGetIntegratorStats(convert(IDAMemPtr,ida_mem),pointer(nsteps),pointer(nrevals),pointer(nlinsetups),pointer(netfails),pointer(qlast),pointer(qcur),pointer(hinused),pointer(hlast),pointer(hcur),pointer(tcur))

function __IDAGetNumNonlinSolvIters(ida_mem::IDAMemPtr,nniters::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvIters,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nniters)
end

IDAGetNumNonlinSolvIters(ida_mem,nniters) = __IDAGetNumNonlinSolvIters(convert(IDAMemPtr,ida_mem),pointer(nniters))

function __IDAGetNumNonlinSolvConvFails(ida_mem::IDAMemPtr,nncfails::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvConvFails,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nncfails)
end

IDAGetNumNonlinSolvConvFails(ida_mem,nncfails) = __IDAGetNumNonlinSolvConvFails(convert(IDAMemPtr,ida_mem),pointer(nncfails))

function __IDAGetNonlinSolvStats(ida_mem::IDAMemPtr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:IDAGetNonlinSolvStats,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

IDAGetNonlinSolvStats(ida_mem,nniters,nncfails) = __IDAGetNonlinSolvStats(convert(IDAMemPtr,ida_mem),pointer(nniters),pointer(nncfails))

function __IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

IDAGetReturnFlagName(flag) = __IDAGetReturnFlagName(convert(Clong,flag))

function IDAFree(ida_mem::Ref{IDAMemPtr})
    ccall((:IDAFree,libsundials_ida),Void,(Ref{IDAMemPtr},),ida_mem)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDADlsSetDenseJacFn(ida_mem::IDAMemPtr,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,libsundials_ida),Cint,(IDAMemPtr,IDADlsDenseJacFn),ida_mem,jac)
end

IDADlsSetDenseJacFn(ida_mem,jac) = __IDADlsSetDenseJacFn(convert(IDAMemPtr,ida_mem),jac)

function __IDADlsSetBandJacFn(ida_mem::IDAMemPtr,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,libsundials_ida),Cint,(IDAMemPtr,IDADlsBandJacFn),ida_mem,jac)
end

IDADlsSetBandJacFn(ida_mem,jac) = __IDADlsSetBandJacFn(convert(IDAMemPtr,ida_mem),jac)

function __IDADlsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

IDADlsGetWorkSpace(ida_mem,lenrwLS,leniwLS) = __IDADlsGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrwLS),pointer(leniwLS))

function __IDADlsGetNumJacEvals(ida_mem::IDAMemPtr,njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njevals)
end

IDADlsGetNumJacEvals(ida_mem,njevals) = __IDADlsGetNumJacEvals(convert(IDAMemPtr,ida_mem),pointer(njevals))

function __IDADlsGetNumResEvals(ida_mem::IDAMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nfevalsLS)
end

IDADlsGetNumResEvals(ida_mem,nfevalsLS) = __IDADlsGetNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nfevalsLS))

function __IDADlsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

IDADlsGetLastFlag(ida_mem,flag) = __IDADlsGetLastFlag(convert(IDAMemPtr,ida_mem),pointer(flag))

function __IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

IDADlsGetReturnFlagName(flag) = __IDADlsGetReturnFlagName(convert(Clong,flag))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASpilsSetPreconditioner(ida_mem::IDAMemPtr,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_ida),Cint,(IDAMemPtr,IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

IDASpilsSetPreconditioner(ida_mem,pset,psolve) = __IDASpilsSetPreconditioner(convert(IDAMemPtr,ida_mem),pset,psolve)

function __IDASpilsSetJacTimesVecFn(ida_mem::IDAMemPtr,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_ida),Cint,(IDAMemPtr,IDASpilsJacTimesVecFn),ida_mem,jtv)
end

IDASpilsSetJacTimesVecFn(ida_mem,jtv) = __IDASpilsSetJacTimesVecFn(convert(IDAMemPtr,ida_mem),jtv)

function __IDASpilsSetGSType(ida_mem::IDAMemPtr,gstype::Cint)
    ccall((:IDASpilsSetGSType,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,gstype)
end

IDASpilsSetGSType(ida_mem,gstype) = __IDASpilsSetGSType(convert(IDAMemPtr,ida_mem),gstype)

function __IDASpilsSetMaxRestarts(ida_mem::IDAMemPtr,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxrs)
end

IDASpilsSetMaxRestarts(ida_mem,maxrs) = __IDASpilsSetMaxRestarts(convert(IDAMemPtr,ida_mem),maxrs)

function __IDASpilsSetMaxl(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpilsSetMaxl,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

IDASpilsSetMaxl(ida_mem,maxl) = __IDASpilsSetMaxl(convert(IDAMemPtr,ida_mem),maxl)

function __IDASpilsSetEpsLin(ida_mem::IDAMemPtr,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,eplifac)
end

IDASpilsSetEpsLin(ida_mem,eplifac) = __IDASpilsSetEpsLin(convert(IDAMemPtr,ida_mem),eplifac)

function __IDASpilsSetIncrementFactor(ida_mem::IDAMemPtr,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,dqincfac)
end

IDASpilsSetIncrementFactor(ida_mem,dqincfac) = __IDASpilsSetIncrementFactor(convert(IDAMemPtr,ida_mem),dqincfac)

function __IDASpilsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

IDASpilsGetWorkSpace(ida_mem,lenrwLS,leniwLS) = __IDASpilsGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrwLS),pointer(leniwLS))

function __IDASpilsGetNumPrecEvals(ida_mem::IDAMemPtr,npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npevals)
end

IDASpilsGetNumPrecEvals(ida_mem,npevals) = __IDASpilsGetNumPrecEvals(convert(IDAMemPtr,ida_mem),pointer(npevals))

function __IDASpilsGetNumPrecSolves(ida_mem::IDAMemPtr,npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npsolves)
end

IDASpilsGetNumPrecSolves(ida_mem,npsolves) = __IDASpilsGetNumPrecSolves(convert(IDAMemPtr,ida_mem),pointer(npsolves))

function __IDASpilsGetNumLinIters(ida_mem::IDAMemPtr,nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nliters)
end

IDASpilsGetNumLinIters(ida_mem,nliters) = __IDASpilsGetNumLinIters(convert(IDAMemPtr,ida_mem),pointer(nliters))

function __IDASpilsGetNumConvFails(ida_mem::IDAMemPtr,nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlcfails)
end

IDASpilsGetNumConvFails(ida_mem,nlcfails) = __IDASpilsGetNumConvFails(convert(IDAMemPtr,ida_mem),pointer(nlcfails))

function __IDASpilsGetNumJtimesEvals(ida_mem::IDAMemPtr,njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njvevals)
end

IDASpilsGetNumJtimesEvals(ida_mem,njvevals) = __IDASpilsGetNumJtimesEvals(convert(IDAMemPtr,ida_mem),pointer(njvevals))

function __IDASpilsGetNumResEvals(ida_mem::IDAMemPtr,nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevalsLS)
end

IDASpilsGetNumResEvals(ida_mem,nrevalsLS) = __IDASpilsGetNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nrevalsLS))

function __IDASpilsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

IDASpilsGetLastFlag(ida_mem,flag) = __IDASpilsGetLastFlag(convert(IDAMemPtr,ida_mem),pointer(flag))

function __IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

IDASpilsGetReturnFlagName(flag) = __IDASpilsGetReturnFlagName(convert(Clong,flag))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDABand(ida_mem::IDAMemPtr,Neq::Clong,mupper::Clong,mlower::Clong)
    ccall((:IDABand,libsundials_ida),Cint,(IDAMemPtr,Clong,Clong,Clong),ida_mem,Neq,mupper,mlower)
end

IDABand(ida_mem,Neq,mupper,mlower) = __IDABand(convert(IDAMemPtr,ida_mem),convert(Clong,Neq),convert(Clong,mupper),convert(Clong,mlower))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDABBDPrecInit(ida_mem::IDAMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_yy::realtype,Gres::IDABBDLocalFn,Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit,libsundials_ida),Cint,(IDAMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFn,IDABBDCommFn),ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)
end

IDABBDPrecInit(ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm) = __IDABBDPrecInit(convert(IDAMemPtr,ida_mem),convert(Clong,Nlocal),convert(Clong,mudq),convert(Clong,mldq),convert(Clong,mukeep),convert(Clong,mlkeep),dq_rel_yy,Gres,Gcomm)

function __IDABBDPrecReInit(ida_mem::IDAMemPtr,mudq::Clong,mldq::Clong,dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit,libsundials_ida),Cint,(IDAMemPtr,Clong,Clong,realtype),ida_mem,mudq,mldq,dq_rel_yy)
end

IDABBDPrecReInit(ida_mem,mudq,mldq,dq_rel_yy) = __IDABBDPrecReInit(convert(IDAMemPtr,ida_mem),convert(Clong,mudq),convert(Clong,mldq),dq_rel_yy)

function __IDABBDPrecGetWorkSpace(ida_mem::IDAMemPtr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwBBDP,leniwBBDP)
end

IDABBDPrecGetWorkSpace(ida_mem,lenrwBBDP,leniwBBDP) = __IDABBDPrecGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrwBBDP),pointer(leniwBBDP))

function __IDABBDPrecGetNumGfnEvals(ida_mem::IDAMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetNumGfnEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,ngevalsBBDP)
end

IDABBDPrecGetNumGfnEvals(ida_mem,ngevalsBBDP) = __IDABBDPrecGetNumGfnEvals(convert(IDAMemPtr,ida_mem),pointer(ngevalsBBDP))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDADense(ida_mem::IDAMemPtr,Neq::Clong)
    ccall((:IDADense,libsundials_ida),Cint,(IDAMemPtr,Clong),ida_mem,Neq)
end

IDADense(ida_mem,Neq) = __IDADense(convert(IDAMemPtr,ida_mem),convert(Clong,Neq))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASpbcg(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpbcg,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

IDASpbcg(ida_mem,maxl) = __IDASpbcg(convert(IDAMemPtr,ida_mem),maxl)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASpgmr(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpgmr,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

IDASpgmr(ida_mem,maxl) = __IDASpgmr(convert(IDAMemPtr,ida_mem),maxl)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASptfqmr(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASptfqmr,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

IDASptfqmr(ida_mem,maxl) = __IDASptfqmr(convert(IDAMemPtr,ida_mem),maxl)
