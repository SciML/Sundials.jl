# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/ida/ida.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDACreate()
    ccall((:IDACreate,libsundials_ida),IDAMemPtr,())
end

function __IDASetErrHandlerFn(ida_mem::IDAMemPtr,ehfun::IDAErrHandlerFn,eh_data::Ptr{Void})
    ccall((:IDASetErrHandlerFn,libsundials_ida),Cint,(IDAMemPtr,IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

function IDASetErrHandlerFn(ida_mem,ehfun,eh_data)
    __IDASetErrHandlerFn(convert(IDAMemPtr,ida_mem),ehfun,pointer(eh_data))
end

function __IDASetErrFile(ida_mem::IDAMemPtr,errfp::Ptr{FILE})
    ccall((:IDASetErrFile,libsundials_ida),Cint,(IDAMemPtr,Ptr{FILE}),ida_mem,errfp)
end

function IDASetErrFile(ida_mem,errfp)
    __IDASetErrFile(convert(IDAMemPtr,ida_mem),errfp)
end

function __IDASetUserData(ida_mem::IDAMemPtr,user_data::Any)
    ccall((:IDASetUserData,libsundials_ida),Cint,(IDAMemPtr,Any),ida_mem,user_data)
end

function IDASetUserData(ida_mem,user_data)
    __IDASetUserData(convert(IDAMemPtr,ida_mem),user_data)
end

function __IDASetMaxOrd(ida_mem::IDAMemPtr,maxord::Cint)
    ccall((:IDASetMaxOrd,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxord)
end

function IDASetMaxOrd(ida_mem,maxord)
    __IDASetMaxOrd(convert(IDAMemPtr,ida_mem),convert(Cint,maxord))
end

function __IDASetMaxNumSteps(ida_mem::IDAMemPtr,mxsteps::Clong)
    ccall((:IDASetMaxNumSteps,libsundials_ida),Cint,(IDAMemPtr,Clong),ida_mem,mxsteps)
end

function IDASetMaxNumSteps(ida_mem,mxsteps)
    __IDASetMaxNumSteps(convert(IDAMemPtr,ida_mem),convert(Clong,mxsteps))
end

function __IDASetInitStep(ida_mem::IDAMemPtr,hin::realtype)
    ccall((:IDASetInitStep,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,hin)
end

function IDASetInitStep(ida_mem,hin)
    __IDASetInitStep(convert(IDAMemPtr,ida_mem),hin)
end

function __IDASetMaxStep(ida_mem::IDAMemPtr,hmax::realtype)
    ccall((:IDASetMaxStep,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,hmax)
end

function IDASetMaxStep(ida_mem,hmax)
    __IDASetMaxStep(convert(IDAMemPtr,ida_mem),hmax)
end

function __IDASetStopTime(ida_mem::IDAMemPtr,tstop::realtype)
    ccall((:IDASetStopTime,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,tstop)
end

function IDASetStopTime(ida_mem,tstop)
    __IDASetStopTime(convert(IDAMemPtr,ida_mem),tstop)
end

function __IDASetNonlinConvCoef(ida_mem::IDAMemPtr,epcon::realtype)
    ccall((:IDASetNonlinConvCoef,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,epcon)
end

function IDASetNonlinConvCoef(ida_mem,epcon)
    __IDASetNonlinConvCoef(convert(IDAMemPtr,ida_mem),epcon)
end

function __IDASetMaxErrTestFails(ida_mem::IDAMemPtr,maxnef::Cint)
    ccall((:IDASetMaxErrTestFails,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxnef)
end

function IDASetMaxErrTestFails(ida_mem,maxnef)
    __IDASetMaxErrTestFails(convert(IDAMemPtr,ida_mem),convert(Cint,maxnef))
end

function __IDASetMaxNonlinIters(ida_mem::IDAMemPtr,maxcor::Cint)
    ccall((:IDASetMaxNonlinIters,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxcor)
end

function IDASetMaxNonlinIters(ida_mem,maxcor)
    __IDASetMaxNonlinIters(convert(IDAMemPtr,ida_mem),convert(Cint,maxcor))
end

function __IDASetMaxConvFails(ida_mem::IDAMemPtr,maxncf::Cint)
    ccall((:IDASetMaxConvFails,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxncf)
end

function IDASetMaxConvFails(ida_mem,maxncf)
    __IDASetMaxConvFails(convert(IDAMemPtr,ida_mem),convert(Cint,maxncf))
end

function __IDASetSuppressAlg(ida_mem::IDAMemPtr,suppressalg::Cint)
    ccall((:IDASetSuppressAlg,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,suppressalg)
end

function IDASetSuppressAlg(ida_mem,suppressalg)
    __IDASetSuppressAlg(convert(IDAMemPtr,ida_mem),convert(Cint,suppressalg))
end

function __IDASetId(ida_mem::IDAMemPtr,id::N_Vector)
    ccall((:IDASetId,libsundials_ida),Cint,(IDAMemPtr,N_Vector),ida_mem,id)
end

function IDASetId(ida_mem,id)
    __id = convert(NVector,id)
    __IDASetId(convert(IDAMemPtr,ida_mem),convert(N_Vector,__id))
end

function __IDASetConstraints(ida_mem::IDAMemPtr,constraints::N_Vector)
    ccall((:IDASetConstraints,libsundials_ida),Cint,(IDAMemPtr,N_Vector),ida_mem,constraints)
end

function IDASetConstraints(ida_mem,constraints)
    __constraints = convert(NVector,constraints)
    __IDASetConstraints(convert(IDAMemPtr,ida_mem),convert(N_Vector,__constraints))
end

function __IDASetRootDirection(ida_mem::IDAMemPtr,rootdir::Ptr{Cint})
    ccall((:IDASetRootDirection,libsundials_ida),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,rootdir)
end

function IDASetRootDirection(ida_mem,rootdir)
    __IDASetRootDirection(convert(IDAMemPtr,ida_mem),pointer(rootdir))
end

function __IDASetNoInactiveRootWarn(ida_mem::IDAMemPtr)
    ccall((:IDASetNoInactiveRootWarn,libsundials_ida),Cint,(IDAMemPtr,),ida_mem)
end

function IDASetNoInactiveRootWarn(ida_mem)
    __IDASetNoInactiveRootWarn(convert(IDAMemPtr,ida_mem))
end

function __IDAInit(ida_mem::IDAMemPtr,res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,libsundials_ida),Cint,(IDAMemPtr,IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

function IDAInit(ida_mem,res,t0,yy0,yp0)
    __yy0 = convert(NVector,yy0)
    __yp0 = convert(NVector,yp0)
    __IDAInit(convert(IDAMemPtr,ida_mem),IDAResFn_wrapper(res),t0,convert(N_Vector,__yy0),convert(N_Vector,__yp0))
end

function __IDAReInit(ida_mem::IDAMemPtr,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,libsundials_ida),Cint,(IDAMemPtr,realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

function IDAReInit(ida_mem,t0,yy0,yp0)
    __yy0 = convert(NVector,yy0)
    __yp0 = convert(NVector,yp0)
    __IDAReInit(convert(IDAMemPtr,ida_mem),t0,convert(N_Vector,__yy0),convert(N_Vector,__yp0))
end

function __IDASStolerances(ida_mem::IDAMemPtr,reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,libsundials_ida),Cint,(IDAMemPtr,realtype,realtype),ida_mem,reltol,abstol)
end

function IDASStolerances(ida_mem,reltol,abstol)
    __IDASStolerances(convert(IDAMemPtr,ida_mem),reltol,abstol)
end

function __IDASVtolerances(ida_mem::IDAMemPtr,reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,libsundials_ida),Cint,(IDAMemPtr,realtype,N_Vector),ida_mem,reltol,abstol)
end

function IDASVtolerances(ida_mem,reltol,abstol)
    __abstol = convert(NVector,abstol)
    __IDASVtolerances(convert(IDAMemPtr,ida_mem),reltol,convert(N_Vector,__abstol))
end

function __IDAWFtolerances(ida_mem::IDAMemPtr,efun::IDAEwtFn)
    ccall((:IDAWFtolerances,libsundials_ida),Cint,(IDAMemPtr,IDAEwtFn),ida_mem,efun)
end

function IDAWFtolerances(ida_mem,efun)
    __IDAWFtolerances(convert(IDAMemPtr,ida_mem),efun)
end

function __IDASetNonlinConvCoefIC(ida_mem::IDAMemPtr,epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,epiccon)
end

function IDASetNonlinConvCoefIC(ida_mem,epiccon)
    __IDASetNonlinConvCoefIC(convert(IDAMemPtr,ida_mem),epiccon)
end

function __IDASetMaxNumStepsIC(ida_mem::IDAMemPtr,maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxnh)
end

function IDASetMaxNumStepsIC(ida_mem,maxnh)
    __IDASetMaxNumStepsIC(convert(IDAMemPtr,ida_mem),convert(Cint,maxnh))
end

function __IDASetMaxNumJacsIC(ida_mem::IDAMemPtr,maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxnj)
end

function IDASetMaxNumJacsIC(ida_mem,maxnj)
    __IDASetMaxNumJacsIC(convert(IDAMemPtr,ida_mem),convert(Cint,maxnj))
end

function __IDASetMaxNumItersIC(ida_mem::IDAMemPtr,maxnit::Cint)
    ccall((:IDASetMaxNumItersIC,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxnit)
end

function IDASetMaxNumItersIC(ida_mem,maxnit)
    __IDASetMaxNumItersIC(convert(IDAMemPtr,ida_mem),convert(Cint,maxnit))
end

function __IDASetLineSearchOffIC(ida_mem::IDAMemPtr,lsoff::Cint)
    ccall((:IDASetLineSearchOffIC,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,lsoff)
end

function IDASetLineSearchOffIC(ida_mem,lsoff)
    __IDASetLineSearchOffIC(convert(IDAMemPtr,ida_mem),convert(Cint,lsoff))
end

function __IDASetStepToleranceIC(ida_mem::IDAMemPtr,steptol::realtype)
    ccall((:IDASetStepToleranceIC,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,steptol)
end

function IDASetStepToleranceIC(ida_mem,steptol)
    __IDASetStepToleranceIC(convert(IDAMemPtr,ida_mem),steptol)
end

function __IDARootInit(ida_mem::IDAMemPtr,nrtfn::Cint,g::IDARootFn)
    ccall((:IDARootInit,libsundials_ida),Cint,(IDAMemPtr,Cint,IDARootFn),ida_mem,nrtfn,g)
end

function IDARootInit(ida_mem,nrtfn,g)
    __IDARootInit(convert(IDAMemPtr,ida_mem),convert(Cint,nrtfn),IDARootFn_wrapper(g))
end

function __IDACalcIC(ida_mem::IDAMemPtr,icopt::Cint,tout1::realtype)
    ccall((:IDACalcIC,libsundials_ida),Cint,(IDAMemPtr,Cint,realtype),ida_mem,icopt,tout1)
end

function IDACalcIC(ida_mem,icopt,tout1)
    __IDACalcIC(convert(IDAMemPtr,ida_mem),convert(Cint,icopt),tout1)
end

function __IDASolve(ida_mem::IDAMemPtr,tout::realtype,tret::Ptr{realtype},yret::N_Vector,ypret::N_Vector,itask::Cint)
    ccall((:IDASolve,libsundials_ida),Cint,(IDAMemPtr,realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

function IDASolve(ida_mem,tout,tret,yret,ypret,itask)
    __yret = convert(NVector,yret)
    __ypret = convert(NVector,ypret)
    __IDASolve(convert(IDAMemPtr,ida_mem),tout,pointer(tret),convert(N_Vector,__yret),convert(N_Vector,__ypret),convert(Cint,itask))
end

function __IDAGetDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetDky,libsundials_ida),Cint,(IDAMemPtr,realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetDky(ida_mem,t,k,dky)
    __dky = convert(NVector,dky)
    __IDAGetDky(convert(IDAMemPtr,ida_mem),t,convert(Cint,k),convert(N_Vector,__dky))
end

function __IDAGetWorkSpace(ida_mem::IDAMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:IDAGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

function IDAGetWorkSpace(ida_mem,lenrw,leniw)
    __IDAGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrw),pointer(leniw))
end

function __IDAGetNumSteps(ida_mem::IDAMemPtr,nsteps::Ptr{Clong})
    ccall((:IDAGetNumSteps,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nsteps)
end

function IDAGetNumSteps(ida_mem,nsteps)
    __IDAGetNumSteps(convert(IDAMemPtr,ida_mem),pointer(nsteps))
end

function __IDAGetNumResEvals(ida_mem::IDAMemPtr,nrevals::Ptr{Clong})
    ccall((:IDAGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevals)
end

function IDAGetNumResEvals(ida_mem,nrevals)
    __IDAGetNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nrevals))
end

function __IDAGetNumLinSolvSetups(ida_mem::IDAMemPtr,nlinsetups::Ptr{Clong})
    ccall((:IDAGetNumLinSolvSetups,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlinsetups)
end

function IDAGetNumLinSolvSetups(ida_mem,nlinsetups)
    __IDAGetNumLinSolvSetups(convert(IDAMemPtr,ida_mem),pointer(nlinsetups))
end

function __IDAGetNumErrTestFails(ida_mem::IDAMemPtr,netfails::Ptr{Clong})
    ccall((:IDAGetNumErrTestFails,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,netfails)
end

function IDAGetNumErrTestFails(ida_mem,netfails)
    __IDAGetNumErrTestFails(convert(IDAMemPtr,ida_mem),pointer(netfails))
end

function __IDAGetNumBacktrackOps(ida_mem::IDAMemPtr,nbacktr::Ptr{Clong})
    ccall((:IDAGetNumBacktrackOps,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nbacktr)
end

function IDAGetNumBacktrackOps(ida_mem,nbacktr)
    __IDAGetNumBacktrackOps(convert(IDAMemPtr,ida_mem),pointer(nbacktr))
end

function __IDAGetConsistentIC(ida_mem::IDAMemPtr,yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,libsundials_ida),Cint,(IDAMemPtr,N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

function IDAGetConsistentIC(ida_mem,yy0_mod,yp0_mod)
    __yy0_mod = convert(NVector,yy0_mod)
    __yp0_mod = convert(NVector,yp0_mod)
    __IDAGetConsistentIC(convert(IDAMemPtr,ida_mem),convert(N_Vector,__yy0_mod),convert(N_Vector,__yp0_mod))
end

function __IDAGetLastOrder(ida_mem::IDAMemPtr,klast::Ptr{Cint})
    ccall((:IDAGetLastOrder,libsundials_ida),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,klast)
end

function IDAGetLastOrder(ida_mem,klast)
    __IDAGetLastOrder(convert(IDAMemPtr,ida_mem),pointer(klast))
end

function __IDAGetCurrentOrder(ida_mem::IDAMemPtr,kcur::Ptr{Cint})
    ccall((:IDAGetCurrentOrder,libsundials_ida),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,kcur)
end

function IDAGetCurrentOrder(ida_mem,kcur)
    __IDAGetCurrentOrder(convert(IDAMemPtr,ida_mem),pointer(kcur))
end

function __IDAGetActualInitStep(ida_mem::IDAMemPtr,hinused::Ptr{realtype})
    ccall((:IDAGetActualInitStep,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hinused)
end

function IDAGetActualInitStep(ida_mem,hinused)
    __IDAGetActualInitStep(convert(IDAMemPtr,ida_mem),pointer(hinused))
end

function __IDAGetLastStep(ida_mem::IDAMemPtr,hlast::Ptr{realtype})
    ccall((:IDAGetLastStep,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hlast)
end

function IDAGetLastStep(ida_mem,hlast)
    __IDAGetLastStep(convert(IDAMemPtr,ida_mem),pointer(hlast))
end

function __IDAGetCurrentStep(ida_mem::IDAMemPtr,hcur::Ptr{realtype})
    ccall((:IDAGetCurrentStep,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hcur)
end

function IDAGetCurrentStep(ida_mem,hcur)
    __IDAGetCurrentStep(convert(IDAMemPtr,ida_mem),pointer(hcur))
end

function __IDAGetCurrentTime(ida_mem::IDAMemPtr,tcur::Ptr{realtype})
    ccall((:IDAGetCurrentTime,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,tcur)
end

function IDAGetCurrentTime(ida_mem,tcur)
    __IDAGetCurrentTime(convert(IDAMemPtr,ida_mem),pointer(tcur))
end

function __IDAGetTolScaleFactor(ida_mem::IDAMemPtr,tolsfact::Ptr{realtype})
    ccall((:IDAGetTolScaleFactor,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,tolsfact)
end

function IDAGetTolScaleFactor(ida_mem,tolsfact)
    __IDAGetTolScaleFactor(convert(IDAMemPtr,ida_mem),pointer(tolsfact))
end

function __IDAGetErrWeights(ida_mem::IDAMemPtr,eweight::N_Vector)
    ccall((:IDAGetErrWeights,libsundials_ida),Cint,(IDAMemPtr,N_Vector),ida_mem,eweight)
end

function IDAGetErrWeights(ida_mem,eweight)
    __eweight = convert(NVector,eweight)
    __IDAGetErrWeights(convert(IDAMemPtr,ida_mem),convert(N_Vector,__eweight))
end

function __IDAGetEstLocalErrors(ida_mem::IDAMemPtr,ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,libsundials_ida),Cint,(IDAMemPtr,N_Vector),ida_mem,ele)
end

function IDAGetEstLocalErrors(ida_mem,ele)
    __ele = convert(NVector,ele)
    __IDAGetEstLocalErrors(convert(IDAMemPtr,ida_mem),convert(N_Vector,__ele))
end

function __IDAGetNumGEvals(ida_mem::IDAMemPtr,ngevals::Ptr{Clong})
    ccall((:IDAGetNumGEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,ngevals)
end

function IDAGetNumGEvals(ida_mem,ngevals)
    __IDAGetNumGEvals(convert(IDAMemPtr,ida_mem),pointer(ngevals))
end

function __IDAGetRootInfo(ida_mem::IDAMemPtr,rootsfound::Ptr{Cint})
    ccall((:IDAGetRootInfo,libsundials_ida),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,rootsfound)
end

function IDAGetRootInfo(ida_mem,rootsfound)
    __IDAGetRootInfo(convert(IDAMemPtr,ida_mem),pointer(rootsfound))
end

function __IDAGetIntegratorStats(ida_mem::IDAMemPtr,nsteps::Ptr{Clong},nrevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:IDAGetIntegratorStats,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function IDAGetIntegratorStats(ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    __IDAGetIntegratorStats(convert(IDAMemPtr,ida_mem),pointer(nsteps),pointer(nrevals),pointer(nlinsetups),pointer(netfails),pointer(qlast),pointer(qcur),pointer(hinused),pointer(hlast),pointer(hcur),pointer(tcur))
end

function __IDAGetNumNonlinSolvIters(ida_mem::IDAMemPtr,nniters::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvIters,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nniters)
end

function IDAGetNumNonlinSolvIters(ida_mem,nniters)
    __IDAGetNumNonlinSolvIters(convert(IDAMemPtr,ida_mem),pointer(nniters))
end

function __IDAGetNumNonlinSolvConvFails(ida_mem::IDAMemPtr,nncfails::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvConvFails,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nncfails)
end

function IDAGetNumNonlinSolvConvFails(ida_mem,nncfails)
    __IDAGetNumNonlinSolvConvFails(convert(IDAMemPtr,ida_mem),pointer(nncfails))
end

function __IDAGetNonlinSolvStats(ida_mem::IDAMemPtr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:IDAGetNonlinSolvStats,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

function IDAGetNonlinSolvStats(ida_mem,nniters,nncfails)
    __IDAGetNonlinSolvStats(convert(IDAMemPtr,ida_mem),pointer(nniters),pointer(nncfails))
end

function __IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDAGetReturnFlagName(flag)
    __IDAGetReturnFlagName(convert(Clong,flag))
end

function IDAFree(ida_mem::Ref{IDAMemPtr})
    ccall((:IDAFree,libsundials_ida),Void,(Ref{IDAMemPtr},),ida_mem)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/ida/ida_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDADlsSetDenseJacFn(ida_mem::IDAMemPtr,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,libsundials_ida),Cint,(IDAMemPtr,IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetDenseJacFn(ida_mem,jac)
    __IDADlsSetDenseJacFn(convert(IDAMemPtr,ida_mem),jac)
end

function __IDADlsSetBandJacFn(ida_mem::IDAMemPtr,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,libsundials_ida),Cint,(IDAMemPtr,IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem,jac)
    __IDADlsSetBandJacFn(convert(IDAMemPtr,ida_mem),jac)
end

function __IDADlsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    __IDADlsGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __IDADlsGetNumJacEvals(ida_mem::IDAMemPtr,njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumJacEvals(ida_mem,njevals)
    __IDADlsGetNumJacEvals(convert(IDAMemPtr,ida_mem),pointer(njevals))
end

function __IDADlsGetNumResEvals(ida_mem::IDAMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetNumResEvals(ida_mem,nfevalsLS)
    __IDADlsGetNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nfevalsLS))
end

function __IDADlsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetLastFlag(ida_mem,flag)
    __IDADlsGetLastFlag(convert(IDAMemPtr,ida_mem),pointer(flag))
end

function __IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDADlsGetReturnFlagName(flag)
    __IDADlsGetReturnFlagName(convert(Clong,flag))
end
# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/ida/ida_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASpilsSetPreconditioner(ida_mem::IDAMemPtr,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_ida),Cint,(IDAMemPtr,IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetPreconditioner(ida_mem,pset,psolve)
    __IDASpilsSetPreconditioner(convert(IDAMemPtr,ida_mem),pset,psolve)
end

function __IDASpilsSetJacTimesVecFn(ida_mem::IDAMemPtr,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_ida),Cint,(IDAMemPtr,IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetJacTimesVecFn(ida_mem,jtv)
    __IDASpilsSetJacTimesVecFn(convert(IDAMemPtr,ida_mem),jtv)
end

function __IDASpilsSetGSType(ida_mem::IDAMemPtr,gstype::Cint)
    ccall((:IDASpilsSetGSType,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,gstype)
end

function IDASpilsSetGSType(ida_mem,gstype)
    __IDASpilsSetGSType(convert(IDAMemPtr,ida_mem),convert(Cint,gstype))
end

function __IDASpilsSetMaxRestarts(ida_mem::IDAMemPtr,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxRestarts(ida_mem,maxrs)
    __IDASpilsSetMaxRestarts(convert(IDAMemPtr,ida_mem),convert(Cint,maxrs))
end

function __IDASpilsSetMaxl(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpilsSetMaxl,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpilsSetMaxl(ida_mem,maxl)
    __IDASpilsSetMaxl(convert(IDAMemPtr,ida_mem),convert(Cint,maxl))
end

function __IDASpilsSetEpsLin(ida_mem::IDAMemPtr,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,eplifac)
end

function IDASpilsSetEpsLin(ida_mem,eplifac)
    __IDASpilsSetEpsLin(convert(IDAMemPtr,ida_mem),eplifac)
end

function __IDASpilsSetIncrementFactor(ida_mem::IDAMemPtr,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,dqincfac)
end

function IDASpilsSetIncrementFactor(ida_mem,dqincfac)
    __IDASpilsSetIncrementFactor(convert(IDAMemPtr,ida_mem),dqincfac)
end

function __IDASpilsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    __IDASpilsGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __IDASpilsGetNumPrecEvals(ida_mem::IDAMemPtr,npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecEvals(ida_mem,npevals)
    __IDASpilsGetNumPrecEvals(convert(IDAMemPtr,ida_mem),pointer(npevals))
end

function __IDASpilsGetNumPrecSolves(ida_mem::IDAMemPtr,npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumPrecSolves(ida_mem,npsolves)
    __IDASpilsGetNumPrecSolves(convert(IDAMemPtr,ida_mem),pointer(npsolves))
end

function __IDASpilsGetNumLinIters(ida_mem::IDAMemPtr,nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumLinIters(ida_mem,nliters)
    __IDASpilsGetNumLinIters(convert(IDAMemPtr,ida_mem),pointer(nliters))
end

function __IDASpilsGetNumConvFails(ida_mem::IDAMemPtr,nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumConvFails(ida_mem,nlcfails)
    __IDASpilsGetNumConvFails(convert(IDAMemPtr,ida_mem),pointer(nlcfails))
end

function __IDASpilsGetNumJtimesEvals(ida_mem::IDAMemPtr,njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumJtimesEvals(ida_mem,njvevals)
    __IDASpilsGetNumJtimesEvals(convert(IDAMemPtr,ida_mem),pointer(njvevals))
end

function __IDASpilsGetNumResEvals(ida_mem::IDAMemPtr,nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetNumResEvals(ida_mem,nrevalsLS)
    __IDASpilsGetNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nrevalsLS))
end

function __IDASpilsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetLastFlag(ida_mem,flag)
    __IDASpilsGetLastFlag(convert(IDAMemPtr,ida_mem),pointer(flag))
end

function __IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDASpilsGetReturnFlagName(flag)
    __IDASpilsGetReturnFlagName(convert(Clong,flag))
end
# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/ida/ida_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDABand(ida_mem::IDAMemPtr,Neq::Clong,mupper::Clong,mlower::Clong)
    ccall((:IDABand,libsundials_ida),Cint,(IDAMemPtr,Clong,Clong,Clong),ida_mem,Neq,mupper,mlower)
end

function IDABand(ida_mem,Neq,mupper,mlower)
    __IDABand(convert(IDAMemPtr,ida_mem),convert(Clong,Neq),convert(Clong,mupper),convert(Clong,mlower))
end
# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/ida/ida_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDABBDPrecInit(ida_mem::IDAMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_yy::realtype,Gres::IDABBDLocalFn,Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit,libsundials_ida),Cint,(IDAMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFn,IDABBDCommFn),ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)
end

function IDABBDPrecInit(ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)
    __IDABBDPrecInit(convert(IDAMemPtr,ida_mem),convert(Clong,Nlocal),convert(Clong,mudq),convert(Clong,mldq),convert(Clong,mukeep),convert(Clong,mlkeep),dq_rel_yy,Gres,Gcomm)
end

function __IDABBDPrecReInit(ida_mem::IDAMemPtr,mudq::Clong,mldq::Clong,dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit,libsundials_ida),Cint,(IDAMemPtr,Clong,Clong,realtype),ida_mem,mudq,mldq,dq_rel_yy)
end

function IDABBDPrecReInit(ida_mem,mudq,mldq,dq_rel_yy)
    __IDABBDPrecReInit(convert(IDAMemPtr,ida_mem),convert(Clong,mudq),convert(Clong,mldq),dq_rel_yy)
end

function __IDABBDPrecGetWorkSpace(ida_mem::IDAMemPtr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwBBDP,leniwBBDP)
end

function IDABBDPrecGetWorkSpace(ida_mem,lenrwBBDP,leniwBBDP)
    __IDABBDPrecGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrwBBDP),pointer(leniwBBDP))
end

function __IDABBDPrecGetNumGfnEvals(ida_mem::IDAMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetNumGfnEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,ngevalsBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem,ngevalsBBDP)
    __IDABBDPrecGetNumGfnEvals(convert(IDAMemPtr,ida_mem),pointer(ngevalsBBDP))
end
# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/ida/ida_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDADense(ida_mem::IDAMemPtr,Neq::Clong)
    ccall((:IDADense,libsundials_ida),Cint,(IDAMemPtr,Clong),ida_mem,Neq)
end

function IDADense(ida_mem,Neq)
    __IDADense(convert(IDAMemPtr,ida_mem),convert(Clong,Neq))
end
# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/ida/ida_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/ida/ida_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASpbcg(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpbcg,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpbcg(ida_mem,maxl)
    __IDASpbcg(convert(IDAMemPtr,ida_mem),convert(Cint,maxl))
end
# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/ida/ida_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASpgmr(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpgmr,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpgmr(ida_mem,maxl)
    __IDASpgmr(convert(IDAMemPtr,ida_mem),convert(Cint,maxl))
end
# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/ida/ida_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASptfqmr(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASptfqmr,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASptfqmr(ida_mem,maxl)
    __IDASptfqmr(convert(IDAMemPtr,ida_mem),convert(Cint,maxl))
end
