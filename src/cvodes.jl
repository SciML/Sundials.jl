# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,libsundials_cvodes),CVODEMemPtr,(Cint,Cint),lmm,iter)
end

function CVodeInit(cvode_mem::CVODEMemPtr,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,libsundials_cvodes),Cint,(CVODEMemPtr,CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem::CVODEMemPtr,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem::CVODEMemPtr,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem::CVODEMemPtr,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem::CVODEMemPtr,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,CVEwtFn),cvode_mem,efun)
end

function CVodeQuadInit(cvode_mem::CVODEMemPtr,fQ::CVQuadRhsFn,yQ0::N_Vector)
    ccall((:CVodeQuadInit,libsundials_cvodes),Cint,(CVODEMemPtr,CVQuadRhsFn,N_Vector),cvode_mem,fQ,yQ0)
end

function CVodeQuadReInit(cvode_mem::CVODEMemPtr,yQ0::N_Vector)
    ccall((:CVodeQuadReInit,libsundials_cvodes),Cint,(CVODEMemPtr,N_Vector),cvode_mem,yQ0)
end

function CVodeQuadSStolerances(cvode_mem::CVODEMemPtr,reltolQ::realtype,abstolQ::realtype)
    ccall((:CVodeQuadSStolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,realtype),cvode_mem,reltolQ,abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem::CVODEMemPtr,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:CVodeQuadSVtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,reltolQ,abstolQ)
end

function CVodeSensInit(cvode_mem::CVODEMemPtr,Ns::Cint,ism::Cint,fS::CVSensRhsFn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,CVSensRhsFn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS,yS0)
end

function CVodeSensInit1(cvode_mem::CVODEMemPtr,Ns::Cint,ism::Cint,fS1::CVSensRhs1Fn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit1,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,CVSensRhs1Fn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS1,yS0)
end

function CVodeSensReInit(cvode_mem::CVODEMemPtr,ism::Cint,yS0::Ptr{N_Vector})
    ccall((:CVodeSensReInit,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{N_Vector}),cvode_mem,ism,yS0)
end

function CVodeSensSStolerances(cvode_mem::CVODEMemPtr,reltolS::realtype,abstolS::Ptr{realtype})
    ccall((:CVodeSensSStolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Ptr{realtype}),cvode_mem,reltolS,abstolS)
end

function CVodeSensSVtolerances(cvode_mem::CVODEMemPtr,reltolS::realtype,abstolS::Ptr{N_Vector})
    ccall((:CVodeSensSVtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Ptr{N_Vector}),cvode_mem,reltolS,abstolS)
end

function CVodeSensEEtolerances(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSensEEtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVodeQuadSensInit(cvode_mem::CVODEMemPtr,fQS::CVQuadSensRhsFn,yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensInit,libsundials_cvodes),Cint,(CVODEMemPtr,CVQuadSensRhsFn,Ptr{N_Vector}),cvode_mem,fQS,yQS0)
end

function CVodeQuadSensReInit(cvode_mem::CVODEMemPtr,yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensReInit,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{N_Vector}),cvode_mem,yQS0)
end

