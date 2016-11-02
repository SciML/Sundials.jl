# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvodes/cvodes.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,libsundials_cvodes),CVODEMemPtr,(Cint,Cint),lmm,iter)
end

function CVodeCreate(lmm,iter)
    __CVodeCreate(convert(Cint,lmm),convert(Cint,iter))
end

function __CVodeInit(cvode_mem::CVODEMemPtr,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,libsundials_cvodes),Cint,(CVODEMemPtr,CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeInit(cvode_mem,f,t0,y0)
    __y0 = convert(NVector,y0)
    __CVodeInit(convert(CVODEMemPtr,cvode_mem),CVRhsFn_wrapper(f),t0,convert(N_Vector,__y0))
end

function __CVodeReInit(cvode_mem::CVODEMemPtr,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeReInit(cvode_mem,t0,y0)
    __y0 = convert(NVector,y0)
    __CVodeReInit(convert(CVODEMemPtr,cvode_mem),t0,convert(N_Vector,__y0))
end

function __CVodeSStolerances(cvode_mem::CVODEMemPtr,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSStolerances(cvode_mem,reltol,abstol)
    __CVodeSStolerances(convert(CVODEMemPtr,cvode_mem),reltol,abstol)
end

function __CVodeSVtolerances(cvode_mem::CVODEMemPtr,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem,reltol,abstol)
    __abstol = convert(NVector,abstol)
    __CVodeSVtolerances(convert(CVODEMemPtr,cvode_mem),reltol,convert(N_Vector,__abstol))
end

function __CVodeWFtolerances(cvode_mem::CVODEMemPtr,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,CVEwtFn),cvode_mem,efun)
end

function CVodeWFtolerances(cvode_mem,efun)
    __CVodeWFtolerances(convert(CVODEMemPtr,cvode_mem),efun)
end

function __CVodeQuadInit(cvode_mem::CVODEMemPtr,fQ::CVQuadRhsFn,yQ0::N_Vector)
    ccall((:CVodeQuadInit,libsundials_cvodes),Cint,(CVODEMemPtr,CVQuadRhsFn,N_Vector),cvode_mem,fQ,yQ0)
end

function CVodeQuadInit(cvode_mem,fQ,yQ0)
    __yQ0 = convert(NVector,yQ0)
    __CVodeQuadInit(convert(CVODEMemPtr,cvode_mem),fQ,convert(N_Vector,__yQ0))
end

function __CVodeQuadReInit(cvode_mem::CVODEMemPtr,yQ0::N_Vector)
    ccall((:CVodeQuadReInit,libsundials_cvodes),Cint,(CVODEMemPtr,N_Vector),cvode_mem,yQ0)
end

function CVodeQuadReInit(cvode_mem,yQ0)
    __yQ0 = convert(NVector,yQ0)
    __CVodeQuadReInit(convert(CVODEMemPtr,cvode_mem),convert(N_Vector,__yQ0))
end

function __CVodeQuadSStolerances(cvode_mem::CVODEMemPtr,reltolQ::realtype,abstolQ::realtype)
    ccall((:CVodeQuadSStolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,realtype),cvode_mem,reltolQ,abstolQ)
end

function CVodeQuadSStolerances(cvode_mem,reltolQ,abstolQ)
    __CVodeQuadSStolerances(convert(CVODEMemPtr,cvode_mem),reltolQ,abstolQ)
end

function __CVodeQuadSVtolerances(cvode_mem::CVODEMemPtr,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:CVodeQuadSVtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,reltolQ,abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem,reltolQ,abstolQ)
    __abstolQ = convert(NVector,abstolQ)
    __CVodeQuadSVtolerances(convert(CVODEMemPtr,cvode_mem),reltolQ,convert(N_Vector,__abstolQ))
end

function __CVodeSensInit(cvode_mem::CVODEMemPtr,Ns::Cint,ism::Cint,fS::CVSensRhsFn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,CVSensRhsFn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS,yS0)
end

function CVodeSensInit(cvode_mem,Ns,ism,fS,yS0)
    __CVodeSensInit(convert(CVODEMemPtr,cvode_mem),convert(Cint,Ns),convert(Cint,ism),fS,pointer(yS0))
end

function __CVodeSensInit1(cvode_mem::CVODEMemPtr,Ns::Cint,ism::Cint,fS1::CVSensRhs1Fn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit1,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,CVSensRhs1Fn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS1,yS0)
end

function CVodeSensInit1(cvode_mem,Ns,ism,fS1,yS0)
    __CVodeSensInit1(convert(CVODEMemPtr,cvode_mem),convert(Cint,Ns),convert(Cint,ism),fS1,pointer(yS0))
end

function __CVodeSensReInit(cvode_mem::CVODEMemPtr,ism::Cint,yS0::Ptr{N_Vector})
    ccall((:CVodeSensReInit,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{N_Vector}),cvode_mem,ism,yS0)
end

function CVodeSensReInit(cvode_mem,ism,yS0)
    __CVodeSensReInit(convert(CVODEMemPtr,cvode_mem),convert(Cint,ism),pointer(yS0))
end

function __CVodeSensSStolerances(cvode_mem::CVODEMemPtr,reltolS::realtype,abstolS::Ptr{realtype})
    ccall((:CVodeSensSStolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Ptr{realtype}),cvode_mem,reltolS,abstolS)
end

function CVodeSensSStolerances(cvode_mem,reltolS,abstolS)
    __CVodeSensSStolerances(convert(CVODEMemPtr,cvode_mem),reltolS,pointer(abstolS))
end

function __CVodeSensSVtolerances(cvode_mem::CVODEMemPtr,reltolS::realtype,abstolS::Ptr{N_Vector})
    ccall((:CVodeSensSVtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Ptr{N_Vector}),cvode_mem,reltolS,abstolS)
end

function CVodeSensSVtolerances(cvode_mem,reltolS,abstolS)
    __CVodeSensSVtolerances(convert(CVODEMemPtr,cvode_mem),reltolS,pointer(abstolS))
end

function __CVodeSensEEtolerances(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSensEEtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVodeSensEEtolerances(cvode_mem)
    __CVodeSensEEtolerances(convert(CVODEMemPtr,cvode_mem))
end

function __CVodeQuadSensInit(cvode_mem::CVODEMemPtr,fQS::CVQuadSensRhsFn,yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensInit,libsundials_cvodes),Cint,(CVODEMemPtr,CVQuadSensRhsFn,Ptr{N_Vector}),cvode_mem,fQS,yQS0)
end

function CVodeQuadSensInit(cvode_mem,fQS,yQS0)
    __CVodeQuadSensInit(convert(CVODEMemPtr,cvode_mem),fQS,pointer(yQS0))
end

function __CVodeQuadSensReInit(cvode_mem::CVODEMemPtr,yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensReInit,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{N_Vector}),cvode_mem,yQS0)
end

function CVodeQuadSensReInit(cvode_mem,yQS0)
    __CVodeQuadSensReInit(convert(CVODEMemPtr,cvode_mem),pointer(yQS0))
end

function __CVodeQuadSensSStolerances(cvode_mem::CVODEMemPtr,reltolQS::realtype,abstolQS::Ptr{realtype})
    ccall((:CVodeQuadSensSStolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Ptr{realtype}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensSStolerances(cvode_mem,reltolQS,abstolQS)
    __CVodeQuadSensSStolerances(convert(CVODEMemPtr,cvode_mem),reltolQS,pointer(abstolQS))
end

function __CVodeQuadSensSVtolerances(cvode_mem::CVODEMemPtr,reltolQS::realtype,abstolQS::Ptr{N_Vector})
    ccall((:CVodeQuadSensSVtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Ptr{N_Vector}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensSVtolerances(cvode_mem,reltolQS,abstolQS)
    __CVodeQuadSensSVtolerances(convert(CVODEMemPtr,cvode_mem),reltolQS,pointer(abstolQS))
end

function __CVodeQuadSensEEtolerances(cvode_mem::CVODEMemPtr)
    ccall((:CVodeQuadSensEEtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVodeQuadSensEEtolerances(cvode_mem)
    __CVodeQuadSensEEtolerances(convert(CVODEMemPtr,cvode_mem))
end

function __CVodeRootInit(cvode_mem::CVODEMemPtr,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVodeRootInit(cvode_mem,nrtfn,g)
    __CVodeRootInit(convert(CVODEMemPtr,cvode_mem),convert(Cint,nrtfn),CVRootFn_wrapper(g))
end

function CVodeFree(cvode_mem::Ref{CVODEMemPtr})
    ccall((:CVodeFree,libsundials_cvodes),Void,(Ref{CVODEMemPtr},),cvode_mem)
end

function __CVodeQuadFree(cvode_mem::CVODEMemPtr)
    ccall((:CVodeQuadFree,libsundials_cvodes),Void,(CVODEMemPtr,),cvode_mem)
end

function CVodeQuadFree(cvode_mem)
    __CVodeQuadFree(convert(CVODEMemPtr,cvode_mem))
end

function __CVodeSensFree(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSensFree,libsundials_cvodes),Void,(CVODEMemPtr,),cvode_mem)
end

function CVodeSensFree(cvode_mem)
    __CVodeSensFree(convert(CVODEMemPtr,cvode_mem))
end

function __CVodeQuadSensFree(cvode_mem::CVODEMemPtr)
    ccall((:CVodeQuadSensFree,libsundials_cvodes),Void,(CVODEMemPtr,),cvode_mem)
end

function CVodeQuadSensFree(cvode_mem)
    __CVodeQuadSensFree(convert(CVODEMemPtr,cvode_mem))
end

function __CVodeSetErrHandlerFn(cvode_mem::CVODEMemPtr,ehfun::CVErrHandlerFn,eh_data::Ptr{Void})
    ccall((:CVodeSetErrHandlerFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrHandlerFn(cvode_mem,ehfun,eh_data)
    __CVodeSetErrHandlerFn(convert(CVODEMemPtr,cvode_mem),ehfun,pointer(eh_data))
end

function __CVodeSetErrFile(cvode_mem::CVODEMemPtr,errfp::Ptr{FILE})
    ccall((:CVodeSetErrFile,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetErrFile(cvode_mem,errfp)
    __CVodeSetErrFile(convert(CVODEMemPtr,cvode_mem),errfp)
end

function __CVodeSetUserData(cvode_mem::CVODEMemPtr,user_data::Any)
    ccall((:CVodeSetUserData,libsundials_cvodes),Cint,(CVODEMemPtr,Any),cvode_mem,user_data)
end

function CVodeSetUserData(cvode_mem,user_data)
    __CVodeSetUserData(convert(CVODEMemPtr,cvode_mem),user_data)
end

function __CVodeSetMaxOrd(cvode_mem::CVODEMemPtr,maxord::Cint)
    ccall((:CVodeSetMaxOrd,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxord)
end

function CVodeSetMaxOrd(cvode_mem,maxord)
    __CVodeSetMaxOrd(convert(CVODEMemPtr,cvode_mem),convert(Cint,maxord))
end

function __CVodeSetMaxNumSteps(cvode_mem::CVODEMemPtr,mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,libsundials_cvodes),Cint,(CVODEMemPtr,Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxNumSteps(cvode_mem,mxsteps)
    __CVodeSetMaxNumSteps(convert(CVODEMemPtr,cvode_mem),convert(Clong,mxsteps))
end

function __CVodeSetMaxHnilWarns(cvode_mem::CVODEMemPtr,mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,mxhnil)
end

function CVodeSetMaxHnilWarns(cvode_mem,mxhnil)
    __CVodeSetMaxHnilWarns(convert(CVODEMemPtr,cvode_mem),convert(Cint,mxhnil))
end

function __CVodeSetStabLimDet(cvode_mem::CVODEMemPtr,stldet::Cint)
    ccall((:CVodeSetStabLimDet,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,stldet)
end

function CVodeSetStabLimDet(cvode_mem,stldet)
    __CVodeSetStabLimDet(convert(CVODEMemPtr,cvode_mem),convert(Cint,stldet))
end

function __CVodeSetInitStep(cvode_mem::CVODEMemPtr,hin::realtype)
    ccall((:CVodeSetInitStep,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,hin)
end

function CVodeSetInitStep(cvode_mem,hin)
    __CVodeSetInitStep(convert(CVODEMemPtr,cvode_mem),hin)
end

function __CVodeSetMinStep(cvode_mem::CVODEMemPtr,hmin::realtype)
    ccall((:CVodeSetMinStep,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,hmin)
end

function CVodeSetMinStep(cvode_mem,hmin)
    __CVodeSetMinStep(convert(CVODEMemPtr,cvode_mem),hmin)
end

function __CVodeSetMaxStep(cvode_mem::CVODEMemPtr,hmax::realtype)
    ccall((:CVodeSetMaxStep,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,hmax)
end

function CVodeSetMaxStep(cvode_mem,hmax)
    __CVodeSetMaxStep(convert(CVODEMemPtr,cvode_mem),hmax)
end

function __CVodeSetStopTime(cvode_mem::CVODEMemPtr,tstop::realtype)
    ccall((:CVodeSetStopTime,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,tstop)
end

function CVodeSetStopTime(cvode_mem,tstop)
    __CVodeSetStopTime(convert(CVODEMemPtr,cvode_mem),tstop)
end

function __CVodeSetMaxErrTestFails(cvode_mem::CVODEMemPtr,maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxnef)
end

function CVodeSetMaxErrTestFails(cvode_mem,maxnef)
    __CVodeSetMaxErrTestFails(convert(CVODEMemPtr,cvode_mem),convert(Cint,maxnef))
end

function __CVodeSetMaxNonlinIters(cvode_mem::CVODEMemPtr,maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxcor)
end

function CVodeSetMaxNonlinIters(cvode_mem,maxcor)
    __CVodeSetMaxNonlinIters(convert(CVODEMemPtr,cvode_mem),convert(Cint,maxcor))
end

function __CVodeSetMaxConvFails(cvode_mem::CVODEMemPtr,maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxncf)
end

function CVodeSetMaxConvFails(cvode_mem,maxncf)
    __CVodeSetMaxConvFails(convert(CVODEMemPtr,cvode_mem),convert(Cint,maxncf))
end

function __CVodeSetNonlinConvCoef(cvode_mem::CVODEMemPtr,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,nlscoef)
end

function CVodeSetNonlinConvCoef(cvode_mem,nlscoef)
    __CVodeSetNonlinConvCoef(convert(CVODEMemPtr,cvode_mem),nlscoef)
end

function __CVodeSetIterType(cvode_mem::CVODEMemPtr,iter::Cint)
    ccall((:CVodeSetIterType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,iter)
end

function CVodeSetIterType(cvode_mem,iter)
    __CVodeSetIterType(convert(CVODEMemPtr,cvode_mem),convert(Cint,iter))
end

function __CVodeSetRootDirection(cvode_mem::CVODEMemPtr,rootdir::Ptr{Cint})
    ccall((:CVodeSetRootDirection,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetRootDirection(cvode_mem,rootdir)
    __CVodeSetRootDirection(convert(CVODEMemPtr,cvode_mem),pointer(rootdir))
end

function __CVodeSetNoInactiveRootWarn(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSetNoInactiveRootWarn,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVodeSetNoInactiveRootWarn(cvode_mem)
    __CVodeSetNoInactiveRootWarn(convert(CVODEMemPtr,cvode_mem))
end

function __CVodeSetQuadErrCon(cvode_mem::CVODEMemPtr,errconQ::Cint)
    ccall((:CVodeSetQuadErrCon,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,errconQ)
end

function CVodeSetQuadErrCon(cvode_mem,errconQ)
    __CVodeSetQuadErrCon(convert(CVODEMemPtr,cvode_mem),convert(Cint,errconQ))
end

function __CVodeSetSensDQMethod(cvode_mem::CVODEMemPtr,DQtype::Cint,DQrhomax::realtype)
    ccall((:CVodeSetSensDQMethod,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,DQtype,DQrhomax)
end

function CVodeSetSensDQMethod(cvode_mem,DQtype,DQrhomax)
    __CVodeSetSensDQMethod(convert(CVODEMemPtr,cvode_mem),convert(Cint,DQtype),DQrhomax)
end

function __CVodeSetSensErrCon(cvode_mem::CVODEMemPtr,errconS::Cint)
    ccall((:CVodeSetSensErrCon,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,errconS)
end

function CVodeSetSensErrCon(cvode_mem,errconS)
    __CVodeSetSensErrCon(convert(CVODEMemPtr,cvode_mem),convert(Cint,errconS))
end

function __CVodeSetSensMaxNonlinIters(cvode_mem::CVODEMemPtr,maxcorS::Cint)
    ccall((:CVodeSetSensMaxNonlinIters,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxcorS)
end

function CVodeSetSensMaxNonlinIters(cvode_mem,maxcorS)
    __CVodeSetSensMaxNonlinIters(convert(CVODEMemPtr,cvode_mem),convert(Cint,maxcorS))
end

function __CVodeSetSensParams(cvode_mem::CVODEMemPtr,p::Ptr{realtype},pbar::Ptr{realtype},plist::Ptr{Cint})
    ccall((:CVodeSetSensParams,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Ptr{realtype},Ptr{Cint}),cvode_mem,p,pbar,plist)
end

function CVodeSetSensParams(cvode_mem,p,pbar,plist)
    __CVodeSetSensParams(convert(CVODEMemPtr,cvode_mem),pointer(p),pointer(pbar),pointer(plist))
end

function __CVodeSetQuadSensErrCon(cvode_mem::CVODEMemPtr,errconQS::Cint)
    ccall((:CVodeSetQuadSensErrCon,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,errconQS)
end

function CVodeSetQuadSensErrCon(cvode_mem,errconQS)
    __CVodeSetQuadSensErrCon(convert(CVODEMemPtr,cvode_mem),convert(Cint,errconQS))
end

function __CVodeSensToggleOff(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSensToggleOff,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVodeSensToggleOff(cvode_mem)
    __CVodeSensToggleOff(convert(CVODEMemPtr,cvode_mem))
end

function __CVode(cvode_mem::CVODEMemPtr,tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint)
    ccall((:CVode,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVode(cvode_mem,tout,yout,tret,itask)
    __yout = convert(NVector,yout)
    __CVode(convert(CVODEMemPtr,cvode_mem),tout,convert(N_Vector,__yout),pointer(tret),convert(Cint,itask))
end

function __CVodeGetDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetDky(cvode_mem,t,k,dky)
    __dky = convert(NVector,dky)
    __CVodeGetDky(convert(CVODEMemPtr,cvode_mem),t,convert(Cint,k),convert(N_Vector,__dky))
end

function __CVodeGetQuad(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},yQout::N_Vector)
    ccall((:CVodeGetQuad,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},N_Vector),cvode_mem,tret,yQout)
end

function CVodeGetQuad(cvode_mem,tret,yQout)
    __yQout = convert(NVector,yQout)
    __CVodeGetQuad(convert(CVODEMemPtr,cvode_mem),pointer(tret),convert(N_Vector,__yQout))
end

function __CVodeGetQuadDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetQuadDky,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetQuadDky(cvode_mem,t,k,dky)
    __dky = convert(NVector,dky)
    __CVodeGetQuadDky(convert(CVODEMemPtr,cvode_mem),t,convert(Cint,k),convert(N_Vector,__dky))
end

function __CVodeGetSens(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},ySout::Ptr{N_Vector})
    ccall((:CVodeGetSens,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,ySout)
end

function CVodeGetSens(cvode_mem,tret,ySout)
    __CVodeGetSens(convert(CVODEMemPtr,cvode_mem),pointer(tret),pointer(ySout))
end

function __CVodeGetSens1(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},is::Cint,ySout::N_Vector)
    ccall((:CVodeGetSens1,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,ySout)
end

function CVodeGetSens1(cvode_mem,tret,is,ySout)
    __ySout = convert(NVector,ySout)
    __CVodeGetSens1(convert(CVODEMemPtr,cvode_mem),pointer(tret),convert(Cint,is),convert(N_Vector,__ySout))
end

function __CVodeGetSensDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dkyA::Ptr{N_Vector})
    ccall((:CVodeGetSensDky,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyA)
end

function CVodeGetSensDky(cvode_mem,t,k,dkyA)
    __CVodeGetSensDky(convert(CVODEMemPtr,cvode_mem),t,convert(Cint,k),pointer(dkyA))
end

function __CVodeGetSensDky1(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,is::Cint,dky::N_Vector)
    ccall((:CVodeGetSensDky1,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dky)
end

function CVodeGetSensDky1(cvode_mem,t,k,is,dky)
    __dky = convert(NVector,dky)
    __CVodeGetSensDky1(convert(CVODEMemPtr,cvode_mem),t,convert(Cint,k),convert(Cint,is),convert(N_Vector,__dky))
end

function __CVodeGetQuadSens(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},yQSout::Ptr{N_Vector})
    ccall((:CVodeGetQuadSens,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,yQSout)
end

function CVodeGetQuadSens(cvode_mem,tret,yQSout)
    __CVodeGetQuadSens(convert(CVODEMemPtr,cvode_mem),pointer(tret),pointer(yQSout))
end

function __CVodeGetQuadSens1(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},is::Cint,yQSout::N_Vector)
    ccall((:CVodeGetQuadSens1,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,yQSout)
end

function CVodeGetQuadSens1(cvode_mem,tret,is,yQSout)
    __yQSout = convert(NVector,yQSout)
    __CVodeGetQuadSens1(convert(CVODEMemPtr,cvode_mem),pointer(tret),convert(Cint,is),convert(N_Vector,__yQSout))
end

function __CVodeGetQuadSensDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dkyQS_all::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensDky,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyQS_all)
end

function CVodeGetQuadSensDky(cvode_mem,t,k,dkyQS_all)
    __CVodeGetQuadSensDky(convert(CVODEMemPtr,cvode_mem),t,convert(Cint,k),pointer(dkyQS_all))
end

function __CVodeGetQuadSensDky1(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:CVodeGetQuadSensDky1,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dkyQS)
end

function CVodeGetQuadSensDky1(cvode_mem,t,k,is,dkyQS)
    __dkyQS = convert(NVector,dkyQS)
    __CVodeGetQuadSensDky1(convert(CVODEMemPtr,cvode_mem),t,convert(Cint,k),convert(Cint,is),convert(N_Vector,__dkyQS))
end

function __CVodeGetWorkSpace(cvode_mem::CVODEMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:CVodeGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetWorkSpace(cvode_mem,lenrw,leniw)
    __CVodeGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrw),pointer(leniw))
end

function __CVodeGetNumSteps(cvode_mem::CVODEMemPtr,nsteps::Ptr{Clong})
    ccall((:CVodeGetNumSteps,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumSteps(cvode_mem,nsteps)
    __CVodeGetNumSteps(convert(CVODEMemPtr,cvode_mem),pointer(nsteps))
end

function __CVodeGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevals::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumRhsEvals(cvode_mem,nfevals)
    __CVodeGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevals))
end

function __CVodeGetNumLinSolvSetups(cvode_mem::CVODEMemPtr,nlinsetups::Ptr{Clong})
    ccall((:CVodeGetNumLinSolvSetups,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumLinSolvSetups(cvode_mem,nlinsetups)
    __CVodeGetNumLinSolvSetups(convert(CVODEMemPtr,cvode_mem),pointer(nlinsetups))
end

function __CVodeGetNumErrTestFails(cvode_mem::CVODEMemPtr,netfails::Ptr{Clong})
    ccall((:CVodeGetNumErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetNumErrTestFails(cvode_mem,netfails)
    __CVodeGetNumErrTestFails(convert(CVODEMemPtr,cvode_mem),pointer(netfails))
end

function __CVodeGetLastOrder(cvode_mem::CVODEMemPtr,qlast::Ptr{Cint})
    ccall((:CVodeGetLastOrder,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetLastOrder(cvode_mem,qlast)
    __CVodeGetLastOrder(convert(CVODEMemPtr,cvode_mem),pointer(qlast))
end

function __CVodeGetCurrentOrder(cvode_mem::CVODEMemPtr,qcur::Ptr{Cint})
    ccall((:CVodeGetCurrentOrder,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetCurrentOrder(cvode_mem,qcur)
    __CVodeGetCurrentOrder(convert(CVODEMemPtr,cvode_mem),pointer(qcur))
end

function __CVodeGetNumStabLimOrderReds(cvode_mem::CVODEMemPtr,nslred::Ptr{Clong})
    ccall((:CVodeGetNumStabLimOrderReds,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetNumStabLimOrderReds(cvode_mem,nslred)
    __CVodeGetNumStabLimOrderReds(convert(CVODEMemPtr,cvode_mem),pointer(nslred))
end

function __CVodeGetActualInitStep(cvode_mem::CVODEMemPtr,hinused::Ptr{realtype})
    ccall((:CVodeGetActualInitStep,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetActualInitStep(cvode_mem,hinused)
    __CVodeGetActualInitStep(convert(CVODEMemPtr,cvode_mem),pointer(hinused))
end

function __CVodeGetLastStep(cvode_mem::CVODEMemPtr,hlast::Ptr{realtype})
    ccall((:CVodeGetLastStep,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetLastStep(cvode_mem,hlast)
    __CVodeGetLastStep(convert(CVODEMemPtr,cvode_mem),pointer(hlast))
end

function __CVodeGetCurrentStep(cvode_mem::CVODEMemPtr,hcur::Ptr{realtype})
    ccall((:CVodeGetCurrentStep,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentStep(cvode_mem,hcur)
    __CVodeGetCurrentStep(convert(CVODEMemPtr,cvode_mem),pointer(hcur))
end

function __CVodeGetCurrentTime(cvode_mem::CVODEMemPtr,tcur::Ptr{realtype})
    ccall((:CVodeGetCurrentTime,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetCurrentTime(cvode_mem,tcur)
    __CVodeGetCurrentTime(convert(CVODEMemPtr,cvode_mem),pointer(tcur))
end

function __CVodeGetTolScaleFactor(cvode_mem::CVODEMemPtr,tolsfac::Ptr{realtype})
    ccall((:CVodeGetTolScaleFactor,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetTolScaleFactor(cvode_mem,tolsfac)
    __CVodeGetTolScaleFactor(convert(CVODEMemPtr,cvode_mem),pointer(tolsfac))
end

function __CVodeGetErrWeights(cvode_mem::CVODEMemPtr,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,libsundials_cvodes),Cint,(CVODEMemPtr,N_Vector),cvode_mem,eweight)
end

function CVodeGetErrWeights(cvode_mem,eweight)
    __eweight = convert(NVector,eweight)
    __CVodeGetErrWeights(convert(CVODEMemPtr,cvode_mem),convert(N_Vector,__eweight))
end

function __CVodeGetEstLocalErrors(cvode_mem::CVODEMemPtr,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,libsundials_cvodes),Cint,(CVODEMemPtr,N_Vector),cvode_mem,ele)
end

function CVodeGetEstLocalErrors(cvode_mem,ele)
    __ele = convert(NVector,ele)
    __CVodeGetEstLocalErrors(convert(CVODEMemPtr,cvode_mem),convert(N_Vector,__ele))
end

function __CVodeGetNumGEvals(cvode_mem::CVODEMemPtr,ngevals::Ptr{Clong})
    ccall((:CVodeGetNumGEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetNumGEvals(cvode_mem,ngevals)
    __CVodeGetNumGEvals(convert(CVODEMemPtr,cvode_mem),pointer(ngevals))
end

function __CVodeGetRootInfo(cvode_mem::CVODEMemPtr,rootsfound::Ptr{Cint})
    ccall((:CVodeGetRootInfo,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetRootInfo(cvode_mem,rootsfound)
    __CVodeGetRootInfo(convert(CVODEMemPtr,cvode_mem),pointer(rootsfound))
end

function __CVodeGetIntegratorStats(cvode_mem::CVODEMemPtr,nsteps::Ptr{Clong},nfevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:CVodeGetIntegratorStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetIntegratorStats(cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    __CVodeGetIntegratorStats(convert(CVODEMemPtr,cvode_mem),pointer(nsteps),pointer(nfevals),pointer(nlinsetups),pointer(netfails),pointer(qlast),pointer(qcur),pointer(hinused),pointer(hlast),pointer(hcur),pointer(tcur))
end

function __CVodeGetNumNonlinSolvIters(cvode_mem::CVODEMemPtr,nniters::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvIters(cvode_mem,nniters)
    __CVodeGetNumNonlinSolvIters(convert(CVODEMemPtr,cvode_mem),pointer(nniters))
end

function __CVodeGetNumNonlinSolvConvFails(cvode_mem::CVODEMemPtr,nncfails::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem,nncfails)
    __CVodeGetNumNonlinSolvConvFails(convert(CVODEMemPtr,cvode_mem),pointer(nncfails))
end

function __CVodeGetNonlinSolvStats(cvode_mem::CVODEMemPtr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:CVodeGetNonlinSolvStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem,nniters,nncfails)
    __CVodeGetNonlinSolvStats(convert(CVODEMemPtr,cvode_mem),pointer(nniters),pointer(nncfails))
end

function __CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVodeGetReturnFlagName(flag)
    __CVodeGetReturnFlagName(convert(Clong,flag))
end

function __CVodeGetQuadNumRhsEvals(cvode_mem::CVODEMemPtr,nfQevals::Ptr{Clong})
    ccall((:CVodeGetQuadNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfQevals)
end

function CVodeGetQuadNumRhsEvals(cvode_mem,nfQevals)
    __CVodeGetQuadNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfQevals))
end

function __CVodeGetQuadNumErrTestFails(cvode_mem::CVODEMemPtr,nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadNumErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nQetfails)
end

function CVodeGetQuadNumErrTestFails(cvode_mem,nQetfails)
    __CVodeGetQuadNumErrTestFails(convert(CVODEMemPtr,cvode_mem),pointer(nQetfails))
end

function __CVodeGetQuadErrWeights(cvode_mem::CVODEMemPtr,eQweight::N_Vector)
    ccall((:CVodeGetQuadErrWeights,libsundials_cvodes),Cint,(CVODEMemPtr,N_Vector),cvode_mem,eQweight)
end

function CVodeGetQuadErrWeights(cvode_mem,eQweight)
    __eQweight = convert(NVector,eQweight)
    __CVodeGetQuadErrWeights(convert(CVODEMemPtr,cvode_mem),convert(N_Vector,__eQweight))
end

function __CVodeGetQuadStats(cvode_mem::CVODEMemPtr,nfQevals::Ptr{Clong},nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nfQevals,nQetfails)
end

function CVodeGetQuadStats(cvode_mem,nfQevals,nQetfails)
    __CVodeGetQuadStats(convert(CVODEMemPtr,cvode_mem),pointer(nfQevals),pointer(nQetfails))
end

function __CVodeGetSensNumRhsEvals(cvode_mem::CVODEMemPtr,nfSevals::Ptr{Clong})
    ccall((:CVodeGetSensNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfSevals)
end

function CVodeGetSensNumRhsEvals(cvode_mem,nfSevals)
    __CVodeGetSensNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfSevals))
end

function __CVodeGetNumRhsEvalsSens(cvode_mem::CVODEMemPtr,nfevalsS::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvalsSens,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsS)
end

function CVodeGetNumRhsEvalsSens(cvode_mem,nfevalsS)
    __CVodeGetNumRhsEvalsSens(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsS))
end

function __CVodeGetSensNumErrTestFails(cvode_mem::CVODEMemPtr,nSetfails::Ptr{Clong})
    ccall((:CVodeGetSensNumErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSetfails)
end

function CVodeGetSensNumErrTestFails(cvode_mem,nSetfails)
    __CVodeGetSensNumErrTestFails(convert(CVODEMemPtr,cvode_mem),pointer(nSetfails))
end

function __CVodeGetSensNumLinSolvSetups(cvode_mem::CVODEMemPtr,nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensNumLinSolvSetups,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlinsetupsS)
end

function CVodeGetSensNumLinSolvSetups(cvode_mem,nlinsetupsS)
    __CVodeGetSensNumLinSolvSetups(convert(CVODEMemPtr,cvode_mem),pointer(nlinsetupsS))
end

function __CVodeGetSensErrWeights(cvode_mem::CVODEMemPtr,eSweight::Ptr{N_Vector})
    ccall((:CVodeGetSensErrWeights,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{N_Vector}),cvode_mem,eSweight)
end

function CVodeGetSensErrWeights(cvode_mem,eSweight)
    __CVodeGetSensErrWeights(convert(CVODEMemPtr,cvode_mem),pointer(eSweight))
end

function __CVodeGetSensStats(cvode_mem::CVODEMemPtr,nfSevals::Ptr{Clong},nfevalsS::Ptr{Clong},nSetfails::Ptr{Clong},nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
end

function CVodeGetSensStats(cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
    __CVodeGetSensStats(convert(CVODEMemPtr,cvode_mem),pointer(nfSevals),pointer(nfevalsS),pointer(nSetfails),pointer(nlinsetupsS))
end

function __CVodeGetSensNumNonlinSolvIters(cvode_mem::CVODEMemPtr,nSniters::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSniters)
end

function CVodeGetSensNumNonlinSolvIters(cvode_mem,nSniters)
    __CVodeGetSensNumNonlinSolvIters(convert(CVODEMemPtr,cvode_mem),pointer(nSniters))
end

function __CVodeGetSensNumNonlinSolvConvFails(cvode_mem::CVODEMemPtr,nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSncfails)
end

function CVodeGetSensNumNonlinSolvConvFails(cvode_mem,nSncfails)
    __CVodeGetSensNumNonlinSolvConvFails(convert(CVODEMemPtr,cvode_mem),pointer(nSncfails))
end

function __CVodeGetStgrSensNumNonlinSolvIters(cvode_mem::CVODEMemPtr,nSTGR1niters::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSTGR1niters)
end

function CVodeGetStgrSensNumNonlinSolvIters(cvode_mem,nSTGR1niters)
    __CVodeGetStgrSensNumNonlinSolvIters(convert(CVODEMemPtr,cvode_mem),pointer(nSTGR1niters))
end

function __CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem::CVODEMemPtr,nSTGR1ncfails::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSTGR1ncfails)
end

function CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem,nSTGR1ncfails)
    __CVodeGetStgrSensNumNonlinSolvConvFails(convert(CVODEMemPtr,cvode_mem),pointer(nSTGR1ncfails))
end

function __CVodeGetSensNonlinSolvStats(cvode_mem::CVODEMemPtr,nSniters::Ptr{Clong},nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNonlinSolvStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nSniters,nSncfails)
end

function CVodeGetSensNonlinSolvStats(cvode_mem,nSniters,nSncfails)
    __CVodeGetSensNonlinSolvStats(convert(CVODEMemPtr,cvode_mem),pointer(nSniters),pointer(nSncfails))
end

function __CVodeGetQuadSensNumRhsEvals(cvode_mem::CVODEMemPtr,nfQSevals::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfQSevals)
end

function CVodeGetQuadSensNumRhsEvals(cvode_mem,nfQSevals)
    __CVodeGetQuadSensNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfQSevals))
end

function __CVodeGetQuadSensNumErrTestFails(cvode_mem::CVODEMemPtr,nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nQSetfails)
end

function CVodeGetQuadSensNumErrTestFails(cvode_mem,nQSetfails)
    __CVodeGetQuadSensNumErrTestFails(convert(CVODEMemPtr,cvode_mem),pointer(nQSetfails))
end

function __CVodeGetQuadSensErrWeights(cvode_mem::CVODEMemPtr,eQSweight::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensErrWeights,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{N_Vector}),cvode_mem,eQSweight)
end

function CVodeGetQuadSensErrWeights(cvode_mem,eQSweight)
    __CVodeGetQuadSensErrWeights(convert(CVODEMemPtr,cvode_mem),pointer(eQSweight))
end

function __CVodeGetQuadSensStats(cvode_mem::CVODEMemPtr,nfQSevals::Ptr{Clong},nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nfQSevals,nQSetfails)
end

function CVodeGetQuadSensStats(cvode_mem,nfQSevals,nQSetfails)
    __CVodeGetQuadSensStats(convert(CVODEMemPtr,cvode_mem),pointer(nfQSevals),pointer(nQSetfails))
end

function __CVodeAdjInit(cvode_mem::CVODEMemPtr,steps::Clong,interp::Cint)
    ccall((:CVodeAdjInit,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Cint),cvode_mem,steps,interp)
end

function CVodeAdjInit(cvode_mem,steps,interp)
    __CVodeAdjInit(convert(CVODEMemPtr,cvode_mem),convert(Clong,steps),convert(Cint,interp))
end

function __CVodeAdjReInit(cvode_mem::CVODEMemPtr)
    ccall((:CVodeAdjReInit,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVodeAdjReInit(cvode_mem)
    __CVodeAdjReInit(convert(CVODEMemPtr,cvode_mem))
end

function __CVodeAdjFree(cvode_mem::CVODEMemPtr)
    ccall((:CVodeAdjFree,libsundials_cvodes),Void,(CVODEMemPtr,),cvode_mem)
end

function CVodeAdjFree(cvode_mem)
    __CVodeAdjFree(convert(CVODEMemPtr,cvode_mem))
end

function __CVodeCreateB(cvode_mem::CVODEMemPtr,lmmB::Cint,iterB::Cint,which::Ptr{Cint})
    ccall((:CVodeCreateB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,Ptr{Cint}),cvode_mem,lmmB,iterB,which)
end

function CVodeCreateB(cvode_mem,lmmB,iterB,which)
    __CVodeCreateB(convert(CVODEMemPtr,cvode_mem),convert(Cint,lmmB),convert(Cint,iterB),pointer(which))
end

function __CVodeInitB(cvode_mem::CVODEMemPtr,which::Cint,fB::CVRhsFnB,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVRhsFnB,realtype,N_Vector),cvode_mem,which,fB,tB0,yB0)
end

function CVodeInitB(cvode_mem,which,fB,tB0,yB0)
    __yB0 = convert(NVector,yB0)
    __CVodeInitB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),fB,tB0,convert(N_Vector,__yB0))
end

function __CVodeInitBS(cvode_mem::CVODEMemPtr,which::Cint,fBs::CVRhsFnBS,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitBS,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVRhsFnBS,realtype,N_Vector),cvode_mem,which,fBs,tB0,yB0)
end

function CVodeInitBS(cvode_mem,which,fBs,tB0,yB0)
    __yB0 = convert(NVector,yB0)
    __CVodeInitBS(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),fBs,tB0,convert(N_Vector,__yB0))
end

function __CVodeReInitB(cvode_mem::CVODEMemPtr,which::Cint,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeReInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,N_Vector),cvode_mem,which,tB0,yB0)
end

function CVodeReInitB(cvode_mem,which,tB0,yB0)
    __yB0 = convert(NVector,yB0)
    __CVodeReInitB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),tB0,convert(N_Vector,__yB0))
end

function __CVodeSStolerancesB(cvode_mem::CVODEMemPtr,which::Cint,reltolB::realtype,abstolB::realtype)
    ccall((:CVodeSStolerancesB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,realtype),cvode_mem,which,reltolB,abstolB)
end

function CVodeSStolerancesB(cvode_mem,which,reltolB,abstolB)
    __CVodeSStolerancesB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),reltolB,abstolB)
end

function __CVodeSVtolerancesB(cvode_mem::CVODEMemPtr,which::Cint,reltolB::realtype,abstolB::N_Vector)
    ccall((:CVodeSVtolerancesB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,N_Vector),cvode_mem,which,reltolB,abstolB)
end

function CVodeSVtolerancesB(cvode_mem,which,reltolB,abstolB)
    __abstolB = convert(NVector,abstolB)
    __CVodeSVtolerancesB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),reltolB,convert(N_Vector,__abstolB))
end

function __CVodeQuadInitB(cvode_mem::CVODEMemPtr,which::Cint,fQB::CVQuadRhsFnB,yQB0::N_Vector)
    ccall((:CVodeQuadInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVQuadRhsFnB,N_Vector),cvode_mem,which,fQB,yQB0)
end

function CVodeQuadInitB(cvode_mem,which,fQB,yQB0)
    __yQB0 = convert(NVector,yQB0)
    __CVodeQuadInitB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),fQB,convert(N_Vector,__yQB0))
end

function __CVodeQuadInitBS(cvode_mem::CVODEMemPtr,which::Cint,fQBs::CVQuadRhsFnBS,yQB0::N_Vector)
    ccall((:CVodeQuadInitBS,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVQuadRhsFnBS,N_Vector),cvode_mem,which,fQBs,yQB0)
end

function CVodeQuadInitBS(cvode_mem,which,fQBs,yQB0)
    __yQB0 = convert(NVector,yQB0)
    __CVodeQuadInitBS(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),fQBs,convert(N_Vector,__yQB0))
end

function __CVodeQuadReInitB(cvode_mem::CVODEMemPtr,which::Cint,yQB0::N_Vector)
    ccall((:CVodeQuadReInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,N_Vector),cvode_mem,which,yQB0)
end

function CVodeQuadReInitB(cvode_mem,which,yQB0)
    __yQB0 = convert(NVector,yQB0)
    __CVodeQuadReInitB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(N_Vector,__yQB0))
end

function __CVodeQuadSStolerancesB(cvode_mem::CVODEMemPtr,which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:CVodeQuadSStolerancesB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,realtype),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeQuadSStolerancesB(cvode_mem,which,reltolQB,abstolQB)
    __CVodeQuadSStolerancesB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),reltolQB,abstolQB)
end

function __CVodeQuadSVtolerancesB(cvode_mem::CVODEMemPtr,which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:CVodeQuadSVtolerancesB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,N_Vector),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem,which,reltolQB,abstolQB)
    __abstolQB = convert(NVector,abstolQB)
    __CVodeQuadSVtolerancesB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),reltolQB,convert(N_Vector,__abstolQB))
end

function __CVodeF(cvode_mem::CVODEMemPtr,tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint,ncheckPtr::Ptr{Cint})
    ccall((:CVodeF,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector,Ptr{realtype},Cint,Ptr{Cint}),cvode_mem,tout,yout,tret,itask,ncheckPtr)
end

function CVodeF(cvode_mem,tout,yout,tret,itask,ncheckPtr)
    __yout = convert(NVector,yout)
    __CVodeF(convert(CVODEMemPtr,cvode_mem),tout,convert(N_Vector,__yout),pointer(tret),convert(Cint,itask),pointer(ncheckPtr))
end

function __CVodeB(cvode_mem::CVODEMemPtr,tBout::realtype,itaskB::Cint)
    ccall((:CVodeB,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint),cvode_mem,tBout,itaskB)
end

function CVodeB(cvode_mem,tBout,itaskB)
    __CVodeB(convert(CVODEMemPtr,cvode_mem),tBout,convert(Cint,itaskB))
end

function __CVodeSetAdjNoSensi(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSetAdjNoSensi,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVodeSetAdjNoSensi(cvode_mem)
    __CVodeSetAdjNoSensi(convert(CVODEMemPtr,cvode_mem))
end

function __CVodeSetIterTypeB(cvode_mem::CVODEMemPtr,which::Cint,iterB::Cint)
    ccall((:CVodeSetIterTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,iterB)
end

function CVodeSetIterTypeB(cvode_mem,which,iterB)
    __CVodeSetIterTypeB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Cint,iterB))
end

function __CVodeSetUserDataB(cvode_mem::CVODEMemPtr,which::Cint,user_dataB::Any)
    ccall((:CVodeSetUserDataB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Any),cvode_mem,which,user_dataB)
end

function CVodeSetUserDataB(cvode_mem,which,user_dataB)
    __CVodeSetUserDataB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),user_dataB)
end

function __CVodeSetMaxOrdB(cvode_mem::CVODEMemPtr,which::Cint,maxordB::Cint)
    ccall((:CVodeSetMaxOrdB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,maxordB)
end

function CVodeSetMaxOrdB(cvode_mem,which,maxordB)
    __CVodeSetMaxOrdB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Cint,maxordB))
end

function __CVodeSetMaxNumStepsB(cvode_mem::CVODEMemPtr,which::Cint,mxstepsB::Clong)
    ccall((:CVodeSetMaxNumStepsB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong),cvode_mem,which,mxstepsB)
end

function CVodeSetMaxNumStepsB(cvode_mem,which,mxstepsB)
    __CVodeSetMaxNumStepsB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Clong,mxstepsB))
end

function __CVodeSetStabLimDetB(cvode_mem::CVODEMemPtr,which::Cint,stldetB::Cint)
    ccall((:CVodeSetStabLimDetB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,stldetB)
end

function CVodeSetStabLimDetB(cvode_mem,which,stldetB)
    __CVodeSetStabLimDetB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Cint,stldetB))
end

function __CVodeSetInitStepB(cvode_mem::CVODEMemPtr,which::Cint,hinB::realtype)
    ccall((:CVodeSetInitStepB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,hinB)
end

function CVodeSetInitStepB(cvode_mem,which,hinB)
    __CVodeSetInitStepB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),hinB)
end

function __CVodeSetMinStepB(cvode_mem::CVODEMemPtr,which::Cint,hminB::realtype)
    ccall((:CVodeSetMinStepB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,hminB)
end

function CVodeSetMinStepB(cvode_mem,which,hminB)
    __CVodeSetMinStepB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),hminB)
end

function __CVodeSetMaxStepB(cvode_mem::CVODEMemPtr,which::Cint,hmaxB::realtype)
    ccall((:CVodeSetMaxStepB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,hmaxB)
end

function CVodeSetMaxStepB(cvode_mem,which,hmaxB)
    __CVodeSetMaxStepB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),hmaxB)
end

function __CVodeSetQuadErrConB(cvode_mem::CVODEMemPtr,which::Cint,errconQB::Cint)
    ccall((:CVodeSetQuadErrConB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,errconQB)
end

function CVodeSetQuadErrConB(cvode_mem,which,errconQB)
    __CVodeSetQuadErrConB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Cint,errconQB))
end

function __CVodeGetB(cvode_mem::CVODEMemPtr,which::Cint,tBret::Ptr{realtype},yB::N_Vector)
    ccall((:CVodeGetB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,yB)
end

function CVodeGetB(cvode_mem,which,tBret,yB)
    __yB = convert(NVector,yB)
    __CVodeGetB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),pointer(tBret),convert(N_Vector,__yB))
end

function __CVodeGetQuadB(cvode_mem::CVODEMemPtr,which::Cint,tBret::Ptr{realtype},qB::N_Vector)
    ccall((:CVodeGetQuadB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,qB)
end

function CVodeGetQuadB(cvode_mem,which,tBret,qB)
    __qB = convert(NVector,qB)
    __CVodeGetQuadB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),pointer(tBret),convert(N_Vector,__qB))
end

function __CVodeGetAdjCVodeBmem(cvode_mem::CVODEMemPtr,which::Cint)
    ccall((:CVodeGetAdjCVodeBmem,libsundials_cvodes),Ptr{Void},(CVODEMemPtr,Cint),cvode_mem,which)
end

function CVodeGetAdjCVodeBmem(cvode_mem,which)
    __CVodeGetAdjCVodeBmem(convert(CVODEMemPtr,cvode_mem),convert(Cint,which))
end

function __CVodeGetAdjY(cvode_mem::CVODEMemPtr,t::realtype,y::N_Vector)
    ccall((:CVodeGetAdjY,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,t,y)
end

function CVodeGetAdjY(cvode_mem,t,y)
    __y = convert(NVector,y)
    __CVodeGetAdjY(convert(CVODEMemPtr,cvode_mem),t,convert(N_Vector,__y))
end

function __CVodeGetAdjCheckPointsInfo(cvode_mem::CVODEMemPtr,ckpnt::Ptr{CVadjCheckPointRec})
    ccall((:CVodeGetAdjCheckPointsInfo,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{CVadjCheckPointRec}),cvode_mem,ckpnt)
end

function CVodeGetAdjCheckPointsInfo(cvode_mem,ckpnt)
    __CVodeGetAdjCheckPointsInfo(convert(CVODEMemPtr,cvode_mem),pointer(ckpnt))
end

function __CVodeGetAdjDataPointHermite(cvode_mem::CVODEMemPtr,which::Cint,t::Ptr{realtype},y::N_Vector,yd::N_Vector)
    ccall((:CVodeGetAdjDataPointHermite,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{realtype},N_Vector,N_Vector),cvode_mem,which,t,y,yd)
end

function CVodeGetAdjDataPointHermite(cvode_mem,which,t,y,yd)
    __y = convert(NVector,y)
    __yd = convert(NVector,yd)
    __CVodeGetAdjDataPointHermite(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),pointer(t),convert(N_Vector,__y),convert(N_Vector,__yd))
end

function __CVodeGetAdjDataPointPolynomial(cvode_mem::CVODEMemPtr,which::Cint,t::Ptr{realtype},order::Ptr{Cint},y::N_Vector)
    ccall((:CVodeGetAdjDataPointPolynomial,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{realtype},Ptr{Cint},N_Vector),cvode_mem,which,t,order,y)
end

function CVodeGetAdjDataPointPolynomial(cvode_mem,which,t,order,y)
    __y = convert(NVector,y)
    __CVodeGetAdjDataPointPolynomial(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),pointer(t),pointer(order),convert(N_Vector,__y))
end

function __CVodeGetAdjCurrentCheckPoint(cvode_mem::CVODEMemPtr,addr::Ptr{Ptr{Void}})
    ccall((:CVodeGetAdjCurrentCheckPoint,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Ptr{Void}}),cvode_mem,addr)
end

function CVodeGetAdjCurrentCheckPoint(cvode_mem,addr)
    __CVodeGetAdjCurrentCheckPoint(convert(CVODEMemPtr,cvode_mem),pointer(addr))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvodes/cvodes_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVDlsSetDenseJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetDenseJacFn(cvode_mem,jac)
    __CVDlsSetDenseJacFn(convert(CVODEMemPtr,cvode_mem),jac)
end

function __CVDlsSetBandJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem,jac)
    __CVDlsSetBandJacFn(convert(CVODEMemPtr,cvode_mem),jac)
end

function __CVDlsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDlsGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    __CVDlsGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __CVDlsGetNumJacEvals(cvode_mem::CVODEMemPtr,njevals::Ptr{Clong})
    ccall((:CVDlsGetNumJacEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumJacEvals(cvode_mem,njevals)
    __CVDlsGetNumJacEvals(convert(CVODEMemPtr,cvode_mem),pointer(njevals))
end

function __CVDlsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDlsGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetNumRhsEvals(cvode_mem,nfevalsLS)
    __CVDlsGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsLS))
end

function __CVDlsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDlsGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetLastFlag(cvode_mem,flag)
    __CVDlsGetLastFlag(convert(CVODEMemPtr,cvode_mem),pointer(flag))
end

function __CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVDlsGetReturnFlagName(flag)
    __CVDlsGetReturnFlagName(convert(Clong,flag))
end

function __CVDlsSetDenseJacFnB(cvode_mem::CVODEMemPtr,which::Cint,jacB::CVDlsDenseJacFnB)
    ccall((:CVDlsSetDenseJacFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVDlsDenseJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetDenseJacFnB(cvode_mem,which,jacB)
    __CVDlsSetDenseJacFnB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),jacB)
end

function __CVDlsSetDenseJacFnBS(cvode_mem::CVODEMemPtr,which::Cint,jacBS::CVDlsDenseJacFnBS)
    ccall((:CVDlsSetDenseJacFnBS,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVDlsDenseJacFnBS),cvode_mem,which,jacBS)
end

function CVDlsSetDenseJacFnBS(cvode_mem,which,jacBS)
    __CVDlsSetDenseJacFnBS(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),jacBS)
end

function __CVDlsSetBandJacFnB(cvode_mem::CVODEMemPtr,which::Cint,jacB::CVDlsBandJacFnB)
    ccall((:CVDlsSetBandJacFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVDlsBandJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetBandJacFnB(cvode_mem,which,jacB)
    __CVDlsSetBandJacFnB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),jacB)
end

function __CVDlsSetBandJacFnBS(cvode_mem::CVODEMemPtr,which::Cint,jacBS::CVDlsBandJacFnBS)
    ccall((:CVDlsSetBandJacFnBS,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVDlsBandJacFnBS),cvode_mem,which,jacBS)
end

function CVDlsSetBandJacFnBS(cvode_mem,which,jacBS)
    __CVDlsSetBandJacFnBS(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),jacBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvodes/cvodes_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSpilsSetPrecType(cvode_mem::CVODEMemPtr,pretype::Cint)
    ccall((:CVSpilsSetPrecType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,pretype)
end

function CVSpilsSetPrecType(cvode_mem,pretype)
    __CVSpilsSetPrecType(convert(CVODEMemPtr,cvode_mem),convert(Cint,pretype))
end

function __CVSpilsSetGSType(cvode_mem::CVODEMemPtr,gstype::Cint)
    ccall((:CVSpilsSetGSType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,gstype)
end

function CVSpilsSetGSType(cvode_mem,gstype)
    __CVSpilsSetGSType(convert(CVODEMemPtr,cvode_mem),convert(Cint,gstype))
end

function __CVSpilsSetMaxl(cvode_mem::CVODEMemPtr,maxl::Cint)
    ccall((:CVSpilsSetMaxl,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxl)
end

function CVSpilsSetMaxl(cvode_mem,maxl)
    __CVSpilsSetMaxl(convert(CVODEMemPtr,cvode_mem),convert(Cint,maxl))
end

function __CVSpilsSetEpsLin(cvode_mem::CVODEMemPtr,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,eplifac)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac)
    __CVSpilsSetEpsLin(convert(CVODEMemPtr,cvode_mem),eplifac)
end

function __CVSpilsSetPreconditioner(cvode_mem::CVODEMemPtr,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,libsundials_cvodes),Cint,(CVODEMemPtr,CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetPreconditioner(cvode_mem,pset,psolve)
    __CVSpilsSetPreconditioner(convert(CVODEMemPtr,cvode_mem),pset,psolve)
end

function __CVSpilsSetJacTimesVecFn(cvode_mem::CVODEMemPtr,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv)
    __CVSpilsSetJacTimesVecFn(convert(CVODEMemPtr,cvode_mem),jtv)
end

function __CVSpilsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    __CVSpilsGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __CVSpilsGetNumPrecEvals(cvode_mem::CVODEMemPtr,npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    __CVSpilsGetNumPrecEvals(convert(CVODEMemPtr,cvode_mem),pointer(npevals))
end

function __CVSpilsGetNumPrecSolves(cvode_mem::CVODEMemPtr,npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    __CVSpilsGetNumPrecSolves(convert(CVODEMemPtr,cvode_mem),pointer(npsolves))
end

function __CVSpilsGetNumLinIters(cvode_mem::CVODEMemPtr,nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    __CVSpilsGetNumLinIters(convert(CVODEMemPtr,cvode_mem),pointer(nliters))
end

function __CVSpilsGetNumConvFails(cvode_mem::CVODEMemPtr,nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    __CVSpilsGetNumConvFails(convert(CVODEMemPtr,cvode_mem),pointer(nlcfails))
end

function __CVSpilsGetNumJtimesEvals(cvode_mem::CVODEMemPtr,njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    __CVSpilsGetNumJtimesEvals(convert(CVODEMemPtr,cvode_mem),pointer(njvevals))
end

function __CVSpilsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    __CVSpilsGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsLS))
end

function __CVSpilsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    __CVSpilsGetLastFlag(convert(CVODEMemPtr,cvode_mem),pointer(flag))
end

function __CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVSpilsGetReturnFlagName(flag)
    __CVSpilsGetReturnFlagName(convert(Clong,flag))
end

function __CVSpilsSetPrecTypeB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetPrecTypeB(cvode_mem,which,pretypeB)
    __CVSpilsSetPrecTypeB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Cint,pretypeB))
end

function __CVSpilsSetGSTypeB(cvode_mem::CVODEMemPtr,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetGSTypeB(cvode_mem,which,gstypeB)
    __CVSpilsSetGSTypeB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Cint,gstypeB))
end

function __CVSpilsSetEpsLinB(cvode_mem::CVODEMemPtr,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpsLinB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetEpsLinB(cvode_mem,which,eplifacB)
    __CVSpilsSetEpsLinB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),eplifacB)
end

function __CVSpilsSetMaxlB(cvode_mem::CVODEMemPtr,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetMaxlB(cvode_mem,which,maxlB)
    __CVSpilsSetMaxlB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Cint,maxlB))
end

function __CVSpilsSetPreconditionerB(cvode_mem::CVODEMemPtr,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetPreconditionerB(cvode_mem,which,psetB,psolveB)
    __CVSpilsSetPreconditionerB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),psetB,psolveB)
end

function __CVSpilsSetPreconditionerBS(cvode_mem::CVODEMemPtr,which::Cint,psetBS::CVSpilsPrecSetupFnBS,psolveBS::CVSpilsPrecSolveFnBS)
    ccall((:CVSpilsSetPreconditionerBS,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsPrecSetupFnBS,CVSpilsPrecSolveFnBS),cvode_mem,which,psetBS,psolveBS)
end

function CVSpilsSetPreconditionerBS(cvode_mem,which,psetBS,psolveBS)
    __CVSpilsSetPreconditionerBS(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),psetBS,psolveBS)
end

function __CVSpilsSetJacTimesVecFnB(cvode_mem::CVODEMemPtr,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem,which,jtvB)
    __CVSpilsSetJacTimesVecFnB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),jtvB)
end

function __CVSpilsSetJacTimesVecFnBS(cvode_mem::CVODEMemPtr,which::Cint,jtvBS::CVSpilsJacTimesVecFnBS)
    ccall((:CVSpilsSetJacTimesVecFnBS,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsJacTimesVecFnBS),cvode_mem,which,jtvBS)
end

function CVSpilsSetJacTimesVecFnBS(cvode_mem,which,jtvBS)
    __CVSpilsSetJacTimesVecFnBS(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),jtvBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvodes/cvodes_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVBand(cvode_mem::CVODEMemPtr,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:CVBand,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Clong,Clong),cvode_mem,N,mupper,mlower)
end

function CVBand(cvode_mem,N,mupper,mlower)
    __CVBand(convert(CVODEMemPtr,cvode_mem),convert(Clong,N),convert(Clong,mupper),convert(Clong,mlower))
end

function __CVBandB(cvode_mem::CVODEMemPtr,which::Cint,nB::Clong,mupperB::Clong,mlowerB::Clong)
    ccall((:CVBandB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong,Clong,Clong),cvode_mem,which,nB,mupperB,mlowerB)
end

function CVBandB(cvode_mem,which,nB,mupperB,mlowerB)
    __CVBandB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Clong,nB),convert(Clong,mupperB),convert(Clong,mlowerB))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvodes/cvodes_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVBandPrecInit(cvode_mem::CVODEMemPtr,N::Clong,mu::Clong,ml::Clong)
    ccall((:CVBandPrecInit,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Clong,Clong),cvode_mem,N,mu,ml)
end

function CVBandPrecInit(cvode_mem,N,mu,ml)
    __CVBandPrecInit(convert(CVODEMemPtr,cvode_mem),convert(Clong,N),convert(Clong,mu),convert(Clong,ml))
end

function __CVBandPrecGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBandPrecGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBandPrecGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    __CVBandPrecGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __CVBandPrecGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsBP::Ptr{Clong})
    ccall((:CVBandPrecGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsBP)
end

function CVBandPrecGetNumRhsEvals(cvode_mem,nfevalsBP)
    __CVBandPrecGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsBP))
end

function __CVBandPrecInitB(cvode_mem::CVODEMemPtr,which::Cint,nB::Clong,muB::Clong,mlB::Clong)
    ccall((:CVBandPrecInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong,Clong,Clong),cvode_mem,which,nB,muB,mlB)
end

function CVBandPrecInitB(cvode_mem,which,nB,muB,mlB)
    __CVBandPrecInitB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Clong,nB),convert(Clong,muB),convert(Clong,mlB))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvodes/cvodes_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVBBDPrecInit(cvode_mem::CVODEMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function CVBBDPrecInit(cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
    __CVBBDPrecInit(convert(CVODEMemPtr,cvode_mem),convert(Clong,Nlocal),convert(Clong,mudq),convert(Clong,mldq),convert(Clong,mukeep),convert(Clong,mlkeep),dqrely,gloc,cfn)
end

function __CVBBDPrecReInit(cvode_mem::CVODEMemPtr,mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:CVBBDPrecReInit,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

function CVBBDPrecReInit(cvode_mem,mudq,mldq,dqrely)
    __CVBBDPrecReInit(convert(CVODEMemPtr,cvode_mem),convert(Clong,mudq),convert(Clong,mldq),dqrely)
end

function __CVBBDPrecGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwBBDP,leniwBBDP)
end

function CVBBDPrecGetWorkSpace(cvode_mem,lenrwBBDP,leniwBBDP)
    __CVBBDPrecGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwBBDP),pointer(leniwBBDP))
end

function __CVBBDPrecGetNumGfnEvals(cvode_mem::CVODEMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetNumGfnEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,ngevalsBBDP)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem,ngevalsBBDP)
    __CVBBDPrecGetNumGfnEvals(convert(CVODEMemPtr,cvode_mem),pointer(ngevalsBBDP))
end

function __CVBBDPrecInitB(cvode_mem::CVODEMemPtr,which::Cint,NlocalB::Clong,mudqB::Clong,mldqB::Clong,mukeepB::Clong,mlkeepB::Clong,dqrelyB::realtype,glocB::CVLocalFnB,cfnB::CVCommFnB)
    ccall((:CVBBDPrecInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFnB,CVCommFnB),cvode_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dqrelyB,glocB,cfnB)
end

function CVBBDPrecInitB(cvode_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dqrelyB,glocB,cfnB)
    __CVBBDPrecInitB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Clong,NlocalB),convert(Clong,mudqB),convert(Clong,mldqB),convert(Clong,mukeepB),convert(Clong,mlkeepB),dqrelyB,glocB,cfnB)
