# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,libsundials_cvodes),CVODEMemPtr,(Cint,Cint),lmm,iter)
end

function __CVodeInit(cvode_mem::CVODEMemPtr,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,libsundials_cvodes),Cint,(CVODEMemPtr,CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

CVodeInit(cvode_mem,f,t0,y0) = __CVodeInit(convert(CVODEMemPtr,cvode_mem),f,t0,convert(N_Vector,y0))

function __CVodeReInit(cvode_mem::CVODEMemPtr,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,t0,y0)
end

CVodeReInit(cvode_mem,t0,y0) = __CVodeReInit(convert(CVODEMemPtr,cvode_mem),t0,convert(N_Vector,y0))

function __CVodeSStolerances(cvode_mem::CVODEMemPtr,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,realtype),cvode_mem,reltol,abstol)
end

CVodeSStolerances(cvode_mem,reltol,abstol) = __CVodeSStolerances(convert(CVODEMemPtr,cvode_mem),reltol,abstol)

function __CVodeSVtolerances(cvode_mem::CVODEMemPtr,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,reltol,abstol)
end

CVodeSVtolerances(cvode_mem,reltol,abstol) = __CVodeSVtolerances(convert(CVODEMemPtr,cvode_mem),reltol,convert(N_Vector,abstol))

function __CVodeWFtolerances(cvode_mem::CVODEMemPtr,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,CVEwtFn),cvode_mem,efun)
end

CVodeWFtolerances(cvode_mem,efun) = __CVodeWFtolerances(convert(CVODEMemPtr,cvode_mem),efun)

function __CVodeQuadInit(cvode_mem::CVODEMemPtr,fQ::CVQuadRhsFn,yQ0::N_Vector)
    ccall((:CVodeQuadInit,libsundials_cvodes),Cint,(CVODEMemPtr,CVQuadRhsFn,N_Vector),cvode_mem,fQ,yQ0)
end

CVodeQuadInit(cvode_mem,fQ,yQ0) = __CVodeQuadInit(convert(CVODEMemPtr,cvode_mem),fQ,convert(N_Vector,yQ0))

function __CVodeQuadReInit(cvode_mem::CVODEMemPtr,yQ0::N_Vector)
    ccall((:CVodeQuadReInit,libsundials_cvodes),Cint,(CVODEMemPtr,N_Vector),cvode_mem,yQ0)
end

CVodeQuadReInit(cvode_mem,yQ0) = __CVodeQuadReInit(convert(CVODEMemPtr,cvode_mem),convert(N_Vector,yQ0))

function __CVodeQuadSStolerances(cvode_mem::CVODEMemPtr,reltolQ::realtype,abstolQ::realtype)
    ccall((:CVodeQuadSStolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,realtype),cvode_mem,reltolQ,abstolQ)
end

CVodeQuadSStolerances(cvode_mem,reltolQ,abstolQ) = __CVodeQuadSStolerances(convert(CVODEMemPtr,cvode_mem),reltolQ,abstolQ)

function __CVodeQuadSVtolerances(cvode_mem::CVODEMemPtr,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:CVodeQuadSVtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,reltolQ,abstolQ)
end

CVodeQuadSVtolerances(cvode_mem,reltolQ,abstolQ) = __CVodeQuadSVtolerances(convert(CVODEMemPtr,cvode_mem),reltolQ,convert(N_Vector,abstolQ))

function __CVodeSensInit(cvode_mem::CVODEMemPtr,Ns::Cint,ism::Cint,fS::CVSensRhsFn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,CVSensRhsFn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS,yS0)
end

CVodeSensInit(cvode_mem,Ns,ism,fS,yS0) = __CVodeSensInit(convert(CVODEMemPtr,cvode_mem),Ns,ism,fS,pointer(yS0))

function __CVodeSensInit1(cvode_mem::CVODEMemPtr,Ns::Cint,ism::Cint,fS1::CVSensRhs1Fn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit1,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,CVSensRhs1Fn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS1,yS0)
end

CVodeSensInit1(cvode_mem,Ns,ism,fS1,yS0) = __CVodeSensInit1(convert(CVODEMemPtr,cvode_mem),Ns,ism,fS1,pointer(yS0))

function __CVodeSensReInit(cvode_mem::CVODEMemPtr,ism::Cint,yS0::Ptr{N_Vector})
    ccall((:CVodeSensReInit,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{N_Vector}),cvode_mem,ism,yS0)
end

CVodeSensReInit(cvode_mem,ism,yS0) = __CVodeSensReInit(convert(CVODEMemPtr,cvode_mem),ism,pointer(yS0))

function __CVodeSensSStolerances(cvode_mem::CVODEMemPtr,reltolS::realtype,abstolS::Ptr{realtype})
    ccall((:CVodeSensSStolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Ptr{realtype}),cvode_mem,reltolS,abstolS)
end

CVodeSensSStolerances(cvode_mem,reltolS,abstolS) = __CVodeSensSStolerances(convert(CVODEMemPtr,cvode_mem),reltolS,pointer(abstolS))

function __CVodeSensSVtolerances(cvode_mem::CVODEMemPtr,reltolS::realtype,abstolS::Ptr{N_Vector})
    ccall((:CVodeSensSVtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Ptr{N_Vector}),cvode_mem,reltolS,abstolS)
end

CVodeSensSVtolerances(cvode_mem,reltolS,abstolS) = __CVodeSensSVtolerances(convert(CVODEMemPtr,cvode_mem),reltolS,pointer(abstolS))

function __CVodeSensEEtolerances(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSensEEtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

CVodeSensEEtolerances(cvode_mem) = __CVodeSensEEtolerances(convert(CVODEMemPtr,cvode_mem))

function __CVodeQuadSensInit(cvode_mem::CVODEMemPtr,fQS::CVQuadSensRhsFn,yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensInit,libsundials_cvodes),Cint,(CVODEMemPtr,CVQuadSensRhsFn,Ptr{N_Vector}),cvode_mem,fQS,yQS0)
end

CVodeQuadSensInit(cvode_mem,fQS,yQS0) = __CVodeQuadSensInit(convert(CVODEMemPtr,cvode_mem),fQS,pointer(yQS0))

function __CVodeQuadSensReInit(cvode_mem::CVODEMemPtr,yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensReInit,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{N_Vector}),cvode_mem,yQS0)
end

CVodeQuadSensReInit(cvode_mem,yQS0) = __CVodeQuadSensReInit(convert(CVODEMemPtr,cvode_mem),pointer(yQS0))

function __CVodeQuadSensSStolerances(cvode_mem::CVODEMemPtr,reltolQS::realtype,abstolQS::Ptr{realtype})
    ccall((:CVodeQuadSensSStolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Ptr{realtype}),cvode_mem,reltolQS,abstolQS)
end

CVodeQuadSensSStolerances(cvode_mem,reltolQS,abstolQS) = __CVodeQuadSensSStolerances(convert(CVODEMemPtr,cvode_mem),reltolQS,pointer(abstolQS))

function __CVodeQuadSensSVtolerances(cvode_mem::CVODEMemPtr,reltolQS::realtype,abstolQS::Ptr{N_Vector})
    ccall((:CVodeQuadSensSVtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Ptr{N_Vector}),cvode_mem,reltolQS,abstolQS)
end

CVodeQuadSensSVtolerances(cvode_mem,reltolQS,abstolQS) = __CVodeQuadSensSVtolerances(convert(CVODEMemPtr,cvode_mem),reltolQS,pointer(abstolQS))

