# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDACreate()
    ccall((:IDACreate,libsundials_idas),IDAMemPtr,())
end

function __IDASetErrHandlerFn(ida_mem::IDAMemPtr,ehfun::IDAErrHandlerFn,eh_data::Ptr{Void})
    ccall((:IDASetErrHandlerFn,libsundials_idas),Cint,(IDAMemPtr,IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

IDASetErrHandlerFn(ida_mem,ehfun,eh_data) = __IDASetErrHandlerFn(convert(IDAMemPtr,ida_mem),ehfun,pointer(eh_data))

function __IDASetErrFile(ida_mem::IDAMemPtr,errfp::Ptr{FILE})
    ccall((:IDASetErrFile,libsundials_idas),Cint,(IDAMemPtr,Ptr{FILE}),ida_mem,errfp)
end

IDASetErrFile(ida_mem,errfp) = __IDASetErrFile(convert(IDAMemPtr,ida_mem),errfp)

function __IDASetUserData(ida_mem::IDAMemPtr,user_data::Any)
    ccall((:IDASetUserData,libsundials_idas),Cint,(IDAMemPtr,Any),ida_mem,user_data)
end

IDASetUserData(ida_mem,user_data) = __IDASetUserData(convert(IDAMemPtr,ida_mem),user_data)

function __IDASetMaxOrd(ida_mem::IDAMemPtr,maxord::Cint)
    ccall((:IDASetMaxOrd,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxord)
end

IDASetMaxOrd(ida_mem,maxord) = __IDASetMaxOrd(convert(IDAMemPtr,ida_mem),maxord)

function __IDASetMaxNumSteps(ida_mem::IDAMemPtr,mxsteps::Clong)
    ccall((:IDASetMaxNumSteps,libsundials_idas),Cint,(IDAMemPtr,Clong),ida_mem,mxsteps)
end

IDASetMaxNumSteps(ida_mem,mxsteps) = __IDASetMaxNumSteps(convert(IDAMemPtr,ida_mem),mxsteps)

function __IDASetInitStep(ida_mem::IDAMemPtr,hin::realtype)
    ccall((:IDASetInitStep,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,hin)
end

IDASetInitStep(ida_mem,hin) = __IDASetInitStep(convert(IDAMemPtr,ida_mem),hin)

function __IDASetMaxStep(ida_mem::IDAMemPtr,hmax::realtype)
    ccall((:IDASetMaxStep,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,hmax)
end

IDASetMaxStep(ida_mem,hmax) = __IDASetMaxStep(convert(IDAMemPtr,ida_mem),hmax)

function __IDASetStopTime(ida_mem::IDAMemPtr,tstop::realtype)
    ccall((:IDASetStopTime,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,tstop)
end

IDASetStopTime(ida_mem,tstop) = __IDASetStopTime(convert(IDAMemPtr,ida_mem),tstop)

function __IDASetNonlinConvCoef(ida_mem::IDAMemPtr,epcon::realtype)
    ccall((:IDASetNonlinConvCoef,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,epcon)
end

IDASetNonlinConvCoef(ida_mem,epcon) = __IDASetNonlinConvCoef(convert(IDAMemPtr,ida_mem),epcon)

function __IDASetMaxErrTestFails(ida_mem::IDAMemPtr,maxnef::Cint)
    ccall((:IDASetMaxErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxnef)
end

IDASetMaxErrTestFails(ida_mem,maxnef) = __IDASetMaxErrTestFails(convert(IDAMemPtr,ida_mem),maxnef)

function __IDASetMaxNonlinIters(ida_mem::IDAMemPtr,maxcor::Cint)
    ccall((:IDASetMaxNonlinIters,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxcor)
end

IDASetMaxNonlinIters(ida_mem,maxcor) = __IDASetMaxNonlinIters(convert(IDAMemPtr,ida_mem),maxcor)

function __IDASetMaxConvFails(ida_mem::IDAMemPtr,maxncf::Cint)
    ccall((:IDASetMaxConvFails,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxncf)
end

IDASetMaxConvFails(ida_mem,maxncf) = __IDASetMaxConvFails(convert(IDAMemPtr,ida_mem),maxncf)

function __IDASetSuppressAlg(ida_mem::IDAMemPtr,suppressalg::Cint)
    ccall((:IDASetSuppressAlg,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,suppressalg)
end

IDASetSuppressAlg(ida_mem,suppressalg) = __IDASetSuppressAlg(convert(IDAMemPtr,ida_mem),suppressalg)

function __IDASetId(ida_mem::IDAMemPtr,id::N_Vector)
    ccall((:IDASetId,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,id)
end

IDASetId(ida_mem,id) = __IDASetId(convert(IDAMemPtr,ida_mem),convert(N_Vector,id))

function __IDASetConstraints(ida_mem::IDAMemPtr,constraints::N_Vector)
    ccall((:IDASetConstraints,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,constraints)
end

IDASetConstraints(ida_mem,constraints) = __IDASetConstraints(convert(IDAMemPtr,ida_mem),convert(N_Vector,constraints))

function __IDASetRootDirection(ida_mem::IDAMemPtr,rootdir::Ptr{Cint})
    ccall((:IDASetRootDirection,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,rootdir)
end

IDASetRootDirection(ida_mem,rootdir) = __IDASetRootDirection(convert(IDAMemPtr,ida_mem),pointer(rootdir))

function __IDASetNoInactiveRootWarn(ida_mem::IDAMemPtr)
    ccall((:IDASetNoInactiveRootWarn,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

IDASetNoInactiveRootWarn(ida_mem) = __IDASetNoInactiveRootWarn(convert(IDAMemPtr,ida_mem))

function __IDAInit(ida_mem::IDAMemPtr,res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,libsundials_idas),Cint,(IDAMemPtr,IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

IDAInit(ida_mem,res,t0,yy0,yp0) = __IDAInit(convert(IDAMemPtr,ida_mem),res,t0,convert(N_Vector,yy0),convert(N_Vector,yp0))

function __IDAReInit(ida_mem::IDAMemPtr,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,libsundials_idas),Cint,(IDAMemPtr,realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

IDAReInit(ida_mem,t0,yy0,yp0) = __IDAReInit(convert(IDAMemPtr,ida_mem),t0,convert(N_Vector,yy0),convert(N_Vector,yp0))

function __IDASStolerances(ida_mem::IDAMemPtr,reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,realtype),ida_mem,reltol,abstol)
end

IDASStolerances(ida_mem,reltol,abstol) = __IDASStolerances(convert(IDAMemPtr,ida_mem),reltol,abstol)

function __IDASVtolerances(ida_mem::IDAMemPtr,reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,N_Vector),ida_mem,reltol,abstol)
end

IDASVtolerances(ida_mem,reltol,abstol) = __IDASVtolerances(convert(IDAMemPtr,ida_mem),reltol,convert(N_Vector,abstol))

function __IDAWFtolerances(ida_mem::IDAMemPtr,efun::IDAEwtFn)
    ccall((:IDAWFtolerances,libsundials_idas),Cint,(IDAMemPtr,IDAEwtFn),ida_mem,efun)
end

IDAWFtolerances(ida_mem,efun) = __IDAWFtolerances(convert(IDAMemPtr,ida_mem),efun)

function __IDASetNonlinConvCoefIC(ida_mem::IDAMemPtr,epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,epiccon)
end

IDASetNonlinConvCoefIC(ida_mem,epiccon) = __IDASetNonlinConvCoefIC(convert(IDAMemPtr,ida_mem),epiccon)

function __IDASetMaxNumStepsIC(ida_mem::IDAMemPtr,maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxnh)
end

IDASetMaxNumStepsIC(ida_mem,maxnh) = __IDASetMaxNumStepsIC(convert(IDAMemPtr,ida_mem),maxnh)

function __IDASetMaxNumJacsIC(ida_mem::IDAMemPtr,maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxnj)
end

IDASetMaxNumJacsIC(ida_mem,maxnj) = __IDASetMaxNumJacsIC(convert(IDAMemPtr,ida_mem),maxnj)

function __IDASetMaxNumItersIC(ida_mem::IDAMemPtr,maxnit::Cint)
    ccall((:IDASetMaxNumItersIC,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxnit)
end

IDASetMaxNumItersIC(ida_mem,maxnit) = __IDASetMaxNumItersIC(convert(IDAMemPtr,ida_mem),maxnit)

function __IDASetLineSearchOffIC(ida_mem::IDAMemPtr,lsoff::Cint)
    ccall((:IDASetLineSearchOffIC,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,lsoff)
end

IDASetLineSearchOffIC(ida_mem,lsoff) = __IDASetLineSearchOffIC(convert(IDAMemPtr,ida_mem),lsoff)

function __IDASetStepToleranceIC(ida_mem::IDAMemPtr,steptol::realtype)
    ccall((:IDASetStepToleranceIC,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,steptol)
end

IDASetStepToleranceIC(ida_mem,steptol) = __IDASetStepToleranceIC(convert(IDAMemPtr,ida_mem),steptol)

function __IDARootInit(ida_mem::IDAMemPtr,nrtfn::Cint,g::IDARootFn)
    ccall((:IDARootInit,libsundials_idas),Cint,(IDAMemPtr,Cint,IDARootFn),ida_mem,nrtfn,g)
end

IDARootInit(ida_mem,nrtfn,g) = __IDARootInit(convert(IDAMemPtr,ida_mem),nrtfn,g)

function __IDASetQuadErrCon(ida_mem::IDAMemPtr,errconQ::Cint)
    ccall((:IDASetQuadErrCon,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,errconQ)
end

IDASetQuadErrCon(ida_mem,errconQ) = __IDASetQuadErrCon(convert(IDAMemPtr,ida_mem),errconQ)

function __IDAQuadInit(ida_mem::IDAMemPtr,rhsQ::IDAQuadRhsFn,yQ0::N_Vector)
    ccall((:IDAQuadInit,libsundials_idas),Cint,(IDAMemPtr,IDAQuadRhsFn,N_Vector),ida_mem,rhsQ,yQ0)
end

IDAQuadInit(ida_mem,rhsQ,yQ0) = __IDAQuadInit(convert(IDAMemPtr,ida_mem),rhsQ,convert(N_Vector,yQ0))

function __IDAQuadReInit(ida_mem::IDAMemPtr,yQ0::N_Vector)
    ccall((:IDAQuadReInit,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,yQ0)
end

IDAQuadReInit(ida_mem,yQ0) = __IDAQuadReInit(convert(IDAMemPtr,ida_mem),convert(N_Vector,yQ0))

function __IDAQuadSStolerances(ida_mem::IDAMemPtr,reltolQ::realtype,abstolQ::realtype)
    ccall((:IDAQuadSStolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,realtype),ida_mem,reltolQ,abstolQ)
end

IDAQuadSStolerances(ida_mem,reltolQ,abstolQ) = __IDAQuadSStolerances(convert(IDAMemPtr,ida_mem),reltolQ,abstolQ)

function __IDAQuadSVtolerances(ida_mem::IDAMemPtr,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:IDAQuadSVtolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,N_Vector),ida_mem,reltolQ,abstolQ)
end

IDAQuadSVtolerances(ida_mem,reltolQ,abstolQ) = __IDAQuadSVtolerances(convert(IDAMemPtr,ida_mem),reltolQ,convert(N_Vector,abstolQ))

function __IDASetSensDQMethod(ida_mem::IDAMemPtr,DQtype::Cint,DQrhomax::realtype)
    ccall((:IDASetSensDQMethod,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,DQtype,DQrhomax)
end

IDASetSensDQMethod(ida_mem,DQtype,DQrhomax) = __IDASetSensDQMethod(convert(IDAMemPtr,ida_mem),DQtype,DQrhomax)

function __IDASetSensParams(ida_mem::IDAMemPtr,p::Ptr{realtype},pbar::Ptr{realtype},plist::Ptr{Cint})
    ccall((:IDASetSensParams,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Ptr{realtype},Ptr{Cint}),ida_mem,p,pbar,plist)
end

IDASetSensParams(ida_mem,p,pbar,plist) = __IDASetSensParams(convert(IDAMemPtr,ida_mem),pointer(p),pointer(pbar),pointer(plist))

function __IDASetSensErrCon(ida_mem::IDAMemPtr,errconS::Cint)
    ccall((:IDASetSensErrCon,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,errconS)
end

IDASetSensErrCon(ida_mem,errconS) = __IDASetSensErrCon(convert(IDAMemPtr,ida_mem),errconS)

function __IDASetSensMaxNonlinIters(ida_mem::IDAMemPtr,maxcorS::Cint)
    ccall((:IDASetSensMaxNonlinIters,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxcorS)
end

IDASetSensMaxNonlinIters(ida_mem,maxcorS) = __IDASetSensMaxNonlinIters(convert(IDAMemPtr,ida_mem),maxcorS)

function __IDASensInit(ida_mem::IDAMemPtr,Ns::Cint,ism::Cint,resS::IDASensResFn,yS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDASensInit,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint,IDASensResFn,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,Ns,ism,resS,yS0,ypS0)
end

IDASensInit(ida_mem,Ns,ism,resS,yS0,ypS0) = __IDASensInit(convert(IDAMemPtr,ida_mem),Ns,ism,resS,pointer(yS0),pointer(ypS0))

function __IDASensReInit(ida_mem::IDAMemPtr,ism::Cint,yS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDASensReInit,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,ism,yS0,ypS0)
end

IDASensReInit(ida_mem,ism,yS0,ypS0) = __IDASensReInit(convert(IDAMemPtr,ida_mem),ism,pointer(yS0),pointer(ypS0))

function __IDASensToggleOff(ida_mem::IDAMemPtr)
    ccall((:IDASensToggleOff,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

IDASensToggleOff(ida_mem) = __IDASensToggleOff(convert(IDAMemPtr,ida_mem))

function __IDASensSStolerances(ida_mem::IDAMemPtr,reltolS::realtype,abstolS::Ptr{realtype})
    ccall((:IDASensSStolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{realtype}),ida_mem,reltolS,abstolS)
end

IDASensSStolerances(ida_mem,reltolS,abstolS) = __IDASensSStolerances(convert(IDAMemPtr,ida_mem),reltolS,pointer(abstolS))

function __IDASensSVtolerances(ida_mem::IDAMemPtr,reltolS::realtype,abstolS::Ptr{N_Vector})
    ccall((:IDASensSVtolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{N_Vector}),ida_mem,reltolS,abstolS)
end

IDASensSVtolerances(ida_mem,reltolS,abstolS) = __IDASensSVtolerances(convert(IDAMemPtr,ida_mem),reltolS,pointer(abstolS))

function __IDASensEEtolerances(ida_mem::IDAMemPtr)
    ccall((:IDASensEEtolerances,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

IDASensEEtolerances(ida_mem) = __IDASensEEtolerances(convert(IDAMemPtr,ida_mem))

function __IDAQuadSensInit(ida_mem::IDAMemPtr,resQS::IDAQuadSensRhsFn,yQS0::Ptr{N_Vector})
    ccall((:IDAQuadSensInit,libsundials_idas),Cint,(IDAMemPtr,IDAQuadSensRhsFn,Ptr{N_Vector}),ida_mem,resQS,yQS0)
end

IDAQuadSensInit(ida_mem,resQS,yQS0) = __IDAQuadSensInit(convert(IDAMemPtr,ida_mem),resQS,pointer(yQS0))

function __IDAQuadSensReInit(ida_mem::IDAMemPtr,yQS0::Ptr{N_Vector})
    ccall((:IDAQuadSensReInit,libsundials_idas),Cint,(IDAMemPtr,Ptr{N_Vector}),ida_mem,yQS0)
end

IDAQuadSensReInit(ida_mem,yQS0) = __IDAQuadSensReInit(convert(IDAMemPtr,ida_mem),pointer(yQS0))

function __IDAQuadSensSStolerances(ida_mem::IDAMemPtr,reltolQS::realtype,abstolQS::Ptr{realtype})
    ccall((:IDAQuadSensSStolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{realtype}),ida_mem,reltolQS,abstolQS)
end

IDAQuadSensSStolerances(ida_mem,reltolQS,abstolQS) = __IDAQuadSensSStolerances(convert(IDAMemPtr,ida_mem),reltolQS,pointer(abstolQS))

function __IDAQuadSensSVtolerances(ida_mem::IDAMemPtr,reltolQS::realtype,abstolQS::Ptr{N_Vector})
    ccall((:IDAQuadSensSVtolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{N_Vector}),ida_mem,reltolQS,abstolQS)
end

IDAQuadSensSVtolerances(ida_mem,reltolQS,abstolQS) = __IDAQuadSensSVtolerances(convert(IDAMemPtr,ida_mem),reltolQS,pointer(abstolQS))

function __IDAQuadSensEEtolerances(ida_mem::IDAMemPtr)
    ccall((:IDAQuadSensEEtolerances,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

IDAQuadSensEEtolerances(ida_mem) = __IDAQuadSensEEtolerances(convert(IDAMemPtr,ida_mem))

function __IDASetQuadSensErrCon(ida_mem::IDAMemPtr,errconQS::Cint)
    ccall((:IDASetQuadSensErrCon,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,errconQS)
end

IDASetQuadSensErrCon(ida_mem,errconQS) = __IDASetQuadSensErrCon(convert(IDAMemPtr,ida_mem),errconQS)

function __IDACalcIC(ida_mem::IDAMemPtr,icopt::Cint,tout1::realtype)
    ccall((:IDACalcIC,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,icopt,tout1)
end

IDACalcIC(ida_mem,icopt,tout1) = __IDACalcIC(convert(IDAMemPtr,ida_mem),icopt,tout1)

function __IDASolve(ida_mem::IDAMemPtr,tout::realtype,tret::Ptr{realtype},yret::N_Vector,ypret::N_Vector,itask::Cint)
    ccall((:IDASolve,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

IDASolve(ida_mem,tout,tret,yret,ypret,itask) = __IDASolve(convert(IDAMemPtr,ida_mem),tout,pointer(tret),convert(N_Vector,yret),convert(N_Vector,ypret),itask)

function __IDAGetDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetDky,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

IDAGetDky(ida_mem,t,k,dky) = __IDAGetDky(convert(IDAMemPtr,ida_mem),t,k,convert(N_Vector,dky))

function __IDAGetWorkSpace(ida_mem::IDAMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:IDAGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

IDAGetWorkSpace(ida_mem,lenrw,leniw) = __IDAGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrw),pointer(leniw))

function __IDAGetNumSteps(ida_mem::IDAMemPtr,nsteps::Ptr{Clong})
    ccall((:IDAGetNumSteps,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nsteps)
end

IDAGetNumSteps(ida_mem,nsteps) = __IDAGetNumSteps(convert(IDAMemPtr,ida_mem),pointer(nsteps))

function __IDAGetNumResEvals(ida_mem::IDAMemPtr,nrevals::Ptr{Clong})
    ccall((:IDAGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevals)
end

IDAGetNumResEvals(ida_mem,nrevals) = __IDAGetNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nrevals))

function __IDAGetNumLinSolvSetups(ida_mem::IDAMemPtr,nlinsetups::Ptr{Clong})
    ccall((:IDAGetNumLinSolvSetups,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlinsetups)
end

IDAGetNumLinSolvSetups(ida_mem,nlinsetups) = __IDAGetNumLinSolvSetups(convert(IDAMemPtr,ida_mem),pointer(nlinsetups))

function __IDAGetNumErrTestFails(ida_mem::IDAMemPtr,netfails::Ptr{Clong})
    ccall((:IDAGetNumErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,netfails)
end

IDAGetNumErrTestFails(ida_mem,netfails) = __IDAGetNumErrTestFails(convert(IDAMemPtr,ida_mem),pointer(netfails))

function __IDAGetNumBacktrackOps(ida_mem::IDAMemPtr,nbacktr::Ptr{Clong})
    ccall((:IDAGetNumBacktrackOps,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nbacktr)
end

IDAGetNumBacktrackOps(ida_mem,nbacktr) = __IDAGetNumBacktrackOps(convert(IDAMemPtr,ida_mem),pointer(nbacktr))

function __IDAGetConsistentIC(ida_mem::IDAMemPtr,yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,libsundials_idas),Cint,(IDAMemPtr,N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

IDAGetConsistentIC(ida_mem,yy0_mod,yp0_mod) = __IDAGetConsistentIC(convert(IDAMemPtr,ida_mem),convert(N_Vector,yy0_mod),convert(N_Vector,yp0_mod))

function __IDAGetLastOrder(ida_mem::IDAMemPtr,klast::Ptr{Cint})
    ccall((:IDAGetLastOrder,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,klast)
end

IDAGetLastOrder(ida_mem,klast) = __IDAGetLastOrder(convert(IDAMemPtr,ida_mem),pointer(klast))

function __IDAGetCurrentOrder(ida_mem::IDAMemPtr,kcur::Ptr{Cint})
    ccall((:IDAGetCurrentOrder,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,kcur)
end

IDAGetCurrentOrder(ida_mem,kcur) = __IDAGetCurrentOrder(convert(IDAMemPtr,ida_mem),pointer(kcur))

function __IDAGetActualInitStep(ida_mem::IDAMemPtr,hinused::Ptr{realtype})
    ccall((:IDAGetActualInitStep,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hinused)
end

IDAGetActualInitStep(ida_mem,hinused) = __IDAGetActualInitStep(convert(IDAMemPtr,ida_mem),pointer(hinused))

function __IDAGetLastStep(ida_mem::IDAMemPtr,hlast::Ptr{realtype})
    ccall((:IDAGetLastStep,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hlast)
end

IDAGetLastStep(ida_mem,hlast) = __IDAGetLastStep(convert(IDAMemPtr,ida_mem),pointer(hlast))

function __IDAGetCurrentStep(ida_mem::IDAMemPtr,hcur::Ptr{realtype})
    ccall((:IDAGetCurrentStep,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hcur)
end

IDAGetCurrentStep(ida_mem,hcur) = __IDAGetCurrentStep(convert(IDAMemPtr,ida_mem),pointer(hcur))

function __IDAGetCurrentTime(ida_mem::IDAMemPtr,tcur::Ptr{realtype})
    ccall((:IDAGetCurrentTime,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,tcur)
end

IDAGetCurrentTime(ida_mem,tcur) = __IDAGetCurrentTime(convert(IDAMemPtr,ida_mem),pointer(tcur))

function __IDAGetTolScaleFactor(ida_mem::IDAMemPtr,tolsfact::Ptr{realtype})
    ccall((:IDAGetTolScaleFactor,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,tolsfact)
end

IDAGetTolScaleFactor(ida_mem,tolsfact) = __IDAGetTolScaleFactor(convert(IDAMemPtr,ida_mem),pointer(tolsfact))

function __IDAGetErrWeights(ida_mem::IDAMemPtr,eweight::N_Vector)
    ccall((:IDAGetErrWeights,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,eweight)
end

IDAGetErrWeights(ida_mem,eweight) = __IDAGetErrWeights(convert(IDAMemPtr,ida_mem),convert(N_Vector,eweight))

function __IDAGetEstLocalErrors(ida_mem::IDAMemPtr,ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,ele)
end

IDAGetEstLocalErrors(ida_mem,ele) = __IDAGetEstLocalErrors(convert(IDAMemPtr,ida_mem),convert(N_Vector,ele))

function __IDAGetNumGEvals(ida_mem::IDAMemPtr,ngevals::Ptr{Clong})
    ccall((:IDAGetNumGEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,ngevals)
end

IDAGetNumGEvals(ida_mem,ngevals) = __IDAGetNumGEvals(convert(IDAMemPtr,ida_mem),pointer(ngevals))

function __IDAGetRootInfo(ida_mem::IDAMemPtr,rootsfound::Ptr{Cint})
    ccall((:IDAGetRootInfo,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,rootsfound)
end

IDAGetRootInfo(ida_mem,rootsfound) = __IDAGetRootInfo(convert(IDAMemPtr,ida_mem),pointer(rootsfound))

function __IDAGetIntegratorStats(ida_mem::IDAMemPtr,nsteps::Ptr{Clong},nrevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:IDAGetIntegratorStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

IDAGetIntegratorStats(ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur) = __IDAGetIntegratorStats(convert(IDAMemPtr,ida_mem),pointer(nsteps),pointer(nrevals),pointer(nlinsetups),pointer(netfails),pointer(qlast),pointer(qcur),pointer(hinused),pointer(hlast),pointer(hcur),pointer(tcur))

function __IDAGetNumNonlinSolvIters(ida_mem::IDAMemPtr,nniters::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvIters,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nniters)
end

IDAGetNumNonlinSolvIters(ida_mem,nniters) = __IDAGetNumNonlinSolvIters(convert(IDAMemPtr,ida_mem),pointer(nniters))

function __IDAGetNumNonlinSolvConvFails(ida_mem::IDAMemPtr,nncfails::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvConvFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nncfails)
end

IDAGetNumNonlinSolvConvFails(ida_mem,nncfails) = __IDAGetNumNonlinSolvConvFails(convert(IDAMemPtr,ida_mem),pointer(nncfails))

function __IDAGetNonlinSolvStats(ida_mem::IDAMemPtr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:IDAGetNonlinSolvStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

IDAGetNonlinSolvStats(ida_mem,nniters,nncfails) = __IDAGetNonlinSolvStats(convert(IDAMemPtr,ida_mem),pointer(nniters),pointer(nncfails))

function __IDAGetQuad(ida_mem::IDAMemPtr,t::Ptr{realtype},yQout::N_Vector)
    ccall((:IDAGetQuad,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},N_Vector),ida_mem,t,yQout)
end

IDAGetQuad(ida_mem,t,yQout) = __IDAGetQuad(convert(IDAMemPtr,ida_mem),pointer(t),convert(N_Vector,yQout))

function __IDAGetQuadDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetQuadDky,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

IDAGetQuadDky(ida_mem,t,k,dky) = __IDAGetQuadDky(convert(IDAMemPtr,ida_mem),t,k,convert(N_Vector,dky))

function __IDAGetQuadNumRhsEvals(ida_mem::IDAMemPtr,nrhsQevals::Ptr{Clong})
    ccall((:IDAGetQuadNumRhsEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrhsQevals)
end

IDAGetQuadNumRhsEvals(ida_mem,nrhsQevals) = __IDAGetQuadNumRhsEvals(convert(IDAMemPtr,ida_mem),pointer(nrhsQevals))

function __IDAGetQuadNumErrTestFails(ida_mem::IDAMemPtr,nQetfails::Ptr{Clong})
    ccall((:IDAGetQuadNumErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nQetfails)
end

IDAGetQuadNumErrTestFails(ida_mem,nQetfails) = __IDAGetQuadNumErrTestFails(convert(IDAMemPtr,ida_mem),pointer(nQetfails))

function __IDAGetQuadErrWeights(ida_mem::IDAMemPtr,eQweight::N_Vector)
    ccall((:IDAGetQuadErrWeights,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,eQweight)
end

IDAGetQuadErrWeights(ida_mem,eQweight) = __IDAGetQuadErrWeights(convert(IDAMemPtr,ida_mem),convert(N_Vector,eQweight))

function __IDAGetQuadStats(ida_mem::IDAMemPtr,nrhsQevals::Ptr{Clong},nQetfails::Ptr{Clong})
    ccall((:IDAGetQuadStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQevals,nQetfails)
end

IDAGetQuadStats(ida_mem,nrhsQevals,nQetfails) = __IDAGetQuadStats(convert(IDAMemPtr,ida_mem),pointer(nrhsQevals),pointer(nQetfails))

function __IDAGetSens(ida_mem::IDAMemPtr,tret::Ptr{realtype},yySout::Ptr{N_Vector})
    ccall((:IDAGetSens,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yySout)
end

IDAGetSens(ida_mem,tret,yySout) = __IDAGetSens(convert(IDAMemPtr,ida_mem),pointer(tret),pointer(yySout))

function __IDAGetSens1(ida_mem::IDAMemPtr,tret::Ptr{realtype},is::Cint,yySret::N_Vector)
    ccall((:IDAGetSens1,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yySret)
end

IDAGetSens1(ida_mem,tret,is,yySret) = __IDAGetSens1(convert(IDAMemPtr,ida_mem),pointer(tret),is,convert(N_Vector,yySret))

function __IDAGetSensDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dkyS::Ptr{N_Vector})
    ccall((:IDAGetSensDky,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyS)
end

IDAGetSensDky(ida_mem,t,k,dkyS) = __IDAGetSensDky(convert(IDAMemPtr,ida_mem),t,k,pointer(dkyS))

function __IDAGetSensDky1(ida_mem::IDAMemPtr,t::realtype,k::Cint,is::Cint,dkyS::N_Vector)
    ccall((:IDAGetSensDky1,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyS)
end

IDAGetSensDky1(ida_mem,t,k,is,dkyS) = __IDAGetSensDky1(convert(IDAMemPtr,ida_mem),t,k,is,convert(N_Vector,dkyS))

function __IDAGetSensConsistentIC(ida_mem::IDAMemPtr,yyS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDAGetSensConsistentIC,libsundials_idas),Cint,(IDAMemPtr,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,yyS0,ypS0)
end

IDAGetSensConsistentIC(ida_mem,yyS0,ypS0) = __IDAGetSensConsistentIC(convert(IDAMemPtr,ida_mem),pointer(yyS0),pointer(ypS0))

function __IDAGetSensNumResEvals(ida_mem::IDAMemPtr,nresSevals::Ptr{Clong})
    ccall((:IDAGetSensNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nresSevals)
end

IDAGetSensNumResEvals(ida_mem,nresSevals) = __IDAGetSensNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nresSevals))

function __IDAGetNumResEvalsSens(ida_mem::IDAMemPtr,nresevalsS::Ptr{Clong})
    ccall((:IDAGetNumResEvalsSens,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nresevalsS)
end

IDAGetNumResEvalsSens(ida_mem,nresevalsS) = __IDAGetNumResEvalsSens(convert(IDAMemPtr,ida_mem),pointer(nresevalsS))

function __IDAGetSensNumErrTestFails(ida_mem::IDAMemPtr,nSetfails::Ptr{Clong})
    ccall((:IDAGetSensNumErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nSetfails)
end

IDAGetSensNumErrTestFails(ida_mem,nSetfails) = __IDAGetSensNumErrTestFails(convert(IDAMemPtr,ida_mem),pointer(nSetfails))

function __IDAGetSensNumLinSolvSetups(ida_mem::IDAMemPtr,nlinsetupsS::Ptr{Clong})
    ccall((:IDAGetSensNumLinSolvSetups,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlinsetupsS)
end

IDAGetSensNumLinSolvSetups(ida_mem,nlinsetupsS) = __IDAGetSensNumLinSolvSetups(convert(IDAMemPtr,ida_mem),pointer(nlinsetupsS))

function __IDAGetSensErrWeights(ida_mem::IDAMemPtr,eSweight::N_Vector_S)
    ccall((:IDAGetSensErrWeights,libsundials_idas),Cint,(IDAMemPtr,N_Vector_S),ida_mem,eSweight)
end

IDAGetSensErrWeights(ida_mem,eSweight) = __IDAGetSensErrWeights(convert(IDAMemPtr,ida_mem),eSweight)

function __IDAGetSensStats(ida_mem::IDAMemPtr,nresSevals::Ptr{Clong},nresevalsS::Ptr{Clong},nSetfails::Ptr{Clong},nlinsetupsS::Ptr{Clong})
    ccall((:IDAGetSensStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),ida_mem,nresSevals,nresevalsS,nSetfails,nlinsetupsS)
end

IDAGetSensStats(ida_mem,nresSevals,nresevalsS,nSetfails,nlinsetupsS) = __IDAGetSensStats(convert(IDAMemPtr,ida_mem),pointer(nresSevals),pointer(nresevalsS),pointer(nSetfails),pointer(nlinsetupsS))

function __IDAGetSensNumNonlinSolvIters(ida_mem::IDAMemPtr,nSniters::Ptr{Clong})
    ccall((:IDAGetSensNumNonlinSolvIters,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nSniters)
end

IDAGetSensNumNonlinSolvIters(ida_mem,nSniters) = __IDAGetSensNumNonlinSolvIters(convert(IDAMemPtr,ida_mem),pointer(nSniters))

function __IDAGetSensNumNonlinSolvConvFails(ida_mem::IDAMemPtr,nSncfails::Ptr{Clong})
    ccall((:IDAGetSensNumNonlinSolvConvFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nSncfails)
end

IDAGetSensNumNonlinSolvConvFails(ida_mem,nSncfails) = __IDAGetSensNumNonlinSolvConvFails(convert(IDAMemPtr,ida_mem),pointer(nSncfails))

function __IDAGetSensNonlinSolvStats(ida_mem::IDAMemPtr,nSniters::Ptr{Clong},nSncfails::Ptr{Clong})
    ccall((:IDAGetSensNonlinSolvStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nSniters,nSncfails)
end

IDAGetSensNonlinSolvStats(ida_mem,nSniters,nSncfails) = __IDAGetSensNonlinSolvStats(convert(IDAMemPtr,ida_mem),pointer(nSniters),pointer(nSncfails))

function __IDAGetQuadSensNumRhsEvals(ida_mem::IDAMemPtr,nrhsQSevals::Ptr{Clong})
    ccall((:IDAGetQuadSensNumRhsEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrhsQSevals)
end

IDAGetQuadSensNumRhsEvals(ida_mem,nrhsQSevals) = __IDAGetQuadSensNumRhsEvals(convert(IDAMemPtr,ida_mem),pointer(nrhsQSevals))

function __IDAGetQuadSensNumErrTestFails(ida_mem::IDAMemPtr,nQSetfails::Ptr{Clong})
    ccall((:IDAGetQuadSensNumErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nQSetfails)
end

IDAGetQuadSensNumErrTestFails(ida_mem,nQSetfails) = __IDAGetQuadSensNumErrTestFails(convert(IDAMemPtr,ida_mem),pointer(nQSetfails))

function __IDAGetQuadSensErrWeights(ida_mem::IDAMemPtr,eQSweight::Ptr{N_Vector})
    ccall((:IDAGetQuadSensErrWeights,libsundials_idas),Cint,(IDAMemPtr,Ptr{N_Vector}),ida_mem,eQSweight)
end

IDAGetQuadSensErrWeights(ida_mem,eQSweight) = __IDAGetQuadSensErrWeights(convert(IDAMemPtr,ida_mem),pointer(eQSweight))

function __IDAGetQuadSensStats(ida_mem::IDAMemPtr,nrhsQSevals::Ptr{Clong},nQSetfails::Ptr{Clong})
    ccall((:IDAGetQuadSensStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQSevals,nQSetfails)
end

IDAGetQuadSensStats(ida_mem,nrhsQSevals,nQSetfails) = __IDAGetQuadSensStats(convert(IDAMemPtr,ida_mem),pointer(nrhsQSevals),pointer(nQSetfails))

function __IDAGetQuadSens(ida_mem::IDAMemPtr,tret::Ptr{realtype},yyQSout::Ptr{N_Vector})
    ccall((:IDAGetQuadSens,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yyQSout)
end

IDAGetQuadSens(ida_mem,tret,yyQSout) = __IDAGetQuadSens(convert(IDAMemPtr,ida_mem),pointer(tret),pointer(yyQSout))

function __IDAGetQuadSens1(ida_mem::IDAMemPtr,tret::Ptr{realtype},is::Cint,yyQSret::N_Vector)
    ccall((:IDAGetQuadSens1,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yyQSret)
end

IDAGetQuadSens1(ida_mem,tret,is,yyQSret) = __IDAGetQuadSens1(convert(IDAMemPtr,ida_mem),pointer(tret),is,convert(N_Vector,yyQSret))

function __IDAGetQuadSensDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dkyQS::Ptr{N_Vector})
    ccall((:IDAGetQuadSensDky,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyQS)
end

IDAGetQuadSensDky(ida_mem,t,k,dkyQS) = __IDAGetQuadSensDky(convert(IDAMemPtr,ida_mem),t,k,pointer(dkyQS))

function __IDAGetQuadSensDky1(ida_mem::IDAMemPtr,t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:IDAGetQuadSensDky1,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyQS)
end

IDAGetQuadSensDky1(ida_mem,t,k,is,dkyQS) = __IDAGetQuadSensDky1(convert(IDAMemPtr,ida_mem),t,k,is,convert(N_Vector,dkyQS))

function IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function __IDAFree(ida_mem::Ref{IDAMemPtr})
    ccall((:IDAFree,libsundials_idas),Void,(Ref{IDAMemPtr},),ida_mem)
end

IDAFree(ida_mem) = __IDAFree(ida_mem)

function __IDAQuadFree(ida_mem::IDAMemPtr)
    ccall((:IDAQuadFree,libsundials_idas),Void,(IDAMemPtr,),ida_mem)
end

IDAQuadFree(ida_mem) = __IDAQuadFree(convert(IDAMemPtr,ida_mem))

function __IDASensFree(ida_mem::IDAMemPtr)
    ccall((:IDASensFree,libsundials_idas),Void,(IDAMemPtr,),ida_mem)
end

IDASensFree(ida_mem) = __IDASensFree(convert(IDAMemPtr,ida_mem))

function __IDAQuadSensFree(ida_mem::IDAMemPtr)
    ccall((:IDAQuadSensFree,libsundials_idas),Void,(IDAMemPtr,),ida_mem)
end

IDAQuadSensFree(ida_mem) = __IDAQuadSensFree(convert(IDAMemPtr,ida_mem))

function __IDAAdjInit(ida_mem::IDAMemPtr,steps::Clong,interp::Cint)
    ccall((:IDAAdjInit,libsundials_idas),Cint,(IDAMemPtr,Clong,Cint),ida_mem,steps,interp)
end

IDAAdjInit(ida_mem,steps,interp) = __IDAAdjInit(convert(IDAMemPtr,ida_mem),steps,interp)

function __IDAAdjReInit(ida_mem::IDAMemPtr)
    ccall((:IDAAdjReInit,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

IDAAdjReInit(ida_mem) = __IDAAdjReInit(convert(IDAMemPtr,ida_mem))

function __IDAAdjFree(ida_mem::IDAMemPtr)
    ccall((:IDAAdjFree,libsundials_idas),Void,(IDAMemPtr,),ida_mem)
end

IDAAdjFree(ida_mem) = __IDAAdjFree(convert(IDAMemPtr,ida_mem))

function __IDACreateB(ida_mem::IDAMemPtr,which::Ptr{Cint})
    ccall((:IDACreateB,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,which)
end

IDACreateB(ida_mem,which) = __IDACreateB(convert(IDAMemPtr,ida_mem),pointer(which))

function __IDAInitB(ida_mem::IDAMemPtr,which::Cint,resB::IDAResFnB,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDAResFnB,realtype,N_Vector,N_Vector),ida_mem,which,resB,tB0,yyB0,ypB0)
end

IDAInitB(ida_mem,which,resB,tB0,yyB0,ypB0) = __IDAInitB(convert(IDAMemPtr,ida_mem),which,resB,tB0,convert(N_Vector,yyB0),convert(N_Vector,ypB0))

function __IDAInitBS(ida_mem::IDAMemPtr,which::Cint,resS::IDAResFnBS,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitBS,libsundials_idas),Cint,(IDAMemPtr,Cint,IDAResFnBS,realtype,N_Vector,N_Vector),ida_mem,which,resS,tB0,yyB0,ypB0)
end

IDAInitBS(ida_mem,which,resS,tB0,yyB0,ypB0) = __IDAInitBS(convert(IDAMemPtr,ida_mem),which,resS,tB0,convert(N_Vector,yyB0),convert(N_Vector,ypB0))

function __IDAReInitB(ida_mem::IDAMemPtr,which::Cint,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAReInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector,N_Vector),ida_mem,which,tB0,yyB0,ypB0)
end

IDAReInitB(ida_mem,which,tB0,yyB0,ypB0) = __IDAReInitB(convert(IDAMemPtr,ida_mem),which,tB0,convert(N_Vector,yyB0),convert(N_Vector,ypB0))

function __IDASStolerancesB(ida_mem::IDAMemPtr,which::Cint,relTolB::realtype,absTolB::realtype)
    ccall((:IDASStolerancesB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,realtype),ida_mem,which,relTolB,absTolB)
end

IDASStolerancesB(ida_mem,which,relTolB,absTolB) = __IDASStolerancesB(convert(IDAMemPtr,ida_mem),which,relTolB,absTolB)

function __IDASVtolerancesB(ida_mem::IDAMemPtr,which::Cint,relTolB::realtype,absTolB::N_Vector)
    ccall((:IDASVtolerancesB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector),ida_mem,which,relTolB,absTolB)
end

IDASVtolerancesB(ida_mem,which,relTolB,absTolB) = __IDASVtolerancesB(convert(IDAMemPtr,ida_mem),which,relTolB,convert(N_Vector,absTolB))

function __IDAQuadInitB(ida_mem::IDAMemPtr,which::Cint,rhsQB::IDAQuadRhsFnB,yQB0::N_Vector)
    ccall((:IDAQuadInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDAQuadRhsFnB,N_Vector),ida_mem,which,rhsQB,yQB0)
end

IDAQuadInitB(ida_mem,which,rhsQB,yQB0) = __IDAQuadInitB(convert(IDAMemPtr,ida_mem),which,rhsQB,convert(N_Vector,yQB0))

function __IDAQuadInitBS(ida_mem::IDAMemPtr,which::Cint,rhsQS::IDAQuadRhsFnBS,yQB0::N_Vector)
    ccall((:IDAQuadInitBS,libsundials_idas),Cint,(IDAMemPtr,Cint,IDAQuadRhsFnBS,N_Vector),ida_mem,which,rhsQS,yQB0)
end

IDAQuadInitBS(ida_mem,which,rhsQS,yQB0) = __IDAQuadInitBS(convert(IDAMemPtr,ida_mem),which,rhsQS,convert(N_Vector,yQB0))

function __IDAQuadReInitB(ida_mem::IDAMemPtr,which::Cint,yQB0::N_Vector)
    ccall((:IDAQuadReInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,N_Vector),ida_mem,which,yQB0)
end

IDAQuadReInitB(ida_mem,which,yQB0) = __IDAQuadReInitB(convert(IDAMemPtr,ida_mem),which,convert(N_Vector,yQB0))

function __IDAQuadSStolerancesB(ida_mem::IDAMemPtr,which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:IDAQuadSStolerancesB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,realtype),ida_mem,which,reltolQB,abstolQB)
end

IDAQuadSStolerancesB(ida_mem,which,reltolQB,abstolQB) = __IDAQuadSStolerancesB(convert(IDAMemPtr,ida_mem),which,reltolQB,abstolQB)

function __IDAQuadSVtolerancesB(ida_mem::IDAMemPtr,which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:IDAQuadSVtolerancesB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector),ida_mem,which,reltolQB,abstolQB)
end

IDAQuadSVtolerancesB(ida_mem,which,reltolQB,abstolQB) = __IDAQuadSVtolerancesB(convert(IDAMemPtr,ida_mem),which,reltolQB,convert(N_Vector,abstolQB))

function __IDACalcICB(ida_mem::IDAMemPtr,which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDACalcICB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector,N_Vector),ida_mem,which,tout1,yy0,yp0)
end

IDACalcICB(ida_mem,which,tout1,yy0,yp0) = __IDACalcICB(convert(IDAMemPtr,ida_mem),which,tout1,convert(N_Vector,yy0),convert(N_Vector,yp0))

function __IDACalcICBS(ida_mem::IDAMemPtr,which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector,yyS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDACalcICBS,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,which,tout1,yy0,yp0,yyS0,ypS0)
end

IDACalcICBS(ida_mem,which,tout1,yy0,yp0,yyS0,ypS0) = __IDACalcICBS(convert(IDAMemPtr,ida_mem),which,tout1,convert(N_Vector,yy0),convert(N_Vector,yp0),pointer(yyS0),pointer(ypS0))

function __IDASolveF(ida_mem::IDAMemPtr,tout::realtype,tret::Ptr{realtype},yret::N_Vector,ypret::N_Vector,itask::Cint,ncheckPtr::Ptr{Cint})
    ccall((:IDASolveF,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{realtype},N_Vector,N_Vector,Cint,Ptr{Cint}),ida_mem,tout,tret,yret,ypret,itask,ncheckPtr)
end

IDASolveF(ida_mem,tout,tret,yret,ypret,itask,ncheckPtr) = __IDASolveF(convert(IDAMemPtr,ida_mem),tout,pointer(tret),convert(N_Vector,yret),convert(N_Vector,ypret),itask,pointer(ncheckPtr))

function __IDASolveB(ida_mem::IDAMemPtr,tBout::realtype,itaskB::Cint)
    ccall((:IDASolveB,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint),ida_mem,tBout,itaskB)
end

IDASolveB(ida_mem,tBout,itaskB) = __IDASolveB(convert(IDAMemPtr,ida_mem),tBout,itaskB)

function __IDASetAdjNoSensi(ida_mem::IDAMemPtr)
    ccall((:IDASetAdjNoSensi,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

IDASetAdjNoSensi(ida_mem) = __IDASetAdjNoSensi(convert(IDAMemPtr,ida_mem))

function __IDASetUserDataB(ida_mem::IDAMemPtr,which::Cint,user_dataB::Any)
    ccall((:IDASetUserDataB,libsundials_idas),Cint,(IDAMemPtr,Cint,Any),ida_mem,which,user_dataB)
end

IDASetUserDataB(ida_mem,which,user_dataB) = __IDASetUserDataB(convert(IDAMemPtr,ida_mem),which,user_dataB)

function __IDASetMaxOrdB(ida_mem::IDAMemPtr,which::Cint,maxordB::Cint)
    ccall((:IDASetMaxOrdB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxordB)
end

IDASetMaxOrdB(ida_mem,which,maxordB) = __IDASetMaxOrdB(convert(IDAMemPtr,ida_mem),which,maxordB)

function __IDASetMaxNumStepsB(ida_mem::IDAMemPtr,which::Cint,mxstepsB::Clong)
    ccall((:IDASetMaxNumStepsB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong),ida_mem,which,mxstepsB)
end

IDASetMaxNumStepsB(ida_mem,which,mxstepsB) = __IDASetMaxNumStepsB(convert(IDAMemPtr,ida_mem),which,mxstepsB)

function __IDASetInitStepB(ida_mem::IDAMemPtr,which::Cint,hinB::realtype)
    ccall((:IDASetInitStepB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,hinB)
end

IDASetInitStepB(ida_mem,which,hinB) = __IDASetInitStepB(convert(IDAMemPtr,ida_mem),which,hinB)

function __IDASetMaxStepB(ida_mem::IDAMemPtr,which::Cint,hmaxB::realtype)
    ccall((:IDASetMaxStepB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,hmaxB)
end

IDASetMaxStepB(ida_mem,which,hmaxB) = __IDASetMaxStepB(convert(IDAMemPtr,ida_mem),which,hmaxB)

function __IDASetSuppressAlgB(ida_mem::IDAMemPtr,which::Cint,suppressalgB::Cint)
    ccall((:IDASetSuppressAlgB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,suppressalgB)
end

IDASetSuppressAlgB(ida_mem,which,suppressalgB) = __IDASetSuppressAlgB(convert(IDAMemPtr,ida_mem),which,suppressalgB)

function __IDASetIdB(ida_mem::IDAMemPtr,which::Cint,idB::N_Vector)
    ccall((:IDASetIdB,libsundials_idas),Cint,(IDAMemPtr,Cint,N_Vector),ida_mem,which,idB)
end

IDASetIdB(ida_mem,which,idB) = __IDASetIdB(convert(IDAMemPtr,ida_mem),which,convert(N_Vector,idB))

function __IDASetConstraintsB(ida_mem::IDAMemPtr,which::Cint,constraintsB::N_Vector)
    ccall((:IDASetConstraintsB,libsundials_idas),Cint,(IDAMemPtr,Cint,N_Vector),ida_mem,which,constraintsB)
end

IDASetConstraintsB(ida_mem,which,constraintsB) = __IDASetConstraintsB(convert(IDAMemPtr,ida_mem),which,convert(N_Vector,constraintsB))

function __IDASetQuadErrConB(ida_mem::IDAMemPtr,which::Cint,errconQB::Cint)
    ccall((:IDASetQuadErrConB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,errconQB)
end

IDASetQuadErrConB(ida_mem,which,errconQB) = __IDASetQuadErrConB(convert(IDAMemPtr,ida_mem),which,errconQB)

function __IDAGetB(ida_mem::IDAMemPtr,which::Cint,tret::Ptr{realtype},yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetB,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,tret,yy,yp)
end

IDAGetB(ida_mem,which,tret,yy,yp) = __IDAGetB(convert(IDAMemPtr,ida_mem),which,pointer(tret),convert(N_Vector,yy),convert(N_Vector,yp))

function __IDAGetQuadB(ida_mem::IDAMemPtr,which::Cint,tret::Ptr{realtype},qB::N_Vector)
    ccall((:IDAGetQuadB,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{realtype},N_Vector),ida_mem,which,tret,qB)
end

IDAGetQuadB(ida_mem,which,tret,qB) = __IDAGetQuadB(convert(IDAMemPtr,ida_mem),which,pointer(tret),convert(N_Vector,qB))

function __IDAGetAdjIDABmem(ida_mem::IDAMemPtr,which::Cint)
    ccall((:IDAGetAdjIDABmem,libsundials_idas),Ptr{Void},(IDAMemPtr,Cint),ida_mem,which)
end

IDAGetAdjIDABmem(ida_mem,which) = __IDAGetAdjIDABmem(convert(IDAMemPtr,ida_mem),which)

function __IDAGetConsistentICB(ida_mem::IDAMemPtr,which::Cint,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAGetConsistentICB,libsundials_idas),Cint,(IDAMemPtr,Cint,N_Vector,N_Vector),ida_mem,which,yyB0,ypB0)
end

IDAGetConsistentICB(ida_mem,which,yyB0,ypB0) = __IDAGetConsistentICB(convert(IDAMemPtr,ida_mem),which,convert(N_Vector,yyB0),convert(N_Vector,ypB0))

function __IDAGetAdjY(ida_mem::IDAMemPtr,t::realtype,yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetAdjY,libsundials_idas),Cint,(IDAMemPtr,realtype,N_Vector,N_Vector),ida_mem,t,yy,yp)
end

IDAGetAdjY(ida_mem,t,yy,yp) = __IDAGetAdjY(convert(IDAMemPtr,ida_mem),t,convert(N_Vector,yy),convert(N_Vector,yp))

function __IDAGetAdjCheckPointsInfo(ida_mem::IDAMemPtr,ckpnt::Ptr{IDAadjCheckPointRec})
    ccall((:IDAGetAdjCheckPointsInfo,libsundials_idas),Cint,(IDAMemPtr,Ptr{IDAadjCheckPointRec}),ida_mem,ckpnt)
end

IDAGetAdjCheckPointsInfo(ida_mem,ckpnt) = __IDAGetAdjCheckPointsInfo(convert(IDAMemPtr,ida_mem),pointer(ckpnt))

function __IDAGetAdjDataPointHermite(ida_mem::IDAMemPtr,which::Cint,t::Ptr{realtype},yy::N_Vector,yd::N_Vector)
    ccall((:IDAGetAdjDataPointHermite,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,t,yy,yd)
end

IDAGetAdjDataPointHermite(ida_mem,which,t,yy,yd) = __IDAGetAdjDataPointHermite(convert(IDAMemPtr,ida_mem),which,pointer(t),convert(N_Vector,yy),convert(N_Vector,yd))

function __IDAGetAdjDataPointPolynomial(ida_mem::IDAMemPtr,which::Cint,t::Ptr{realtype},order::Ptr{Cint},y::N_Vector)
    ccall((:IDAGetAdjDataPointPolynomial,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{realtype},Ptr{Cint},N_Vector),ida_mem,which,t,order,y)
end

IDAGetAdjDataPointPolynomial(ida_mem,which,t,order,y) = __IDAGetAdjDataPointPolynomial(convert(IDAMemPtr,ida_mem),which,pointer(t),pointer(order),convert(N_Vector,y))

function __IDAGetAdjCurrentCheckPoint(ida_mem::IDAMemPtr,addr::Ptr{Ptr{Void}})
    ccall((:IDAGetAdjCurrentCheckPoint,libsundials_idas),Cint,(IDAMemPtr,Ptr{Ptr{Void}}),ida_mem,addr)
end

IDAGetAdjCurrentCheckPoint(ida_mem,addr) = __IDAGetAdjCurrentCheckPoint(convert(IDAMemPtr,ida_mem),pointer(addr))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDADlsSetDenseJacFn(ida_mem::IDAMemPtr,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,libsundials_idas),Cint,(IDAMemPtr,IDADlsDenseJacFn),ida_mem,jac)
end

IDADlsSetDenseJacFn(ida_mem,jac) = __IDADlsSetDenseJacFn(convert(IDAMemPtr,ida_mem),jac)

function __IDADlsSetBandJacFn(ida_mem::IDAMemPtr,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,libsundials_idas),Cint,(IDAMemPtr,IDADlsBandJacFn),ida_mem,jac)
end

IDADlsSetBandJacFn(ida_mem,jac) = __IDADlsSetBandJacFn(convert(IDAMemPtr,ida_mem),jac)

function __IDADlsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

IDADlsGetWorkSpace(ida_mem,lenrwLS,leniwLS) = __IDADlsGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrwLS),pointer(leniwLS))

function __IDADlsGetNumJacEvals(ida_mem::IDAMemPtr,njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njevals)
end

IDADlsGetNumJacEvals(ida_mem,njevals) = __IDADlsGetNumJacEvals(convert(IDAMemPtr,ida_mem),pointer(njevals))

function __IDADlsGetNumResEvals(ida_mem::IDAMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nfevalsLS)
end

IDADlsGetNumResEvals(ida_mem,nfevalsLS) = __IDADlsGetNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nfevalsLS))

function __IDADlsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

IDADlsGetLastFlag(ida_mem,flag) = __IDADlsGetLastFlag(convert(IDAMemPtr,ida_mem),pointer(flag))

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function __IDADlsSetDenseJacFnB(ida_mem::IDAMemPtr,which::Cint,jacB::IDADlsDenseJacFnB)
    ccall((:IDADlsSetDenseJacFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDADlsDenseJacFnB),ida_mem,which,jacB)
end

IDADlsSetDenseJacFnB(ida_mem,which,jacB) = __IDADlsSetDenseJacFnB(convert(IDAMemPtr,ida_mem),which,jacB)

function __IDADlsSetBandJacFnB(idaa_mem::IDAMemPtr,which::Cint,jacB::IDADlsBandJacFnB)
    ccall((:IDADlsSetBandJacFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDADlsBandJacFnB),idaa_mem,which,jacB)
end

IDADlsSetBandJacFnB(idaa_mem,which,jacB) = __IDADlsSetBandJacFnB(convert(IDAMemPtr,idaa_mem),which,jacB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASpilsSetPreconditioner(ida_mem::IDAMemPtr,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_idas),Cint,(IDAMemPtr,IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

IDASpilsSetPreconditioner(ida_mem,pset,psolve) = __IDASpilsSetPreconditioner(convert(IDAMemPtr,ida_mem),pset,psolve)

function __IDASpilsSetJacTimesVecFn(ida_mem::IDAMemPtr,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_idas),Cint,(IDAMemPtr,IDASpilsJacTimesVecFn),ida_mem,jtv)
end

IDASpilsSetJacTimesVecFn(ida_mem,jtv) = __IDASpilsSetJacTimesVecFn(convert(IDAMemPtr,ida_mem),jtv)

function __IDASpilsSetGSType(ida_mem::IDAMemPtr,gstype::Cint)
    ccall((:IDASpilsSetGSType,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,gstype)
end

IDASpilsSetGSType(ida_mem,gstype) = __IDASpilsSetGSType(convert(IDAMemPtr,ida_mem),gstype)

function __IDASpilsSetMaxRestarts(ida_mem::IDAMemPtr,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxrs)
end

IDASpilsSetMaxRestarts(ida_mem,maxrs) = __IDASpilsSetMaxRestarts(convert(IDAMemPtr,ida_mem),maxrs)

function __IDASpilsSetMaxl(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpilsSetMaxl,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

IDASpilsSetMaxl(ida_mem,maxl) = __IDASpilsSetMaxl(convert(IDAMemPtr,ida_mem),maxl)

function __IDASpilsSetEpsLin(ida_mem::IDAMemPtr,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,eplifac)
end

IDASpilsSetEpsLin(ida_mem,eplifac) = __IDASpilsSetEpsLin(convert(IDAMemPtr,ida_mem),eplifac)

function __IDASpilsSetIncrementFactor(ida_mem::IDAMemPtr,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,dqincfac)
end

IDASpilsSetIncrementFactor(ida_mem,dqincfac) = __IDASpilsSetIncrementFactor(convert(IDAMemPtr,ida_mem),dqincfac)

function __IDASpilsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

IDASpilsGetWorkSpace(ida_mem,lenrwLS,leniwLS) = __IDASpilsGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrwLS),pointer(leniwLS))

function __IDASpilsGetNumPrecEvals(ida_mem::IDAMemPtr,npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npevals)
end

IDASpilsGetNumPrecEvals(ida_mem,npevals) = __IDASpilsGetNumPrecEvals(convert(IDAMemPtr,ida_mem),pointer(npevals))

function __IDASpilsGetNumPrecSolves(ida_mem::IDAMemPtr,npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npsolves)
end

IDASpilsGetNumPrecSolves(ida_mem,npsolves) = __IDASpilsGetNumPrecSolves(convert(IDAMemPtr,ida_mem),pointer(npsolves))

function __IDASpilsGetNumLinIters(ida_mem::IDAMemPtr,nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nliters)
end

IDASpilsGetNumLinIters(ida_mem,nliters) = __IDASpilsGetNumLinIters(convert(IDAMemPtr,ida_mem),pointer(nliters))

function __IDASpilsGetNumConvFails(ida_mem::IDAMemPtr,nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlcfails)
end

IDASpilsGetNumConvFails(ida_mem,nlcfails) = __IDASpilsGetNumConvFails(convert(IDAMemPtr,ida_mem),pointer(nlcfails))

function __IDASpilsGetNumJtimesEvals(ida_mem::IDAMemPtr,njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njvevals)
end

IDASpilsGetNumJtimesEvals(ida_mem,njvevals) = __IDASpilsGetNumJtimesEvals(convert(IDAMemPtr,ida_mem),pointer(njvevals))

function __IDASpilsGetNumResEvals(ida_mem::IDAMemPtr,nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevalsLS)
end

IDASpilsGetNumResEvals(ida_mem,nrevalsLS) = __IDASpilsGetNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nrevalsLS))

function __IDASpilsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

IDASpilsGetLastFlag(ida_mem,flag) = __IDASpilsGetLastFlag(convert(IDAMemPtr,ida_mem),pointer(flag))

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function __IDASpilsSetGSTypeB(ida_mem::IDAMemPtr,which::Cint,gstypeB::Cint)
    ccall((:IDASpilsSetGSTypeB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,gstypeB)
end

IDASpilsSetGSTypeB(ida_mem,which,gstypeB) = __IDASpilsSetGSTypeB(convert(IDAMemPtr,ida_mem),which,gstypeB)

function __IDASpilsSetMaxRestartsB(ida_mem::IDAMemPtr,which::Cint,maxrsB::Cint)
    ccall((:IDASpilsSetMaxRestartsB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxrsB)
end

IDASpilsSetMaxRestartsB(ida_mem,which,maxrsB) = __IDASpilsSetMaxRestartsB(convert(IDAMemPtr,ida_mem),which,maxrsB)

function __IDASpilsSetEpsLinB(ida_mem::IDAMemPtr,which::Cint,eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,eplifacB)
end

IDASpilsSetEpsLinB(ida_mem,which,eplifacB) = __IDASpilsSetEpsLinB(convert(IDAMemPtr,ida_mem),which,eplifacB)

function __IDASpilsSetMaxlB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASpilsSetMaxlB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end

IDASpilsSetMaxlB(ida_mem,which,maxlB) = __IDASpilsSetMaxlB(convert(IDAMemPtr,ida_mem),which,maxlB)

function __IDASpilsSetIncrementFactorB(ida_mem::IDAMemPtr,which::Cint,dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,dqincfacB)
end

IDASpilsSetIncrementFactorB(ida_mem,which,dqincfacB) = __IDASpilsSetIncrementFactorB(convert(IDAMemPtr,ida_mem),which,dqincfacB)

function __IDASpilsSetPreconditionerB(ida_mem::IDAMemPtr,which::Cint,psetB::IDASpilsPrecSetupFnB,psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsPrecSetupFnB,IDASpilsPrecSolveFnB),ida_mem,which,psetB,psolveB)
end

IDASpilsSetPreconditionerB(ida_mem,which,psetB,psolveB) = __IDASpilsSetPreconditionerB(convert(IDAMemPtr,ida_mem),which,psetB,psolveB)

function __IDASpilsSetJacTimesVecFnB(ida_mem::IDAMemPtr,which::Cint,jtvB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesVecFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsJacTimesVecFnB),ida_mem,which,jtvB)
end

IDASpilsSetJacTimesVecFnB(ida_mem,which,jtvB) = __IDASpilsSetJacTimesVecFnB(convert(IDAMemPtr,ida_mem),which,jtvB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDABand(ida_mem::IDAMemPtr,Neq::Clong,mupper::Clong,mlower::Clong)
    ccall((:IDABand,libsundials_idas),Cint,(IDAMemPtr,Clong,Clong,Clong),ida_mem,Neq,mupper,mlower)
end

IDABand(ida_mem,Neq,mupper,mlower) = __IDABand(convert(IDAMemPtr,ida_mem),Neq,mupper,mlower)

function __IDABandB(idaadj_mem::IDAMemPtr,which::Cint,NeqB::Clong,mupperB::Clong,mlowerB::Clong)
    ccall((:IDABandB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong,Clong,Clong),idaadj_mem,which,NeqB,mupperB,mlowerB)
end

IDABandB(idaadj_mem,which,NeqB,mupperB,mlowerB) = __IDABandB(convert(IDAMemPtr,idaadj_mem),which,NeqB,mupperB,mlowerB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDABBDPrecInit(ida_mem::IDAMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_yy::realtype,Gres::IDABBDLocalFn,Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit,libsundials_idas),Cint,(IDAMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFn,IDABBDCommFn),ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)
end

IDABBDPrecInit(ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm) = __IDABBDPrecInit(convert(IDAMemPtr,ida_mem),Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)

function __IDABBDPrecReInit(ida_mem::IDAMemPtr,mudq::Clong,mldq::Clong,dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit,libsundials_idas),Cint,(IDAMemPtr,Clong,Clong,realtype),ida_mem,mudq,mldq,dq_rel_yy)
end

IDABBDPrecReInit(ida_mem,mudq,mldq,dq_rel_yy) = __IDABBDPrecReInit(convert(IDAMemPtr,ida_mem),mudq,mldq,dq_rel_yy)

function __IDABBDPrecGetWorkSpace(ida_mem::IDAMemPtr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwBBDP,leniwBBDP)
end

IDABBDPrecGetWorkSpace(ida_mem,lenrwBBDP,leniwBBDP) = __IDABBDPrecGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrwBBDP),pointer(leniwBBDP))

function __IDABBDPrecGetNumGfnEvals(ida_mem::IDAMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetNumGfnEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,ngevalsBBDP)
end

IDABBDPrecGetNumGfnEvals(ida_mem,ngevalsBBDP) = __IDABBDPrecGetNumGfnEvals(convert(IDAMemPtr,ida_mem),pointer(ngevalsBBDP))

function __IDABBDPrecInitB(ida_mem::IDAMemPtr,which::Cint,NlocalB::Clong,mudqB::Clong,mldqB::Clong,mukeepB::Clong,mlkeepB::Clong,dq_rel_yyB::realtype,GresB::IDABBDLocalFnB,GcommB::IDABBDCommFnB)
    ccall((:IDABBDPrecInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFnB,IDABBDCommFnB),ida_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dq_rel_yyB,GresB,GcommB)
end

IDABBDPrecInitB(ida_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dq_rel_yyB,GresB,GcommB) = __IDABBDPrecInitB(convert(IDAMemPtr,ida_mem),which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dq_rel_yyB,GresB,GcommB)

function __IDABBDPrecReInitB(ida_mem::IDAMemPtr,which::Cint,mudqB::Clong,mldqB::Clong,dq_rel_yyB::realtype)
    ccall((:IDABBDPrecReInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong,Clong,realtype),ida_mem,which,mudqB,mldqB,dq_rel_yyB)
end

IDABBDPrecReInitB(ida_mem,which,mudqB,mldqB,dq_rel_yyB) = __IDABBDPrecReInitB(convert(IDAMemPtr,ida_mem),which,mudqB,mldqB,dq_rel_yyB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDADense(ida_mem::IDAMemPtr,Neq::Clong)
    ccall((:IDADense,libsundials_idas),Cint,(IDAMemPtr,Clong),ida_mem,Neq)
end

IDADense(ida_mem,Neq) = __IDADense(convert(IDAMemPtr,ida_mem),Neq)

function __IDADenseB(ida_mem::IDAMemPtr,which::Cint,NeqB::Clong)
    ccall((:IDADenseB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong),ida_mem,which,NeqB)
end

IDADenseB(ida_mem,which,NeqB) = __IDADenseB(convert(IDAMemPtr,ida_mem),which,NeqB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASpbcg(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpbcg,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

IDASpbcg(ida_mem,maxl) = __IDASpbcg(convert(IDAMemPtr,ida_mem),maxl)

function __IDASpbcgB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASpbcgB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end

IDASpbcgB(ida_mem,which,maxlB) = __IDASpbcgB(convert(IDAMemPtr,ida_mem),which,maxlB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASpgmr(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpgmr,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

IDASpgmr(ida_mem,maxl) = __IDASpgmr(convert(IDAMemPtr,ida_mem),maxl)

function __IDASpgmrB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASpgmrB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end

IDASpgmrB(ida_mem,which,maxlB) = __IDASpgmrB(convert(IDAMemPtr,ida_mem),which,maxlB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASptfqmr(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASptfqmr,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

IDASptfqmr(ida_mem,maxl) = __IDASptfqmr(convert(IDAMemPtr,ida_mem),maxl)

function __IDASptfqmrB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASptfqmrB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end

IDASptfqmrB(ida_mem,which,maxlB) = __IDASptfqmrB(convert(IDAMemPtr,ida_mem),which,maxlB)