end

function __CVBBDPrecReInitB(cvode_mem::CVODEMemPtr,which::Cint,mudqB::Clong,mldqB::Clong,dqrelyB::realtype)
    ccall((:CVBBDPrecReInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong,Clong,realtype),cvode_mem,which,mudqB,mldqB,dqrelyB)
end

function CVBBDPrecReInitB(cvode_mem,which,mudqB,mldqB,dqrelyB)
    __CVBBDPrecReInitB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Clong,mudqB),convert(Clong,mldqB),dqrelyB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvodes/cvodes_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVDense(cvode_mem::CVODEMemPtr,N::Clong)
    ccall((:CVDense,libsundials_cvodes),Cint,(CVODEMemPtr,Clong),cvode_mem,N)
end

function CVDense(cvode_mem,N)
    __CVDense(convert(CVODEMemPtr,cvode_mem),convert(Clong,N))
end

function __CVDenseB(cvode_mem::CVODEMemPtr,which::Cint,nB::Clong)
    ccall((:CVDenseB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong),cvode_mem,which,nB)
end

function CVDenseB(cvode_mem,which,nB)
    __CVDenseB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Clong,nB))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvodes/cvodes_diag.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVDiag(cvode_mem::CVODEMemPtr)
    ccall((:CVDiag,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVDiag(cvode_mem)
    __CVDiag(convert(CVODEMemPtr,cvode_mem))
end

function __CVDiagGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDiagGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDiagGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    __CVDiagGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __CVDiagGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDiagGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDiagGetNumRhsEvals(cvode_mem,nfevalsLS)
    __CVDiagGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsLS))