function __CVodeQuadSensEEtolerances(cvode_mem::CVODEMemPtr)
    ccall((:CVodeQuadSensEEtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

CVodeQuadSensEEtolerances(cvode_mem) = __CVodeQuadSensEEtolerances(convert(CVODEMemPtr,cvode_mem))

function __CVodeRootInit(cvode_mem::CVODEMemPtr,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVRootFn),cvode_mem,nrtfn,g)
end

CVodeRootInit(cvode_mem,nrtfn,g) = __CVodeRootInit(convert(CVODEMemPtr,cvode_mem),nrtfn,g)

function __CVodeFree(cvode_mem::Ref{CVODEMemPtr})
    ccall((:CVodeFree,libsundials_cvodes),Void,(Ref{CVODEMemPtr},),cvode_mem)
end

CVodeFree(cvode_mem) = __CVodeFree(cvode_mem)

function __CVodeQuadFree(cvode_mem::CVODEMemPtr)
    ccall((:CVodeQuadFree,libsundials_cvodes),Void,(CVODEMemPtr,),cvode_mem)
end

CVodeQuadFree(cvode_mem) = __CVodeQuadFree(convert(CVODEMemPtr,cvode_mem))

function __CVodeSensFree(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSensFree,libsundials_cvodes),Void,(CVODEMemPtr,),cvode_mem)
end

CVodeSensFree(cvode_mem) = __CVodeSensFree(convert(CVODEMemPtr,cvode_mem))

function __CVodeQuadSensFree(cvode_mem::CVODEMemPtr)
    ccall((:CVodeQuadSensFree,libsundials_cvodes),Void,(CVODEMemPtr,),cvode_mem)
end

CVodeQuadSensFree(cvode_mem) = __CVodeQuadSensFree(convert(CVODEMemPtr,cvode_mem))