function CVodeQuadSensSStolerances(cvode_mem::CVODEMemPtr,reltolQS::realtype,abstolQS::Ptr{realtype})
    ccall((:CVodeQuadSensSStolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Ptr{realtype}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensSVtolerances(cvode_mem::CVODEMemPtr,reltolQS::realtype,abstolQS::Ptr{N_Vector})
    ccall((:CVodeQuadSensSVtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Ptr{N_Vector}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensEEtolerances(cvode_mem::CVODEMemPtr)
    ccall((:CVodeQuadSensEEtolerances,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVodeRootInit(cvode_mem::CVODEMemPtr,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVodeFree(cvode_mem::Ref{CVODEMemPtr})
    ccall((:CVodeFree,libsundials_cvodes),Void,(Ref{CVODEMemPtr},),cvode_mem)
end

function CVodeQuadFree(cvode_mem::CVODEMemPtr)
    ccall((:CVodeQuadFree,libsundials_cvodes),Void,(CVODEMemPtr,),cvode_mem)
end

function CVodeSensFree(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSensFree,libsundials_cvodes),Void,(CVODEMemPtr,),cvode_mem)
end

function CVodeQuadSensFree(cvode_mem::CVODEMemPtr)
    ccall((:CVodeQuadSensFree,libsundials_cvodes),Void,(CVODEMemPtr,),cvode_mem)
end

function CVodeSetErrHandlerFn(cvode_mem::CVODEMemPtr,ehfun::CVErrHandlerFn,eh_data::Ptr{Void})
    ccall((:CVodeSetErrHandlerFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem::CVODEMemPtr,errfp::Ptr{FILE})
    ccall((:CVodeSetErrFile,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem::CVODEMemPtr,user_data::Any)
    ccall((:CVodeSetUserData,libsundials_cvodes),Cint,(CVODEMemPtr,Any),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem::CVODEMemPtr,maxord::Cint)
    ccall((:CVodeSetMaxOrd,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem::CVODEMemPtr,mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,libsundials_cvodes),Cint,(CVODEMemPtr,Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem::CVODEMemPtr,mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem::CVODEMemPtr,stldet::Cint)
    ccall((:CVodeSetStabLimDet,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem::CVODEMemPtr,hin::realtype)
    ccall((:CVodeSetInitStep,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem::CVODEMemPtr,hmin::realtype)
    ccall((:CVodeSetMinStep,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem::CVODEMemPtr,hmax::realtype)
    ccall((:CVodeSetMaxStep,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem::CVODEMemPtr,tstop::realtype)
    ccall((:CVodeSetStopTime,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem::CVODEMemPtr,maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem::CVODEMemPtr,maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem::CVODEMemPtr,maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem::CVODEMemPtr,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem::CVODEMemPtr,iter::Cint)
    ccall((:CVodeSetIterType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem::CVODEMemPtr,rootdir::Ptr{Cint})
    ccall((:CVodeSetRootDirection,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSetNoInactiveRootWarn,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVodeSetQuadErrCon(cvode_mem::CVODEMemPtr,errconQ::Cint)
    ccall((:CVodeSetQuadErrCon,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,errconQ)
end

function CVodeSetSensDQMethod(cvode_mem::CVODEMemPtr,DQtype::Cint,DQrhomax::realtype)
    ccall((:CVodeSetSensDQMethod,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,DQtype,DQrhomax)
end

function CVodeSetSensErrCon(cvode_mem::CVODEMemPtr,errconS::Cint)
    ccall((:CVodeSetSensErrCon,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,errconS)
end

function CVodeSetSensMaxNonlinIters(cvode_mem::CVODEMemPtr,maxcorS::Cint)
    ccall((:CVodeSetSensMaxNonlinIters,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxcorS)
end

function CVodeSetSensParams(cvode_mem::CVODEMemPtr,p::Ptr{realtype},pbar::Ptr{realtype},plist::Ptr{Cint})
    ccall((:CVodeSetSensParams,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Ptr{realtype},Ptr{Cint}),cvode_mem,p,pbar,plist)
end

function CVodeSetQuadSensErrCon(cvode_mem::CVODEMemPtr,errconQS::Cint)
    ccall((:CVodeSetQuadSensErrCon,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,errconQS)
end

function CVodeSensToggleOff(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSensToggleOff,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVode(cvode_mem::CVODEMemPtr,tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint)
    ccall((:CVode,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetQuad(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},yQout::N_Vector)
    ccall((:CVodeGetQuad,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},N_Vector),cvode_mem,tret,yQout)
end

function CVodeGetQuadDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetQuadDky,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetSens(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},ySout::Ptr{N_Vector})
    ccall((:CVodeGetSens,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,ySout)
end

function CVodeGetSens1(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},is::Cint,ySout::N_Vector)
    ccall((:CVodeGetSens1,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,ySout)
end

function CVodeGetSensDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dkyA::Ptr{N_Vector})
    ccall((:CVodeGetSensDky,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyA)
end

function CVodeGetSensDky1(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,is::Cint,dky::N_Vector)
    ccall((:CVodeGetSensDky1,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dky)
end

function CVodeGetQuadSens(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},yQSout::Ptr{N_Vector})
    ccall((:CVodeGetQuadSens,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,yQSout)
end

function CVodeGetQuadSens1(cvode_mem::CVODEMemPtr,tret::Ptr{realtype},is::Cint,yQSout::N_Vector)
    ccall((:CVodeGetQuadSens1,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,yQSout)
end

function CVodeGetQuadSensDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dkyQS_all::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensDky,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyQS_all)
end

function CVodeGetQuadSensDky1(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:CVodeGetQuadSensDky1,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dkyQS)
end

function CVodeGetWorkSpace(cvode_mem::CVODEMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:CVodeGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem::CVODEMemPtr,nsteps::Ptr{Clong})
    ccall((:CVodeGetNumSteps,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevals::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem::CVODEMemPtr,nlinsetups::Ptr{Clong})
    ccall((:CVodeGetNumLinSolvSetups,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem::CVODEMemPtr,netfails::Ptr{Clong})
    ccall((:CVodeGetNumErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem::CVODEMemPtr,qlast::Ptr{Cint})
    ccall((:CVodeGetLastOrder,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem::CVODEMemPtr,qcur::Ptr{Cint})
    ccall((:CVodeGetCurrentOrder,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem::CVODEMemPtr,nslred::Ptr{Clong})
    ccall((:CVodeGetNumStabLimOrderReds,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem::CVODEMemPtr,hinused::Ptr{realtype})
    ccall((:CVodeGetActualInitStep,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem::CVODEMemPtr,hlast::Ptr{realtype})
    ccall((:CVodeGetLastStep,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem::CVODEMemPtr,hcur::Ptr{realtype})
    ccall((:CVodeGetCurrentStep,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem::CVODEMemPtr,tcur::Ptr{realtype})
    ccall((:CVodeGetCurrentTime,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem::CVODEMemPtr,tolsfac::Ptr{realtype})
    ccall((:CVodeGetTolScaleFactor,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem::CVODEMemPtr,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,libsundials_cvodes),Cint,(CVODEMemPtr,N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem::CVODEMemPtr,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,libsundials_cvodes),Cint,(CVODEMemPtr,N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem::CVODEMemPtr,ngevals::Ptr{Clong})
    ccall((:CVodeGetNumGEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem::CVODEMemPtr,rootsfound::Ptr{Cint})
    ccall((:CVodeGetRootInfo,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem::CVODEMemPtr,nsteps::Ptr{Clong},nfevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:CVodeGetIntegratorStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem::CVODEMemPtr,nniters::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem::CVODEMemPtr,nncfails::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem::CVODEMemPtr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:CVodeGetNonlinSolvStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVodeGetQuadNumRhsEvals(cvode_mem::CVODEMemPtr,nfQevals::Ptr{Clong})
    ccall((:CVodeGetQuadNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfQevals)
end

function CVodeGetQuadNumErrTestFails(cvode_mem::CVODEMemPtr,nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadNumErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nQetfails)
end

function CVodeGetQuadErrWeights(cvode_mem::CVODEMemPtr,eQweight::N_Vector)
    ccall((:CVodeGetQuadErrWeights,libsundials_cvodes),Cint,(CVODEMemPtr,N_Vector),cvode_mem,eQweight)
end

function CVodeGetQuadStats(cvode_mem::CVODEMemPtr,nfQevals::Ptr{Clong},nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nfQevals,nQetfails)
end

function CVodeGetSensNumRhsEvals(cvode_mem::CVODEMemPtr,nfSevals::Ptr{Clong})
    ccall((:CVodeGetSensNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfSevals)
end

function CVodeGetNumRhsEvalsSens(cvode_mem::CVODEMemPtr,nfevalsS::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvalsSens,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsS)
end

function CVodeGetSensNumErrTestFails(cvode_mem::CVODEMemPtr,nSetfails::Ptr{Clong})
    ccall((:CVodeGetSensNumErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSetfails)
end

function CVodeGetSensNumLinSolvSetups(cvode_mem::CVODEMemPtr,nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensNumLinSolvSetups,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlinsetupsS)
end

function CVodeGetSensErrWeights(cvode_mem::CVODEMemPtr,eSweight::Ptr{N_Vector})
    ccall((:CVodeGetSensErrWeights,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{N_Vector}),cvode_mem,eSweight)
end

function CVodeGetSensStats(cvode_mem::CVODEMemPtr,nfSevals::Ptr{Clong},nfevalsS::Ptr{Clong},nSetfails::Ptr{Clong},nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
end

function CVodeGetSensNumNonlinSolvIters(cvode_mem::CVODEMemPtr,nSniters::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSniters)
end

function CVodeGetSensNumNonlinSolvConvFails(cvode_mem::CVODEMemPtr,nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSncfails)
end

function CVodeGetStgrSensNumNonlinSolvIters(cvode_mem::CVODEMemPtr,nSTGR1niters::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSTGR1niters)
end

function CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem::CVODEMemPtr,nSTGR1ncfails::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nSTGR1ncfails)
end

function CVodeGetSensNonlinSolvStats(cvode_mem::CVODEMemPtr,nSniters::Ptr{Clong},nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNonlinSolvStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nSniters,nSncfails)
end

function CVodeGetQuadSensNumRhsEvals(cvode_mem::CVODEMemPtr,nfQSevals::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfQSevals)
end

function CVodeGetQuadSensNumErrTestFails(cvode_mem::CVODEMemPtr,nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumErrTestFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nQSetfails)
end

function CVodeGetQuadSensErrWeights(cvode_mem::CVODEMemPtr,eQSweight::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensErrWeights,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{N_Vector}),cvode_mem,eQSweight)
end

function CVodeGetQuadSensStats(cvode_mem::CVODEMemPtr,nfQSevals::Ptr{Clong},nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensStats,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nfQSevals,nQSetfails)
end

function CVodeAdjInit(cvode_mem::CVODEMemPtr,steps::Clong,interp::Cint)
    ccall((:CVodeAdjInit,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Cint),cvode_mem,steps,interp)
end

function CVodeAdjReInit(cvode_mem::CVODEMemPtr)
    ccall((:CVodeAdjReInit,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVodeAdjFree(cvode_mem::CVODEMemPtr)
    ccall((:CVodeAdjFree,libsundials_cvodes),Void,(CVODEMemPtr,),cvode_mem)
end

function CVodeCreateB(cvode_mem::CVODEMemPtr,lmmB::Cint,iterB::Cint,which::Ptr{Cint})
    ccall((:CVodeCreateB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,Ptr{Cint}),cvode_mem,lmmB,iterB,which)
end

function CVodeInitB(cvode_mem::CVODEMemPtr,which::Cint,fB::CVRhsFnB,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVRhsFnB,realtype,N_Vector),cvode_mem,which,fB,tB0,yB0)
end

function CVodeInitBS(cvode_mem::CVODEMemPtr,which::Cint,fBs::CVRhsFnBS,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitBS,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVRhsFnBS,realtype,N_Vector),cvode_mem,which,fBs,tB0,yB0)
end

function CVodeReInitB(cvode_mem::CVODEMemPtr,which::Cint,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeReInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,N_Vector),cvode_mem,which,tB0,yB0)
end

function CVodeSStolerancesB(cvode_mem::CVODEMemPtr,which::Cint,reltolB::realtype,abstolB::realtype)
    ccall((:CVodeSStolerancesB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,realtype),cvode_mem,which,reltolB,abstolB)
end

function CVodeSVtolerancesB(cvode_mem::CVODEMemPtr,which::Cint,reltolB::realtype,abstolB::N_Vector)
    ccall((:CVodeSVtolerancesB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,N_Vector),cvode_mem,which,reltolB,abstolB)
end

function CVodeQuadInitB(cvode_mem::CVODEMemPtr,which::Cint,fQB::CVQuadRhsFnB,yQB0::N_Vector)
    ccall((:CVodeQuadInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVQuadRhsFnB,N_Vector),cvode_mem,which,fQB,yQB0)
end

function CVodeQuadInitBS(cvode_mem::CVODEMemPtr,which::Cint,fQBs::CVQuadRhsFnBS,yQB0::N_Vector)
    ccall((:CVodeQuadInitBS,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVQuadRhsFnBS,N_Vector),cvode_mem,which,fQBs,yQB0)
end

function CVodeQuadReInitB(cvode_mem::CVODEMemPtr,which::Cint,yQB0::N_Vector)
    ccall((:CVodeQuadReInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,N_Vector),cvode_mem,which,yQB0)
end

function CVodeQuadSStolerancesB(cvode_mem::CVODEMemPtr,which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:CVodeQuadSStolerancesB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,realtype),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem::CVODEMemPtr,which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:CVodeQuadSVtolerancesB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype,N_Vector),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeF(cvode_mem::CVODEMemPtr,tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint,ncheckPtr::Ptr{Cint})
    ccall((:CVodeF,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector,Ptr{realtype},Cint,Ptr{Cint}),cvode_mem,tout,yout,tret,itask,ncheckPtr)
end

function CVodeB(cvode_mem::CVODEMemPtr,tBout::realtype,itaskB::Cint)
    ccall((:CVodeB,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,Cint),cvode_mem,tBout,itaskB)
end

function CVodeSetAdjNoSensi(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSetAdjNoSensi,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVodeSetIterTypeB(cvode_mem::CVODEMemPtr,which::Cint,iterB::Cint)
    ccall((:CVodeSetIterTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,iterB)
end

function CVodeSetUserDataB(cvode_mem::CVODEMemPtr,which::Cint,user_dataB::Any)
    ccall((:CVodeSetUserDataB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Any),cvode_mem,which,user_dataB)
end

function CVodeSetMaxOrdB(cvode_mem::CVODEMemPtr,which::Cint,maxordB::Cint)
    ccall((:CVodeSetMaxOrdB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,maxordB)
end

function CVodeSetMaxNumStepsB(cvode_mem::CVODEMemPtr,which::Cint,mxstepsB::Clong)
    ccall((:CVodeSetMaxNumStepsB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong),cvode_mem,which,mxstepsB)
end

function CVodeSetStabLimDetB(cvode_mem::CVODEMemPtr,which::Cint,stldetB::Cint)
    ccall((:CVodeSetStabLimDetB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,stldetB)
end

function CVodeSetInitStepB(cvode_mem::CVODEMemPtr,which::Cint,hinB::realtype)
    ccall((:CVodeSetInitStepB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,hinB)
end

function CVodeSetMinStepB(cvode_mem::CVODEMemPtr,which::Cint,hminB::realtype)
    ccall((:CVodeSetMinStepB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,hminB)
end

function CVodeSetMaxStepB(cvode_mem::CVODEMemPtr,which::Cint,hmaxB::realtype)
    ccall((:CVodeSetMaxStepB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,hmaxB)
end

function CVodeSetQuadErrConB(cvode_mem::CVODEMemPtr,which::Cint,errconQB::Cint)
    ccall((:CVodeSetQuadErrConB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,errconQB)
end

function CVodeGetB(cvode_mem::CVODEMemPtr,which::Cint,tBret::Ptr{realtype},yB::N_Vector)
    ccall((:CVodeGetB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,yB)
end

function CVodeGetQuadB(cvode_mem::CVODEMemPtr,which::Cint,tBret::Ptr{realtype},qB::N_Vector)
    ccall((:CVodeGetQuadB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,qB)
end

function CVodeGetAdjCVodeBmem(cvode_mem::CVODEMemPtr,which::Cint)
    ccall((:CVodeGetAdjCVodeBmem,libsundials_cvodes),Ptr{Void},(CVODEMemPtr,Cint),cvode_mem,which)
end

function CVodeGetAdjY(cvode_mem::CVODEMemPtr,t::realtype,y::N_Vector)
    ccall((:CVodeGetAdjY,libsundials_cvodes),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,t,y)
end

function CVodeGetAdjCheckPointsInfo(cvode_mem::CVODEMemPtr,ckpnt::Ptr{CVadjCheckPointRec})
    ccall((:CVodeGetAdjCheckPointsInfo,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{CVadjCheckPointRec}),cvode_mem,ckpnt)
end

function CVodeGetAdjDataPointHermite(cvode_mem::CVODEMemPtr,which::Cint,t::Ptr{realtype},y::N_Vector,yd::N_Vector)
    ccall((:CVodeGetAdjDataPointHermite,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{realtype},N_Vector,N_Vector),cvode_mem,which,t,y,yd)
end

function CVodeGetAdjDataPointPolynomial(cvode_mem::CVODEMemPtr,which::Cint,t::Ptr{realtype},order::Ptr{Cint},y::N_Vector)
    ccall((:CVodeGetAdjDataPointPolynomial,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Ptr{realtype},Ptr{Cint},N_Vector),cvode_mem,which,t,order,y)
end

function CVodeGetAdjCurrentCheckPoint(cvode_mem::CVODEMemPtr,addr::Ptr{Ptr{Void}})
    ccall((:CVodeGetAdjCurrentCheckPoint,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Ptr{Void}}),cvode_mem,addr)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDlsSetDenseJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDlsGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem::CVODEMemPtr,njevals::Ptr{Clong})
    ccall((:CVDlsGetNumJacEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDlsGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDlsGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVDlsSetDenseJacFnB(cvode_mem::CVODEMemPtr,which::Cint,jacB::CVDlsDenseJacFnB)
    ccall((:CVDlsSetDenseJacFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVDlsDenseJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetBandJacFnB(cvode_mem::CVODEMemPtr,which::Cint,jacB::CVDlsBandJacFnB)
    ccall((:CVDlsSetBandJacFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVDlsBandJacFnB),cvode_mem,which,jacB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVSpilsSetPrecType(cvode_mem::CVODEMemPtr,pretype::Cint)
    ccall((:CVSpilsSetPrecType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem::CVODEMemPtr,gstype::Cint)
    ccall((:CVSpilsSetGSType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem::CVODEMemPtr,maxl::Cint)
    ccall((:CVSpilsSetMaxl,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem::CVODEMemPtr,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem::CVODEMemPtr,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,libsundials_cvodes),Cint,(CVODEMemPtr,CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem::CVODEMemPtr,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem::CVODEMemPtr,npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem::CVODEMemPtr,npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem::CVODEMemPtr,nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem::CVODEMemPtr,nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem::CVODEMemPtr,njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVSpilsSetPrecTypeB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem::CVODEMemPtr,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpslinB(cvode_mem::CVODEMemPtr,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpslinB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem::CVODEMemPtr,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem::CVODEMemPtr,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem::CVODEMemPtr,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDlsSetDenseJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDlsGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem::CVODEMemPtr,njevals::Ptr{Clong})
    ccall((:CVDlsGetNumJacEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDlsGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDlsGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVDlsSetDenseJacFnB(cvode_mem::CVODEMemPtr,which::Cint,jacB::CVDlsDenseJacFnB)
    ccall((:CVDlsSetDenseJacFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVDlsDenseJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetBandJacFnB(cvode_mem::CVODEMemPtr,which::Cint,jacB::CVDlsBandJacFnB)
    ccall((:CVDlsSetBandJacFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVDlsBandJacFnB),cvode_mem,which,jacB)
end

function CVBand(cvode_mem::CVODEMemPtr,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:CVBand,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Clong,Clong),cvode_mem,N,mupper,mlower)
end

function CVBandB(cvode_mem::CVODEMemPtr,which::Cint,nB::Clong,mupperB::Clong,mlowerB::Clong)
    ccall((:CVBandB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong,Clong,Clong),cvode_mem,which,nB,mupperB,mlowerB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVBandPrecInit(cvode_mem::CVODEMemPtr,N::Clong,mu::Clong,ml::Clong)
    ccall((:CVBandPrecInit,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Clong,Clong),cvode_mem,N,mu,ml)
end

function CVBandPrecGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBandPrecGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBandPrecGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsBP::Ptr{Clong})
    ccall((:CVBandPrecGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsBP)
end

function CVBandPrecInitB(cvode_mem::CVODEMemPtr,which::Cint,nB::Clong,muB::Clong,mlB::Clong)
    ccall((:CVBandPrecInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong,Clong,Clong),cvode_mem,which,nB,muB,mlB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVBBDPrecInit(cvode_mem::CVODEMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function CVBBDPrecReInit(cvode_mem::CVODEMemPtr,mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:CVBBDPrecReInit,libsundials_cvodes),Cint,(CVODEMemPtr,Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwBBDP,leniwBBDP)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem::CVODEMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetNumGfnEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,ngevalsBBDP)
end

function CVBBDPrecInitB(cvode_mem::CVODEMemPtr,which::Cint,NlocalB::Clong,mudqB::Clong,mldqB::Clong,mukeepB::Clong,mlkeepB::Clong,dqrelyB::realtype,glocB::CVLocalFnB,cfnB::CVCommFnB)
    ccall((:CVBBDPrecInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFnB,CVCommFnB),cvode_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dqrelyB,glocB,cfnB)
end

function CVBBDPrecReInitB(cvode_mem::CVODEMemPtr,which::Cint,mudqB::Clong,mldqB::Clong,dqrelyB::realtype)
    ccall((:CVBBDPrecReInitB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong,Clong,realtype),cvode_mem,which,mudqB,mldqB,dqrelyB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDlsSetDenseJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDlsGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem::CVODEMemPtr,njevals::Ptr{Clong})
    ccall((:CVDlsGetNumJacEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDlsGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDlsGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVDlsSetDenseJacFnB(cvode_mem::CVODEMemPtr,which::Cint,jacB::CVDlsDenseJacFnB)
    ccall((:CVDlsSetDenseJacFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVDlsDenseJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetBandJacFnB(cvode_mem::CVODEMemPtr,which::Cint,jacB::CVDlsBandJacFnB)
    ccall((:CVDlsSetBandJacFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVDlsBandJacFnB),cvode_mem,which,jacB)
end

function CVDense(cvode_mem::CVODEMemPtr,N::Clong)
    ccall((:CVDense,libsundials_cvodes),Cint,(CVODEMemPtr,Clong),cvode_mem,N)
end

function CVDenseB(cvode_mem::CVODEMemPtr,which::Cint,nB::Clong)
    ccall((:CVDenseB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Clong),cvode_mem,which,nB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_diag.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDiag(cvode_mem::CVODEMemPtr)
    ccall((:CVDiag,libsundials_cvodes),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVDiagGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDiagGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDiagGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDiagGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDiagGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDiagGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVDiagB(cvode_mem::CVODEMemPtr,which::Cint)
    ccall((:CVDiagB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,which)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVSpilsSetPrecType(cvode_mem::CVODEMemPtr,pretype::Cint)
    ccall((:CVSpilsSetPrecType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem::CVODEMemPtr,gstype::Cint)
    ccall((:CVSpilsSetGSType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem::CVODEMemPtr,maxl::Cint)
    ccall((:CVSpilsSetMaxl,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem::CVODEMemPtr,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem::CVODEMemPtr,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,libsundials_cvodes),Cint,(CVODEMemPtr,CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem::CVODEMemPtr,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem::CVODEMemPtr,npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem::CVODEMemPtr,npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem::CVODEMemPtr,nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem::CVODEMemPtr,nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem::CVODEMemPtr,njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVSpilsSetPrecTypeB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem::CVODEMemPtr,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpslinB(cvode_mem::CVODEMemPtr,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpslinB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem::CVODEMemPtr,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem::CVODEMemPtr,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem::CVODEMemPtr,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSpbcg(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSpbcg,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSpbcgB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSpbcgB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVSpilsSetPrecType(cvode_mem::CVODEMemPtr,pretype::Cint)
    ccall((:CVSpilsSetPrecType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem::CVODEMemPtr,gstype::Cint)
    ccall((:CVSpilsSetGSType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem::CVODEMemPtr,maxl::Cint)
    ccall((:CVSpilsSetMaxl,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem::CVODEMemPtr,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem::CVODEMemPtr,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,libsundials_cvodes),Cint,(CVODEMemPtr,CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem::CVODEMemPtr,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem::CVODEMemPtr,npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem::CVODEMemPtr,npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem::CVODEMemPtr,nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem::CVODEMemPtr,nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem::CVODEMemPtr,njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVSpilsSetPrecTypeB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem::CVODEMemPtr,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpslinB(cvode_mem::CVODEMemPtr,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpslinB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem::CVODEMemPtr,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem::CVODEMemPtr,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem::CVODEMemPtr,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSpgmr(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSpgmr,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSpgmrB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSpgmrB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVSpilsSetPrecType(cvode_mem::CVODEMemPtr,pretype::Cint)
    ccall((:CVSpilsSetPrecType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem::CVODEMemPtr,gstype::Cint)
    ccall((:CVSpilsSetGSType,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem::CVODEMemPtr,maxl::Cint)
    ccall((:CVSpilsSetMaxl,libsundials_cvodes),Cint,(CVODEMemPtr,Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem::CVODEMemPtr,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,libsundials_cvodes),Cint,(CVODEMemPtr,realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem::CVODEMemPtr,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,libsundials_cvodes),Cint,(CVODEMemPtr,CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem::CVODEMemPtr,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,libsundials_cvodes),Cint,(CVODEMemPtr,CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem::CVODEMemPtr,npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem::CVODEMemPtr,npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem::CVODEMemPtr,nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem::CVODEMemPtr,nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem::CVODEMemPtr,njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,libsundials_cvodes),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,libsundials_cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVSpilsSetPrecTypeB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem::CVODEMemPtr,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpslinB(cvode_mem::CVODEMemPtr,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpslinB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem::CVODEMemPtr,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem::CVODEMemPtr,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem::CVODEMemPtr,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSptfqmr(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSptfqmr,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSptfqmrB(cvode_mem::CVODEMemPtr,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSptfqmrB,libsundials_cvodes),Cint,(CVODEMemPtr,Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
