# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,cvodes),Ptr{Void},(Cint,Cint),lmm,iter)
end

function CVodeInit(cvode_mem,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,cvodes),Cint,(Ptr{Void},CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,cvodes),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,cvodes),Cint,(Ptr{Void},CVEwtFn),cvode_mem,efun)
end

function CVodeQuadInit(cvode_mem,fQ::CVQuadRhsFn,yQ0::N_Vector)
    ccall((:CVodeQuadInit,cvodes),Cint,(Ptr{Void},CVQuadRhsFn,N_Vector),cvode_mem,fQ,yQ0)
end

function CVodeQuadReInit(cvode_mem,yQ0::N_Vector)
    ccall((:CVodeQuadReInit,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,yQ0)
end

function CVodeQuadSStolerances(cvode_mem,reltolQ::realtype,abstolQ::realtype)
    ccall((:CVodeQuadSStolerances,cvodes),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltolQ,abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:CVodeQuadSVtolerances,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltolQ,abstolQ)
end

function CVodeSensInit(cvode_mem,Ns::Cint,ism::Cint,fS::CVSensRhsFn,yS0)
    ccall((:CVodeSensInit,cvodes),Cint,(Ptr{Void},Cint,Cint,CVSensRhsFn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS,yS0)
end

function CVodeSensInit1(cvode_mem,Ns::Cint,ism::Cint,fS1::CVSensRhs1Fn,yS0)
    ccall((:CVodeSensInit1,cvodes),Cint,(Ptr{Void},Cint,Cint,CVSensRhs1Fn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS1,yS0)
end

function CVodeSensReInit(cvode_mem,ism::Cint,yS0)
    ccall((:CVodeSensReInit,cvodes),Cint,(Ptr{Void},Cint,Ptr{N_Vector}),cvode_mem,ism,yS0)
end

function CVodeSensSStolerances(cvode_mem,reltolS::realtype,abstolS)
    ccall((:CVodeSensSStolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{realtype}),cvode_mem,reltolS,abstolS)
end

function CVodeSensSVtolerances(cvode_mem,reltolS::realtype,abstolS)
    ccall((:CVodeSensSVtolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),cvode_mem,reltolS,abstolS)
end

function CVodeSensEEtolerances(cvode_mem)
    ccall((:CVodeSensEEtolerances,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeQuadSensInit(cvode_mem,fQS::CVQuadSensRhsFn,yQS0)
    ccall((:CVodeQuadSensInit,cvodes),Cint,(Ptr{Void},CVQuadSensRhsFn,Ptr{N_Vector}),cvode_mem,fQS,yQS0)
end

function CVodeQuadSensReInit(cvode_mem,yQS0)
    ccall((:CVodeQuadSensReInit,cvodes),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,yQS0)
end

function CVodeQuadSensSStolerances(cvode_mem,reltolQS::realtype,abstolQS)
    ccall((:CVodeQuadSensSStolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{realtype}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensSVtolerances(cvode_mem,reltolQS::realtype,abstolQS)
    ccall((:CVodeQuadSensSVtolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensEEtolerances(cvode_mem)
    ccall((:CVodeQuadSensEEtolerances,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeRootInit(cvode_mem,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,cvodes),Cint,(Ptr{Void},Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVodeFree(cvode_mem)
    ccall((:CVodeFree,cvodes),Void,(Ptr{Ptr{Void}},),cvode_mem)
end

function CVodeQuadFree(cvode_mem)
    ccall((:CVodeQuadFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeSensFree(cvode_mem)
    ccall((:CVodeSensFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeQuadSensFree(cvode_mem)
    ccall((:CVodeQuadSensFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeSetErrHandlerFn(cvode_mem,ehfun::CVErrHandlerFn,eh_data)
    ccall((:CVodeSetErrHandlerFn,cvodes),Cint,(Ptr{Void},CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem,errfp)
    ccall((:CVodeSetErrFile,cvodes),Cint,(Ptr{Void},Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem,user_data)
    ccall((:CVodeSetUserData,cvodes),Cint,(Ptr{Void},Ptr{Void}),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem,maxord::Cint)
    ccall((:CVodeSetMaxOrd,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem,mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,cvodes),Cint,(Ptr{Void},Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem,mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem,stldet::Cint)
    ccall((:CVodeSetStabLimDet,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem,hin::realtype)
    ccall((:CVodeSetInitStep,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem,hmin::realtype)
    ccall((:CVodeSetMinStep,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem,hmax::realtype)
    ccall((:CVodeSetMaxStep,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem,tstop::realtype)
    ccall((:CVodeSetStopTime,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem,maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem,maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem,maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem,iter::Cint)
    ccall((:CVodeSetIterType,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem,rootdir)
    ccall((:CVodeSetRootDirection,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem)
    ccall((:CVodeSetNoInactiveRootWarn,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeSetQuadErrCon(cvode_mem,errconQ::Cint)
    ccall((:CVodeSetQuadErrCon,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,errconQ)
end

function CVodeSetSensDQMethod(cvode_mem,DQtype::Cint,DQrhomax::realtype)
    ccall((:CVodeSetSensDQMethod,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,DQtype,DQrhomax)
end

function CVodeSetSensErrCon(cvode_mem,errconS::Cint)
    ccall((:CVodeSetSensErrCon,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,errconS)
end

function CVodeSetSensMaxNonlinIters(cvode_mem,maxcorS::Cint)
    ccall((:CVodeSetSensMaxNonlinIters,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxcorS)
end

function CVodeSetSensParams(cvode_mem,p,pbar,plist)
    ccall((:CVodeSetSensParams,cvodes),Cint,(Ptr{Void},Ptr{realtype},Ptr{realtype},Ptr{Cint}),cvode_mem,p,pbar,plist)
end

function CVodeSetQuadSensErrCon(cvode_mem,errconQS::Cint)
    ccall((:CVodeSetQuadSensErrCon,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,errconQS)
end

function CVodeSensToggleOff(cvode_mem)
    ccall((:CVodeSensToggleOff,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVode(cvode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:CVode,cvodes),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,cvodes),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetQuad(cvode_mem,tret,yQout::N_Vector)
    ccall((:CVodeGetQuad,cvodes),Cint,(Ptr{Void},Ptr{realtype},N_Vector),cvode_mem,tret,yQout)
end

function CVodeGetQuadDky(cvode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetQuadDky,cvodes),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetSens(cvode_mem,tret,ySout)
    ccall((:CVodeGetSens,cvodes),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,ySout)
end

function CVodeGetSens1(cvode_mem,tret,is::Cint,ySout::N_Vector)
    ccall((:CVodeGetSens1,cvodes),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,ySout)
end

function CVodeGetSensDky(cvode_mem,t::realtype,k::Cint,dkyA)
    ccall((:CVodeGetSensDky,cvodes),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyA)
end

function CVodeGetSensDky1(cvode_mem,t::realtype,k::Cint,is::Cint,dky::N_Vector)
    ccall((:CVodeGetSensDky1,cvodes),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dky)
end

function CVodeGetQuadSens(cvode_mem,tret,yQSout)
    ccall((:CVodeGetQuadSens,cvodes),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,yQSout)
end

function CVodeGetQuadSens1(cvode_mem,tret,is::Cint,yQSout::N_Vector)
    ccall((:CVodeGetQuadSens1,cvodes),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,yQSout)
end

function CVodeGetQuadSensDky(cvode_mem,t::realtype,k::Cint,dkyQS_all)
    ccall((:CVodeGetQuadSensDky,cvodes),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyQS_all)
end

function CVodeGetQuadSensDky1(cvode_mem,t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:CVodeGetQuadSensDky1,cvodes),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dkyQS)
end

function CVodeGetWorkSpace(cvode_mem,lenrw,leniw)
    ccall((:CVodeGetWorkSpace,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem,nsteps)
    ccall((:CVodeGetNumSteps,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem,nfevals)
    ccall((:CVodeGetNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem,nlinsetups)
    ccall((:CVodeGetNumLinSolvSetups,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem,netfails)
    ccall((:CVodeGetNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem,qlast)
    ccall((:CVodeGetLastOrder,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem,qcur)
    ccall((:CVodeGetCurrentOrder,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem,nslred)
    ccall((:CVodeGetNumStabLimOrderReds,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem,hinused)
    ccall((:CVodeGetActualInitStep,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem,hlast)
    ccall((:CVodeGetLastStep,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem,hcur)
    ccall((:CVodeGetCurrentStep,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem,tcur)
    ccall((:CVodeGetCurrentTime,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem,tolsfac)
    ccall((:CVodeGetTolScaleFactor,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem,ngevals)
    ccall((:CVodeGetNumGEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem,rootsfound)
    ccall((:CVodeGetRootInfo,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    ccall((:CVodeGetIntegratorStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem,nniters)
    ccall((:CVodeGetNumNonlinSolvIters,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem,nncfails)
    ccall((:CVodeGetNumNonlinSolvConvFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem,nniters,nncfails)
    ccall((:CVodeGetNonlinSolvStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,cvodes),Cstring,(Clong,),flag)
end

function CVodeGetQuadNumRhsEvals(cvode_mem,nfQevals)
    ccall((:CVodeGetQuadNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfQevals)
end

function CVodeGetQuadNumErrTestFails(cvode_mem,nQetfails)
    ccall((:CVodeGetQuadNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nQetfails)
end

function CVodeGetQuadErrWeights(cvode_mem,eQweight::N_Vector)
    ccall((:CVodeGetQuadErrWeights,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,eQweight)
end

function CVodeGetQuadStats(cvode_mem,nfQevals,nQetfails)
    ccall((:CVodeGetQuadStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nfQevals,nQetfails)
end

function CVodeGetSensNumRhsEvals(cvode_mem,nfSevals)
    ccall((:CVodeGetSensNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfSevals)
end

function CVodeGetNumRhsEvalsSens(cvode_mem,nfevalsS)
    ccall((:CVodeGetNumRhsEvalsSens,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsS)
end

function CVodeGetSensNumErrTestFails(cvode_mem,nSetfails)
    ccall((:CVodeGetSensNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSetfails)
end

function CVodeGetSensNumLinSolvSetups(cvode_mem,nlinsetupsS)
    ccall((:CVodeGetSensNumLinSolvSetups,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetupsS)
end

function CVodeGetSensErrWeights(cvode_mem,eSweight)
    ccall((:CVodeGetSensErrWeights,cvodes),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,eSweight)
end

function CVodeGetSensStats(cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
    ccall((:CVodeGetSensStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
end

function CVodeGetSensNumNonlinSolvIters(cvode_mem,nSniters)
    ccall((:CVodeGetSensNumNonlinSolvIters,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSniters)
end

function CVodeGetSensNumNonlinSolvConvFails(cvode_mem,nSncfails)
    ccall((:CVodeGetSensNumNonlinSolvConvFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSncfails)
end

function CVodeGetStgrSensNumNonlinSolvIters(cvode_mem,nSTGR1niters)
    ccall((:CVodeGetStgrSensNumNonlinSolvIters,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSTGR1niters)
end

function CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem,nSTGR1ncfails)
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSTGR1ncfails)
end

function CVodeGetSensNonlinSolvStats(cvode_mem,nSniters,nSncfails)
    ccall((:CVodeGetSensNonlinSolvStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nSniters,nSncfails)
end

function CVodeGetQuadSensNumRhsEvals(cvode_mem,nfQSevals)
    ccall((:CVodeGetQuadSensNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfQSevals)
end

function CVodeGetQuadSensNumErrTestFails(cvode_mem,nQSetfails)
    ccall((:CVodeGetQuadSensNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nQSetfails)
end

function CVodeGetQuadSensErrWeights(cvode_mem,eQSweight)
    ccall((:CVodeGetQuadSensErrWeights,cvodes),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,eQSweight)
end

function CVodeGetQuadSensStats(cvode_mem,nfQSevals,nQSetfails)
    ccall((:CVodeGetQuadSensStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nfQSevals,nQSetfails)
end

function CVodeAdjInit(cvode_mem,steps::Clong,interp::Cint)
    ccall((:CVodeAdjInit,cvodes),Cint,(Ptr{Void},Clong,Cint),cvode_mem,steps,interp)
end

function CVodeAdjReInit(cvode_mem)
    ccall((:CVodeAdjReInit,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeAdjFree(cvode_mem)
    ccall((:CVodeAdjFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeCreateB(cvode_mem,lmmB::Cint,iterB::Cint,which)
    ccall((:CVodeCreateB,cvodes),Cint,(Ptr{Void},Cint,Cint,Ptr{Cint}),cvode_mem,lmmB,iterB,which)
end

function CVodeInitB(cvode_mem,which::Cint,fB::CVRhsFnB,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitB,cvodes),Cint,(Ptr{Void},Cint,CVRhsFnB,realtype,N_Vector),cvode_mem,which,fB,tB0,yB0)
end

function CVodeInitBS(cvode_mem,which::Cint,fBs::CVRhsFnBS,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitBS,cvodes),Cint,(Ptr{Void},Cint,CVRhsFnBS,realtype,N_Vector),cvode_mem,which,fBs,tB0,yB0)
end

function CVodeReInitB(cvode_mem,which::Cint,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeReInitB,cvodes),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,tB0,yB0)
end

function CVodeSStolerancesB(cvode_mem,which::Cint,reltolB::realtype,abstolB::realtype)
    ccall((:CVodeSStolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,realtype),cvode_mem,which,reltolB,abstolB)
end

function CVodeSVtolerancesB(cvode_mem,which::Cint,reltolB::realtype,abstolB::N_Vector)
    ccall((:CVodeSVtolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,reltolB,abstolB)
end

function CVodeQuadInitB(cvode_mem,which::Cint,fQB::CVQuadRhsFnB,yQB0::N_Vector)
    ccall((:CVodeQuadInitB,cvodes),Cint,(Ptr{Void},Cint,CVQuadRhsFnB,N_Vector),cvode_mem,which,fQB,yQB0)
end

function CVodeQuadInitBS(cvode_mem,which::Cint,fQBs::CVQuadRhsFnBS,yQB0::N_Vector)
    ccall((:CVodeQuadInitBS,cvodes),Cint,(Ptr{Void},Cint,CVQuadRhsFnBS,N_Vector),cvode_mem,which,fQBs,yQB0)
end

function CVodeQuadReInitB(cvode_mem,which::Cint,yQB0::N_Vector)
    ccall((:CVodeQuadReInitB,cvodes),Cint,(Ptr{Void},Cint,N_Vector),cvode_mem,which,yQB0)
end

function CVodeQuadSStolerancesB(cvode_mem,which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:CVodeQuadSStolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,realtype),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem,which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:CVodeQuadSVtolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeF(cvode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint,ncheckPtr)
    ccall((:CVodeF,cvodes),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint,Ptr{Cint}),cvode_mem,tout,yout,tret,itask,ncheckPtr)
end

function CVodeB(cvode_mem,tBout::realtype,itaskB::Cint)
    ccall((:CVodeB,cvodes),Cint,(Ptr{Void},realtype,Cint),cvode_mem,tBout,itaskB)
end

function CVodeSetAdjNoSensi(cvode_mem)
    ccall((:CVodeSetAdjNoSensi,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeSetIterTypeB(cvode_mem,which::Cint,iterB::Cint)
    ccall((:CVodeSetIterTypeB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,iterB)
end

function CVodeSetUserDataB(cvode_mem,which::Cint,user_dataB)
    ccall((:CVodeSetUserDataB,cvodes),Cint,(Ptr{Void},Cint,Ptr{Void}),cvode_mem,which,user_dataB)
end

function CVodeSetMaxOrdB(cvode_mem,which::Cint,maxordB::Cint)
    ccall((:CVodeSetMaxOrdB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxordB)
end

function CVodeSetMaxNumStepsB(cvode_mem,which::Cint,mxstepsB::Clong)
    ccall((:CVodeSetMaxNumStepsB,cvodes),Cint,(Ptr{Void},Cint,Clong),cvode_mem,which,mxstepsB)
end

function CVodeSetStabLimDetB(cvode_mem,which::Cint,stldetB::Cint)
    ccall((:CVodeSetStabLimDetB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,stldetB)
end

function CVodeSetInitStepB(cvode_mem,which::Cint,hinB::realtype)
    ccall((:CVodeSetInitStepB,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hinB)
end

function CVodeSetMinStepB(cvode_mem,which::Cint,hminB::realtype)
    ccall((:CVodeSetMinStepB,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hminB)
end

function CVodeSetMaxStepB(cvode_mem,which::Cint,hmaxB::realtype)
    ccall((:CVodeSetMaxStepB,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hmaxB)
end

function CVodeSetQuadErrConB(cvode_mem,which::Cint,errconQB::Cint)
    ccall((:CVodeSetQuadErrConB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,errconQB)
end

function CVodeGetB(cvode_mem,which::Cint,tBret,yB::N_Vector)
    ccall((:CVodeGetB,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,yB)
end

function CVodeGetQuadB(cvode_mem,which::Cint,tBret,qB::N_Vector)
    ccall((:CVodeGetQuadB,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,qB)
end

function CVodeGetAdjCVodeBmem(cvode_mem,which::Cint)
    ccall((:CVodeGetAdjCVodeBmem,cvodes),Ptr{Void},(Ptr{Void},Cint),cvode_mem,which)
end

function CVodeGetAdjY(cvode_mem,t::realtype,y::N_Vector)
    ccall((:CVodeGetAdjY,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t,y)
end

function CVodeGetAdjCheckPointsInfo(cvode_mem,ckpnt)
    ccall((:CVodeGetAdjCheckPointsInfo,cvodes),Cint,(Ptr{Void},Ptr{CVadjCheckPointRec}),cvode_mem,ckpnt)
end

function CVodeGetAdjDataPointHermite(cvode_mem,which::Cint,t,y::N_Vector,yd::N_Vector)
    ccall((:CVodeGetAdjDataPointHermite,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),cvode_mem,which,t,y,yd)
end

function CVodeGetAdjDataPointPolynomial(cvode_mem,which::Cint,t,order,y::N_Vector)
    ccall((:CVodeGetAdjDataPointPolynomial,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},Ptr{Cint},N_Vector),cvode_mem,which,t,order,y)
end

function CVodeGetAdjCurrentCheckPoint(cvode_mem,addr)
    ccall((:CVodeGetAdjCurrentCheckPoint,cvodes),Cint,(Ptr{Void},Ptr{Ptr{Void}}),cvode_mem,addr)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes_direct.h
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

function CVDlsSetDenseJacFn(cvode_mem,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,cvodes_direct),Cint,(Ptr{Void},CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,cvodes_direct),Cint,(Ptr{Void},CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVDlsGetWorkSpace,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem,njevals)
    ccall((:CVDlsGetNumJacEvals,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem,flag)
    ccall((:CVDlsGetLastFlag,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,cvodes_direct),Cstring,(Clong,),flag)
end

function CVDlsSetDenseJacFnB(cvode_mem,which::Cint,jacB::CVDlsDenseJacFnB)
    ccall((:CVDlsSetDenseJacFnB,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsDenseJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetDenseJacFnBS(cvode_mem,which::Cint,jacBS::CVDlsDenseJacFnBS)
    ccall((:CVDlsSetDenseJacFnBS,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsDenseJacFnBS),cvode_mem,which,jacBS)
end

function CVDlsSetBandJacFnB(cvode_mem,which::Cint,jacB::CVDlsBandJacFnB)
    ccall((:CVDlsSetBandJacFnB,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsBandJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetBandJacFnBS(cvode_mem,which::Cint,jacBS::CVDlsBandJacFnBS)
    ccall((:CVDlsSetBandJacFnBS,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsBandJacFnBS),cvode_mem,which,jacBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

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

function CVSpilsSetPrecType(cvode_mem,pretype::Cint)
    ccall((:CVSpilsSetPrecType,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem,gstype::Cint)
    ccall((:CVSpilsSetGSType,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem,maxl::Cint)
    ccall((:CVSpilsSetMaxl,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,cvodes_spils),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,cvodes_spils),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,cvodes_spils),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVSpilsGetWorkSpace,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    ccall((:CVSpilsGetNumPrecEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    ccall((:CVSpilsGetNumPrecSolves,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    ccall((:CVSpilsGetNumLinIters,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    ccall((:CVSpilsGetNumConvFails,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    ccall((:CVSpilsGetNumJtimesEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    ccall((:CVSpilsGetLastFlag,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,cvodes_spils),Cstring,(Clong,),flag)
end

function CVSpilsSetPrecTypeB(cvode_mem,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpsLinB(cvode_mem,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpsLinB,cvodes_spils),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetPreconditionerBS(cvode_mem,which::Cint,psetBS::CVSpilsPrecSetupFnBS,psolveBS::CVSpilsPrecSolveFnBS)
    ccall((:CVSpilsSetPreconditionerBS,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnBS,CVSpilsPrecSolveFnBS),cvode_mem,which,psetBS,psolveBS)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSpilsSetJacTimesVecFnBS(cvode_mem,which::Cint,jtvBS::CVSpilsJacTimesVecFnBS)
    ccall((:CVSpilsSetJacTimesVecFnBS,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnBS),cvode_mem,which,jtvBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes_band.h
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

function CVDlsSetDenseJacFn(cvode_mem,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,cvodes_direct),Cint,(Ptr{Void},CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,cvodes_direct),Cint,(Ptr{Void},CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVDlsGetWorkSpace,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem,njevals)
    ccall((:CVDlsGetNumJacEvals,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem,flag)
    ccall((:CVDlsGetLastFlag,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,cvodes_direct),Cstring,(Clong,),flag)
end

function CVDlsSetDenseJacFnB(cvode_mem,which::Cint,jacB::CVDlsDenseJacFnB)
    ccall((:CVDlsSetDenseJacFnB,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsDenseJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetDenseJacFnBS(cvode_mem,which::Cint,jacBS::CVDlsDenseJacFnBS)
    ccall((:CVDlsSetDenseJacFnBS,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsDenseJacFnBS),cvode_mem,which,jacBS)
end

function CVDlsSetBandJacFnB(cvode_mem,which::Cint,jacB::CVDlsBandJacFnB)
    ccall((:CVDlsSetBandJacFnB,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsBandJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetBandJacFnBS(cvode_mem,which::Cint,jacBS::CVDlsBandJacFnBS)
    ccall((:CVDlsSetBandJacFnBS,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsBandJacFnBS),cvode_mem,which,jacBS)
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

function CVBand(cvode_mem,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:CVBand,cvodes_band),Cint,(Ptr{Void},Clong,Clong,Clong),cvode_mem,N,mupper,mlower)
end

function CVBandB(cvode_mem,which::Cint,nB::Clong,mupperB::Clong,mlowerB::Clong)
    ccall((:CVBandB,cvodes_band),Cint,(Ptr{Void},Cint,Clong,Clong,Clong),cvode_mem,which,nB,mupperB,mlowerB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBandPrecInit(cvode_mem,N::Clong,mu::Clong,ml::Clong)
    ccall((:CVBandPrecInit,cvodes_bandpre),Cint,(Ptr{Void},Clong,Clong,Clong),cvode_mem,N,mu,ml)
end

function CVBandPrecGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVBandPrecGetWorkSpace,cvodes_bandpre),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBandPrecGetNumRhsEvals(cvode_mem,nfevalsBP)
    ccall((:CVBandPrecGetNumRhsEvals,cvodes_bandpre),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsBP)
end

function CVBandPrecInitB(cvode_mem,which::Cint,nB::Clong,muB::Clong,mlB::Clong)
    ccall((:CVBandPrecInitB,cvodes_bandpre),Cint,(Ptr{Void},Cint,Clong,Clong,Clong),cvode_mem,which,nB,muB,mlB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBBDPrecInit(cvode_mem,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,cvodes_bbdpre),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function CVBBDPrecReInit(cvode_mem,mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:CVBBDPrecReInit,cvodes_bbdpre),Cint,(Ptr{Void},Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem,lenrwBBDP,leniwBBDP)
    ccall((:CVBBDPrecGetWorkSpace,cvodes_bbdpre),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwBBDP,leniwBBDP)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem,ngevalsBBDP)
    ccall((:CVBBDPrecGetNumGfnEvals,cvodes_bbdpre),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevalsBBDP)
end

function CVBBDPrecInitB(cvode_mem,which::Cint,NlocalB::Clong,mudqB::Clong,mldqB::Clong,mukeepB::Clong,mlkeepB::Clong,dqrelyB::realtype,glocB::CVLocalFnB,cfnB::CVCommFnB)
    ccall((:CVBBDPrecInitB,cvodes_bbdpre),Cint,(Ptr{Void},Cint,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFnB,CVCommFnB),cvode_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dqrelyB,glocB,cfnB)
end

function CVBBDPrecReInitB(cvode_mem,which::Cint,mudqB::Clong,mldqB::Clong,dqrelyB::realtype)
    ccall((:CVBBDPrecReInitB,cvodes_bbdpre),Cint,(Ptr{Void},Cint,Clong,Clong,realtype),cvode_mem,which,mudqB,mldqB,dqrelyB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes_dense.h
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

function CVDlsSetDenseJacFn(cvode_mem,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,cvodes_direct),Cint,(Ptr{Void},CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,cvodes_direct),Cint,(Ptr{Void},CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVDlsGetWorkSpace,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem,njevals)
    ccall((:CVDlsGetNumJacEvals,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem,flag)
    ccall((:CVDlsGetLastFlag,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,cvodes_direct),Cstring,(Clong,),flag)
end

function CVDlsSetDenseJacFnB(cvode_mem,which::Cint,jacB::CVDlsDenseJacFnB)
    ccall((:CVDlsSetDenseJacFnB,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsDenseJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetDenseJacFnBS(cvode_mem,which::Cint,jacBS::CVDlsDenseJacFnBS)
    ccall((:CVDlsSetDenseJacFnBS,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsDenseJacFnBS),cvode_mem,which,jacBS)
end

function CVDlsSetBandJacFnB(cvode_mem,which::Cint,jacB::CVDlsBandJacFnB)
    ccall((:CVDlsSetBandJacFnB,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsBandJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetBandJacFnBS(cvode_mem,which::Cint,jacBS::CVDlsBandJacFnBS)
    ccall((:CVDlsSetBandJacFnBS,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsBandJacFnBS),cvode_mem,which,jacBS)
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

function CVDense(cvode_mem,N::Clong)
    ccall((:CVDense,cvodes_dense),Cint,(Ptr{Void},Clong),cvode_mem,N)
end

function CVDenseB(cvode_mem,which::Cint,nB::Clong)
    ccall((:CVDenseB,cvodes_dense),Cint,(Ptr{Void},Cint,Clong),cvode_mem,which,nB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes_diag.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVDiag(cvode_mem)
    ccall((:CVDiag,cvodes_diag),Cint,(Ptr{Void},),cvode_mem)
end

function CVDiagGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVDiagGetWorkSpace,cvodes_diag),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDiagGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVDiagGetNumRhsEvals,cvodes_diag),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDiagGetLastFlag(cvode_mem,flag)
    ccall((:CVDiagGetLastFlag,cvodes_diag),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName,cvodes_diag),Cstring,(Clong,),flag)
end

function CVDiagB(cvode_mem,which::Cint)
    ccall((:CVDiagB,cvodes_diag),Cint,(Ptr{Void},Cint),cvode_mem,which)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,cvodes),Ptr{Void},(Cint,Cint),lmm,iter)
end

function CVodeInit(cvode_mem,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,cvodes),Cint,(Ptr{Void},CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,cvodes),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,cvodes),Cint,(Ptr{Void},CVEwtFn),cvode_mem,efun)
end

function CVodeQuadInit(cvode_mem,fQ::CVQuadRhsFn,yQ0::N_Vector)
    ccall((:CVodeQuadInit,cvodes),Cint,(Ptr{Void},CVQuadRhsFn,N_Vector),cvode_mem,fQ,yQ0)
end

function CVodeQuadReInit(cvode_mem,yQ0::N_Vector)
    ccall((:CVodeQuadReInit,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,yQ0)
end

function CVodeQuadSStolerances(cvode_mem,reltolQ::realtype,abstolQ::realtype)
    ccall((:CVodeQuadSStolerances,cvodes),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltolQ,abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:CVodeQuadSVtolerances,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltolQ,abstolQ)
end

function CVodeSensInit(cvode_mem,Ns::Cint,ism::Cint,fS::CVSensRhsFn,yS0)
    ccall((:CVodeSensInit,cvodes),Cint,(Ptr{Void},Cint,Cint,CVSensRhsFn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS,yS0)
end

function CVodeSensInit1(cvode_mem,Ns::Cint,ism::Cint,fS1::CVSensRhs1Fn,yS0)
    ccall((:CVodeSensInit1,cvodes),Cint,(Ptr{Void},Cint,Cint,CVSensRhs1Fn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS1,yS0)
end

function CVodeSensReInit(cvode_mem,ism::Cint,yS0)
    ccall((:CVodeSensReInit,cvodes),Cint,(Ptr{Void},Cint,Ptr{N_Vector}),cvode_mem,ism,yS0)
end

function CVodeSensSStolerances(cvode_mem,reltolS::realtype,abstolS)
    ccall((:CVodeSensSStolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{realtype}),cvode_mem,reltolS,abstolS)
end

function CVodeSensSVtolerances(cvode_mem,reltolS::realtype,abstolS)
    ccall((:CVodeSensSVtolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),cvode_mem,reltolS,abstolS)
end

function CVodeSensEEtolerances(cvode_mem)
    ccall((:CVodeSensEEtolerances,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeQuadSensInit(cvode_mem,fQS::CVQuadSensRhsFn,yQS0)
    ccall((:CVodeQuadSensInit,cvodes),Cint,(Ptr{Void},CVQuadSensRhsFn,Ptr{N_Vector}),cvode_mem,fQS,yQS0)
end

function CVodeQuadSensReInit(cvode_mem,yQS0)
    ccall((:CVodeQuadSensReInit,cvodes),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,yQS0)
end

function CVodeQuadSensSStolerances(cvode_mem,reltolQS::realtype,abstolQS)
    ccall((:CVodeQuadSensSStolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{realtype}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensSVtolerances(cvode_mem,reltolQS::realtype,abstolQS)
    ccall((:CVodeQuadSensSVtolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensEEtolerances(cvode_mem)
    ccall((:CVodeQuadSensEEtolerances,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeRootInit(cvode_mem,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,cvodes),Cint,(Ptr{Void},Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVodeFree(cvode_mem)
    ccall((:CVodeFree,cvodes),Void,(Ptr{Ptr{Void}},),cvode_mem)
end

function CVodeQuadFree(cvode_mem)
    ccall((:CVodeQuadFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeSensFree(cvode_mem)
    ccall((:CVodeSensFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeQuadSensFree(cvode_mem)
    ccall((:CVodeQuadSensFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeSetErrHandlerFn(cvode_mem,ehfun::CVErrHandlerFn,eh_data)
    ccall((:CVodeSetErrHandlerFn,cvodes),Cint,(Ptr{Void},CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem,errfp)
    ccall((:CVodeSetErrFile,cvodes),Cint,(Ptr{Void},Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem,user_data)
    ccall((:CVodeSetUserData,cvodes),Cint,(Ptr{Void},Ptr{Void}),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem,maxord::Cint)
    ccall((:CVodeSetMaxOrd,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem,mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,cvodes),Cint,(Ptr{Void},Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem,mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem,stldet::Cint)
    ccall((:CVodeSetStabLimDet,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem,hin::realtype)
    ccall((:CVodeSetInitStep,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem,hmin::realtype)
    ccall((:CVodeSetMinStep,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem,hmax::realtype)
    ccall((:CVodeSetMaxStep,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem,tstop::realtype)
    ccall((:CVodeSetStopTime,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem,maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem,maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem,maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem,iter::Cint)
    ccall((:CVodeSetIterType,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem,rootdir)
    ccall((:CVodeSetRootDirection,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem)
    ccall((:CVodeSetNoInactiveRootWarn,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeSetQuadErrCon(cvode_mem,errconQ::Cint)
    ccall((:CVodeSetQuadErrCon,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,errconQ)
end

function CVodeSetSensDQMethod(cvode_mem,DQtype::Cint,DQrhomax::realtype)
    ccall((:CVodeSetSensDQMethod,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,DQtype,DQrhomax)
end

function CVodeSetSensErrCon(cvode_mem,errconS::Cint)
    ccall((:CVodeSetSensErrCon,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,errconS)
end

function CVodeSetSensMaxNonlinIters(cvode_mem,maxcorS::Cint)
    ccall((:CVodeSetSensMaxNonlinIters,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxcorS)
end

function CVodeSetSensParams(cvode_mem,p,pbar,plist)
    ccall((:CVodeSetSensParams,cvodes),Cint,(Ptr{Void},Ptr{realtype},Ptr{realtype},Ptr{Cint}),cvode_mem,p,pbar,plist)
end

function CVodeSetQuadSensErrCon(cvode_mem,errconQS::Cint)
    ccall((:CVodeSetQuadSensErrCon,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,errconQS)
end

function CVodeSensToggleOff(cvode_mem)
    ccall((:CVodeSensToggleOff,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVode(cvode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:CVode,cvodes),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,cvodes),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetQuad(cvode_mem,tret,yQout::N_Vector)
    ccall((:CVodeGetQuad,cvodes),Cint,(Ptr{Void},Ptr{realtype},N_Vector),cvode_mem,tret,yQout)
end

function CVodeGetQuadDky(cvode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetQuadDky,cvodes),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetSens(cvode_mem,tret,ySout)
    ccall((:CVodeGetSens,cvodes),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,ySout)
end

function CVodeGetSens1(cvode_mem,tret,is::Cint,ySout::N_Vector)
    ccall((:CVodeGetSens1,cvodes),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,ySout)
end

function CVodeGetSensDky(cvode_mem,t::realtype,k::Cint,dkyA)
    ccall((:CVodeGetSensDky,cvodes),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyA)
end

function CVodeGetSensDky1(cvode_mem,t::realtype,k::Cint,is::Cint,dky::N_Vector)
    ccall((:CVodeGetSensDky1,cvodes),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dky)
end

function CVodeGetQuadSens(cvode_mem,tret,yQSout)
    ccall((:CVodeGetQuadSens,cvodes),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,yQSout)
end

function CVodeGetQuadSens1(cvode_mem,tret,is::Cint,yQSout::N_Vector)
    ccall((:CVodeGetQuadSens1,cvodes),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,yQSout)
end

function CVodeGetQuadSensDky(cvode_mem,t::realtype,k::Cint,dkyQS_all)
    ccall((:CVodeGetQuadSensDky,cvodes),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyQS_all)
end

function CVodeGetQuadSensDky1(cvode_mem,t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:CVodeGetQuadSensDky1,cvodes),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dkyQS)
end

function CVodeGetWorkSpace(cvode_mem,lenrw,leniw)
    ccall((:CVodeGetWorkSpace,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem,nsteps)
    ccall((:CVodeGetNumSteps,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem,nfevals)
    ccall((:CVodeGetNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem,nlinsetups)
    ccall((:CVodeGetNumLinSolvSetups,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem,netfails)
    ccall((:CVodeGetNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem,qlast)
    ccall((:CVodeGetLastOrder,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem,qcur)
    ccall((:CVodeGetCurrentOrder,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem,nslred)
    ccall((:CVodeGetNumStabLimOrderReds,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem,hinused)
    ccall((:CVodeGetActualInitStep,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem,hlast)
    ccall((:CVodeGetLastStep,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem,hcur)
    ccall((:CVodeGetCurrentStep,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem,tcur)
    ccall((:CVodeGetCurrentTime,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem,tolsfac)
    ccall((:CVodeGetTolScaleFactor,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem,ngevals)
    ccall((:CVodeGetNumGEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem,rootsfound)
    ccall((:CVodeGetRootInfo,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    ccall((:CVodeGetIntegratorStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem,nniters)
    ccall((:CVodeGetNumNonlinSolvIters,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem,nncfails)
    ccall((:CVodeGetNumNonlinSolvConvFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem,nniters,nncfails)
    ccall((:CVodeGetNonlinSolvStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,cvodes),Cstring,(Clong,),flag)
end

function CVodeGetQuadNumRhsEvals(cvode_mem,nfQevals)
    ccall((:CVodeGetQuadNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfQevals)
end

function CVodeGetQuadNumErrTestFails(cvode_mem,nQetfails)
    ccall((:CVodeGetQuadNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nQetfails)
end

function CVodeGetQuadErrWeights(cvode_mem,eQweight::N_Vector)
    ccall((:CVodeGetQuadErrWeights,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,eQweight)
end

function CVodeGetQuadStats(cvode_mem,nfQevals,nQetfails)
    ccall((:CVodeGetQuadStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nfQevals,nQetfails)
end

function CVodeGetSensNumRhsEvals(cvode_mem,nfSevals)
    ccall((:CVodeGetSensNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfSevals)
end

function CVodeGetNumRhsEvalsSens(cvode_mem,nfevalsS)
    ccall((:CVodeGetNumRhsEvalsSens,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsS)
end

function CVodeGetSensNumErrTestFails(cvode_mem,nSetfails)
    ccall((:CVodeGetSensNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSetfails)
end

function CVodeGetSensNumLinSolvSetups(cvode_mem,nlinsetupsS)
    ccall((:CVodeGetSensNumLinSolvSetups,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetupsS)
end

function CVodeGetSensErrWeights(cvode_mem,eSweight)
    ccall((:CVodeGetSensErrWeights,cvodes),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,eSweight)
end

function CVodeGetSensStats(cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
    ccall((:CVodeGetSensStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
end

function CVodeGetSensNumNonlinSolvIters(cvode_mem,nSniters)
    ccall((:CVodeGetSensNumNonlinSolvIters,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSniters)
end

function CVodeGetSensNumNonlinSolvConvFails(cvode_mem,nSncfails)
    ccall((:CVodeGetSensNumNonlinSolvConvFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSncfails)
end

function CVodeGetStgrSensNumNonlinSolvIters(cvode_mem,nSTGR1niters)
    ccall((:CVodeGetStgrSensNumNonlinSolvIters,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSTGR1niters)
end

function CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem,nSTGR1ncfails)
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSTGR1ncfails)
end

function CVodeGetSensNonlinSolvStats(cvode_mem,nSniters,nSncfails)
    ccall((:CVodeGetSensNonlinSolvStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nSniters,nSncfails)
end

function CVodeGetQuadSensNumRhsEvals(cvode_mem,nfQSevals)
    ccall((:CVodeGetQuadSensNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfQSevals)
end

function CVodeGetQuadSensNumErrTestFails(cvode_mem,nQSetfails)
    ccall((:CVodeGetQuadSensNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nQSetfails)
end

function CVodeGetQuadSensErrWeights(cvode_mem,eQSweight)
    ccall((:CVodeGetQuadSensErrWeights,cvodes),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,eQSweight)
end

function CVodeGetQuadSensStats(cvode_mem,nfQSevals,nQSetfails)
    ccall((:CVodeGetQuadSensStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nfQSevals,nQSetfails)
end

function CVodeAdjInit(cvode_mem,steps::Clong,interp::Cint)
    ccall((:CVodeAdjInit,cvodes),Cint,(Ptr{Void},Clong,Cint),cvode_mem,steps,interp)
end

function CVodeAdjReInit(cvode_mem)
    ccall((:CVodeAdjReInit,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeAdjFree(cvode_mem)
    ccall((:CVodeAdjFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeCreateB(cvode_mem,lmmB::Cint,iterB::Cint,which)
    ccall((:CVodeCreateB,cvodes),Cint,(Ptr{Void},Cint,Cint,Ptr{Cint}),cvode_mem,lmmB,iterB,which)
end

function CVodeInitB(cvode_mem,which::Cint,fB::CVRhsFnB,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitB,cvodes),Cint,(Ptr{Void},Cint,CVRhsFnB,realtype,N_Vector),cvode_mem,which,fB,tB0,yB0)
end

function CVodeInitBS(cvode_mem,which::Cint,fBs::CVRhsFnBS,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitBS,cvodes),Cint,(Ptr{Void},Cint,CVRhsFnBS,realtype,N_Vector),cvode_mem,which,fBs,tB0,yB0)
end

function CVodeReInitB(cvode_mem,which::Cint,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeReInitB,cvodes),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,tB0,yB0)
end

function CVodeSStolerancesB(cvode_mem,which::Cint,reltolB::realtype,abstolB::realtype)
    ccall((:CVodeSStolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,realtype),cvode_mem,which,reltolB,abstolB)
end

function CVodeSVtolerancesB(cvode_mem,which::Cint,reltolB::realtype,abstolB::N_Vector)
    ccall((:CVodeSVtolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,reltolB,abstolB)
end

function CVodeQuadInitB(cvode_mem,which::Cint,fQB::CVQuadRhsFnB,yQB0::N_Vector)
    ccall((:CVodeQuadInitB,cvodes),Cint,(Ptr{Void},Cint,CVQuadRhsFnB,N_Vector),cvode_mem,which,fQB,yQB0)
end

function CVodeQuadInitBS(cvode_mem,which::Cint,fQBs::CVQuadRhsFnBS,yQB0::N_Vector)
    ccall((:CVodeQuadInitBS,cvodes),Cint,(Ptr{Void},Cint,CVQuadRhsFnBS,N_Vector),cvode_mem,which,fQBs,yQB0)
end

function CVodeQuadReInitB(cvode_mem,which::Cint,yQB0::N_Vector)
    ccall((:CVodeQuadReInitB,cvodes),Cint,(Ptr{Void},Cint,N_Vector),cvode_mem,which,yQB0)
end

function CVodeQuadSStolerancesB(cvode_mem,which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:CVodeQuadSStolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,realtype),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem,which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:CVodeQuadSVtolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeF(cvode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint,ncheckPtr)
    ccall((:CVodeF,cvodes),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint,Ptr{Cint}),cvode_mem,tout,yout,tret,itask,ncheckPtr)
end

function CVodeB(cvode_mem,tBout::realtype,itaskB::Cint)
    ccall((:CVodeB,cvodes),Cint,(Ptr{Void},realtype,Cint),cvode_mem,tBout,itaskB)
end

function CVodeSetAdjNoSensi(cvode_mem)
    ccall((:CVodeSetAdjNoSensi,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeSetIterTypeB(cvode_mem,which::Cint,iterB::Cint)
    ccall((:CVodeSetIterTypeB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,iterB)
end

function CVodeSetUserDataB(cvode_mem,which::Cint,user_dataB)
    ccall((:CVodeSetUserDataB,cvodes),Cint,(Ptr{Void},Cint,Ptr{Void}),cvode_mem,which,user_dataB)
end

function CVodeSetMaxOrdB(cvode_mem,which::Cint,maxordB::Cint)
    ccall((:CVodeSetMaxOrdB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxordB)
end

function CVodeSetMaxNumStepsB(cvode_mem,which::Cint,mxstepsB::Clong)
    ccall((:CVodeSetMaxNumStepsB,cvodes),Cint,(Ptr{Void},Cint,Clong),cvode_mem,which,mxstepsB)
end

function CVodeSetStabLimDetB(cvode_mem,which::Cint,stldetB::Cint)
    ccall((:CVodeSetStabLimDetB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,stldetB)
end

function CVodeSetInitStepB(cvode_mem,which::Cint,hinB::realtype)
    ccall((:CVodeSetInitStepB,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hinB)
end

function CVodeSetMinStepB(cvode_mem,which::Cint,hminB::realtype)
    ccall((:CVodeSetMinStepB,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hminB)
end

function CVodeSetMaxStepB(cvode_mem,which::Cint,hmaxB::realtype)
    ccall((:CVodeSetMaxStepB,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hmaxB)
end

function CVodeSetQuadErrConB(cvode_mem,which::Cint,errconQB::Cint)
    ccall((:CVodeSetQuadErrConB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,errconQB)
end

function CVodeGetB(cvode_mem,which::Cint,tBret,yB::N_Vector)
    ccall((:CVodeGetB,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,yB)
end

function CVodeGetQuadB(cvode_mem,which::Cint,tBret,qB::N_Vector)
    ccall((:CVodeGetQuadB,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,qB)
end

function CVodeGetAdjCVodeBmem(cvode_mem,which::Cint)
    ccall((:CVodeGetAdjCVodeBmem,cvodes),Ptr{Void},(Ptr{Void},Cint),cvode_mem,which)
end

function CVodeGetAdjY(cvode_mem,t::realtype,y::N_Vector)
    ccall((:CVodeGetAdjY,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t,y)
end

function CVodeGetAdjCheckPointsInfo(cvode_mem,ckpnt)
    ccall((:CVodeGetAdjCheckPointsInfo,cvodes),Cint,(Ptr{Void},Ptr{CVadjCheckPointRec}),cvode_mem,ckpnt)
end

function CVodeGetAdjDataPointHermite(cvode_mem,which::Cint,t,y::N_Vector,yd::N_Vector)
    ccall((:CVodeGetAdjDataPointHermite,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),cvode_mem,which,t,y,yd)
end

function CVodeGetAdjDataPointPolynomial(cvode_mem,which::Cint,t,order,y::N_Vector)
    ccall((:CVodeGetAdjDataPointPolynomial,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},Ptr{Cint},N_Vector),cvode_mem,which,t,order,y)
end

function CVodeGetAdjCurrentCheckPoint(cvode_mem,addr)
    ccall((:CVodeGetAdjCurrentCheckPoint,cvodes),Cint,(Ptr{Void},Ptr{Ptr{Void}}),cvode_mem,addr)
end

function cvEwtSet(ycur::N_Vector,weight::N_Vector,data)
    ccall((:cvEwtSet,cvodes_impl),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function cvErrHandler(error_code::Cint,_module,_function,msg,data)
    ccall((:cvErrHandler,cvodes_impl),Void,(Cint,Cstring,Cstring,Cstring,Ptr{Void}),error_code,_module,_function,msg,data)
end

function cvSensRhsWrapper(cv_mem::CVodeMem,time::realtype,ycur::N_Vector,fcur::N_Vector,yScur,fScur,temp1::N_Vector,temp2::N_Vector)
    ccall((:cvSensRhsWrapper,cvodes_impl),Cint,(CVodeMem,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector},N_Vector,N_Vector),cv_mem,time,ycur,fcur,yScur,fScur,temp1,temp2)
end

function cvSensRhs1Wrapper(cv_mem::CVodeMem,time::realtype,ycur::N_Vector,fcur::N_Vector,is::Cint,yScur::N_Vector,fScur::N_Vector,temp1::N_Vector,temp2::N_Vector)
    ccall((:cvSensRhs1Wrapper,cvodes_impl),Cint,(CVodeMem,realtype,N_Vector,N_Vector,Cint,N_Vector,N_Vector,N_Vector,N_Vector),cv_mem,time,ycur,fcur,is,yScur,fScur,temp1,temp2)
end

function cvSensRhsInternalDQ(Ns::Cint,t::realtype,y::N_Vector,ydot::N_Vector,yS,ySdot,fS_data,tempv::N_Vector,ftemp::N_Vector)
    ccall((:cvSensRhsInternalDQ,cvodes_impl),Cint,(Cint,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector},Ptr{Void},N_Vector,N_Vector),Ns,t,y,ydot,yS,ySdot,fS_data,tempv,ftemp)
end

function cvSensRhs1InternalDQ(Ns::Cint,t::realtype,y::N_Vector,ydot::N_Vector,is::Cint,yS::N_Vector,ySdot::N_Vector,fS_data,tempv::N_Vector,ftemp::N_Vector)
    ccall((:cvSensRhs1InternalDQ,cvodes_impl),Cint,(Cint,realtype,N_Vector,N_Vector,Cint,N_Vector,N_Vector,Ptr{Void},N_Vector,N_Vector),Ns,t,y,ydot,is,yS,ySdot,fS_data,tempv,ftemp)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes_sparse.h
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

function SparseNewMat(M::Cint,N::Cint,NNZ::Cint,sparsetype::Cint)
    ccall((:SparseNewMat,sundials_sparse),SlsMat,(Cint,Cint,Cint,Cint),M,N,NNZ,sparsetype)
end

function SparseFromDenseMat(A::DlsMat,sparsetype::Cint)
    ccall((:SparseFromDenseMat,sundials_sparse),SlsMat,(DlsMat,Cint),A,sparsetype)
end

function SparseDestroyMat(A::SlsMat)
    ccall((:SparseDestroyMat,sundials_sparse),Cint,(SlsMat,),A)
end

function SparseSetMatToZero(A::SlsMat)
    ccall((:SparseSetMatToZero,sundials_sparse),Cint,(SlsMat,),A)
end

function SparseCopyMat(A::SlsMat,B::SlsMat)
    ccall((:SparseCopyMat,sundials_sparse),Cint,(SlsMat,SlsMat),A,B)
end

function SparseScaleMat(b::realtype,A::SlsMat)
    ccall((:SparseScaleMat,sundials_sparse),Cint,(realtype,SlsMat),b,A)
end

function SparseAddIdentityMat(A::SlsMat)
    ccall((:SparseAddIdentityMat,sundials_sparse),Cint,(SlsMat,),A)
end

function SparseAddMat(A::SlsMat,B::SlsMat)
    ccall((:SparseAddMat,sundials_sparse),Cint,(SlsMat,SlsMat),A,B)
end

function SparseReallocMat(A::SlsMat)
    ccall((:SparseReallocMat,sundials_sparse),Cint,(SlsMat,),A)
end

function SparseMatvec(A::SlsMat,x,y)
    ccall((:SparseMatvec,sundials_sparse),Cint,(SlsMat,Ptr{realtype},Ptr{realtype}),A,x,y)
end

function SparsePrintMat(A::SlsMat,outfile)
    ccall((:SparsePrintMat,sundials_sparse),Void,(SlsMat,Ptr{FILE}),A,outfile)
end

function CVSlsSetSparseJacFn(cvode_mem,jac::CVSlsSparseJacFn)
    ccall((:CVSlsSetSparseJacFn,cvodes_sparse),Cint,(Ptr{Void},CVSlsSparseJacFn),cvode_mem,jac)
end

function CVSlsGetNumJacEvals(cvode_mem,njevals)
    ccall((:CVSlsGetNumJacEvals,cvodes_sparse),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njevals)
end

function CVSlsGetLastFlag(cvode_mem,flag)
    ccall((:CVSlsGetLastFlag,cvodes_sparse),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSlsGetReturnFlagName(flag::Clong)
    ccall((:CVSlsGetReturnFlagName,cvodes_sparse),Cstring,(Clong,),flag)
end

function CVSlsSetSparseJacFnB(cv_mem,which::Cint,jacB::CVSlsSparseJacFnB)
    ccall((:CVSlsSetSparseJacFnB,cvodes_sparse),Cint,(Ptr{Void},Cint,CVSlsSparseJacFnB),cv_mem,which,jacB)
end

function CVSlsSetSparseJacFnBS(cv_mem,which::Cint,jacBS::CVSlsSparseJacFnBS)
    ccall((:CVSlsSetSparseJacFnBS,cvodes_sparse),Cint,(Ptr{Void},Cint,CVSlsSparseJacFnBS),cv_mem,which,jacBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

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

function CVSpilsSetPrecType(cvode_mem,pretype::Cint)
    ccall((:CVSpilsSetPrecType,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem,gstype::Cint)
    ccall((:CVSpilsSetGSType,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem,maxl::Cint)
    ccall((:CVSpilsSetMaxl,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,cvodes_spils),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,cvodes_spils),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,cvodes_spils),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVSpilsGetWorkSpace,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    ccall((:CVSpilsGetNumPrecEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    ccall((:CVSpilsGetNumPrecSolves,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    ccall((:CVSpilsGetNumLinIters,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    ccall((:CVSpilsGetNumConvFails,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    ccall((:CVSpilsGetNumJtimesEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    ccall((:CVSpilsGetLastFlag,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,cvodes_spils),Cstring,(Clong,),flag)
end

function CVSpilsSetPrecTypeB(cvode_mem,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpsLinB(cvode_mem,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpsLinB,cvodes_spils),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetPreconditionerBS(cvode_mem,which::Cint,psetBS::CVSpilsPrecSetupFnBS,psolveBS::CVSpilsPrecSolveFnBS)
    ccall((:CVSpilsSetPreconditionerBS,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnBS,CVSpilsPrecSolveFnBS),cvode_mem,which,psetBS,psolveBS)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSpilsSetJacTimesVecFnBS(cvode_mem,which::Cint,jtvBS::CVSpilsJacTimesVecFnBS)
    ccall((:CVSpilsSetJacTimesVecFnBS,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnBS),cvode_mem,which,jtvBS)
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

function CVSpbcg(cvode_mem,pretype::Cint,maxl::Cint)
    ccall((:CVSpbcg,cvodes_spbcgs),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSpbcgB(cvode_mem,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSpbcgB,cvodes_spbcgs),Cint,(Ptr{Void},Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

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

function CVSpilsSetPrecType(cvode_mem,pretype::Cint)
    ccall((:CVSpilsSetPrecType,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem,gstype::Cint)
    ccall((:CVSpilsSetGSType,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem,maxl::Cint)
    ccall((:CVSpilsSetMaxl,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,cvodes_spils),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,cvodes_spils),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,cvodes_spils),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVSpilsGetWorkSpace,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    ccall((:CVSpilsGetNumPrecEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    ccall((:CVSpilsGetNumPrecSolves,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    ccall((:CVSpilsGetNumLinIters,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    ccall((:CVSpilsGetNumConvFails,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    ccall((:CVSpilsGetNumJtimesEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    ccall((:CVSpilsGetLastFlag,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,cvodes_spils),Cstring,(Clong,),flag)
end

function CVSpilsSetPrecTypeB(cvode_mem,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpsLinB(cvode_mem,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpsLinB,cvodes_spils),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetPreconditionerBS(cvode_mem,which::Cint,psetBS::CVSpilsPrecSetupFnBS,psolveBS::CVSpilsPrecSolveFnBS)
    ccall((:CVSpilsSetPreconditionerBS,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnBS,CVSpilsPrecSolveFnBS),cvode_mem,which,psetBS,psolveBS)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSpilsSetJacTimesVecFnBS(cvode_mem,which::Cint,jtvBS::CVSpilsJacTimesVecFnBS)
    ccall((:CVSpilsSetJacTimesVecFnBS,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnBS),cvode_mem,which,jtvBS)
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

function CVSpgmr(cvode_mem,pretype::Cint,maxl::Cint)
    ccall((:CVSpgmr,cvodes_spgmr),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSpgmrB(cvode_mem,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSpgmrB,cvodes_spgmr),Cint,(Ptr{Void},Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

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

function CVSpilsSetPrecType(cvode_mem,pretype::Cint)
    ccall((:CVSpilsSetPrecType,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem,gstype::Cint)
    ccall((:CVSpilsSetGSType,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem,maxl::Cint)
    ccall((:CVSpilsSetMaxl,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,cvodes_spils),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,cvodes_spils),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,cvodes_spils),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVSpilsGetWorkSpace,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    ccall((:CVSpilsGetNumPrecEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    ccall((:CVSpilsGetNumPrecSolves,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    ccall((:CVSpilsGetNumLinIters,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    ccall((:CVSpilsGetNumConvFails,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    ccall((:CVSpilsGetNumJtimesEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    ccall((:CVSpilsGetLastFlag,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,cvodes_spils),Cstring,(Clong,),flag)
end

function CVSpilsSetPrecTypeB(cvode_mem,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpsLinB(cvode_mem,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpsLinB,cvodes_spils),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetPreconditionerBS(cvode_mem,which::Cint,psetBS::CVSpilsPrecSetupFnBS,psolveBS::CVSpilsPrecSolveFnBS)
    ccall((:CVSpilsSetPreconditionerBS,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnBS,CVSpilsPrecSolveFnBS),cvode_mem,which,psetBS,psolveBS)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSpilsSetJacTimesVecFnBS(cvode_mem,which::Cint,jtvBS::CVSpilsJacTimesVecFnBS)
    ccall((:CVSpilsSetJacTimesVecFnBS,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnBS),cvode_mem,which,jtvBS)
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

function CVSptfqmr(cvode_mem,pretype::Cint,maxl::Cint)
    ccall((:CVSptfqmr,cvodes_sptfqmr),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSptfqmrB(cvode_mem,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSptfqmrB,cvodes_sptfqmr),Cint,(Ptr{Void},Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
