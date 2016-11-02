# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/idas/idas.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDACreate()
    ccall((:IDACreate,libsundials_idas),IDAMemPtr,())
end

function __IDASetErrHandlerFn(ida_mem::IDAMemPtr,ehfun::IDAErrHandlerFn,eh_data::Ptr{Void})
    ccall((:IDASetErrHandlerFn,libsundials_idas),Cint,(IDAMemPtr,IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

function IDASetErrHandlerFn(ida_mem,ehfun,eh_data)
    __IDASetErrHandlerFn(convert(IDAMemPtr,ida_mem),ehfun,pointer(eh_data))
end

function __IDASetErrFile(ida_mem::IDAMemPtr,errfp::Ptr{FILE})
    ccall((:IDASetErrFile,libsundials_idas),Cint,(IDAMemPtr,Ptr{FILE}),ida_mem,errfp)
end

function IDASetErrFile(ida_mem,errfp)
    __IDASetErrFile(convert(IDAMemPtr,ida_mem),errfp)
end

function __IDASetUserData(ida_mem::IDAMemPtr,user_data::Any)
    ccall((:IDASetUserData,libsundials_idas),Cint,(IDAMemPtr,Any),ida_mem,user_data)
end

function IDASetUserData(ida_mem,user_data)
    __IDASetUserData(convert(IDAMemPtr,ida_mem),user_data)
end

function __IDASetMaxOrd(ida_mem::IDAMemPtr,maxord::Cint)
    ccall((:IDASetMaxOrd,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxord)
end

function IDASetMaxOrd(ida_mem,maxord)
    __IDASetMaxOrd(convert(IDAMemPtr,ida_mem),convert(Cint,maxord))
end

function __IDASetMaxNumSteps(ida_mem::IDAMemPtr,mxsteps::Clong)
    ccall((:IDASetMaxNumSteps,libsundials_idas),Cint,(IDAMemPtr,Clong),ida_mem,mxsteps)
end

function IDASetMaxNumSteps(ida_mem,mxsteps)
    __IDASetMaxNumSteps(convert(IDAMemPtr,ida_mem),convert(Clong,mxsteps))
end

function __IDASetInitStep(ida_mem::IDAMemPtr,hin::realtype)
    ccall((:IDASetInitStep,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,hin)
end

function IDASetInitStep(ida_mem,hin)
    __IDASetInitStep(convert(IDAMemPtr,ida_mem),hin)
end

function __IDASetMaxStep(ida_mem::IDAMemPtr,hmax::realtype)
    ccall((:IDASetMaxStep,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,hmax)
end

function IDASetMaxStep(ida_mem,hmax)
    __IDASetMaxStep(convert(IDAMemPtr,ida_mem),hmax)
end

function __IDASetStopTime(ida_mem::IDAMemPtr,tstop::realtype)
    ccall((:IDASetStopTime,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,tstop)
end

function IDASetStopTime(ida_mem,tstop)
    __IDASetStopTime(convert(IDAMemPtr,ida_mem),tstop)
end

function __IDASetNonlinConvCoef(ida_mem::IDAMemPtr,epcon::realtype)
    ccall((:IDASetNonlinConvCoef,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,epcon)
end

function IDASetNonlinConvCoef(ida_mem,epcon)
    __IDASetNonlinConvCoef(convert(IDAMemPtr,ida_mem),epcon)
end

function __IDASetMaxErrTestFails(ida_mem::IDAMemPtr,maxnef::Cint)
    ccall((:IDASetMaxErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxnef)
end

function IDASetMaxErrTestFails(ida_mem,maxnef)
    __IDASetMaxErrTestFails(convert(IDAMemPtr,ida_mem),convert(Cint,maxnef))
end

function __IDASetMaxNonlinIters(ida_mem::IDAMemPtr,maxcor::Cint)
    ccall((:IDASetMaxNonlinIters,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxcor)
end

function IDASetMaxNonlinIters(ida_mem,maxcor)
    __IDASetMaxNonlinIters(convert(IDAMemPtr,ida_mem),convert(Cint,maxcor))
end

function __IDASetMaxConvFails(ida_mem::IDAMemPtr,maxncf::Cint)
    ccall((:IDASetMaxConvFails,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxncf)
end

function IDASetMaxConvFails(ida_mem,maxncf)
    __IDASetMaxConvFails(convert(IDAMemPtr,ida_mem),convert(Cint,maxncf))
end

function __IDASetSuppressAlg(ida_mem::IDAMemPtr,suppressalg::Cint)
    ccall((:IDASetSuppressAlg,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,suppressalg)
end

function IDASetSuppressAlg(ida_mem,suppressalg)
    __IDASetSuppressAlg(convert(IDAMemPtr,ida_mem),convert(Cint,suppressalg))
end

function __IDASetId(ida_mem::IDAMemPtr,id::N_Vector)
    ccall((:IDASetId,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,id)
end

function IDASetId(ida_mem,id)
    __id = convert(NVector,id)
    __IDASetId(convert(IDAMemPtr,ida_mem),convert(N_Vector,__id))
end

function __IDASetConstraints(ida_mem::IDAMemPtr,constraints::N_Vector)
    ccall((:IDASetConstraints,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,constraints)
end

function IDASetConstraints(ida_mem,constraints)
    __constraints = convert(NVector,constraints)
    __IDASetConstraints(convert(IDAMemPtr,ida_mem),convert(N_Vector,__constraints))
end

function __IDASetRootDirection(ida_mem::IDAMemPtr,rootdir::Ptr{Cint})
    ccall((:IDASetRootDirection,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,rootdir)
end

function IDASetRootDirection(ida_mem,rootdir)
    __IDASetRootDirection(convert(IDAMemPtr,ida_mem),pointer(rootdir))
end

function __IDASetNoInactiveRootWarn(ida_mem::IDAMemPtr)
    ccall((:IDASetNoInactiveRootWarn,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

function IDASetNoInactiveRootWarn(ida_mem)
    __IDASetNoInactiveRootWarn(convert(IDAMemPtr,ida_mem))
end

function __IDAInit(ida_mem::IDAMemPtr,res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,libsundials_idas),Cint,(IDAMemPtr,IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

function IDAInit(ida_mem,res,t0,yy0,yp0)
    __yy0 = convert(NVector,yy0)
    __yp0 = convert(NVector,yp0)
    __IDAInit(convert(IDAMemPtr,ida_mem),IDAResFn_wrapper(res),t0,convert(N_Vector,__yy0),convert(N_Vector,__yp0))
end

function __IDAReInit(ida_mem::IDAMemPtr,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,libsundials_idas),Cint,(IDAMemPtr,realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

function IDAReInit(ida_mem,t0,yy0,yp0)
    __yy0 = convert(NVector,yy0)
    __yp0 = convert(NVector,yp0)
    __IDAReInit(convert(IDAMemPtr,ida_mem),t0,convert(N_Vector,__yy0),convert(N_Vector,__yp0))
end

function __IDASStolerances(ida_mem::IDAMemPtr,reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,realtype),ida_mem,reltol,abstol)
end

function IDASStolerances(ida_mem,reltol,abstol)
    __IDASStolerances(convert(IDAMemPtr,ida_mem),reltol,abstol)
end

function __IDASVtolerances(ida_mem::IDAMemPtr,reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,N_Vector),ida_mem,reltol,abstol)
end

function IDASVtolerances(ida_mem,reltol,abstol)
    __abstol = convert(NVector,abstol)
    __IDASVtolerances(convert(IDAMemPtr,ida_mem),reltol,convert(N_Vector,__abstol))
end

function __IDAWFtolerances(ida_mem::IDAMemPtr,efun::IDAEwtFn)
    ccall((:IDAWFtolerances,libsundials_idas),Cint,(IDAMemPtr,IDAEwtFn),ida_mem,efun)
end

function IDAWFtolerances(ida_mem,efun)
    __IDAWFtolerances(convert(IDAMemPtr,ida_mem),efun)
end

function __IDASetNonlinConvCoefIC(ida_mem::IDAMemPtr,epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,epiccon)
end

function IDASetNonlinConvCoefIC(ida_mem,epiccon)
    __IDASetNonlinConvCoefIC(convert(IDAMemPtr,ida_mem),epiccon)
end

function __IDASetMaxNumStepsIC(ida_mem::IDAMemPtr,maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxnh)
end

function IDASetMaxNumStepsIC(ida_mem,maxnh)
    __IDASetMaxNumStepsIC(convert(IDAMemPtr,ida_mem),convert(Cint,maxnh))
end

function __IDASetMaxNumJacsIC(ida_mem::IDAMemPtr,maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxnj)
end

function IDASetMaxNumJacsIC(ida_mem,maxnj)
    __IDASetMaxNumJacsIC(convert(IDAMemPtr,ida_mem),convert(Cint,maxnj))
end

function __IDASetMaxNumItersIC(ida_mem::IDAMemPtr,maxnit::Cint)
    ccall((:IDASetMaxNumItersIC,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxnit)
end

function IDASetMaxNumItersIC(ida_mem,maxnit)
    __IDASetMaxNumItersIC(convert(IDAMemPtr,ida_mem),convert(Cint,maxnit))
end

function __IDASetLineSearchOffIC(ida_mem::IDAMemPtr,lsoff::Cint)
    ccall((:IDASetLineSearchOffIC,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,lsoff)
end

function IDASetLineSearchOffIC(ida_mem,lsoff)
    __IDASetLineSearchOffIC(convert(IDAMemPtr,ida_mem),convert(Cint,lsoff))
end

function __IDASetStepToleranceIC(ida_mem::IDAMemPtr,steptol::realtype)
    ccall((:IDASetStepToleranceIC,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,steptol)
end

function IDASetStepToleranceIC(ida_mem,steptol)
    __IDASetStepToleranceIC(convert(IDAMemPtr,ida_mem),steptol)
end

function __IDARootInit(ida_mem::IDAMemPtr,nrtfn::Cint,g::IDARootFn)
    ccall((:IDARootInit,libsundials_idas),Cint,(IDAMemPtr,Cint,IDARootFn),ida_mem,nrtfn,g)
end

function IDARootInit(ida_mem,nrtfn,g)
    __IDARootInit(convert(IDAMemPtr,ida_mem),convert(Cint,nrtfn),IDARootFn_wrapper(g))
end

function __IDASetQuadErrCon(ida_mem::IDAMemPtr,errconQ::Cint)
    ccall((:IDASetQuadErrCon,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,errconQ)
end

function IDASetQuadErrCon(ida_mem,errconQ)
    __IDASetQuadErrCon(convert(IDAMemPtr,ida_mem),convert(Cint,errconQ))
end

function __IDAQuadInit(ida_mem::IDAMemPtr,rhsQ::IDAQuadRhsFn,yQ0::N_Vector)
    ccall((:IDAQuadInit,libsundials_idas),Cint,(IDAMemPtr,IDAQuadRhsFn,N_Vector),ida_mem,rhsQ,yQ0)
end

function IDAQuadInit(ida_mem,rhsQ,yQ0)
    __yQ0 = convert(NVector,yQ0)
    __IDAQuadInit(convert(IDAMemPtr,ida_mem),rhsQ,convert(N_Vector,__yQ0))
end

function __IDAQuadReInit(ida_mem::IDAMemPtr,yQ0::N_Vector)
    ccall((:IDAQuadReInit,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,yQ0)
end

function IDAQuadReInit(ida_mem,yQ0)
    __yQ0 = convert(NVector,yQ0)
    __IDAQuadReInit(convert(IDAMemPtr,ida_mem),convert(N_Vector,__yQ0))
end

function __IDAQuadSStolerances(ida_mem::IDAMemPtr,reltolQ::realtype,abstolQ::realtype)
    ccall((:IDAQuadSStolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,realtype),ida_mem,reltolQ,abstolQ)
end

function IDAQuadSStolerances(ida_mem,reltolQ,abstolQ)
    __IDAQuadSStolerances(convert(IDAMemPtr,ida_mem),reltolQ,abstolQ)
end

function __IDAQuadSVtolerances(ida_mem::IDAMemPtr,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:IDAQuadSVtolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,N_Vector),ida_mem,reltolQ,abstolQ)
end

function IDAQuadSVtolerances(ida_mem,reltolQ,abstolQ)
    __abstolQ = convert(NVector,abstolQ)
    __IDAQuadSVtolerances(convert(IDAMemPtr,ida_mem),reltolQ,convert(N_Vector,__abstolQ))
end

function __IDASetSensDQMethod(ida_mem::IDAMemPtr,DQtype::Cint,DQrhomax::realtype)
    ccall((:IDASetSensDQMethod,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,DQtype,DQrhomax)
end

function IDASetSensDQMethod(ida_mem,DQtype,DQrhomax)
    __IDASetSensDQMethod(convert(IDAMemPtr,ida_mem),convert(Cint,DQtype),DQrhomax)
end

function __IDASetSensParams(ida_mem::IDAMemPtr,p::Ptr{realtype},pbar::Ptr{realtype},plist::Ptr{Cint})
    ccall((:IDASetSensParams,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Ptr{realtype},Ptr{Cint}),ida_mem,p,pbar,plist)
end

function IDASetSensParams(ida_mem,p,pbar,plist)
    __IDASetSensParams(convert(IDAMemPtr,ida_mem),pointer(p),pointer(pbar),pointer(plist))
end

function __IDASetSensErrCon(ida_mem::IDAMemPtr,errconS::Cint)
    ccall((:IDASetSensErrCon,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,errconS)
end

function IDASetSensErrCon(ida_mem,errconS)
    __IDASetSensErrCon(convert(IDAMemPtr,ida_mem),convert(Cint,errconS))
end

function __IDASetSensMaxNonlinIters(ida_mem::IDAMemPtr,maxcorS::Cint)
    ccall((:IDASetSensMaxNonlinIters,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxcorS)
end

function IDASetSensMaxNonlinIters(ida_mem,maxcorS)
    __IDASetSensMaxNonlinIters(convert(IDAMemPtr,ida_mem),convert(Cint,maxcorS))
end

function __IDASensInit(ida_mem::IDAMemPtr,Ns::Cint,ism::Cint,resS::IDASensResFn,yS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDASensInit,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint,IDASensResFn,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,Ns,ism,resS,yS0,ypS0)
end

function IDASensInit(ida_mem,Ns,ism,resS,yS0,ypS0)
    __IDASensInit(convert(IDAMemPtr,ida_mem),convert(Cint,Ns),convert(Cint,ism),resS,pointer(yS0),pointer(ypS0))
end

function __IDASensReInit(ida_mem::IDAMemPtr,ism::Cint,yS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDASensReInit,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,ism,yS0,ypS0)
end

function IDASensReInit(ida_mem,ism,yS0,ypS0)
    __IDASensReInit(convert(IDAMemPtr,ida_mem),convert(Cint,ism),pointer(yS0),pointer(ypS0))
end

function __IDASensToggleOff(ida_mem::IDAMemPtr)
    ccall((:IDASensToggleOff,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

function IDASensToggleOff(ida_mem)
    __IDASensToggleOff(convert(IDAMemPtr,ida_mem))
end

function __IDASensSStolerances(ida_mem::IDAMemPtr,reltolS::realtype,abstolS::Ptr{realtype})
    ccall((:IDASensSStolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{realtype}),ida_mem,reltolS,abstolS)
end

function IDASensSStolerances(ida_mem,reltolS,abstolS)
    __IDASensSStolerances(convert(IDAMemPtr,ida_mem),reltolS,pointer(abstolS))
end

function __IDASensSVtolerances(ida_mem::IDAMemPtr,reltolS::realtype,abstolS::Ptr{N_Vector})
    ccall((:IDASensSVtolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{N_Vector}),ida_mem,reltolS,abstolS)
end

function IDASensSVtolerances(ida_mem,reltolS,abstolS)
    __IDASensSVtolerances(convert(IDAMemPtr,ida_mem),reltolS,pointer(abstolS))
end

function __IDASensEEtolerances(ida_mem::IDAMemPtr)
    ccall((:IDASensEEtolerances,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

function IDASensEEtolerances(ida_mem)
    __IDASensEEtolerances(convert(IDAMemPtr,ida_mem))
end

function __IDAQuadSensInit(ida_mem::IDAMemPtr,resQS::IDAQuadSensRhsFn,yQS0::Ptr{N_Vector})
    ccall((:IDAQuadSensInit,libsundials_idas),Cint,(IDAMemPtr,IDAQuadSensRhsFn,Ptr{N_Vector}),ida_mem,resQS,yQS0)
end

function IDAQuadSensInit(ida_mem,resQS,yQS0)
    __IDAQuadSensInit(convert(IDAMemPtr,ida_mem),resQS,pointer(yQS0))
end

function __IDAQuadSensReInit(ida_mem::IDAMemPtr,yQS0::Ptr{N_Vector})
    ccall((:IDAQuadSensReInit,libsundials_idas),Cint,(IDAMemPtr,Ptr{N_Vector}),ida_mem,yQS0)
end

function IDAQuadSensReInit(ida_mem,yQS0)
    __IDAQuadSensReInit(convert(IDAMemPtr,ida_mem),pointer(yQS0))
end

function __IDAQuadSensSStolerances(ida_mem::IDAMemPtr,reltolQS::realtype,abstolQS::Ptr{realtype})
    ccall((:IDAQuadSensSStolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{realtype}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensSStolerances(ida_mem,reltolQS,abstolQS)
    __IDAQuadSensSStolerances(convert(IDAMemPtr,ida_mem),reltolQS,pointer(abstolQS))
end

function __IDAQuadSensSVtolerances(ida_mem::IDAMemPtr,reltolQS::realtype,abstolQS::Ptr{N_Vector})
    ccall((:IDAQuadSensSVtolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{N_Vector}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensSVtolerances(ida_mem,reltolQS,abstolQS)
    __IDAQuadSensSVtolerances(convert(IDAMemPtr,ida_mem),reltolQS,pointer(abstolQS))
end

function __IDAQuadSensEEtolerances(ida_mem::IDAMemPtr)
    ccall((:IDAQuadSensEEtolerances,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

function IDAQuadSensEEtolerances(ida_mem)
    __IDAQuadSensEEtolerances(convert(IDAMemPtr,ida_mem))
end

function __IDASetQuadSensErrCon(ida_mem::IDAMemPtr,errconQS::Cint)
    ccall((:IDASetQuadSensErrCon,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,errconQS)
end

function IDASetQuadSensErrCon(ida_mem,errconQS)
    __IDASetQuadSensErrCon(convert(IDAMemPtr,ida_mem),convert(Cint,errconQS))
end

function __IDACalcIC(ida_mem::IDAMemPtr,icopt::Cint,tout1::realtype)
    ccall((:IDACalcIC,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,icopt,tout1)
end

function IDACalcIC(ida_mem,icopt,tout1)
    __IDACalcIC(convert(IDAMemPtr,ida_mem),convert(Cint,icopt),tout1)
end

function __IDASolve(ida_mem::IDAMemPtr,tout::realtype,tret::Ptr{realtype},yret::N_Vector,ypret::N_Vector,itask::Cint)
    ccall((:IDASolve,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

function IDASolve(ida_mem,tout,tret,yret,ypret,itask)
    __yret = convert(NVector,yret)
    __ypret = convert(NVector,ypret)
    __IDASolve(convert(IDAMemPtr,ida_mem),tout,pointer(tret),convert(N_Vector,__yret),convert(N_Vector,__ypret),convert(Cint,itask))
end

function __IDAGetDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetDky,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetDky(ida_mem,t,k,dky)
    __dky = convert(NVector,dky)
    __IDAGetDky(convert(IDAMemPtr,ida_mem),t,convert(Cint,k),convert(N_Vector,__dky))
end

function __IDAGetWorkSpace(ida_mem::IDAMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:IDAGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

function IDAGetWorkSpace(ida_mem,lenrw,leniw)
    __IDAGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrw),pointer(leniw))
end

function __IDAGetNumSteps(ida_mem::IDAMemPtr,nsteps::Ptr{Clong})
    ccall((:IDAGetNumSteps,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nsteps)
end

function IDAGetNumSteps(ida_mem,nsteps)
    __IDAGetNumSteps(convert(IDAMemPtr,ida_mem),pointer(nsteps))
end

function __IDAGetNumResEvals(ida_mem::IDAMemPtr,nrevals::Ptr{Clong})
    ccall((:IDAGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevals)
end

function IDAGetNumResEvals(ida_mem,nrevals)
    __IDAGetNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nrevals))
end

function __IDAGetNumLinSolvSetups(ida_mem::IDAMemPtr,nlinsetups::Ptr{Clong})
    ccall((:IDAGetNumLinSolvSetups,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlinsetups)
end

function IDAGetNumLinSolvSetups(ida_mem,nlinsetups)
    __IDAGetNumLinSolvSetups(convert(IDAMemPtr,ida_mem),pointer(nlinsetups))
end

function __IDAGetNumErrTestFails(ida_mem::IDAMemPtr,netfails::Ptr{Clong})
    ccall((:IDAGetNumErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,netfails)
end

function IDAGetNumErrTestFails(ida_mem,netfails)
    __IDAGetNumErrTestFails(convert(IDAMemPtr,ida_mem),pointer(netfails))
end

function __IDAGetNumBacktrackOps(ida_mem::IDAMemPtr,nbacktr::Ptr{Clong})
    ccall((:IDAGetNumBacktrackOps,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nbacktr)
end

function IDAGetNumBacktrackOps(ida_mem,nbacktr)
    __IDAGetNumBacktrackOps(convert(IDAMemPtr,ida_mem),pointer(nbacktr))
end

function __IDAGetConsistentIC(ida_mem::IDAMemPtr,yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,libsundials_idas),Cint,(IDAMemPtr,N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

function IDAGetConsistentIC(ida_mem,yy0_mod,yp0_mod)
    __yy0_mod = convert(NVector,yy0_mod)
    __yp0_mod = convert(NVector,yp0_mod)
    __IDAGetConsistentIC(convert(IDAMemPtr,ida_mem),convert(N_Vector,__yy0_mod),convert(N_Vector,__yp0_mod))
end

function __IDAGetLastOrder(ida_mem::IDAMemPtr,klast::Ptr{Cint})
    ccall((:IDAGetLastOrder,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,klast)
end

function IDAGetLastOrder(ida_mem,klast)
    __IDAGetLastOrder(convert(IDAMemPtr,ida_mem),pointer(klast))
end

function __IDAGetCurrentOrder(ida_mem::IDAMemPtr,kcur::Ptr{Cint})
    ccall((:IDAGetCurrentOrder,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,kcur)
end

function IDAGetCurrentOrder(ida_mem,kcur)
    __IDAGetCurrentOrder(convert(IDAMemPtr,ida_mem),pointer(kcur))
end

function __IDAGetActualInitStep(ida_mem::IDAMemPtr,hinused::Ptr{realtype})
    ccall((:IDAGetActualInitStep,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hinused)
end

function IDAGetActualInitStep(ida_mem,hinused)
    __IDAGetActualInitStep(convert(IDAMemPtr,ida_mem),pointer(hinused))
end

function __IDAGetLastStep(ida_mem::IDAMemPtr,hlast::Ptr{realtype})
    ccall((:IDAGetLastStep,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hlast)
end

function IDAGetLastStep(ida_mem,hlast)
    __IDAGetLastStep(convert(IDAMemPtr,ida_mem),pointer(hlast))
end

function __IDAGetCurrentStep(ida_mem::IDAMemPtr,hcur::Ptr{realtype})
    ccall((:IDAGetCurrentStep,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hcur)
end

function IDAGetCurrentStep(ida_mem,hcur)
    __IDAGetCurrentStep(convert(IDAMemPtr,ida_mem),pointer(hcur))
end

function __IDAGetCurrentTime(ida_mem::IDAMemPtr,tcur::Ptr{realtype})
    ccall((:IDAGetCurrentTime,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,tcur)
end

function IDAGetCurrentTime(ida_mem,tcur)
    __IDAGetCurrentTime(convert(IDAMemPtr,ida_mem),pointer(tcur))
end

function __IDAGetTolScaleFactor(ida_mem::IDAMemPtr,tolsfact::Ptr{realtype})
    ccall((:IDAGetTolScaleFactor,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,tolsfact)
end

function IDAGetTolScaleFactor(ida_mem,tolsfact)
    __IDAGetTolScaleFactor(convert(IDAMemPtr,ida_mem),pointer(tolsfact))
end

function __IDAGetErrWeights(ida_mem::IDAMemPtr,eweight::N_Vector)
    ccall((:IDAGetErrWeights,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,eweight)
end

function IDAGetErrWeights(ida_mem,eweight)
    __eweight = convert(NVector,eweight)
    __IDAGetErrWeights(convert(IDAMemPtr,ida_mem),convert(N_Vector,__eweight))
end

function __IDAGetEstLocalErrors(ida_mem::IDAMemPtr,ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,ele)
end

function IDAGetEstLocalErrors(ida_mem,ele)
    __ele = convert(NVector,ele)
    __IDAGetEstLocalErrors(convert(IDAMemPtr,ida_mem),convert(N_Vector,__ele))
end

function __IDAGetNumGEvals(ida_mem::IDAMemPtr,ngevals::Ptr{Clong})
    ccall((:IDAGetNumGEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,ngevals)
end

function IDAGetNumGEvals(ida_mem,ngevals)
    __IDAGetNumGEvals(convert(IDAMemPtr,ida_mem),pointer(ngevals))
end

function __IDAGetRootInfo(ida_mem::IDAMemPtr,rootsfound::Ptr{Cint})
    ccall((:IDAGetRootInfo,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,rootsfound)
end

function IDAGetRootInfo(ida_mem,rootsfound)
    __IDAGetRootInfo(convert(IDAMemPtr,ida_mem),pointer(rootsfound))
end

function __IDAGetIntegratorStats(ida_mem::IDAMemPtr,nsteps::Ptr{Clong},nrevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:IDAGetIntegratorStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function IDAGetIntegratorStats(ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    __IDAGetIntegratorStats(convert(IDAMemPtr,ida_mem),pointer(nsteps),pointer(nrevals),pointer(nlinsetups),pointer(netfails),pointer(qlast),pointer(qcur),pointer(hinused),pointer(hlast),pointer(hcur),pointer(tcur))
end

function __IDAGetNumNonlinSolvIters(ida_mem::IDAMemPtr,nniters::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvIters,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nniters)
end

function IDAGetNumNonlinSolvIters(ida_mem,nniters)
    __IDAGetNumNonlinSolvIters(convert(IDAMemPtr,ida_mem),pointer(nniters))
end

function __IDAGetNumNonlinSolvConvFails(ida_mem::IDAMemPtr,nncfails::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvConvFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nncfails)
end

function IDAGetNumNonlinSolvConvFails(ida_mem,nncfails)
    __IDAGetNumNonlinSolvConvFails(convert(IDAMemPtr,ida_mem),pointer(nncfails))
end

function __IDAGetNonlinSolvStats(ida_mem::IDAMemPtr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:IDAGetNonlinSolvStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

function IDAGetNonlinSolvStats(ida_mem,nniters,nncfails)
    __IDAGetNonlinSolvStats(convert(IDAMemPtr,ida_mem),pointer(nniters),pointer(nncfails))
end

function __IDAGetQuad(ida_mem::IDAMemPtr,t::Ptr{realtype},yQout::N_Vector)
    ccall((:IDAGetQuad,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},N_Vector),ida_mem,t,yQout)
end

function IDAGetQuad(ida_mem,t,yQout)
    __yQout = convert(NVector,yQout)
    __IDAGetQuad(convert(IDAMemPtr,ida_mem),pointer(t),convert(N_Vector,__yQout))
end

function __IDAGetQuadDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetQuadDky,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetQuadDky(ida_mem,t,k,dky)
    __dky = convert(NVector,dky)
    __IDAGetQuadDky(convert(IDAMemPtr,ida_mem),t,convert(Cint,k),convert(N_Vector,__dky))
end

function __IDAGetQuadNumRhsEvals(ida_mem::IDAMemPtr,nrhsQevals::Ptr{Clong})
    ccall((:IDAGetQuadNumRhsEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrhsQevals)
end

function IDAGetQuadNumRhsEvals(ida_mem,nrhsQevals)
    __IDAGetQuadNumRhsEvals(convert(IDAMemPtr,ida_mem),pointer(nrhsQevals))
end

function __IDAGetQuadNumErrTestFails(ida_mem::IDAMemPtr,nQetfails::Ptr{Clong})
    ccall((:IDAGetQuadNumErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nQetfails)
end

function IDAGetQuadNumErrTestFails(ida_mem,nQetfails)
    __IDAGetQuadNumErrTestFails(convert(IDAMemPtr,ida_mem),pointer(nQetfails))
end

function __IDAGetQuadErrWeights(ida_mem::IDAMemPtr,eQweight::N_Vector)
    ccall((:IDAGetQuadErrWeights,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,eQweight)
end

function IDAGetQuadErrWeights(ida_mem,eQweight)
    __eQweight = convert(NVector,eQweight)
    __IDAGetQuadErrWeights(convert(IDAMemPtr,ida_mem),convert(N_Vector,__eQweight))
end

function __IDAGetQuadStats(ida_mem::IDAMemPtr,nrhsQevals::Ptr{Clong},nQetfails::Ptr{Clong})
    ccall((:IDAGetQuadStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQevals,nQetfails)
end

function IDAGetQuadStats(ida_mem,nrhsQevals,nQetfails)
    __IDAGetQuadStats(convert(IDAMemPtr,ida_mem),pointer(nrhsQevals),pointer(nQetfails))
end

function __IDAGetSens(ida_mem::IDAMemPtr,tret::Ptr{realtype},yySout::Ptr{N_Vector})
    ccall((:IDAGetSens,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yySout)
end

function IDAGetSens(ida_mem,tret,yySout)
    __IDAGetSens(convert(IDAMemPtr,ida_mem),pointer(tret),pointer(yySout))
end

function __IDAGetSens1(ida_mem::IDAMemPtr,tret::Ptr{realtype},is::Cint,yySret::N_Vector)
    ccall((:IDAGetSens1,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yySret)
end

function IDAGetSens1(ida_mem,tret,is,yySret)
    __yySret = convert(NVector,yySret)
    __IDAGetSens1(convert(IDAMemPtr,ida_mem),pointer(tret),convert(Cint,is),convert(N_Vector,__yySret))
end

function __IDAGetSensDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dkyS::Ptr{N_Vector})
    ccall((:IDAGetSensDky,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyS)
end

function IDAGetSensDky(ida_mem,t,k,dkyS)
    __IDAGetSensDky(convert(IDAMemPtr,ida_mem),t,convert(Cint,k),pointer(dkyS))
end

function __IDAGetSensDky1(ida_mem::IDAMemPtr,t::realtype,k::Cint,is::Cint,dkyS::N_Vector)
    ccall((:IDAGetSensDky1,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyS)
end

function IDAGetSensDky1(ida_mem,t,k,is,dkyS)
    __dkyS = convert(NVector,dkyS)
    __IDAGetSensDky1(convert(IDAMemPtr,ida_mem),t,convert(Cint,k),convert(Cint,is),convert(N_Vector,__dkyS))
end

function __IDAGetSensConsistentIC(ida_mem::IDAMemPtr,yyS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDAGetSensConsistentIC,libsundials_idas),Cint,(IDAMemPtr,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,yyS0,ypS0)
end

function IDAGetSensConsistentIC(ida_mem,yyS0,ypS0)
    __IDAGetSensConsistentIC(convert(IDAMemPtr,ida_mem),pointer(yyS0),pointer(ypS0))
end

function __IDAGetSensNumResEvals(ida_mem::IDAMemPtr,nresSevals::Ptr{Clong})
    ccall((:IDAGetSensNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nresSevals)
end

function IDAGetSensNumResEvals(ida_mem,nresSevals)
    __IDAGetSensNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nresSevals))
end

function __IDAGetNumResEvalsSens(ida_mem::IDAMemPtr,nresevalsS::Ptr{Clong})
    ccall((:IDAGetNumResEvalsSens,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nresevalsS)
end

function IDAGetNumResEvalsSens(ida_mem,nresevalsS)
    __IDAGetNumResEvalsSens(convert(IDAMemPtr,ida_mem),pointer(nresevalsS))
end

function __IDAGetSensNumErrTestFails(ida_mem::IDAMemPtr,nSetfails::Ptr{Clong})
    ccall((:IDAGetSensNumErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nSetfails)
end

function IDAGetSensNumErrTestFails(ida_mem,nSetfails)
    __IDAGetSensNumErrTestFails(convert(IDAMemPtr,ida_mem),pointer(nSetfails))
end

function __IDAGetSensNumLinSolvSetups(ida_mem::IDAMemPtr,nlinsetupsS::Ptr{Clong})
    ccall((:IDAGetSensNumLinSolvSetups,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlinsetupsS)
end

function IDAGetSensNumLinSolvSetups(ida_mem,nlinsetupsS)
    __IDAGetSensNumLinSolvSetups(convert(IDAMemPtr,ida_mem),pointer(nlinsetupsS))
end

function __IDAGetSensErrWeights(ida_mem::IDAMemPtr,eSweight::N_Vector_S)
    ccall((:IDAGetSensErrWeights,libsundials_idas),Cint,(IDAMemPtr,N_Vector_S),ida_mem,eSweight)
end

function IDAGetSensErrWeights(ida_mem,eSweight)
    __IDAGetSensErrWeights(convert(IDAMemPtr,ida_mem),eSweight)
end

function __IDAGetSensStats(ida_mem::IDAMemPtr,nresSevals::Ptr{Clong},nresevalsS::Ptr{Clong},nSetfails::Ptr{Clong},nlinsetupsS::Ptr{Clong})
    ccall((:IDAGetSensStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),ida_mem,nresSevals,nresevalsS,nSetfails,nlinsetupsS)
end

function IDAGetSensStats(ida_mem,nresSevals,nresevalsS,nSetfails,nlinsetupsS)
    __IDAGetSensStats(convert(IDAMemPtr,ida_mem),pointer(nresSevals),pointer(nresevalsS),pointer(nSetfails),pointer(nlinsetupsS))
end

function __IDAGetSensNumNonlinSolvIters(ida_mem::IDAMemPtr,nSniters::Ptr{Clong})
    ccall((:IDAGetSensNumNonlinSolvIters,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nSniters)
end

function IDAGetSensNumNonlinSolvIters(ida_mem,nSniters)
    __IDAGetSensNumNonlinSolvIters(convert(IDAMemPtr,ida_mem),pointer(nSniters))
end

function __IDAGetSensNumNonlinSolvConvFails(ida_mem::IDAMemPtr,nSncfails::Ptr{Clong})
    ccall((:IDAGetSensNumNonlinSolvConvFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nSncfails)
end

function IDAGetSensNumNonlinSolvConvFails(ida_mem,nSncfails)
    __IDAGetSensNumNonlinSolvConvFails(convert(IDAMemPtr,ida_mem),pointer(nSncfails))
end

function __IDAGetSensNonlinSolvStats(ida_mem::IDAMemPtr,nSniters::Ptr{Clong},nSncfails::Ptr{Clong})
    ccall((:IDAGetSensNonlinSolvStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nSniters,nSncfails)
end

function IDAGetSensNonlinSolvStats(ida_mem,nSniters,nSncfails)
    __IDAGetSensNonlinSolvStats(convert(IDAMemPtr,ida_mem),pointer(nSniters),pointer(nSncfails))
end

function __IDAGetQuadSensNumRhsEvals(ida_mem::IDAMemPtr,nrhsQSevals::Ptr{Clong})
    ccall((:IDAGetQuadSensNumRhsEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrhsQSevals)
end

function IDAGetQuadSensNumRhsEvals(ida_mem,nrhsQSevals)
    __IDAGetQuadSensNumRhsEvals(convert(IDAMemPtr,ida_mem),pointer(nrhsQSevals))
end

function __IDAGetQuadSensNumErrTestFails(ida_mem::IDAMemPtr,nQSetfails::Ptr{Clong})
    ccall((:IDAGetQuadSensNumErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nQSetfails)
end

function IDAGetQuadSensNumErrTestFails(ida_mem,nQSetfails)
    __IDAGetQuadSensNumErrTestFails(convert(IDAMemPtr,ida_mem),pointer(nQSetfails))
end

function __IDAGetQuadSensErrWeights(ida_mem::IDAMemPtr,eQSweight::Ptr{N_Vector})
    ccall((:IDAGetQuadSensErrWeights,libsundials_idas),Cint,(IDAMemPtr,Ptr{N_Vector}),ida_mem,eQSweight)
end

function IDAGetQuadSensErrWeights(ida_mem,eQSweight)
    __IDAGetQuadSensErrWeights(convert(IDAMemPtr,ida_mem),pointer(eQSweight))
end

function __IDAGetQuadSensStats(ida_mem::IDAMemPtr,nrhsQSevals::Ptr{Clong},nQSetfails::Ptr{Clong})
    ccall((:IDAGetQuadSensStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQSevals,nQSetfails)
end

function IDAGetQuadSensStats(ida_mem,nrhsQSevals,nQSetfails)
    __IDAGetQuadSensStats(convert(IDAMemPtr,ida_mem),pointer(nrhsQSevals),pointer(nQSetfails))
end

function __IDAGetQuadSens(ida_mem::IDAMemPtr,tret::Ptr{realtype},yyQSout::Ptr{N_Vector})
    ccall((:IDAGetQuadSens,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yyQSout)
end

function IDAGetQuadSens(ida_mem,tret,yyQSout)
    __IDAGetQuadSens(convert(IDAMemPtr,ida_mem),pointer(tret),pointer(yyQSout))
end

function __IDAGetQuadSens1(ida_mem::IDAMemPtr,tret::Ptr{realtype},is::Cint,yyQSret::N_Vector)
    ccall((:IDAGetQuadSens1,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yyQSret)
end

function IDAGetQuadSens1(ida_mem,tret,is,yyQSret)
    __yyQSret = convert(NVector,yyQSret)
    __IDAGetQuadSens1(convert(IDAMemPtr,ida_mem),pointer(tret),convert(Cint,is),convert(N_Vector,__yyQSret))
end

function __IDAGetQuadSensDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dkyQS::Ptr{N_Vector})
    ccall((:IDAGetQuadSensDky,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyQS)
end

function IDAGetQuadSensDky(ida_mem,t,k,dkyQS)
    __IDAGetQuadSensDky(convert(IDAMemPtr,ida_mem),t,convert(Cint,k),pointer(dkyQS))
end

function __IDAGetQuadSensDky1(ida_mem::IDAMemPtr,t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:IDAGetQuadSensDky1,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyQS)
end

function IDAGetQuadSensDky1(ida_mem,t,k,is,dkyQS)
    __dkyQS = convert(NVector,dkyQS)
    __IDAGetQuadSensDky1(convert(IDAMemPtr,ida_mem),t,convert(Cint,k),convert(Cint,is),convert(N_Vector,__dkyQS))
end

function __IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function IDAGetReturnFlagName(flag)
    __IDAGetReturnFlagName(convert(Clong,flag))
end

function IDAFree(ida_mem::Ref{IDAMemPtr})
    ccall((:IDAFree,libsundials_idas),Void,(Ref{IDAMemPtr},),ida_mem)
end

function __IDAQuadFree(ida_mem::IDAMemPtr)
    ccall((:IDAQuadFree,libsundials_idas),Void,(IDAMemPtr,),ida_mem)
end

function IDAQuadFree(ida_mem)
    __IDAQuadFree(convert(IDAMemPtr,ida_mem))
end

function __IDASensFree(ida_mem::IDAMemPtr)
    ccall((:IDASensFree,libsundials_idas),Void,(IDAMemPtr,),ida_mem)
end

function IDASensFree(ida_mem)
    __IDASensFree(convert(IDAMemPtr,ida_mem))
end

function __IDAQuadSensFree(ida_mem::IDAMemPtr)
    ccall((:IDAQuadSensFree,libsundials_idas),Void,(IDAMemPtr,),ida_mem)
end

function IDAQuadSensFree(ida_mem)
    __IDAQuadSensFree(convert(IDAMemPtr,ida_mem))
end

function __IDAAdjInit(ida_mem::IDAMemPtr,steps::Clong,interp::Cint)
    ccall((:IDAAdjInit,libsundials_idas),Cint,(IDAMemPtr,Clong,Cint),ida_mem,steps,interp)
end

function IDAAdjInit(ida_mem,steps,interp)
    __IDAAdjInit(convert(IDAMemPtr,ida_mem),convert(Clong,steps),convert(Cint,interp))
end

function __IDAAdjReInit(ida_mem::IDAMemPtr)
    ccall((:IDAAdjReInit,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

function IDAAdjReInit(ida_mem)
    __IDAAdjReInit(convert(IDAMemPtr,ida_mem))
end

function __IDAAdjFree(ida_mem::IDAMemPtr)
    ccall((:IDAAdjFree,libsundials_idas),Void,(IDAMemPtr,),ida_mem)
end

function IDAAdjFree(ida_mem)
    __IDAAdjFree(convert(IDAMemPtr,ida_mem))
end

function __IDACreateB(ida_mem::IDAMemPtr,which::Ptr{Cint})
    ccall((:IDACreateB,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,which)
end

function IDACreateB(ida_mem,which)
    __IDACreateB(convert(IDAMemPtr,ida_mem),pointer(which))
end

function __IDAInitB(ida_mem::IDAMemPtr,which::Cint,resB::IDAResFnB,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDAResFnB,realtype,N_Vector,N_Vector),ida_mem,which,resB,tB0,yyB0,ypB0)
end

function IDAInitB(ida_mem,which,resB,tB0,yyB0,ypB0)
    __yyB0 = convert(NVector,yyB0)
    __ypB0 = convert(NVector,ypB0)
    __IDAInitB(convert(IDAMemPtr,ida_mem),convert(Cint,which),resB,tB0,convert(N_Vector,__yyB0),convert(N_Vector,__ypB0))
end

function __IDAInitBS(ida_mem::IDAMemPtr,which::Cint,resS::IDAResFnBS,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitBS,libsundials_idas),Cint,(IDAMemPtr,Cint,IDAResFnBS,realtype,N_Vector,N_Vector),ida_mem,which,resS,tB0,yyB0,ypB0)
end

function IDAInitBS(ida_mem,which,resS,tB0,yyB0,ypB0)
    __yyB0 = convert(NVector,yyB0)
    __ypB0 = convert(NVector,ypB0)
    __IDAInitBS(convert(IDAMemPtr,ida_mem),convert(Cint,which),resS,tB0,convert(N_Vector,__yyB0),convert(N_Vector,__ypB0))
end

function __IDAReInitB(ida_mem::IDAMemPtr,which::Cint,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAReInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector,N_Vector),ida_mem,which,tB0,yyB0,ypB0)
end

function IDAReInitB(ida_mem,which,tB0,yyB0,ypB0)
    __yyB0 = convert(NVector,yyB0)
    __ypB0 = convert(NVector,ypB0)
    __IDAReInitB(convert(IDAMemPtr,ida_mem),convert(Cint,which),tB0,convert(N_Vector,__yyB0),convert(N_Vector,__ypB0))
end

function __IDASStolerancesB(ida_mem::IDAMemPtr,which::Cint,relTolB::realtype,absTolB::realtype)
    ccall((:IDASStolerancesB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,realtype),ida_mem,which,relTolB,absTolB)
end

function IDASStolerancesB(ida_mem,which,relTolB,absTolB)
    __IDASStolerancesB(convert(IDAMemPtr,ida_mem),convert(Cint,which),relTolB,absTolB)
end

function __IDASVtolerancesB(ida_mem::IDAMemPtr,which::Cint,relTolB::realtype,absTolB::N_Vector)
    ccall((:IDASVtolerancesB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector),ida_mem,which,relTolB,absTolB)
end

function IDASVtolerancesB(ida_mem,which,relTolB,absTolB)
    __absTolB = convert(NVector,absTolB)
    __IDASVtolerancesB(convert(IDAMemPtr,ida_mem),convert(Cint,which),relTolB,convert(N_Vector,__absTolB))
end

function __IDAQuadInitB(ida_mem::IDAMemPtr,which::Cint,rhsQB::IDAQuadRhsFnB,yQB0::N_Vector)
    ccall((:IDAQuadInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDAQuadRhsFnB,N_Vector),ida_mem,which,rhsQB,yQB0)
end

function IDAQuadInitB(ida_mem,which,rhsQB,yQB0)
    __yQB0 = convert(NVector,yQB0)
    __IDAQuadInitB(convert(IDAMemPtr,ida_mem),convert(Cint,which),rhsQB,convert(N_Vector,__yQB0))
end

function __IDAQuadInitBS(ida_mem::IDAMemPtr,which::Cint,rhsQS::IDAQuadRhsFnBS,yQB0::N_Vector)
    ccall((:IDAQuadInitBS,libsundials_idas),Cint,(IDAMemPtr,Cint,IDAQuadRhsFnBS,N_Vector),ida_mem,which,rhsQS,yQB0)
end

function IDAQuadInitBS(ida_mem,which,rhsQS,yQB0)
    __yQB0 = convert(NVector,yQB0)
    __IDAQuadInitBS(convert(IDAMemPtr,ida_mem),convert(Cint,which),rhsQS,convert(N_Vector,__yQB0))
end

function __IDAQuadReInitB(ida_mem::IDAMemPtr,which::Cint,yQB0::N_Vector)
    ccall((:IDAQuadReInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,N_Vector),ida_mem,which,yQB0)
end

function IDAQuadReInitB(ida_mem,which,yQB0)
    __yQB0 = convert(NVector,yQB0)
    __IDAQuadReInitB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(N_Vector,__yQB0))
end

function __IDAQuadSStolerancesB(ida_mem::IDAMemPtr,which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:IDAQuadSStolerancesB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,realtype),ida_mem,which,reltolQB,abstolQB)
end

function IDAQuadSStolerancesB(ida_mem,which,reltolQB,abstolQB)
    __IDAQuadSStolerancesB(convert(IDAMemPtr,ida_mem),convert(Cint,which),reltolQB,abstolQB)
end

function __IDAQuadSVtolerancesB(ida_mem::IDAMemPtr,which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:IDAQuadSVtolerancesB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector),ida_mem,which,reltolQB,abstolQB)
end

function IDAQuadSVtolerancesB(ida_mem,which,reltolQB,abstolQB)
    __abstolQB = convert(NVector,abstolQB)
    __IDAQuadSVtolerancesB(convert(IDAMemPtr,ida_mem),convert(Cint,which),reltolQB,convert(N_Vector,__abstolQB))
end

function __IDACalcICB(ida_mem::IDAMemPtr,which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDACalcICB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector,N_Vector),ida_mem,which,tout1,yy0,yp0)
end

function IDACalcICB(ida_mem,which,tout1,yy0,yp0)
    __yy0 = convert(NVector,yy0)
    __yp0 = convert(NVector,yp0)
    __IDACalcICB(convert(IDAMemPtr,ida_mem),convert(Cint,which),tout1,convert(N_Vector,__yy0),convert(N_Vector,__yp0))
end

function __IDACalcICBS(ida_mem::IDAMemPtr,which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector,yyS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDACalcICBS,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,which,tout1,yy0,yp0,yyS0,ypS0)
end

function IDACalcICBS(ida_mem,which,tout1,yy0,yp0,yyS0,ypS0)
    __yy0 = convert(NVector,yy0)
    __yp0 = convert(NVector,yp0)
    __IDACalcICBS(convert(IDAMemPtr,ida_mem),convert(Cint,which),tout1,convert(N_Vector,__yy0),convert(N_Vector,__yp0),pointer(yyS0),pointer(ypS0))
end

function __IDASolveF(ida_mem::IDAMemPtr,tout::realtype,tret::Ptr{realtype},yret::N_Vector,ypret::N_Vector,itask::Cint,ncheckPtr::Ptr{Cint})
    ccall((:IDASolveF,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{realtype},N_Vector,N_Vector,Cint,Ptr{Cint}),ida_mem,tout,tret,yret,ypret,itask,ncheckPtr)
end

function IDASolveF(ida_mem,tout,tret,yret,ypret,itask,ncheckPtr)
    __yret = convert(NVector,yret)
    __ypret = convert(NVector,ypret)
    __IDASolveF(convert(IDAMemPtr,ida_mem),tout,pointer(tret),convert(N_Vector,__yret),convert(N_Vector,__ypret),convert(Cint,itask),pointer(ncheckPtr))
end

function __IDASolveB(ida_mem::IDAMemPtr,tBout::realtype,itaskB::Cint)
    ccall((:IDASolveB,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint),ida_mem,tBout,itaskB)
end

function IDASolveB(ida_mem,tBout,itaskB)
    __IDASolveB(convert(IDAMemPtr,ida_mem),tBout,convert(Cint,itaskB))
end

function __IDAAdjSetNoSensi(ida_mem::IDAMemPtr)
    ccall((:IDAAdjSetNoSensi,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

function IDAAdjSetNoSensi(ida_mem)
    __IDAAdjSetNoSensi(convert(IDAMemPtr,ida_mem))
end

function __IDASetUserDataB(ida_mem::IDAMemPtr,which::Cint,user_dataB::Any)
    ccall((:IDASetUserDataB,libsundials_idas),Cint,(IDAMemPtr,Cint,Any),ida_mem,which,user_dataB)
end

function IDASetUserDataB(ida_mem,which,user_dataB)
    __IDASetUserDataB(convert(IDAMemPtr,ida_mem),convert(Cint,which),user_dataB)
end

function __IDASetMaxOrdB(ida_mem::IDAMemPtr,which::Cint,maxordB::Cint)
    ccall((:IDASetMaxOrdB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxordB)
end

function IDASetMaxOrdB(ida_mem,which,maxordB)
    __IDASetMaxOrdB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(Cint,maxordB))
end

function __IDASetMaxNumStepsB(ida_mem::IDAMemPtr,which::Cint,mxstepsB::Clong)
    ccall((:IDASetMaxNumStepsB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong),ida_mem,which,mxstepsB)
end

function IDASetMaxNumStepsB(ida_mem,which,mxstepsB)
    __IDASetMaxNumStepsB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(Clong,mxstepsB))
end

function __IDASetInitStepB(ida_mem::IDAMemPtr,which::Cint,hinB::realtype)
    ccall((:IDASetInitStepB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,hinB)
end

function IDASetInitStepB(ida_mem,which,hinB)
    __IDASetInitStepB(convert(IDAMemPtr,ida_mem),convert(Cint,which),hinB)
end

function __IDASetMaxStepB(ida_mem::IDAMemPtr,which::Cint,hmaxB::realtype)
    ccall((:IDASetMaxStepB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,hmaxB)
end

function IDASetMaxStepB(ida_mem,which,hmaxB)
    __IDASetMaxStepB(convert(IDAMemPtr,ida_mem),convert(Cint,which),hmaxB)
end

function __IDASetSuppressAlgB(ida_mem::IDAMemPtr,which::Cint,suppressalgB::Cint)
    ccall((:IDASetSuppressAlgB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,suppressalgB)
end

function IDASetSuppressAlgB(ida_mem,which,suppressalgB)
    __IDASetSuppressAlgB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(Cint,suppressalgB))
end

function __IDASetIdB(ida_mem::IDAMemPtr,which::Cint,idB::N_Vector)
    ccall((:IDASetIdB,libsundials_idas),Cint,(IDAMemPtr,Cint,N_Vector),ida_mem,which,idB)
end

function IDASetIdB(ida_mem,which,idB)
    __idB = convert(NVector,idB)
    __IDASetIdB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(N_Vector,__idB))
end

function __IDASetConstraintsB(ida_mem::IDAMemPtr,which::Cint,constraintsB::N_Vector)
    ccall((:IDASetConstraintsB,libsundials_idas),Cint,(IDAMemPtr,Cint,N_Vector),ida_mem,which,constraintsB)
end

function IDASetConstraintsB(ida_mem,which,constraintsB)
    __constraintsB = convert(NVector,constraintsB)
    __IDASetConstraintsB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(N_Vector,__constraintsB))
end

function __IDASetQuadErrConB(ida_mem::IDAMemPtr,which::Cint,errconQB::Cint)
    ccall((:IDASetQuadErrConB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,errconQB)
end

function IDASetQuadErrConB(ida_mem,which,errconQB)
    __IDASetQuadErrConB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(Cint,errconQB))
end

function __IDAGetB(ida_mem::IDAMemPtr,which::Cint,tret::Ptr{realtype},yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetB,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,tret,yy,yp)
end

function IDAGetB(ida_mem,which,tret,yy,yp)
    __yy = convert(NVector,yy)
    __yp = convert(NVector,yp)
    __IDAGetB(convert(IDAMemPtr,ida_mem),convert(Cint,which),pointer(tret),convert(N_Vector,__yy),convert(N_Vector,__yp))
end

function __IDAGetQuadB(ida_mem::IDAMemPtr,which::Cint,tret::Ptr{realtype},qB::N_Vector)
    ccall((:IDAGetQuadB,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{realtype},N_Vector),ida_mem,which,tret,qB)
end

function IDAGetQuadB(ida_mem,which,tret,qB)
    __qB = convert(NVector,qB)
    __IDAGetQuadB(convert(IDAMemPtr,ida_mem),convert(Cint,which),pointer(tret),convert(N_Vector,__qB))
end

function __IDAGetAdjIDABmem(ida_mem::IDAMemPtr,which::Cint)
    ccall((:IDAGetAdjIDABmem,libsundials_idas),Ptr{Void},(IDAMemPtr,Cint),ida_mem,which)
end

function IDAGetAdjIDABmem(ida_mem,which)
    __IDAGetAdjIDABmem(convert(IDAMemPtr,ida_mem),convert(Cint,which))
end

function __IDAGetConsistentICB(ida_mem::IDAMemPtr,which::Cint,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAGetConsistentICB,libsundials_idas),Cint,(IDAMemPtr,Cint,N_Vector,N_Vector),ida_mem,which,yyB0,ypB0)
end

function IDAGetConsistentICB(ida_mem,which,yyB0,ypB0)
    __yyB0 = convert(NVector,yyB0)
    __ypB0 = convert(NVector,ypB0)
    __IDAGetConsistentICB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(N_Vector,__yyB0),convert(N_Vector,__ypB0))
end

function __IDAGetAdjY(ida_mem::IDAMemPtr,t::realtype,yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetAdjY,libsundials_idas),Cint,(IDAMemPtr,realtype,N_Vector,N_Vector),ida_mem,t,yy,yp)
end

function IDAGetAdjY(ida_mem,t,yy,yp)
    __yy = convert(NVector,yy)
    __yp = convert(NVector,yp)
    __IDAGetAdjY(convert(IDAMemPtr,ida_mem),t,convert(N_Vector,__yy),convert(N_Vector,__yp))
end

function __IDAGetAdjCheckPointsInfo(ida_mem::IDAMemPtr,ckpnt::Ptr{IDAadjCheckPointRec})
    ccall((:IDAGetAdjCheckPointsInfo,libsundials_idas),Cint,(IDAMemPtr,Ptr{IDAadjCheckPointRec}),ida_mem,ckpnt)
end

function IDAGetAdjCheckPointsInfo(ida_mem,ckpnt)
    __IDAGetAdjCheckPointsInfo(convert(IDAMemPtr,ida_mem),pointer(ckpnt))
end

function __IDAGetAdjDataPointHermite(ida_mem::IDAMemPtr,which::Cint,t::Ptr{realtype},yy::N_Vector,yd::N_Vector)
    ccall((:IDAGetAdjDataPointHermite,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,t,yy,yd)
end

function IDAGetAdjDataPointHermite(ida_mem,which,t,yy,yd)
    __yy = convert(NVector,yy)
    __yd = convert(NVector,yd)
    __IDAGetAdjDataPointHermite(convert(IDAMemPtr,ida_mem),convert(Cint,which),pointer(t),convert(N_Vector,__yy),convert(N_Vector,__yd))
end

function __IDAGetAdjDataPointPolynomial(ida_mem::IDAMemPtr,which::Cint,t::Ptr{realtype},order::Ptr{Cint},y::N_Vector)
    ccall((:IDAGetAdjDataPointPolynomial,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{realtype},Ptr{Cint},N_Vector),ida_mem,which,t,order,y)
end

function IDAGetAdjDataPointPolynomial(ida_mem,which,t,order,y)
    __y = convert(NVector,y)
    __IDAGetAdjDataPointPolynomial(convert(IDAMemPtr,ida_mem),convert(Cint,which),pointer(t),pointer(order),convert(N_Vector,__y))
end

function __IDAGetAdjCurrentCheckPoint(ida_mem::IDAMemPtr,addr::Ptr{Ptr{Void}})
    ccall((:IDAGetAdjCurrentCheckPoint,libsundials_idas),Cint,(IDAMemPtr,Ptr{Ptr{Void}}),ida_mem,addr)
end

function IDAGetAdjCurrentCheckPoint(ida_mem,addr)
    __IDAGetAdjCurrentCheckPoint(convert(IDAMemPtr,ida_mem),pointer(addr))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/idas/idas_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDADlsSetDenseJacFn(ida_mem::IDAMemPtr,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,libsundials_idas),Cint,(IDAMemPtr,IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetDenseJacFn(ida_mem,jac)
    __IDADlsSetDenseJacFn(convert(IDAMemPtr,ida_mem),jac)
end

function __IDADlsSetBandJacFn(ida_mem::IDAMemPtr,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,libsundials_idas),Cint,(IDAMemPtr,IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem,jac)
    __IDADlsSetBandJacFn(convert(IDAMemPtr,ida_mem),jac)
end

function __IDADlsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    __IDADlsGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __IDADlsGetNumJacEvals(ida_mem::IDAMemPtr,njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumJacEvals(ida_mem,njevals)
    __IDADlsGetNumJacEvals(convert(IDAMemPtr,ida_mem),pointer(njevals))
end

function __IDADlsGetNumResEvals(ida_mem::IDAMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetNumResEvals(ida_mem,nfevalsLS)
    __IDADlsGetNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nfevalsLS))
end

function __IDADlsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetLastFlag(ida_mem,flag)
    __IDADlsGetLastFlag(convert(IDAMemPtr,ida_mem),pointer(flag))
end

function __IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function IDADlsGetReturnFlagName(flag)
    __IDADlsGetReturnFlagName(convert(Clong,flag))
end

function __IDADlsSetDenseJacFnB(ida_mem::IDAMemPtr,which::Cint,jacB::IDADlsDenseJacFnB)
    ccall((:IDADlsSetDenseJacFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDADlsDenseJacFnB),ida_mem,which,jacB)
end

function IDADlsSetDenseJacFnB(ida_mem,which,jacB)
    __IDADlsSetDenseJacFnB(convert(IDAMemPtr,ida_mem),convert(Cint,which),jacB)
end

function __IDADlsSetDenseJacFnBS(ida_mem::IDAMemPtr,which::Cint,jacBS::IDADlsDenseJacFnBS)
    ccall((:IDADlsSetDenseJacFnBS,libsundials_idas),Cint,(IDAMemPtr,Cint,IDADlsDenseJacFnBS),ida_mem,which,jacBS)
end

function IDADlsSetDenseJacFnBS(ida_mem,which,jacBS)
    __IDADlsSetDenseJacFnBS(convert(IDAMemPtr,ida_mem),convert(Cint,which),jacBS)
end

function __IDADlsSetBandJacFnB(idaa_mem::IDAMemPtr,which::Cint,jacB::IDADlsBandJacFnB)
    ccall((:IDADlsSetBandJacFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDADlsBandJacFnB),idaa_mem,which,jacB)
end

function IDADlsSetBandJacFnB(idaa_mem,which,jacB)
    __IDADlsSetBandJacFnB(convert(IDAMemPtr,idaa_mem),convert(Cint,which),jacB)
end

function __IDADlsSetBandJacFnBS(idaa_mem::IDAMemPtr,which::Cint,jacBS::IDADlsBandJacFnBS)
    ccall((:IDADlsSetBandJacFnBS,libsundials_idas),Cint,(IDAMemPtr,Cint,IDADlsBandJacFnBS),idaa_mem,which,jacBS)
end

function IDADlsSetBandJacFnBS(idaa_mem,which,jacBS)
    __IDADlsSetBandJacFnBS(convert(IDAMemPtr,idaa_mem),convert(Cint,which),jacBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/idas/idas_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASpilsSetPreconditioner(ida_mem::IDAMemPtr,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_idas),Cint,(IDAMemPtr,IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetPreconditioner(ida_mem,pset,psolve)
    __IDASpilsSetPreconditioner(convert(IDAMemPtr,ida_mem),pset,psolve)
end

function __IDASpilsSetJacTimesVecFn(ida_mem::IDAMemPtr,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_idas),Cint,(IDAMemPtr,IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetJacTimesVecFn(ida_mem,jtv)
    __IDASpilsSetJacTimesVecFn(convert(IDAMemPtr,ida_mem),jtv)
end

function __IDASpilsSetGSType(ida_mem::IDAMemPtr,gstype::Cint)
    ccall((:IDASpilsSetGSType,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,gstype)
end

function IDASpilsSetGSType(ida_mem,gstype)
    __IDASpilsSetGSType(convert(IDAMemPtr,ida_mem),convert(Cint,gstype))
end

function __IDASpilsSetMaxRestarts(ida_mem::IDAMemPtr,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxRestarts(ida_mem,maxrs)
    __IDASpilsSetMaxRestarts(convert(IDAMemPtr,ida_mem),convert(Cint,maxrs))
end

function __IDASpilsSetMaxl(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpilsSetMaxl,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpilsSetMaxl(ida_mem,maxl)
    __IDASpilsSetMaxl(convert(IDAMemPtr,ida_mem),convert(Cint,maxl))
end

function __IDASpilsSetEpsLin(ida_mem::IDAMemPtr,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,eplifac)
end

function IDASpilsSetEpsLin(ida_mem,eplifac)
    __IDASpilsSetEpsLin(convert(IDAMemPtr,ida_mem),eplifac)
end

function __IDASpilsSetIncrementFactor(ida_mem::IDAMemPtr,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,dqincfac)
end

function IDASpilsSetIncrementFactor(ida_mem,dqincfac)
    __IDASpilsSetIncrementFactor(convert(IDAMemPtr,ida_mem),dqincfac)
end

function __IDASpilsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    __IDASpilsGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __IDASpilsGetNumPrecEvals(ida_mem::IDAMemPtr,npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecEvals(ida_mem,npevals)
    __IDASpilsGetNumPrecEvals(convert(IDAMemPtr,ida_mem),pointer(npevals))
end

function __IDASpilsGetNumPrecSolves(ida_mem::IDAMemPtr,npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumPrecSolves(ida_mem,npsolves)
    __IDASpilsGetNumPrecSolves(convert(IDAMemPtr,ida_mem),pointer(npsolves))
end

function __IDASpilsGetNumLinIters(ida_mem::IDAMemPtr,nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumLinIters(ida_mem,nliters)
    __IDASpilsGetNumLinIters(convert(IDAMemPtr,ida_mem),pointer(nliters))
end

function __IDASpilsGetNumConvFails(ida_mem::IDAMemPtr,nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumConvFails(ida_mem,nlcfails)
    __IDASpilsGetNumConvFails(convert(IDAMemPtr,ida_mem),pointer(nlcfails))
end

function __IDASpilsGetNumJtimesEvals(ida_mem::IDAMemPtr,njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumJtimesEvals(ida_mem,njvevals)
    __IDASpilsGetNumJtimesEvals(convert(IDAMemPtr,ida_mem),pointer(njvevals))
end

function __IDASpilsGetNumResEvals(ida_mem::IDAMemPtr,nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetNumResEvals(ida_mem,nrevalsLS)
    __IDASpilsGetNumResEvals(convert(IDAMemPtr,ida_mem),pointer(nrevalsLS))
end

function __IDASpilsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetLastFlag(ida_mem,flag)
    __IDASpilsGetLastFlag(convert(IDAMemPtr,ida_mem),pointer(flag))
end

function __IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function IDASpilsGetReturnFlagName(flag)
    __IDASpilsGetReturnFlagName(convert(Clong,flag))
end

function __IDASpilsSetGSTypeB(ida_mem::IDAMemPtr,which::Cint,gstypeB::Cint)
    ccall((:IDASpilsSetGSTypeB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,gstypeB)
end

function IDASpilsSetGSTypeB(ida_mem,which,gstypeB)
    __IDASpilsSetGSTypeB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(Cint,gstypeB))
end

function __IDASpilsSetMaxRestartsB(ida_mem::IDAMemPtr,which::Cint,maxrsB::Cint)
    ccall((:IDASpilsSetMaxRestartsB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxrsB)
end

function IDASpilsSetMaxRestartsB(ida_mem,which,maxrsB)
    __IDASpilsSetMaxRestartsB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(Cint,maxrsB))
end

function __IDASpilsSetEpsLinB(ida_mem::IDAMemPtr,which::Cint,eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,eplifacB)
end

function IDASpilsSetEpsLinB(ida_mem,which,eplifacB)
    __IDASpilsSetEpsLinB(convert(IDAMemPtr,ida_mem),convert(Cint,which),eplifacB)
end

function __IDASpilsSetMaxlB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASpilsSetMaxlB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end

function IDASpilsSetMaxlB(ida_mem,which,maxlB)
    __IDASpilsSetMaxlB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(Cint,maxlB))
end

function __IDASpilsSetIncrementFactorB(ida_mem::IDAMemPtr,which::Cint,dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,dqincfacB)
end

function IDASpilsSetIncrementFactorB(ida_mem,which,dqincfacB)
    __IDASpilsSetIncrementFactorB(convert(IDAMemPtr,ida_mem),convert(Cint,which),dqincfacB)
end

function __IDASpilsSetPreconditionerB(ida_mem::IDAMemPtr,which::Cint,psetB::IDASpilsPrecSetupFnB,psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsPrecSetupFnB,IDASpilsPrecSolveFnB),ida_mem,which,psetB,psolveB)
end

function IDASpilsSetPreconditionerB(ida_mem,which,psetB,psolveB)
    __IDASpilsSetPreconditionerB(convert(IDAMemPtr,ida_mem),convert(Cint,which),psetB,psolveB)
end

function __IDASpilsSetPreconditionerBS(ida_mem::IDAMemPtr,which::Cint,psetBS::IDASpilsPrecSetupFnBS,psolveBS::IDASpilsPrecSolveFnBS)
    ccall((:IDASpilsSetPreconditionerBS,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsPrecSetupFnBS,IDASpilsPrecSolveFnBS),ida_mem,which,psetBS,psolveBS)
end

function IDASpilsSetPreconditionerBS(ida_mem,which,psetBS,psolveBS)
    __IDASpilsSetPreconditionerBS(convert(IDAMemPtr,ida_mem),convert(Cint,which),psetBS,psolveBS)
end

function __IDASpilsSetJacTimesVecFnB(ida_mem::IDAMemPtr,which::Cint,jtvB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesVecFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsJacTimesVecFnB),ida_mem,which,jtvB)
end

function IDASpilsSetJacTimesVecFnB(ida_mem,which,jtvB)
    __IDASpilsSetJacTimesVecFnB(convert(IDAMemPtr,ida_mem),convert(Cint,which),jtvB)
end

function __IDASpilsSetJacTimesVecFnBS(ida_mem::IDAMemPtr,which::Cint,jtvBS::IDASpilsJacTimesVecFnBS)
    ccall((:IDASpilsSetJacTimesVecFnBS,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsJacTimesVecFnBS),ida_mem,which,jtvBS)
end

function IDASpilsSetJacTimesVecFnBS(ida_mem,which,jtvBS)
    __IDASpilsSetJacTimesVecFnBS(convert(IDAMemPtr,ida_mem),convert(Cint,which),jtvBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/idas/idas_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDABand(ida_mem::IDAMemPtr,Neq::Clong,mupper::Clong,mlower::Clong)
    ccall((:IDABand,libsundials_idas),Cint,(IDAMemPtr,Clong,Clong,Clong),ida_mem,Neq,mupper,mlower)
end

function IDABand(ida_mem,Neq,mupper,mlower)
    __IDABand(convert(IDAMemPtr,ida_mem),convert(Clong,Neq),convert(Clong,mupper),convert(Clong,mlower))
end

function __IDABandB(idaadj_mem::IDAMemPtr,which::Cint,NeqB::Clong,mupperB::Clong,mlowerB::Clong)
    ccall((:IDABandB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong,Clong,Clong),idaadj_mem,which,NeqB,mupperB,mlowerB)
end

function IDABandB(idaadj_mem,which,NeqB,mupperB,mlowerB)
    __IDABandB(convert(IDAMemPtr,idaadj_mem),convert(Cint,which),convert(Clong,NeqB),convert(Clong,mupperB),convert(Clong,mlowerB))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/idas/idas_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDABBDPrecInit(ida_mem::IDAMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_yy::realtype,Gres::IDABBDLocalFn,Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit,libsundials_idas),Cint,(IDAMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFn,IDABBDCommFn),ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)
end

function IDABBDPrecInit(ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)
    __IDABBDPrecInit(convert(IDAMemPtr,ida_mem),convert(Clong,Nlocal),convert(Clong,mudq),convert(Clong,mldq),convert(Clong,mukeep),convert(Clong,mlkeep),dq_rel_yy,Gres,Gcomm)
end

function __IDABBDPrecReInit(ida_mem::IDAMemPtr,mudq::Clong,mldq::Clong,dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit,libsundials_idas),Cint,(IDAMemPtr,Clong,Clong,realtype),ida_mem,mudq,mldq,dq_rel_yy)
end

function IDABBDPrecReInit(ida_mem,mudq,mldq,dq_rel_yy)
    __IDABBDPrecReInit(convert(IDAMemPtr,ida_mem),convert(Clong,mudq),convert(Clong,mldq),dq_rel_yy)
end

function __IDABBDPrecGetWorkSpace(ida_mem::IDAMemPtr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwBBDP,leniwBBDP)
end

function IDABBDPrecGetWorkSpace(ida_mem,lenrwBBDP,leniwBBDP)
    __IDABBDPrecGetWorkSpace(convert(IDAMemPtr,ida_mem),pointer(lenrwBBDP),pointer(leniwBBDP))
end

function __IDABBDPrecGetNumGfnEvals(ida_mem::IDAMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetNumGfnEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,ngevalsBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem,ngevalsBBDP)
    __IDABBDPrecGetNumGfnEvals(convert(IDAMemPtr,ida_mem),pointer(ngevalsBBDP))
end

function __IDABBDPrecInitB(ida_mem::IDAMemPtr,which::Cint,NlocalB::Clong,mudqB::Clong,mldqB::Clong,mukeepB::Clong,mlkeepB::Clong,dq_rel_yyB::realtype,GresB::IDABBDLocalFnB,GcommB::IDABBDCommFnB)
    ccall((:IDABBDPrecInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFnB,IDABBDCommFnB),ida_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dq_rel_yyB,GresB,GcommB)
end

function IDABBDPrecInitB(ida_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dq_rel_yyB,GresB,GcommB)
    __IDABBDPrecInitB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(Clong,NlocalB),convert(Clong,mudqB),convert(Clong,mldqB),convert(Clong,mukeepB),convert(Clong,mlkeepB),dq_rel_yyB,GresB,GcommB)
end

function __IDABBDPrecReInitB(ida_mem::IDAMemPtr,which::Cint,mudqB::Clong,mldqB::Clong,dq_rel_yyB::realtype)
    ccall((:IDABBDPrecReInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong,Clong,realtype),ida_mem,which,mudqB,mldqB,dq_rel_yyB)
end

function IDABBDPrecReInitB(ida_mem,which,mudqB,mldqB,dq_rel_yyB)
    __IDABBDPrecReInitB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(Clong,mudqB),convert(Clong,mldqB),dq_rel_yyB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/idas/idas_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDADense(ida_mem::IDAMemPtr,Neq::Clong)
    ccall((:IDADense,libsundials_idas),Cint,(IDAMemPtr,Clong),ida_mem,Neq)
end

function IDADense(ida_mem,Neq)
    __IDADense(convert(IDAMemPtr,ida_mem),convert(Clong,Neq))
end

function __IDADenseB(ida_mem::IDAMemPtr,which::Cint,NeqB::Clong)
    ccall((:IDADenseB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong),ida_mem,which,NeqB)
end

function IDADenseB(ida_mem,which,NeqB)
    __IDADenseB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(Clong,NeqB))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/idas/idas_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/idas/idas_sparse.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASlsSetSparseJacFn(ida_mem::IDAMemPtr,jac::IDASlsSparseJacFn)
    ccall((:IDASlsSetSparseJacFn,libsundials_idas),Cint,(IDAMemPtr,IDASlsSparseJacFn),ida_mem,jac)
end

function IDASlsSetSparseJacFn(ida_mem,jac)
    __IDASlsSetSparseJacFn(convert(IDAMemPtr,ida_mem),jac)
end

function __IDASlsGetNumJacEvals(ida_mem::IDAMemPtr,njevals::Ptr{Clong})
    ccall((:IDASlsGetNumJacEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njevals)
end

function IDASlsGetNumJacEvals(ida_mem,njevals)
    __IDASlsGetNumJacEvals(convert(IDAMemPtr,ida_mem),pointer(njevals))
end

function __IDASlsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDASlsGetLastFlag,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDASlsGetLastFlag(ida_mem,flag)
    __IDASlsGetLastFlag(convert(IDAMemPtr,ida_mem),pointer(flag))
end

function __IDASlsGetReturnFlagName(flag::Clong)
    ccall((:IDASlsGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function IDASlsGetReturnFlagName(flag)
    __IDASlsGetReturnFlagName(convert(Clong,flag))
end

function __IDASlsSetSparseJacFnB(ida_mem::IDAMemPtr,which::Cint,jacB::IDASlsSparseJacFnB)
    ccall((:IDASlsSetSparseJacFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASlsSparseJacFnB),ida_mem,which,jacB)
end

function IDASlsSetSparseJacFnB(ida_mem,which,jacB)
    __IDASlsSetSparseJacFnB(convert(IDAMemPtr,ida_mem),convert(Cint,which),jacB)
end

function __IDASlsSetSparseJacFnBS(ida_mem::IDAMemPtr,which::Cint,jacBS::IDASlsSparseJacFnBS)
    ccall((:IDASlsSetSparseJacFnBS,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASlsSparseJacFnBS),ida_mem,which,jacBS)
end

function IDASlsSetSparseJacFnBS(ida_mem,which,jacBS)
    __IDASlsSetSparseJacFnBS(convert(IDAMemPtr,ida_mem),convert(Cint,which),jacBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/idas/idas_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASpbcg(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpbcg,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpbcg(ida_mem,maxl)
    __IDASpbcg(convert(IDAMemPtr,ida_mem),convert(Cint,maxl))
end

function __IDASpbcgB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASpbcgB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end

function IDASpbcgB(ida_mem,which,maxlB)
    __IDASpbcgB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(Cint,maxlB))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/idas/idas_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASpgmr(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpgmr,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpgmr(ida_mem,maxl)
    __IDASpgmr(convert(IDAMemPtr,ida_mem),convert(Cint,maxl))
end

function __IDASpgmrB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASpgmrB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end

function IDASpgmrB(ida_mem,which,maxlB)
    __IDASpgmrB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(Cint,maxlB))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/idas/idas_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __IDASptfqmr(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASptfqmr,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASptfqmr(ida_mem,maxl)
    __IDASptfqmr(convert(IDAMemPtr,ida_mem),convert(Cint,maxl))
end

function __IDASptfqmrB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASptfqmrB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end

function IDASptfqmrB(ida_mem,which,maxlB)
    __IDASptfqmrB(convert(IDAMemPtr,ida_mem),convert(Cint,which),convert(Cint,maxlB))
end