function __CVodeSetErrHandlerFn(cvode_mem::CVODEMemPtr,ehfun::CVErrHandlerFn,eh_data::Ptr{Void})
    ccall((:CVodeSetErrHandlerFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

CVodeSetErrHandlerFn(cvode_mem,ehfun,eh_data) = __CVodeSetErrHandlerFn(convert(CVODEMemPtr,cvode_mem),ehfun,pointer(eh_data))

function __CVodeSetErrFile(cvode_mem::CVODEMemPtr,errfp::Ptr{FILE})
    ccall((:CVodeSetErrFile,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{FILE}),cvode_mem,errfp)
end

CVodeSetErrFile(cvode_mem,errfp) = __CVodeSetErrFile(convert(CVODEMemPtr,cvode_mem),errfp)

function __CVodeSetUserData(cvode_mem::CVODEMemPtr,user_data::Any)
    ccall((:CVodeSetUserData,libsundials_cvodes),Cint,(CVODEMemPtr,Any),cvode_mem,user_data)
end

CVodeSetUserData(cvode_mem,user_data) = __CVodeSetUserData(convert(CVODEMemPtr,cvode_mem),user_data)

function __CVodeSetMaxOrd(cvode_mem::CVODEMemPtr,maxord::Cint)
    ccall((:CVodeSetMaxOrd,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxord)
end

CVodeSetMaxOrd(cvode_mem,maxord) = __CVodeSetMaxOrd(convert(CVODEMemPtr,cvode_mem),maxord)

function __CVodeSetMaxNumSteps(cvode_mem::CVODEMemPtr,mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,libsundials_cvodes),Cint,(CVODEMemPtr,Clong),cvode_mem,mxsteps)
end

CVodeSetMaxNumSteps(cvode_mem,mxsteps) = __CVodeSetMaxNumSteps(convert(CVODEMemPtr,cvode_mem),mxsteps)

function __CVodeSetMaxHnilWarns(cvode_mem::CVODEMemPtr,mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,mxhnil)
end

CVodeSetMaxHnilWarns(cvode_mem,mxhnil) = __CVodeSetMaxHnilWarns(convert(CVODEMemPtr,cvode_mem),mxhnil)

function __CVodeSetStabLimDet(cvode_mem::CVODEMemPtr,stldet::Cint)
    ccall((:CVodeSetStabLimDet,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,stldet)
end

CVodeSetStabLimDet(cvode_mem,stldet) = __CVodeSetStabLimDet(convert(CVODEMemPtr,cvode_mem),stldet)

function __CVodeSetInitStep(cvode_mem::CVODEMemPtr,hin::realtype)
    ccall((:CVodeSetInitStep,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,hin)
end

CVodeSetInitStep(cvode_mem,hin) = __CVodeSetInitStep(convert(CVODEMemPtr,cvode_mem),hin)

function __CVodeSetMinStep(cvode_mem::CVODEMemPtr,hmin::realtype)
    ccall((:CVodeSetMinStep,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,hmin)
end

CVodeSetMinStep(cvode_mem,hmin) = __CVodeSetMinStep(convert(CVODEMemPtr,cvode_mem),hmin)

function __CVodeSetMaxStep(cvode_mem::CVODEMemPtr,hmax::realtype)
    ccall((:CVodeSetMaxStep,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,hmax)
end

CVodeSetMaxStep(cvode_mem,hmax) = __CVodeSetMaxStep(convert(CVODEMemPtr,cvode_mem),hmax)

function __CVodeSetStopTime(cvode_mem::CVODEMemPtr,tstop::realtype)
    ccall((:CVodeSetStopTime,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,tstop)
end

CVodeSetStopTime(cvode_mem,tstop) = __CVodeSetStopTime(convert(CVODEMemPtr,cvode_mem),tstop)

function __CVodeSetMaxErrTestFails(cvode_mem::CVODEMemPtr,maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxnef)
end

CVodeSetMaxErrTestFails(cvode_mem,maxnef) = __CVodeSetMaxErrTestFails(convert(CVODEMemPtr,cvode_mem),maxnef)

function __CVodeSetMaxNonlinIters(cvode_mem::CVODEMemPtr,maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxcor)
end

CVodeSetMaxNonlinIters(cvode_mem,maxcor) = __CVodeSetMaxNonlinIters(convert(CVODEMemPtr,cvode_mem),maxcor)

function __CVodeSetMaxConvFails(cvode_mem::CVODEMemPtr,maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxncf)
end

CVodeSetMaxConvFails(cvode_mem,maxncf) = __CVodeSetMaxConvFails(convert(CVODEMemPtr,cvode_mem),maxncf)

function __CVodeSetNonlinConvCoef(cvode_mem::CVODEMemPtr,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,nlscoef)
end

CVodeSetNonlinConvCoef(cvode_mem,nlscoef) = __CVodeSetNonlinConvCoef(convert(CVODEMemPtr,cvode_mem),nlscoef)

function __CVodeSetIterType(cvode_mem::CVODEMemPtr,iter::Cint)
    ccall((:CVodeSetIterType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,iter)
end

CVodeSetIterType(cvode_mem,iter) = __CVodeSetIterType(convert(CVODEMemPtr,cvode_mem),iter)

function __CVodeSetRootDirection(cvode_mem::CVODEMemPtr,rootdir::Ptr{Cint})
    ccall((:CVodeSetRootDirection,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,rootdir)
end

CVodeSetRootDirection(cvode_mem,rootdir) = __CVodeSetRootDirection(convert(CVODEMemPtr,cvode_mem),pointer(rootdir))

function __CVodeSetNoInactiveRootWarn(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSetNoInactiveRootWarn,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

CVodeSetNoInactiveRootWarn(cvode_mem) = __CVodeSetNoInactiveRootWarn(convert(CVODEMemPtr,cvode_mem))

function __CVodeSetQuadErrCon(cvode_mem::CVODEMemPtr,errconQ::Cint)
    ccall((:CVodeSetQuadErrCon,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,errconQ)
end

CVodeSetQuadErrCon(cvode_mem,errconQ) = __CVodeSetQuadErrCon(convert(CVODEMemPtr,cvode_mem),errconQ)

function __CVodeSetSensDQMethod(cvode_mem::CVODEMemPtr,DQtype::Cint,DQrhomax::realtype)
    ccall((:CVodeSetSensDQMethod,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,DQtype,DQrhomax)
end

CVodeSetSensDQMethod(cvode_mem,DQtype,DQrhomax) = __CVodeSetSensDQMethod(convert(CVODEMemPtr,cvode_mem),DQtype,DQrhomax)

function __CVodeSetSensErrCon(cvode_mem::CVODEMemPtr,errconS::Cint)
    ccall((:CVodeSetSensErrCon,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,errconS)
end

CVodeSetSensErrCon(cvode_mem,errconS) = __CVodeSetSensErrCon(convert(CVODEMemPtr,cvode_mem),errconS)

function __CVodeSetSensMaxNonlinIters(cvode_mem::CVODEMemPtr,maxcorS::Cint)
    ccall((:CVodeSetSensMaxNonlinIters,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxcorS)
end

CVodeSetSensMaxNonlinIters(cvode_mem,maxcorS) = __CVodeSetSensMaxNonlinIters(convert(CVODEMemPtr,cvode_mem),maxcorS)

function __CVodeSetSensParams(cvode_mem::CVODEMemPtr,p::Ptr{realtype},pbar::Ptr{realtype},plist::Ptr{Cint})
    ccall((:CVodeSetSensParams,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Ptr{realtype},Ptr{Cint}),cvode_mem,p,pbar,plist)
end

CVodeSetSensParams(cvode_mem,p,pbar,plist) = __CVodeSetSensParams(convert(CVODEMemPtr,cvode_mem),pointer(p),pointer(pbar),pointer(plist))

function __CVodeSetQuadSensErrCon(cvode_mem::CVODEMemPtr,errconQS::Cint)
    ccall((:CVodeSetQuadSensErrCon,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,errconQS)
end

CVodeSetQuadSensErrCon(cvode_mem,errconQS) = __CVodeSetQuadSensErrCon(convert(CVODEMemPtr,cvode_mem),errconQS)

function __CVodeSensToggleOff(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSensToggleOff,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

CVodeSensToggleOff(cvode_mem) = __CVodeSensToggleOff(convert(CVODEMemPtr,cvode_mem))

function __CVode(cvode_mem::CVODEMemPtr,tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint)
    ccall((:CVode,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

CVode(cvode_mem,tout,yout,tret,itask) = __CVode(convert(CVODEMemPtr,cvode_mem),tout,convert(N_Vector,yout),pointer(tret),itask)

function __CVodeGetDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

CVodeGetDky(cvode_mem,t,k,dky) = __CVodeGetDky(convert(CVODEMemPtr,cvode_mem),t,k,convert(N_Vector,dky))

function __CVodeGetQuad(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},yQout::N_Vector)
    ccall((:CVodeGetQuad,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},N_Vector),cvode_mem,tret,yQout)
end

CVodeGetQuad(cvode_mem,tret,yQout) = __CVodeGetQuad(convert(CVODEMemPtr,cvode_mem),pointer(tret),convert(N_Vector,yQout))

function __CVodeGetQuadDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetQuadDky,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

CVodeGetQuadDky(cvode_mem,t,k,dky) = __CVodeGetQuadDky(convert(CVODEMemPtr,cvode_mem),t,k,convert(N_Vector,dky))

function __CVodeGetSens(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},ySout::Ptr{N_Vector})
    ccall((:CVodeGetSens,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,ySout)
end

CVodeGetSens(cvode_mem,tret,ySout) = __CVodeGetSens(convert(CVODEMemPtr,cvode_mem),pointer(tret),pointer(ySout))

function __CVodeGetSens1(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},is::Cint,ySout::N_Vector)
    ccall((:CVodeGetSens1,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,ySout)
end

CVodeGetSens1(cvode_mem,tret,is,ySout) = __CVodeGetSens1(convert(CVODEMemPtr,cvode_mem),pointer(tret),is,convert(N_Vector,ySout))

function __CVodeGetSensDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dkyA::Ptr{N_Vector})
    ccall((:CVodeGetSensDky,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyA)
end

CVodeGetSensDky(cvode_mem,t,k,dkyA) = __CVodeGetSensDky(convert(CVODEMemPtr,cvode_mem),t,k,pointer(dkyA))

function __CVodeGetSensDky1(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,is::Cint,dky::N_Vector)
    ccall((:CVodeGetSensDky1,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dky)
end

CVodeGetSensDky1(cvode_mem,t,k,is,dky) = __CVodeGetSensDky1(convert(CVODEMemPtr,cvode_mem),t,k,is,convert(N_Vector,dky))

function __CVodeGetQuadSens(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},yQSout::Ptr{N_Vector})
    ccall((:CVodeGetQuadSens,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,yQSout)
end

CVodeGetQuadSens(cvode_mem,tret,yQSout) = __CVodeGetQuadSens(convert(CVODEMemPtr,cvode_mem),pointer(tret),pointer(yQSout))

function __CVodeGetQuadSens1(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},is::Cint,yQSout::N_Vector)
    ccall((:CVodeGetQuadSens1,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,yQSout)
end

CVodeGetQuadSens1(cvode_mem,tret,is,yQSout) = __CVodeGetQuadSens1(convert(CVODEMemPtr,cvode_mem),pointer(tret),is,convert(N_Vector,yQSout))

function __CVodeGetQuadSensDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dkyQS_all::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensDky,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyQS_all)
end

CVodeGetQuadSensDky(cvode_mem,t,k,dkyQS_all) = __CVodeGetQuadSensDky(convert(CVODEMemPtr,cvode_mem),t,k,pointer(dkyQS_all))

function __CVodeGetQuadSensDky1(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:CVodeGetQuadSensDky1,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dkyQS)
end

CVodeGetQuadSensDky1(cvode_mem,t,k,is,dkyQS) = __CVodeGetQuadSensDky1(convert(CVODEMemPtr,cvode_mem),t,k,is,convert(N_Vector,dkyQS))

function __CVodeGetWorkSpace(cvode_mem::CVODEMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:CVodeGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

CVodeGetWorkSpace(cvode_mem,lenrw,leniw) = __CVodeGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrw),pointer(leniw))

function __CVodeGetNumSteps(cvode_mem::CVODEMemPtr,nsteps::Ptr{Clong})
    ccall((:CVodeGetNumSteps,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nsteps)
end

CVodeGetNumSteps(cvode_mem,nsteps) = __CVodeGetNumSteps(convert(CVODEMemPtr,cvode_mem),pointer(nsteps))

function __CVodeGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevals::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevals)
end

CVodeGetNumRhsEvals(cvode_mem,nfevals) = __CVodeGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevals))

function __CVodeGetNumLinSolvSetups(cvode_mem::CVODEMemPtr,nlinsetups::Ptr{Clong})
    ccall((:CVodeGetNumLinSolvSetups,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlinsetups)
end

CVodeGetNumLinSolvSetups(cvode_mem,nlinsetups) = __CVodeGetNumLinSolvSetups(convert(CVODEMemPtr,cvode_mem),pointer(nlinsetups))

function __CVodeGetNumErrTestFails(cvode_mem::CVODEMemPtr,netfails::Ptr{Clong})
    ccall((:CVodeGetNumErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,netfails)
end

CVodeGetNumErrTestFails(cvode_mem,netfails) = __CVodeGetNumErrTestFails(convert(CVODEMemPtr,cvode_mem),pointer(netfails))

function __CVodeGetLastOrder(cvode_mem::CVODEMemPtr,qlast::Ptr{Cint})
    ccall((:CVodeGetLastOrder,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,qlast)
end

CVodeGetLastOrder(cvode_mem,qlast) = __CVodeGetLastOrder(convert(CVODEMemPtr,cvode_mem),pointer(qlast))

function __CVodeGetCurrentOrder(cvode_mem::CVODEMemPtr,qcur::Ptr{Cint})
    ccall((:CVodeGetCurrentOrder,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,qcur)
end

CVodeGetCurrentOrder(cvode_mem,qcur) = __CVodeGetCurrentOrder(convert(CVODEMemPtr,cvode_mem),pointer(qcur))

function __CVodeGetNumStabLimOrderReds(cvode_mem::CVODEMemPtr,nslred::Ptr{Clong})
    ccall((:CVodeGetNumStabLimOrderReds,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nslred)
end

CVodeGetNumStabLimOrderReds(cvode_mem,nslred) = __CVodeGetNumStabLimOrderReds(convert(CVODEMemPtr,cvode_mem),pointer(nslred))

function __CVodeGetActualInitStep(cvode_mem::CVODEMemPtr,hinused::Ptr{realtype})
    ccall((:CVodeGetActualInitStep,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hinused)
end

CVodeGetActualInitStep(cvode_mem,hinused) = __CVodeGetActualInitStep(convert(CVODEMemPtr,cvode_mem),pointer(hinused))

function __CVodeGetLastStep(cvode_mem::CVODEMemPtr,hlast::Ptr{realtype})
    ccall((:CVodeGetLastStep,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hlast)
end

CVodeGetLastStep(cvode_mem,hlast) = __CVodeGetLastStep(convert(CVODEMemPtr,cvode_mem),pointer(hlast))

function __CVodeGetCurrentStep(cvode_mem::CVODEMemPtr,hcur::Ptr{realtype})
    ccall((:CVodeGetCurrentStep,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hcur)
end

CVodeGetCurrentStep(cvode_mem,hcur) = __CVodeGetCurrentStep(convert(CVODEMemPtr,cvode_mem),pointer(hcur))

function __CVodeGetCurrentTime(cvode_mem::CVODEMemPtr,tcur::Ptr{realtype})
    ccall((:CVodeGetCurrentTime,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,tcur)
end

CVodeGetCurrentTime(cvode_mem,tcur) = __CVodeGetCurrentTime(convert(CVODEMemPtr,cvode_mem),pointer(tcur))

function __CVodeGetTolScaleFactor(cvode_mem::CVODEMemPtr,tolsfac::Ptr{realtype})
    ccall((:CVodeGetTolScaleFactor,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,tolsfac)
end

CVodeGetTolScaleFactor(cvode_mem,tolsfac) = __CVodeGetTolScaleFactor(convert(CVODEMemPtr,cvode_mem),pointer(tolsfac))

function __CVodeGetErrWeights(cvode_mem::CVODEMemPtr,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,libsundials_cvodes),Cint,(CVODEMemPtr,N_Vector),cvode_mem,eweight)
end

CVodeGetErrWeights(cvode_mem,eweight) = __CVodeGetErrWeights(convert(CVODEMemPtr,cvode_mem),convert(N_Vector,eweight))

function __CVodeGetEstLocalErrors(cvode_mem::CVODEMemPtr,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,libsundials_cvodes),Cint,(CVODEMemPtr,N_Vector),cvode_mem,ele)
end

CVodeGetEstLocalErrors(cvode_mem,ele) = __CVodeGetEstLocalErrors(convert(CVODEMemPtr,cvode_mem),convert(N_Vector,ele))

function __CVodeGetNumGEvals(cvode_mem::CVODEMemPtr,ngevals::Ptr{Clong})
    ccall((:CVodeGetNumGEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,ngevals)
end

CVodeGetNumGEvals(cvode_mem,ngevals) = __CVodeGetNumGEvals(convert(CVODEMemPtr,cvode_mem),pointer(ngevals))

function __CVodeGetRootInfo(cvode_mem::CVODEMemPtr,rootsfound::Ptr{Cint})
    ccall((:CVodeGetRootInfo,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,rootsfound)
end

CVodeGetRootInfo(cvode_mem,rootsfound) = __CVodeGetRootInfo(convert(CVODEMemPtr,cvode_mem),pointer(rootsfound))

function __CVodeGetIntegratorStats(cvode_mem::CVODEMemPtr,nsteps::Ptr{Clong},nfevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:CVodeGetIntegratorStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

CVodeGetIntegratorStats(cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur) = __CVodeGetIntegratorStats(convert(CVODEMemPtr,cvode_mem),pointer(nsteps),pointer(nfevals),pointer(nlinsetups),pointer(netfails),pointer(qlast),pointer(qcur),pointer(hinused),pointer(hlast),pointer(hcur),pointer(tcur))

function __CVodeGetNumNonlinSolvIters(cvode_mem::CVODEMemPtr,nniters::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nniters)
end

CVodeGetNumNonlinSolvIters(cvode_mem,nniters) = __CVodeGetNumNonlinSolvIters(convert(CVODEMemPtr,cvode_mem),pointer(nniters))

function __CVodeGetNumNonlinSolvConvFails(cvode_mem::CVODEMemPtr,nncfails::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nncfails)
end

CVodeGetNumNonlinSolvConvFails(cvode_mem,nncfails) = __CVodeGetNumNonlinSolvConvFails(convert(CVODEMemPtr,cvode_mem),pointer(nncfails))

function __CVodeGetNonlinSolvStats(cvode_mem::CVODEMemPtr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:CVodeGetNonlinSolvStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

CVodeGetNonlinSolvStats(cvode_mem,nniters,nncfails) = __CVodeGetNonlinSolvStats(convert(CVODEMemPtr,cvode_mem),pointer(nniters),pointer(nncfails))

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function __CVodeGetQuadNumRhsEvals(cvode_mem::CVODEMemPtr,nfQevals::Ptr{Clong})
    ccall((:CVodeGetQuadNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfQevals)
end

CVodeGetQuadNumRhsEvals(cvode_mem,nfQevals) = __CVodeGetQuadNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfQevals))

function __CVodeGetQuadNumErrTestFails(cvode_mem::CVODEMemPtr,nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadNumErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nQetfails)
end

CVodeGetQuadNumErrTestFails(cvode_mem,nQetfails) = __CVodeGetQuadNumErrTestFails(convert(CVODEMemPtr,cvode_mem),pointer(nQetfails))

function __CVodeGetQuadErrWeights(cvode_mem::CVODEMemPtr,eQweight::N_Vector)
    ccall((:CVodeGetQuadErrWeights,libsundials_cvodes),Cint,(CVODEMemPtr,N_Vector),cvode_mem,eQweight)
end

CVodeGetQuadErrWeights(cvode_mem,eQweight) = __CVodeGetQuadErrWeights(convert(CVODEMemPtr,cvode_mem),convert(N_Vector,eQweight))

function __CVodeGetQuadStats(cvode_mem::CVODEMemPtr,nfQevals::Ptr{Clong},nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nfQevals,nQetfails)
end

CVodeGetQuadStats(cvode_mem,nfQevals,nQetfails) = __CVodeGetQuadStats(convert(CVODEMemPtr,cvode_mem),pointer(nfQevals),pointer(nQetfails))

function __CVodeGetSensNumRhsEvals(cvode_mem::CVODEMemPtr,nfSevals::Ptr{Clong})
    ccall((:CVodeGetSensNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfSevals)
end

CVodeGetSensNumRhsEvals(cvode_mem,nfSevals) = __CVodeGetSensNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfSevals))

function __CVodeGetNumRhsEvalsSens(cvode_mem::CVODEMemPtr,nfevalsS::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvalsSens,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsS)
end

CVodeGetNumRhsEvalsSens(cvode_mem,nfevalsS) = __CVodeGetNumRhsEvalsSens(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsS))

function __CVodeGetSensNumErrTestFails(cvode_mem::CVODEMemPtr,nSetfails::Ptr{Clong})
    ccall((:CVodeGetSensNumErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSetfails)
end

CVodeGetSensNumErrTestFails(cvode_mem,nSetfails) = __CVodeGetSensNumErrTestFails(convert(CVODEMemPtr,cvode_mem),pointer(nSetfails))

function __CVodeGetSensNumLinSolvSetups(cvode_mem::CVODEMemPtr,nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensNumLinSolvSetups,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlinsetupsS)
end

CVodeGetSensNumLinSolvSetups(cvode_mem,nlinsetupsS) = __CVodeGetSensNumLinSolvSetups(convert(CVODEMemPtr,cvode_mem),pointer(nlinsetupsS))

function __CVodeGetSensErrWeights(cvode_mem::CVODEMemPtr,eSweight::Ptr{N_Vector})
    ccall((:CVodeGetSensErrWeights,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{N_Vector}),cvode_mem,eSweight)
end

CVodeGetSensErrWeights(cvode_mem,eSweight) = __CVodeGetSensErrWeights(convert(CVODEMemPtr,cvode_mem),pointer(eSweight))

function __CVodeGetSensStats(cvode_mem::CVODEMemPtr,nfSevals::Ptr{Clong},nfevalsS::Ptr{Clong},nSetfails::Ptr{Clong},nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
end

CVodeGetSensStats(cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS) = __CVodeGetSensStats(convert(CVODEMemPtr,cvode_mem),pointer(nfSevals),pointer(nfevalsS),pointer(nSetfails),pointer(nlinsetupsS))

function __CVodeGetSensNumNonlinSolvIters(cvode_mem::CVODEMemPtr,nSniters::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSniters)
end

CVodeGetSensNumNonlinSolvIters(cvode_mem,nSniters) = __CVodeGetSensNumNonlinSolvIters(convert(CVODEMemPtr,cvode_mem),pointer(nSniters))

function __CVodeGetSensNumNonlinSolvConvFails(cvode_mem::CVODEMemPtr,nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSncfails)
end

CVodeGetSensNumNonlinSolvConvFails(cvode_mem,nSncfails) = __CVodeGetSensNumNonlinSolvConvFails(convert(CVODEMemPtr,cvode_mem),pointer(nSncfails))

function __CVodeGetStgrSensNumNonlinSolvIters(cvode_mem::CVODEMemPtr,nSTGR1niters::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSTGR1niters)
end

CVodeGetStgrSensNumNonlinSolvIters(cvode_mem,nSTGR1niters) = __CVodeGetStgrSensNumNonlinSolvIters(convert(CVODEMemPtr,cvode_mem),pointer(nSTGR1niters))

function __CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem::CVODEMemPtr,nSTGR1ncfails::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSTGR1ncfails)
end

CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem,nSTGR1ncfails) = __CVodeGetStgrSensNumNonlinSolvConvFails(convert(CVODEMemPtr,cvode_mem),pointer(nSTGR1ncfails))

function __CVodeGetSensNonlinSolvStats(cvode_mem::CVODEMemPtr,nSniters::Ptr{Clong},nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNonlinSolvStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nSniters,nSncfails)
end

CVodeGetSensNonlinSolvStats(cvode_mem,nSniters,nSncfails) = __CVodeGetSensNonlinSolvStats(convert(CVODEMemPtr,cvode_mem),pointer(nSniters),pointer(nSncfails))

function __CVodeGetQuadSensNumRhsEvals(cvode_mem::CVODEMemPtr,nfQSevals::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfQSevals)
end

CVodeGetQuadSensNumRhsEvals(cvode_mem,nfQSevals) = __CVodeGetQuadSensNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfQSevals))

function __CVodeGetQuadSensNumErrTestFails(cvode_mem::CVODEMemPtr,nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nQSetfails)
end

CVodeGetQuadSensNumErrTestFails(cvode_mem,nQSetfails) = __CVodeGetQuadSensNumErrTestFails(convert(CVODEMemPtr,cvode_mem),pointer(nQSetfails))

function __CVodeGetQuadSensErrWeights(cvode_mem::CVODEMemPtr,eQSweight::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensErrWeights,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{N_Vector}),cvode_mem,eQSweight)
end

CVodeGetQuadSensErrWeights(cvode_mem,eQSweight) = __CVodeGetQuadSensErrWeights(convert(CVODEMemPtr,cvode_mem),pointer(eQSweight))

function __CVodeGetQuadSensStats(cvode_mem::CVODEMemPtr,nfQSevals::Ptr{Clong},nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nfQSevals,nQSetfails)
end

CVodeGetQuadSensStats(cvode_mem,nfQSevals,nQSetfails) = __CVodeGetQuadSensStats(convert(CVODEMemPtr,cvode_mem),pointer(nfQSevals),pointer(nQSetfails))

function __CVodeAdjInit(cvode_mem::CVODEMemPtr,steps::Clong,interp::Cint)
    ccall((:CVodeAdjInit,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Cint),cvode_mem,steps,interp)
end

CVodeAdjInit(cvode_mem,steps,interp) = __CVodeAdjInit(convert(CVODEMemPtr,cvode_mem),steps,interp)

function __CVodeAdjReInit(cvode_mem::CVODEMemPtr)
    ccall((:CVodeAdjReInit,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

CVodeAdjReInit(cvode_mem) = __CVodeAdjReInit(convert(CVODEMemPtr,cvode_mem))

function __CVodeAdjFree(cvode_mem::CVODEMemPtr)
    ccall((:CVodeAdjFree,libsundials_cvodes),Void,(CVODEMemPtr,),cvode_mem)
end

CVodeAdjFree(cvode_mem) = __CVodeAdjFree(convert(CVODEMemPtr,cvode_mem))

function __CVodeCreateB(cvode_mem::CVODEMemPtr,lmmB::Cint,iterB::Cint,which::Ptr{Cint})
    ccall((:CVodeCreateB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,Ptr{Cint}),cvode_mem,lmmB,iterB,which)
end

CVodeCreateB(cvode_mem,lmmB,iterB,which) = __CVodeCreateB(convert(CVODEMemPtr,cvode_mem),lmmB,iterB,pointer(which))

function __CVodeInitB(cvode_mem::CVODEMemPtr,which::Cint,fB::CVRhsFnB,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVRhsFnB,realtype,N_Vector),cvode_mem,which,fB,tB0,yB0)
end

CVodeInitB(cvode_mem,which,fB,tB0,yB0) = __CVodeInitB(convert(CVODEMemPtr,cvode_mem),which,fB,tB0,convert(N_Vector,yB0))

function __CVodeInitBS(cvode_mem::CVODEMemPtr,which::Cint,fBs::CVRhsFnBS,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitBS,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVRhsFnBS,realtype,N_Vector),cvode_mem,which,fBs,tB0,yB0)
end

CVodeInitBS(cvode_mem,which,fBs,tB0,yB0) = __CVodeInitBS(convert(CVODEMemPtr,cvode_mem),which,fBs,tB0,convert(N_Vector,yB0))

function __CVodeReInitB(cvode_mem::CVODEMemPtr,which::Cint,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeReInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,N_Vector),cvode_mem,which,tB0,yB0)
end

CVodeReInitB(cvode_mem,which,tB0,yB0) = __CVodeReInitB(convert(CVODEMemPtr,cvode_mem),which,tB0,convert(N_Vector,yB0))

function __CVodeSStolerancesB(cvode_mem::CVODEMemPtr,which::Cint,reltolB::realtype,abstolB::realtype)
    ccall((:CVodeSStolerancesB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,realtype),cvode_mem,which,reltolB,abstolB)
end

CVodeSStolerancesB(cvode_mem,which,reltolB,abstolB) = __CVodeSStolerancesB(convert(CVODEMemPtr,cvode_mem),which,reltolB,abstolB)

function __CVodeSVtolerancesB(cvode_mem::CVODEMemPtr,which::Cint,reltolB::realtype,abstolB::N_Vector)
    ccall((:CVodeSVtolerancesB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,N_Vector),cvode_mem,which,reltolB,abstolB)
end

CVodeSVtolerancesB(cvode_mem,which,reltolB,abstolB) = __CVodeSVtolerancesB(convert(CVODEMemPtr,cvode_mem),which,reltolB,convert(N_Vector,abstolB))

function __CVodeQuadInitB(cvode_mem::CVODEMemPtr,which::Cint,fQB::CVQuadRhsFnB,yQB0::N_Vector)
    ccall((:CVodeQuadInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVQuadRhsFnB,N_Vector),cvode_mem,which,fQB,yQB0)
end

CVodeQuadInitB(cvode_mem,which,fQB,yQB0) = __CVodeQuadInitB(convert(CVODEMemPtr,cvode_mem),which,fQB,convert(N_Vector,yQB0))

function __CVodeQuadInitBS(cvode_mem::CVODEMemPtr,which::Cint,fQBs::CVQuadRhsFnBS,yQB0::N_Vector)
    ccall((:CVodeQuadInitBS,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVQuadRhsFnBS,N_Vector),cvode_mem,which,fQBs,yQB0)
end

CVodeQuadInitBS(cvode_mem,which,fQBs,yQB0) = __CVodeQuadInitBS(convert(CVODEMemPtr,cvode_mem),which,fQBs,convert(N_Vector,yQB0))

function __CVodeQuadReInitB(cvode_mem::CVODEMemPtr,which::Cint,yQB0::N_Vector)
    ccall((:CVodeQuadReInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,N_Vector),cvode_mem,which,yQB0)
end

CVodeQuadReInitB(cvode_mem,which,yQB0) = __CVodeQuadReInitB(convert(CVODEMemPtr,cvode_mem),which,convert(N_Vector,yQB0))

function __CVodeQuadSStolerancesB(cvode_mem::CVODEMemPtr,which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:CVodeQuadSStolerancesB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,realtype),cvode_mem,which,reltolQB,abstolQB)
end

CVodeQuadSStolerancesB(cvode_mem,which,reltolQB,abstolQB) = __CVodeQuadSStolerancesB(convert(CVODEMemPtr,cvode_mem),which,reltolQB,abstolQB)

function __CVodeQuadSVtolerancesB(cvode_mem::CVODEMemPtr,which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:CVodeQuadSVtolerancesB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,N_Vector),cvode_mem,which,reltolQB,abstolQB)
end

CVodeQuadSVtolerancesB(cvode_mem,which,reltolQB,abstolQB) = __CVodeQuadSVtolerancesB(convert(CVODEMemPtr,cvode_mem),which,reltolQB,convert(N_Vector,abstolQB))

function __CVodeF(cvode_mem::CVODEMemPtr,tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint,ncheckPtr::Ptr{Cint})
    ccall((:CVodeF,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector,Ptr{realtype},Cint,Ptr{Cint}),cvode_mem,tout,yout,tret,itask,ncheckPtr)
end

CVodeF(cvode_mem,tout,yout,tret,itask,ncheckPtr) = __CVodeF(convert(CVODEMemPtr,cvode_mem),tout,convert(N_Vector,yout),pointer(tret),itask,pointer(ncheckPtr))

function __CVodeB(cvode_mem::CVODEMemPtr,tBout::realtype,itaskB::Cint)
    ccall((:CVodeB,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint),cvode_mem,tBout,itaskB)
end

CVodeB(cvode_mem,tBout,itaskB) = __CVodeB(convert(CVODEMemPtr,cvode_mem),tBout,itaskB)

function __CVodeSetAdjNoSensi(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSetAdjNoSensi,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

CVodeSetAdjNoSensi(cvode_mem) = __CVodeSetAdjNoSensi(convert(CVODEMemPtr,cvode_mem))

function __CVodeSetIterTypeB(cvode_mem::CVODEMemPtr,which::Cint,iterB::Cint)
    ccall((:CVodeSetIterTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,iterB)
end

CVodeSetIterTypeB(cvode_mem,which,iterB) = __CVodeSetIterTypeB(convert(CVODEMemPtr,cvode_mem),which,iterB)

function __CVodeSetUserDataB(cvode_mem::CVODEMemPtr,which::Cint,user_dataB::Any)
    ccall((:CVodeSetUserDataB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Any),cvode_mem,which,user_dataB)
end

CVodeSetUserDataB(cvode_mem,which,user_dataB) = __CVodeSetUserDataB(convert(CVODEMemPtr,cvode_mem),which,user_dataB)

function __CVodeSetMaxOrdB(cvode_mem::CVODEMemPtr,which::Cint,maxordB::Cint)
    ccall((:CVodeSetMaxOrdB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,maxordB)
end

CVodeSetMaxOrdB(cvode_mem,which,maxordB) = __CVodeSetMaxOrdB(convert(CVODEMemPtr,cvode_mem),which,maxordB)

function __CVodeSetMaxNumStepsB(cvode_mem::CVODEMemPtr,which::Cint,mxstepsB::Clong)
    ccall((:CVodeSetMaxNumStepsB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong),cvode_mem,which,mxstepsB)
end

CVodeSetMaxNumStepsB(cvode_mem,which,mxstepsB) = __CVodeSetMaxNumStepsB(convert(CVODEMemPtr,cvode_mem),which,mxstepsB)

function __CVodeSetStabLimDetB(cvode_mem::CVODEMemPtr,which::Cint,stldetB::Cint)
    ccall((:CVodeSetStabLimDetB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,stldetB)
end

CVodeSetStabLimDetB(cvode_mem,which,stldetB) = __CVodeSetStabLimDetB(convert(CVODEMemPtr,cvode_mem),which,stldetB)

function __CVodeSetInitStepB(cvode_mem::CVODEMemPtr,which::Cint,hinB::realtype)
    ccall((:CVodeSetInitStepB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,hinB)
end

CVodeSetInitStepB(cvode_mem,which,hinB) = __CVodeSetInitStepB(convert(CVODEMemPtr,cvode_mem),which,hinB)

function __CVodeSetMinStepB(cvode_mem::CVODEMemPtr,which::Cint,hminB::realtype)
    ccall((:CVodeSetMinStepB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,hminB)
end

CVodeSetMinStepB(cvode_mem,which,hminB) = __CVodeSetMinStepB(convert(CVODEMemPtr,cvode_mem),which,hminB)

function __CVodeSetMaxStepB(cvode_mem::CVODEMemPtr,which::Cint,hmaxB::realtype)
    ccall((:CVodeSetMaxStepB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,hmaxB)
end

CVodeSetMaxStepB(cvode_mem,which,hmaxB) = __CVodeSetMaxStepB(convert(CVODEMemPtr,cvode_mem),which,hmaxB)

function __CVodeSetQuadErrConB(cvode_mem::CVODEMemPtr,which::Cint,errconQB::Cint)
    ccall((:CVodeSetQuadErrConB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,errconQB)
end

CVodeSetQuadErrConB(cvode_mem,which,errconQB) = __CVodeSetQuadErrConB(convert(CVODEMemPtr,cvode_mem),which,errconQB)

function __CVodeGetB(cvode_mem::CVODEMemPtr,which::Cint,tBret::Ptr{realtype},yB::N_Vector)
    ccall((:CVodeGetB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,yB)
end

CVodeGetB(cvode_mem,which,tBret,yB) = __CVodeGetB(convert(CVODEMemPtr,cvode_mem),which,pointer(tBret),convert(N_Vector,yB))

function __CVodeGetQuadB(cvode_mem::CVODEMemPtr,which::Cint,tBret::Ptr{realtype},qB::N_Vector)
    ccall((:CVodeGetQuadB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,qB)
end

CVodeGetQuadB(cvode_mem,which,tBret,qB) = __CVodeGetQuadB(convert(CVODEMemPtr,cvode_mem),which,pointer(tBret),convert(N_Vector,qB))

function __CVodeGetAdjCVodeBmem(cvode_mem::CVODEMemPtr,which::Cint)
    ccall((:CVodeGetAdjCVodeBmem,libsundials_cvodes),Ptr{Void},(CVODEMemPtr,Cint),cvode_mem,which)
end

CVodeGetAdjCVodeBmem(cvode_mem,which) = __CVodeGetAdjCVodeBmem(convert(CVODEMemPtr,cvode_mem),which)

function __CVodeGetAdjY(cvode_mem::CVODEMemPtr,t::realtype,y::N_Vector)
    ccall((:CVodeGetAdjY,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,t,y)
end

CVodeGetAdjY(cvode_mem,t,y) = __CVodeGetAdjY(convert(CVODEMemPtr,cvode_mem),t,convert(N_Vector,y))

function __CVodeGetAdjCheckPointsInfo(cvode_mem::CVODEMemPtr,ckpnt::Ptr{CVadjCheckPointRec})
    ccall((:CVodeGetAdjCheckPointsInfo,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{CVadjCheckPointRec}),cvode_mem,ckpnt)
end

CVodeGetAdjCheckPointsInfo(cvode_mem,ckpnt) = __CVodeGetAdjCheckPointsInfo(convert(CVODEMemPtr,cvode_mem),pointer(ckpnt))

function __CVodeGetAdjDataPointHermite(cvode_mem::CVODEMemPtr,which::Cint,t::Ptr{realtype},y::N_Vector,yd::N_Vector)
    ccall((:CVodeGetAdjDataPointHermite,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{realtype},N_Vector,N_Vector),cvode_mem,which,t,y,yd)
end

CVodeGetAdjDataPointHermite(cvode_mem,which,t,y,yd) = __CVodeGetAdjDataPointHermite(convert(CVODEMemPtr,cvode_mem),which,pointer(t),convert(N_Vector,y),convert(N_Vector,yd))

function __CVodeGetAdjDataPointPolynomial(cvode_mem::CVODEMemPtr,which::Cint,t::Ptr{realtype},order::Ptr{Cint},y::N_Vector)
    ccall((:CVodeGetAdjDataPointPolynomial,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{realtype},Ptr{Cint},N_Vector),cvode_mem,which,t,order,y)
end

CVodeGetAdjDataPointPolynomial(cvode_mem,which,t,order,y) = __CVodeGetAdjDataPointPolynomial(convert(CVODEMemPtr,cvode_mem),which,pointer(t),pointer(order),convert(N_Vector,y))

function __CVodeGetAdjCurrentCheckPoint(cvode_mem::CVODEMemPtr,addr::Ptr{Ptr{Void}})
    ccall((:CVodeGetAdjCurrentCheckPoint,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Ptr{Void}}),cvode_mem,addr)
end

CVodeGetAdjCurrentCheckPoint(cvode_mem,addr) = __CVodeGetAdjCurrentCheckPoint(convert(CVODEMemPtr,cvode_mem),pointer(addr))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVDlsSetDenseJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVDlsDenseJacFn),cvode_mem,jac)
end

CVDlsSetDenseJacFn(cvode_mem,jac) = __CVDlsSetDenseJacFn(convert(CVODEMemPtr,cvode_mem),jac)

function __CVDlsSetBandJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVDlsBandJacFn),cvode_mem,jac)
end

CVDlsSetBandJacFn(cvode_mem,jac) = __CVDlsSetBandJacFn(convert(CVODEMemPtr,cvode_mem),jac)

function __CVDlsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDlsGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

CVDlsGetWorkSpace(cvode_mem,lenrwLS,leniwLS) = __CVDlsGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))

function __CVDlsGetNumJacEvals(cvode_mem::CVODEMemPtr,njevals::Ptr{Clong})
    ccall((:CVDlsGetNumJacEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njevals)
end

CVDlsGetNumJacEvals(cvode_mem,njevals) = __CVDlsGetNumJacEvals(convert(CVODEMemPtr,cvode_mem),pointer(njevals))

function __CVDlsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDlsGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

CVDlsGetNumRhsEvals(cvode_mem,nfevalsLS) = __CVDlsGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsLS))

function __CVDlsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDlsGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

CVDlsGetLastFlag(cvode_mem,flag) = __CVDlsGetLastFlag(convert(CVODEMemPtr,cvode_mem),pointer(flag))

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function __CVDlsSetDenseJacFnB(cvode_mem::CVODEMemPtr,which::Cint,jacB::CVDlsDenseJacFnB)
    ccall((:CVDlsSetDenseJacFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVDlsDenseJacFnB),cvode_mem,which,jacB)
end

CVDlsSetDenseJacFnB(cvode_mem,which,jacB) = __CVDlsSetDenseJacFnB(convert(CVODEMemPtr,cvode_mem),which,jacB)

function __CVDlsSetBandJacFnB(cvode_mem::CVODEMemPtr,which::Cint,jacB::CVDlsBandJacFnB)
    ccall((:CVDlsSetBandJacFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVDlsBandJacFnB),cvode_mem,which,jacB)
end

CVDlsSetBandJacFnB(cvode_mem,which,jacB) = __CVDlsSetBandJacFnB(convert(CVODEMemPtr,cvode_mem),which,jacB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSpilsSetPrecType(cvode_mem::CVODEMemPtr,pretype::Cint)
    ccall((:CVSpilsSetPrecType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,pretype)
end

CVSpilsSetPrecType(cvode_mem,pretype) = __CVSpilsSetPrecType(convert(CVODEMemPtr,cvode_mem),pretype)

function __CVSpilsSetGSType(cvode_mem::CVODEMemPtr,gstype::Cint)
    ccall((:CVSpilsSetGSType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,gstype)
end

CVSpilsSetGSType(cvode_mem,gstype) = __CVSpilsSetGSType(convert(CVODEMemPtr,cvode_mem),gstype)

function __CVSpilsSetMaxl(cvode_mem::CVODEMemPtr,maxl::Cint)
    ccall((:CVSpilsSetMaxl,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxl)
end

CVSpilsSetMaxl(cvode_mem,maxl) = __CVSpilsSetMaxl(convert(CVODEMemPtr,cvode_mem),maxl)

function __CVSpilsSetEpsLin(cvode_mem::CVODEMemPtr,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,eplifac)
end

CVSpilsSetEpsLin(cvode_mem,eplifac) = __CVSpilsSetEpsLin(convert(CVODEMemPtr,cvode_mem),eplifac)

function __CVSpilsSetPreconditioner(cvode_mem::CVODEMemPtr,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,libsundials_cvodes),Cint,(CVODEMemPtr,CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

CVSpilsSetPreconditioner(cvode_mem,pset,psolve) = __CVSpilsSetPreconditioner(convert(CVODEMemPtr,cvode_mem),pset,psolve)

function __CVSpilsSetJacTimesVecFn(cvode_mem::CVODEMemPtr,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

CVSpilsSetJacTimesVecFn(cvode_mem,jtv) = __CVSpilsSetJacTimesVecFn(convert(CVODEMemPtr,cvode_mem),jtv)

function __CVSpilsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS) = __CVSpilsGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))

function __CVSpilsGetNumPrecEvals(cvode_mem::CVODEMemPtr,npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npevals)
end

CVSpilsGetNumPrecEvals(cvode_mem,npevals) = __CVSpilsGetNumPrecEvals(convert(CVODEMemPtr,cvode_mem),pointer(npevals))

function __CVSpilsGetNumPrecSolves(cvode_mem::CVODEMemPtr,npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npsolves)
end

CVSpilsGetNumPrecSolves(cvode_mem,npsolves) = __CVSpilsGetNumPrecSolves(convert(CVODEMemPtr,cvode_mem),pointer(npsolves))

function __CVSpilsGetNumLinIters(cvode_mem::CVODEMemPtr,nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nliters)
end

CVSpilsGetNumLinIters(cvode_mem,nliters) = __CVSpilsGetNumLinIters(convert(CVODEMemPtr,cvode_mem),pointer(nliters))

function __CVSpilsGetNumConvFails(cvode_mem::CVODEMemPtr,nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlcfails)
end

CVSpilsGetNumConvFails(cvode_mem,nlcfails) = __CVSpilsGetNumConvFails(convert(CVODEMemPtr,cvode_mem),pointer(nlcfails))

function __CVSpilsGetNumJtimesEvals(cvode_mem::CVODEMemPtr,njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njvevals)
end

CVSpilsGetNumJtimesEvals(cvode_mem,njvevals) = __CVSpilsGetNumJtimesEvals(convert(CVODEMemPtr,cvode_mem),pointer(njvevals))

function __CVSpilsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS) = __CVSpilsGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsLS))

function __CVSpilsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

CVSpilsGetLastFlag(cvode_mem,flag) = __CVSpilsGetLastFlag(convert(CVODEMemPtr,cvode_mem),pointer(flag))

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function __CVSpilsSetPrecTypeB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,pretypeB)
end

CVSpilsSetPrecTypeB(cvode_mem,which,pretypeB) = __CVSpilsSetPrecTypeB(convert(CVODEMemPtr,cvode_mem),which,pretypeB)

function __CVSpilsSetGSTypeB(cvode_mem::CVODEMemPtr,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,gstypeB)
end

CVSpilsSetGSTypeB(cvode_mem,which,gstypeB) = __CVSpilsSetGSTypeB(convert(CVODEMemPtr,cvode_mem),which,gstypeB)

function __CVSpilsSetEpslinB(cvode_mem::CVODEMemPtr,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpslinB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,eplifacB)
end

CVSpilsSetEpslinB(cvode_mem,which,eplifacB) = __CVSpilsSetEpslinB(convert(CVODEMemPtr,cvode_mem),which,eplifacB)

function __CVSpilsSetMaxlB(cvode_mem::CVODEMemPtr,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,maxlB)
end

CVSpilsSetMaxlB(cvode_mem,which,maxlB) = __CVSpilsSetMaxlB(convert(CVODEMemPtr,cvode_mem),which,maxlB)

function __CVSpilsSetPreconditionerB(cvode_mem::CVODEMemPtr,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

CVSpilsSetPreconditionerB(cvode_mem,which,psetB,psolveB) = __CVSpilsSetPreconditionerB(convert(CVODEMemPtr,cvode_mem),which,psetB,psolveB)

function __CVSpilsSetJacTimesVecFnB(cvode_mem::CVODEMemPtr,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

CVSpilsSetJacTimesVecFnB(cvode_mem,which,jtvB) = __CVSpilsSetJacTimesVecFnB(convert(CVODEMemPtr,cvode_mem),which,jtvB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVBand(cvode_mem::CVODEMemPtr,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:CVBand,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Clong,Clong),cvode_mem,N,mupper,mlower)
end

CVBand(cvode_mem,N,mupper,mlower) = __CVBand(convert(CVODEMemPtr,cvode_mem),N,mupper,mlower)

function __CVBandB(cvode_mem::CVODEMemPtr,which::Cint,nB::Clong,mupperB::Clong,mlowerB::Clong)
    ccall((:CVBandB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong,Clong,Clong),cvode_mem,which,nB,mupperB,mlowerB)
end

CVBandB(cvode_mem,which,nB,mupperB,mlowerB) = __CVBandB(convert(CVODEMemPtr,cvode_mem),which,nB,mupperB,mlowerB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVBandPrecInit(cvode_mem::CVODEMemPtr,N::Clong,mu::Clong,ml::Clong)
    ccall((:CVBandPrecInit,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Clong,Clong),cvode_mem,N,mu,ml)
end

CVBandPrecInit(cvode_mem,N,mu,ml) = __CVBandPrecInit(convert(CVODEMemPtr,cvode_mem),N,mu,ml)

function __CVBandPrecGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBandPrecGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

CVBandPrecGetWorkSpace(cvode_mem,lenrwLS,leniwLS) = __CVBandPrecGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))

function __CVBandPrecGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsBP::Ptr{Clong})
    ccall((:CVBandPrecGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsBP)
end

CVBandPrecGetNumRhsEvals(cvode_mem,nfevalsBP) = __CVBandPrecGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsBP))

function __CVBandPrecInitB(cvode_mem::CVODEMemPtr,which::Cint,nB::Clong,muB::Clong,mlB::Clong)
    ccall((:CVBandPrecInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong,Clong,Clong),cvode_mem,which,nB,muB,mlB)
end

CVBandPrecInitB(cvode_mem,which,nB,muB,mlB) = __CVBandPrecInitB(convert(CVODEMemPtr,cvode_mem),which,nB,muB,mlB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVBBDPrecInit(cvode_mem::CVODEMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

CVBBDPrecInit(cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn) = __CVBBDPrecInit(convert(CVODEMemPtr,cvode_mem),Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)

function __CVBBDPrecReInit(cvode_mem::CVODEMemPtr,mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:CVBBDPrecReInit,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

CVBBDPrecReInit(cvode_mem,mudq,mldq,dqrely) = __CVBBDPrecReInit(convert(CVODEMemPtr,cvode_mem),mudq,mldq,dqrely)

function __CVBBDPrecGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwBBDP,leniwBBDP)
end

CVBBDPrecGetWorkSpace(cvode_mem,lenrwBBDP,leniwBBDP) = __CVBBDPrecGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwBBDP),pointer(leniwBBDP))

function __CVBBDPrecGetNumGfnEvals(cvode_mem::CVODEMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetNumGfnEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,ngevalsBBDP)
end

CVBBDPrecGetNumGfnEvals(cvode_mem,ngevalsBBDP) = __CVBBDPrecGetNumGfnEvals(convert(CVODEMemPtr,cvode_mem),pointer(ngevalsBBDP))

function __CVBBDPrecInitB(cvode_mem::CVODEMemPtr,which::Cint,NlocalB::Clong,mudqB::Clong,mldqB::Clong,mukeepB::Clong,mlkeepB::Clong,dqrelyB::realtype,glocB::CVLocalFnB,cfnB::CVCommFnB)
    ccall((:CVBBDPrecInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFnB,CVCommFnB),cvode_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dqrelyB,glocB,cfnB)
end

CVBBDPrecInitB(cvode_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dqrelyB,glocB,cfnB) = __CVBBDPrecInitB(convert(CVODEMemPtr,cvode_mem),which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dqrelyB,glocB,cfnB)

function __CVBBDPrecReInitB(cvode_mem::CVODEMemPtr,which::Cint,mudqB::Clong,mldqB::Clong,dqrelyB::realtype)
    ccall((:CVBBDPrecReInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong,Clong,realtype),cvode_mem,which,mudqB,mldqB,dqrelyB)
end

CVBBDPrecReInitB(cvode_mem,which,mudqB,mldqB,dqrelyB) = __CVBBDPrecReInitB(convert(CVODEMemPtr,cvode_mem),which,mudqB,mldqB,dqrelyB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVDense(cvode_mem::CVODEMemPtr,N::Clong)
    ccall((:CVDense,libsundials_cvodes),Cint,(CVODEMemPtr,Clong),cvode_mem,N)
end

CVDense(cvode_mem,N) = __CVDense(convert(CVODEMemPtr,cvode_mem),N)

function __CVDenseB(cvode_mem::CVODEMemPtr,which::Cint,nB::Clong)
    ccall((:CVDenseB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong),cvode_mem,which,nB)
end

CVDenseB(cvode_mem,which,nB) = __CVDenseB(convert(CVODEMemPtr,cvode_mem),which,nB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_diag.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVDiag(cvode_mem::CVODEMemPtr)
    ccall((:CVDiag,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

CVDiag(cvode_mem) = __CVDiag(convert(CVODEMemPtr,cvode_mem))

function __CVDiagGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDiagGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

CVDiagGetWorkSpace(cvode_mem,lenrwLS,leniwLS) = __CVDiagGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))

function __CVDiagGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDiagGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

CVDiagGetNumRhsEvals(cvode_mem,nfevalsLS) = __CVDiagGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsLS))

function __CVDiagGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDiagGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

CVDiagGetLastFlag(cvode_mem,flag) = __CVDiagGetLastFlag(convert(CVODEMemPtr,cvode_mem),pointer(flag))

function CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function __CVDiagB(cvode_mem::CVODEMemPtr,which::Cint)
    ccall((:CVDiagB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,which)
end

CVDiagB(cvode_mem,which) = __CVDiagB(convert(CVODEMemPtr,cvode_mem),which)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSpbcg(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSpbcg,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

CVSpbcg(cvode_mem,pretype,maxl) = __CVSpbcg(convert(CVODEMemPtr,cvode_mem),pretype,maxl)

function __CVSpbcgB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSpbcgB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end

CVSpbcgB(cvode_mem,which,pretypeB,maxlB) = __CVSpbcgB(convert(CVODEMemPtr,cvode_mem),which,pretypeB,maxlB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSpgmr(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSpgmr,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

CVSpgmr(cvode_mem,pretype,maxl) = __CVSpgmr(convert(CVODEMemPtr,cvode_mem),pretype,maxl)

function __CVSpgmrB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSpgmrB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end

CVSpgmrB(cvode_mem,which,pretypeB,maxlB) = __CVSpgmrB(convert(CVODEMemPtr,cvode_mem),which,pretypeB,maxlB)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSptfqmr(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSptfqmr,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

CVSptfqmr(cvode_mem,pretype,maxl) = __CVSptfqmr(convert(CVODEMemPtr,cvode_mem),pretype,maxl)

function __CVSptfqmrB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSptfqmrB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end

CVSptfqmrB(cvode_mem,which,pretypeB,maxlB) = __CVSptfqmrB(convert(CVODEMemPtr,cvode_mem),which,pretypeB,maxlB)