end

function __CVDiagGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDiagGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVDiagGetLastFlag(cvode_mem,flag)
    __CVDiagGetLastFlag(convert(CVODEMemPtr,cvode_mem),pointer(flag))
end

function __CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVDiagGetReturnFlagName(flag)
    __CVDiagGetReturnFlagName(convert(Clong,flag))
end

function __CVDiagB(cvode_mem::CVODEMemPtr,which::Cint)
    ccall((:CVDiagB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,which)
end

function CVDiagB(cvode_mem,which)
    __CVDiagB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvodes/cvodes_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvodes/cvodes_sparse.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSlsSetSparseJacFn(cvode_mem::CVODEMemPtr,jac::CVSlsSparseJacFn)
    ccall((:CVSlsSetSparseJacFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVSlsSparseJacFn),cvode_mem,jac)
end

function CVSlsSetSparseJacFn(cvode_mem,jac)
    __CVSlsSetSparseJacFn(convert(CVODEMemPtr,cvode_mem),jac)
end

function __CVSlsGetNumJacEvals(cvode_mem::CVODEMemPtr,njevals::Ptr{Clong})
    ccall((:CVSlsGetNumJacEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njevals)
end

function CVSlsGetNumJacEvals(cvode_mem,njevals)
    __CVSlsGetNumJacEvals(convert(CVODEMemPtr,cvode_mem),pointer(njevals))
end

function __CVSlsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVSlsGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVSlsGetLastFlag(cvode_mem,flag)
    __CVSlsGetLastFlag(convert(CVODEMemPtr,cvode_mem),pointer(flag))
end

function __CVSlsGetReturnFlagName(flag::Clong)
    ccall((:CVSlsGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVSlsGetReturnFlagName(flag)
    __CVSlsGetReturnFlagName(convert(Clong,flag))
end

function __CVSlsSetSparseJacFnB(cv_mem::CVODEMemPtr,which::Cint,jacB::CVSlsSparseJacFnB)
    ccall((:CVSlsSetSparseJacFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSlsSparseJacFnB),cv_mem,which,jacB)
end

function CVSlsSetSparseJacFnB(cv_mem,which,jacB)
    __CVSlsSetSparseJacFnB(convert(CVODEMemPtr,cv_mem),convert(Cint,which),jacB)
end

function __CVSlsSetSparseJacFnBS(cv_mem::CVODEMemPtr,which::Cint,jacBS::CVSlsSparseJacFnBS)
    ccall((:CVSlsSetSparseJacFnBS,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSlsSparseJacFnBS),cv_mem,which,jacBS)
end

function CVSlsSetSparseJacFnBS(cv_mem,which,jacBS)
    __CVSlsSetSparseJacFnBS(convert(CVODEMemPtr,cv_mem),convert(Cint,which),jacBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvodes/cvodes_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSpbcg(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSpbcg,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSpbcg(cvode_mem,pretype,maxl)
    __CVSpbcg(convert(CVODEMemPtr,cvode_mem),convert(Cint,pretype),convert(Cint,maxl))
end

function __CVSpbcgB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSpbcgB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end

function CVSpbcgB(cvode_mem,which,pretypeB,maxlB)
    __CVSpbcgB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Cint,pretypeB),convert(Cint,maxlB))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvodes/cvodes_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSpgmr(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSpgmr,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSpgmr(cvode_mem,pretype,maxl)
    __CVSpgmr(convert(CVODEMemPtr,cvode_mem),convert(Cint,pretype),convert(Cint,maxl))
end

function __CVSpgmrB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSpgmrB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end

function CVSpgmrB(cvode_mem,which,pretypeB,maxlB)
    __CVSpgmrB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Cint,pretypeB),convert(Cint,maxlB))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvodes/cvodes_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSptfqmr(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSptfqmr,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSptfqmr(cvode_mem,pretype,maxl)
    __CVSptfqmr(convert(CVODEMemPtr,cvode_mem),convert(Cint,pretype),convert(Cint,maxl))
end

function __CVSptfqmrB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSptfqmrB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end

function CVSptfqmrB(cvode_mem,which,pretypeB,maxlB)
    __CVSptfqmrB(convert(CVODEMemPtr,cvode_mem),convert(Cint,which),convert(Cint,pretypeB),convert(Cint,maxlB))
end
