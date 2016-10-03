# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/cvodes.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,shlib),Ptr{Void},(Cint,Cint),lmm,iter)
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

function CVodeQuadInit(cvode_mem,fQ::CVQuadRhsFn,yQ0::N_Vector)
    ccall((:CVodeQuadInit,shlib),Cint,(Ptr{Void},CVQuadRhsFn,N_Vector),cvode_mem,fQ,yQ0)
end

function CVodeQuadReInit(cvode_mem,yQ0::N_Vector)
    ccall((:CVodeQuadReInit,shlib),Cint,(Ptr{Void},N_Vector),cvode_mem,yQ0)
end

function CVodeQuadSStolerances(cvode_mem,reltolQ::realtype,abstolQ::realtype)
    ccall((:CVodeQuadSStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltolQ,abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:CVodeQuadSVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltolQ,abstolQ)
end

function CVodeSensInit(cvode_mem,Ns::Cint,ism::Cint,fS::CVSensRhsFn,yS0)
    ccall((:CVodeSensInit,shlib),Cint,(Ptr{Void},Cint,Cint,CVSensRhsFn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS,yS0)
end

function CVodeSensInit1(cvode_mem,Ns::Cint,ism::Cint,fS1::CVSensRhs1Fn,yS0)
    ccall((:CVodeSensInit1,shlib),Cint,(Ptr{Void},Cint,Cint,CVSensRhs1Fn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS1,yS0)
end

function CVodeSensReInit(cvode_mem,ism::Cint,yS0)
    ccall((:CVodeSensReInit,shlib),Cint,(Ptr{Void},Cint,Ptr{N_Vector}),cvode_mem,ism,yS0)
end

function CVodeSensSStolerances(cvode_mem,reltolS::realtype,abstolS)
    ccall((:CVodeSensSStolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype}),cvode_mem,reltolS,abstolS)
end

function CVodeSensSVtolerances(cvode_mem,reltolS::realtype,abstolS)
    ccall((:CVodeSensSVtolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),cvode_mem,reltolS,abstolS)
end

function CVodeSensEEtolerances(cvode_mem)
    ccall((:CVodeSensEEtolerances,shlib),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeQuadSensInit(cvode_mem,fQS::CVQuadSensRhsFn,yQS0)
    ccall((:CVodeQuadSensInit,shlib),Cint,(Ptr{Void},CVQuadSensRhsFn,Ptr{N_Vector}),cvode_mem,fQS,yQS0)
end

function CVodeQuadSensReInit(cvode_mem,yQS0)
    ccall((:CVodeQuadSensReInit,shlib),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,yQS0)
end

function CVodeQuadSensSStolerances(cvode_mem,reltolQS::realtype,abstolQS)
    ccall((:CVodeQuadSensSStolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensSVtolerances(cvode_mem,reltolQS::realtype,abstolQS)
    ccall((:CVodeQuadSensSVtolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensEEtolerances(cvode_mem)
    ccall((:CVodeQuadSensEEtolerances,shlib),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeRootInit(cvode_mem,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,shlib),Cint,(Ptr{Void},Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVodeFree(cvode_mem)
    ccall((:CVodeFree,shlib),Void,(Ptr{Ptr{Void}},),cvode_mem)
end

function CVodeQuadFree(cvode_mem)
    ccall((:CVodeQuadFree,shlib),Void,(Ptr{Void},),cvode_mem)
end

function CVodeSensFree(cvode_mem)
    ccall((:CVodeSensFree,shlib),Void,(Ptr{Void},),cvode_mem)
end

function CVodeQuadSensFree(cvode_mem)
    ccall((:CVodeQuadSensFree,shlib),Void,(Ptr{Void},),cvode_mem)
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

function CVodeSetQuadErrCon(cvode_mem,errconQ::Cint)
    ccall((:CVodeSetQuadErrCon,shlib),Cint,(Ptr{Void},Cint),cvode_mem,errconQ)
end

function CVodeSetSensDQMethod(cvode_mem,DQtype::Cint,DQrhomax::realtype)
    ccall((:CVodeSetSensDQMethod,shlib),Cint,(Ptr{Void},Cint,realtype),cvode_mem,DQtype,DQrhomax)
end

function CVodeSetSensErrCon(cvode_mem,errconS::Cint)
    ccall((:CVodeSetSensErrCon,shlib),Cint,(Ptr{Void},Cint),cvode_mem,errconS)
end

function CVodeSetSensMaxNonlinIters(cvode_mem,maxcorS::Cint)
    ccall((:CVodeSetSensMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxcorS)
end

function CVodeSetSensParams(cvode_mem,p,pbar,plist)
    ccall((:CVodeSetSensParams,shlib),Cint,(Ptr{Void},Ptr{realtype},Ptr{realtype},Ptr{Cint}),cvode_mem,p,pbar,plist)
end

function CVodeSetQuadSensErrCon(cvode_mem,errconQS::Cint)
    ccall((:CVodeSetQuadSensErrCon,shlib),Cint,(Ptr{Void},Cint),cvode_mem,errconQS)
end

function CVodeSensToggleOff(cvode_mem)
    ccall((:CVodeSensToggleOff,shlib),Cint,(Ptr{Void},),cvode_mem)
end

function CVode(cvode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:CVode,shlib),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetQuad(cvode_mem,tret,yQout::N_Vector)
    ccall((:CVodeGetQuad,shlib),Cint,(Ptr{Void},Ptr{realtype},N_Vector),cvode_mem,tret,yQout)
end

function CVodeGetQuadDky(cvode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetQuadDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetSens(cvode_mem,tret,ySout)
    ccall((:CVodeGetSens,shlib),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,ySout)
end

function CVodeGetSens1(cvode_mem,tret,is::Cint,ySout::N_Vector)
    ccall((:CVodeGetSens1,shlib),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,ySout)
end

function CVodeGetSensDky(cvode_mem,t::realtype,k::Cint,dkyA)
    ccall((:CVodeGetSensDky,shlib),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyA)
end

function CVodeGetSensDky1(cvode_mem,t::realtype,k::Cint,is::Cint,dky::N_Vector)
    ccall((:CVodeGetSensDky1,shlib),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dky)
end

function CVodeGetQuadSens(cvode_mem,tret,yQSout)
    ccall((:CVodeGetQuadSens,shlib),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,yQSout)
end

function CVodeGetQuadSens1(cvode_mem,tret,is::Cint,yQSout::N_Vector)
    ccall((:CVodeGetQuadSens1,shlib),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,yQSout)
end

function CVodeGetQuadSensDky(cvode_mem,t::realtype,k::Cint,dkyQS_all)
    ccall((:CVodeGetQuadSensDky,shlib),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyQS_all)
end

function CVodeGetQuadSensDky1(cvode_mem,t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:CVodeGetQuadSensDky1,shlib),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dkyQS)
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

function CVodeGetQuadNumRhsEvals(cvode_mem,nfQevals)
    ccall((:CVodeGetQuadNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfQevals)
end

function CVodeGetQuadNumErrTestFails(cvode_mem,nQetfails)
    ccall((:CVodeGetQuadNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nQetfails)
end

function CVodeGetQuadErrWeights(cvode_mem,eQweight::N_Vector)
    ccall((:CVodeGetQuadErrWeights,shlib),Cint,(Ptr{Void},N_Vector),cvode_mem,eQweight)
end

function CVodeGetQuadStats(cvode_mem,nfQevals,nQetfails)
    ccall((:CVodeGetQuadStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nfQevals,nQetfails)
end

function CVodeGetSensNumRhsEvals(cvode_mem,nfSevals)
    ccall((:CVodeGetSensNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfSevals)
end

function CVodeGetNumRhsEvalsSens(cvode_mem,nfevalsS)
    ccall((:CVodeGetNumRhsEvalsSens,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsS)
end

function CVodeGetSensNumErrTestFails(cvode_mem,nSetfails)
    ccall((:CVodeGetSensNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSetfails)
end

function CVodeGetSensNumLinSolvSetups(cvode_mem,nlinsetupsS)
    ccall((:CVodeGetSensNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetupsS)
end

function CVodeGetSensErrWeights(cvode_mem,eSweight)
    ccall((:CVodeGetSensErrWeights,shlib),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,eSweight)
end

function CVodeGetSensStats(cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
    ccall((:CVodeGetSensStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
end

function CVodeGetSensNumNonlinSolvIters(cvode_mem,nSniters)
    ccall((:CVodeGetSensNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSniters)
end

function CVodeGetSensNumNonlinSolvConvFails(cvode_mem,nSncfails)
    ccall((:CVodeGetSensNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSncfails)
end

function CVodeGetStgrSensNumNonlinSolvIters(cvode_mem,nSTGR1niters)
    ccall((:CVodeGetStgrSensNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSTGR1niters)
end

function CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem,nSTGR1ncfails)
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSTGR1ncfails)
end

function CVodeGetSensNonlinSolvStats(cvode_mem,nSniters,nSncfails)
    ccall((:CVodeGetSensNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nSniters,nSncfails)
end

function CVodeGetQuadSensNumRhsEvals(cvode_mem,nfQSevals)
    ccall((:CVodeGetQuadSensNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfQSevals)
end

function CVodeGetQuadSensNumErrTestFails(cvode_mem,nQSetfails)
    ccall((:CVodeGetQuadSensNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nQSetfails)
end

function CVodeGetQuadSensErrWeights(cvode_mem,eQSweight)
    ccall((:CVodeGetQuadSensErrWeights,shlib),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,eQSweight)
end

function CVodeGetQuadSensStats(cvode_mem,nfQSevals,nQSetfails)
    ccall((:CVodeGetQuadSensStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nfQSevals,nQSetfails)
end

function CVodeAdjInit(cvode_mem,steps::Clong,interp::Cint)
    ccall((:CVodeAdjInit,shlib),Cint,(Ptr{Void},Clong,Cint),cvode_mem,steps,interp)
end

function CVodeAdjReInit(cvode_mem)
    ccall((:CVodeAdjReInit,shlib),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeAdjFree(cvode_mem)
    ccall((:CVodeAdjFree,shlib),Void,(Ptr{Void},),cvode_mem)
end

function CVodeCreateB(cvode_mem,lmmB::Cint,iterB::Cint,which)
    ccall((:CVodeCreateB,shlib),Cint,(Ptr{Void},Cint,Cint,Ptr{Cint}),cvode_mem,lmmB,iterB,which)
end

function CVodeInitB(cvode_mem,which::Cint,fB::CVRhsFnB,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitB,shlib),Cint,(Ptr{Void},Cint,CVRhsFnB,realtype,N_Vector),cvode_mem,which,fB,tB0,yB0)
end

function CVodeInitBS(cvode_mem,which::Cint,fBs::CVRhsFnBS,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitBS,shlib),Cint,(Ptr{Void},Cint,CVRhsFnBS,realtype,N_Vector),cvode_mem,which,fBs,tB0,yB0)
end

function CVodeReInitB(cvode_mem,which::Cint,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeReInitB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,tB0,yB0)
end

function CVodeSStolerancesB(cvode_mem,which::Cint,reltolB::realtype,abstolB::realtype)
    ccall((:CVodeSStolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,realtype),cvode_mem,which,reltolB,abstolB)
end

function CVodeSVtolerancesB(cvode_mem,which::Cint,reltolB::realtype,abstolB::N_Vector)
    ccall((:CVodeSVtolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,reltolB,abstolB)
end

function CVodeQuadInitB(cvode_mem,which::Cint,fQB::CVQuadRhsFnB,yQB0::N_Vector)
    ccall((:CVodeQuadInitB,shlib),Cint,(Ptr{Void},Cint,CVQuadRhsFnB,N_Vector),cvode_mem,which,fQB,yQB0)
end

function CVodeQuadInitBS(cvode_mem,which::Cint,fQBs::CVQuadRhsFnBS,yQB0::N_Vector)
    ccall((:CVodeQuadInitBS,shlib),Cint,(Ptr{Void},Cint,CVQuadRhsFnBS,N_Vector),cvode_mem,which,fQBs,yQB0)
end

function CVodeQuadReInitB(cvode_mem,which::Cint,yQB0::N_Vector)
    ccall((:CVodeQuadReInitB,shlib),Cint,(Ptr{Void},Cint,N_Vector),cvode_mem,which,yQB0)
end

function CVodeQuadSStolerancesB(cvode_mem,which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:CVodeQuadSStolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,realtype),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem,which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:CVodeQuadSVtolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeF(cvode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint,ncheckPtr)
    ccall((:CVodeF,shlib),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint,Ptr{Cint}),cvode_mem,tout,yout,tret,itask,ncheckPtr)
end

function CVodeB(cvode_mem,tBout::realtype,itaskB::Cint)
    ccall((:CVodeB,shlib),Cint,(Ptr{Void},realtype,Cint),cvode_mem,tBout,itaskB)
end

function CVodeSetAdjNoSensi(cvode_mem)
    ccall((:CVodeSetAdjNoSensi,shlib),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeSetIterTypeB(cvode_mem,which::Cint,iterB::Cint)
    ccall((:CVodeSetIterTypeB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,iterB)
end

function CVodeSetUserDataB(cvode_mem,which::Cint,user_dataB)
    ccall((:CVodeSetUserDataB,shlib),Cint,(Ptr{Void},Cint,Ptr{Void}),cvode_mem,which,user_dataB)
end

function CVodeSetMaxOrdB(cvode_mem,which::Cint,maxordB::Cint)
    ccall((:CVodeSetMaxOrdB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxordB)
end

function CVodeSetMaxNumStepsB(cvode_mem,which::Cint,mxstepsB::Clong)
    ccall((:CVodeSetMaxNumStepsB,shlib),Cint,(Ptr{Void},Cint,Clong),cvode_mem,which,mxstepsB)
end

function CVodeSetStabLimDetB(cvode_mem,which::Cint,stldetB::Cint)
    ccall((:CVodeSetStabLimDetB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,stldetB)
end

function CVodeSetInitStepB(cvode_mem,which::Cint,hinB::realtype)
    ccall((:CVodeSetInitStepB,shlib),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hinB)
end

function CVodeSetMinStepB(cvode_mem,which::Cint,hminB::realtype)
    ccall((:CVodeSetMinStepB,shlib),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hminB)
end

function CVodeSetMaxStepB(cvode_mem,which::Cint,hmaxB::realtype)
    ccall((:CVodeSetMaxStepB,shlib),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hmaxB)
end

function CVodeSetQuadErrConB(cvode_mem,which::Cint,errconQB::Cint)
    ccall((:CVodeSetQuadErrConB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,errconQB)
end

function CVodeGetB(cvode_mem,which::Cint,tBret,yB::N_Vector)
    ccall((:CVodeGetB,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,yB)
end

function CVodeGetQuadB(cvode_mem,which::Cint,tBret,qB::N_Vector)
    ccall((:CVodeGetQuadB,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,qB)
end

function CVodeGetAdjCVodeBmem(cvode_mem,which::Cint)
    ccall((:CVodeGetAdjCVodeBmem,shlib),Ptr{Void},(Ptr{Void},Cint),cvode_mem,which)
end

function CVodeGetAdjY(cvode_mem,t::realtype,y::N_Vector)
    ccall((:CVodeGetAdjY,shlib),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t,y)
end

function CVodeGetAdjCheckPointsInfo(cvode_mem,ckpnt)
    ccall((:CVodeGetAdjCheckPointsInfo,shlib),Cint,(Ptr{Void},Ptr{CVadjCheckPointRec}),cvode_mem,ckpnt)
end

function CVodeGetAdjDataPointHermite(cvode_mem,which::Cint,t,y::N_Vector,yd::N_Vector)
    ccall((:CVodeGetAdjDataPointHermite,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),cvode_mem,which,t,y,yd)
end

function CVodeGetAdjDataPointPolynomial(cvode_mem,which::Cint,t,order,y::N_Vector)
    ccall((:CVodeGetAdjDataPointPolynomial,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},Ptr{Cint},N_Vector),cvode_mem,which,t,order,y)
end

function CVodeGetAdjCurrentCheckPoint(cvode_mem,addr)
    ccall((:CVodeGetAdjCurrentCheckPoint,shlib),Cint,(Ptr{Void},Ptr{Ptr{Void}}),cvode_mem,addr)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/shlib.h
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

function CVDlsSetDenseJacFnB(cvode_mem,which::Cint,jacB::CVDlsDenseJacFnB)
    ccall((:CVDlsSetDenseJacFnB,shlib),Cint,(Ptr{Void},Cint,CVDlsDenseJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetDenseJacFnBS(cvode_mem,which::Cint,jacBS::CVDlsDenseJacFnBS)
    ccall((:CVDlsSetDenseJacFnBS,shlib),Cint,(Ptr{Void},Cint,CVDlsDenseJacFnBS),cvode_mem,which,jacBS)
end

function CVDlsSetBandJacFnB(cvode_mem,which::Cint,jacB::CVDlsBandJacFnB)
    ccall((:CVDlsSetBandJacFnB,shlib),Cint,(Ptr{Void},Cint,CVDlsBandJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetBandJacFnBS(cvode_mem,which::Cint,jacBS::CVDlsBandJacFnBS)
    ccall((:CVDlsSetBandJacFnBS,shlib),Cint,(Ptr{Void},Cint,CVDlsBandJacFnBS),cvode_mem,which,jacBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/shlib.h
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

function CVSpilsSetPrecTypeB(cvode_mem,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpsLinB(cvode_mem,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpsLinB,shlib),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,shlib),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetPreconditionerBS(cvode_mem,which::Cint,psetBS::CVSpilsPrecSetupFnBS,psolveBS::CVSpilsPrecSolveFnBS)
    ccall((:CVSpilsSetPreconditionerBS,shlib),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnBS,CVSpilsPrecSolveFnBS),cvode_mem,which,psetBS,psolveBS)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,shlib),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSpilsSetJacTimesVecFnBS(cvode_mem,which::Cint,jtvBS::CVSpilsJacTimesVecFnBS)
    ccall((:CVSpilsSetJacTimesVecFnBS,shlib),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnBS),cvode_mem,which,jtvBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/shlib.h
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

function CVDlsSetDenseJacFnB(cvode_mem,which::Cint,jacB::CVDlsDenseJacFnB)
    ccall((:CVDlsSetDenseJacFnB,shlib),Cint,(Ptr{Void},Cint,CVDlsDenseJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetDenseJacFnBS(cvode_mem,which::Cint,jacBS::CVDlsDenseJacFnBS)
    ccall((:CVDlsSetDenseJacFnBS,shlib),Cint,(Ptr{Void},Cint,CVDlsDenseJacFnBS),cvode_mem,which,jacBS)
end

function CVDlsSetBandJacFnB(cvode_mem,which::Cint,jacB::CVDlsBandJacFnB)
    ccall((:CVDlsSetBandJacFnB,shlib),Cint,(Ptr{Void},Cint,CVDlsBandJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetBandJacFnBS(cvode_mem,which::Cint,jacBS::CVDlsBandJacFnBS)
    ccall((:CVDlsSetBandJacFnBS,shlib),Cint,(Ptr{Void},Cint,CVDlsBandJacFnBS),cvode_mem,which,jacBS)
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

function CVBandB(cvode_mem,which::Cint,nB::Clong,mupperB::Clong,mlowerB::Clong)
    ccall((:CVBandB,shlib),Cint,(Ptr{Void},Cint,Clong,Clong,Clong),cvode_mem,which,nB,mupperB,mlowerB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/shlib.h
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

function CVBandPrecInitB(cvode_mem,which::Cint,nB::Clong,muB::Clong,mlB::Clong)
    ccall((:CVBandPrecInitB,shlib),Cint,(Ptr{Void},Cint,Clong,Clong,Clong),cvode_mem,which,nB,muB,mlB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBBDPrecInit(cvode_mem,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,shlib),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function CVBBDPrecReInit(cvode_mem,mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:CVBBDPrecReInit,shlib),Cint,(Ptr{Void},Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem,lenrwBBDP,leniwBBDP)
    ccall((:CVBBDPrecGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwBBDP,leniwBBDP)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem,ngevalsBBDP)
    ccall((:CVBBDPrecGetNumGfnEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevalsBBDP)
end

function CVBBDPrecInitB(cvode_mem,which::Cint,NlocalB::Clong,mudqB::Clong,mldqB::Clong,mukeepB::Clong,mlkeepB::Clong,dqrelyB::realtype,glocB::CVLocalFnB,cfnB::CVCommFnB)
    ccall((:CVBBDPrecInitB,shlib),Cint,(Ptr{Void},Cint,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFnB,CVCommFnB),cvode_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dqrelyB,glocB,cfnB)
end

function CVBBDPrecReInitB(cvode_mem,which::Cint,mudqB::Clong,mldqB::Clong,dqrelyB::realtype)
    ccall((:CVBBDPrecReInitB,shlib),Cint,(Ptr{Void},Cint,Clong,Clong,realtype),cvode_mem,which,mudqB,mldqB,dqrelyB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/shlib.h
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

function CVDlsSetDenseJacFnB(cvode_mem,which::Cint,jacB::CVDlsDenseJacFnB)
    ccall((:CVDlsSetDenseJacFnB,shlib),Cint,(Ptr{Void},Cint,CVDlsDenseJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetDenseJacFnBS(cvode_mem,which::Cint,jacBS::CVDlsDenseJacFnBS)
    ccall((:CVDlsSetDenseJacFnBS,shlib),Cint,(Ptr{Void},Cint,CVDlsDenseJacFnBS),cvode_mem,which,jacBS)
end

function CVDlsSetBandJacFnB(cvode_mem,which::Cint,jacB::CVDlsBandJacFnB)
    ccall((:CVDlsSetBandJacFnB,shlib),Cint,(Ptr{Void},Cint,CVDlsBandJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetBandJacFnBS(cvode_mem,which::Cint,jacBS::CVDlsBandJacFnBS)
    ccall((:CVDlsSetBandJacFnBS,shlib),Cint,(Ptr{Void},Cint,CVDlsBandJacFnBS),cvode_mem,which,jacBS)
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

function CVDenseB(cvode_mem,which::Cint,nB::Clong)
    ccall((:CVDenseB,shlib),Cint,(Ptr{Void},Cint,Clong),cvode_mem,which,nB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/shlib.h
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

function CVDiagB(cvode_mem,which::Cint)
    ccall((:CVDiagB,shlib),Cint,(Ptr{Void},Cint),cvode_mem,which)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,shlib),Ptr{Void},(Cint,Cint),lmm,iter)
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

function CVodeQuadInit(cvode_mem,fQ::CVQuadRhsFn,yQ0::N_Vector)
    ccall((:CVodeQuadInit,shlib),Cint,(Ptr{Void},CVQuadRhsFn,N_Vector),cvode_mem,fQ,yQ0)
end

function CVodeQuadReInit(cvode_mem,yQ0::N_Vector)
    ccall((:CVodeQuadReInit,shlib),Cint,(Ptr{Void},N_Vector),cvode_mem,yQ0)
end

function CVodeQuadSStolerances(cvode_mem,reltolQ::realtype,abstolQ::realtype)
    ccall((:CVodeQuadSStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltolQ,abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:CVodeQuadSVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltolQ,abstolQ)
end

function CVodeSensInit(cvode_mem,Ns::Cint,ism::Cint,fS::CVSensRhsFn,yS0)
    ccall((:CVodeSensInit,shlib),Cint,(Ptr{Void},Cint,Cint,CVSensRhsFn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS,yS0)
end

function CVodeSensInit1(cvode_mem,Ns::Cint,ism::Cint,fS1::CVSensRhs1Fn,yS0)
    ccall((:CVodeSensInit1,shlib),Cint,(Ptr{Void},Cint,Cint,CVSensRhs1Fn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS1,yS0)
end

function CVodeSensReInit(cvode_mem,ism::Cint,yS0)
    ccall((:CVodeSensReInit,shlib),Cint,(Ptr{Void},Cint,Ptr{N_Vector}),cvode_mem,ism,yS0)
end

function CVodeSensSStolerances(cvode_mem,reltolS::realtype,abstolS)
    ccall((:CVodeSensSStolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype}),cvode_mem,reltolS,abstolS)
end

function CVodeSensSVtolerances(cvode_mem,reltolS::realtype,abstolS)
    ccall((:CVodeSensSVtolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),cvode_mem,reltolS,abstolS)
end

function CVodeSensEEtolerances(cvode_mem)
    ccall((:CVodeSensEEtolerances,shlib),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeQuadSensInit(cvode_mem,fQS::CVQuadSensRhsFn,yQS0)
    ccall((:CVodeQuadSensInit,shlib),Cint,(Ptr{Void},CVQuadSensRhsFn,Ptr{N_Vector}),cvode_mem,fQS,yQS0)
end

function CVodeQuadSensReInit(cvode_mem,yQS0)
    ccall((:CVodeQuadSensReInit,shlib),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,yQS0)
end

function CVodeQuadSensSStolerances(cvode_mem,reltolQS::realtype,abstolQS)
    ccall((:CVodeQuadSensSStolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensSVtolerances(cvode_mem,reltolQS::realtype,abstolQS)
    ccall((:CVodeQuadSensSVtolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensEEtolerances(cvode_mem)
    ccall((:CVodeQuadSensEEtolerances,shlib),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeRootInit(cvode_mem,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,shlib),Cint,(Ptr{Void},Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVodeFree(cvode_mem)
    ccall((:CVodeFree,shlib),Void,(Ptr{Ptr{Void}},),cvode_mem)
end

function CVodeQuadFree(cvode_mem)
    ccall((:CVodeQuadFree,shlib),Void,(Ptr{Void},),cvode_mem)
end

function CVodeSensFree(cvode_mem)
    ccall((:CVodeSensFree,shlib),Void,(Ptr{Void},),cvode_mem)
end

function CVodeQuadSensFree(cvode_mem)
    ccall((:CVodeQuadSensFree,shlib),Void,(Ptr{Void},),cvode_mem)
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

function CVodeSetQuadErrCon(cvode_mem,errconQ::Cint)
    ccall((:CVodeSetQuadErrCon,shlib),Cint,(Ptr{Void},Cint),cvode_mem,errconQ)
end

function CVodeSetSensDQMethod(cvode_mem,DQtype::Cint,DQrhomax::realtype)
    ccall((:CVodeSetSensDQMethod,shlib),Cint,(Ptr{Void},Cint,realtype),cvode_mem,DQtype,DQrhomax)
end

function CVodeSetSensErrCon(cvode_mem,errconS::Cint)
    ccall((:CVodeSetSensErrCon,shlib),Cint,(Ptr{Void},Cint),cvode_mem,errconS)
end

function CVodeSetSensMaxNonlinIters(cvode_mem,maxcorS::Cint)
    ccall((:CVodeSetSensMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),cvode_mem,maxcorS)
end

function CVodeSetSensParams(cvode_mem,p,pbar,plist)
    ccall((:CVodeSetSensParams,shlib),Cint,(Ptr{Void},Ptr{realtype},Ptr{realtype},Ptr{Cint}),cvode_mem,p,pbar,plist)
end

function CVodeSetQuadSensErrCon(cvode_mem,errconQS::Cint)
    ccall((:CVodeSetQuadSensErrCon,shlib),Cint,(Ptr{Void},Cint),cvode_mem,errconQS)
end

function CVodeSensToggleOff(cvode_mem)
    ccall((:CVodeSensToggleOff,shlib),Cint,(Ptr{Void},),cvode_mem)
end

function CVode(cvode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:CVode,shlib),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetQuad(cvode_mem,tret,yQout::N_Vector)
    ccall((:CVodeGetQuad,shlib),Cint,(Ptr{Void},Ptr{realtype},N_Vector),cvode_mem,tret,yQout)
end

function CVodeGetQuadDky(cvode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetQuadDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetSens(cvode_mem,tret,ySout)
    ccall((:CVodeGetSens,shlib),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,ySout)
end

function CVodeGetSens1(cvode_mem,tret,is::Cint,ySout::N_Vector)
    ccall((:CVodeGetSens1,shlib),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,ySout)
end

function CVodeGetSensDky(cvode_mem,t::realtype,k::Cint,dkyA)
    ccall((:CVodeGetSensDky,shlib),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyA)
end

function CVodeGetSensDky1(cvode_mem,t::realtype,k::Cint,is::Cint,dky::N_Vector)
    ccall((:CVodeGetSensDky1,shlib),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dky)
end

function CVodeGetQuadSens(cvode_mem,tret,yQSout)
    ccall((:CVodeGetQuadSens,shlib),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,yQSout)
end

function CVodeGetQuadSens1(cvode_mem,tret,is::Cint,yQSout::N_Vector)
    ccall((:CVodeGetQuadSens1,shlib),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,yQSout)
end

function CVodeGetQuadSensDky(cvode_mem,t::realtype,k::Cint,dkyQS_all)
    ccall((:CVodeGetQuadSensDky,shlib),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyQS_all)
end

function CVodeGetQuadSensDky1(cvode_mem,t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:CVodeGetQuadSensDky1,shlib),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dkyQS)
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

function CVodeGetQuadNumRhsEvals(cvode_mem,nfQevals)
    ccall((:CVodeGetQuadNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfQevals)
end

function CVodeGetQuadNumErrTestFails(cvode_mem,nQetfails)
    ccall((:CVodeGetQuadNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nQetfails)
end

function CVodeGetQuadErrWeights(cvode_mem,eQweight::N_Vector)
    ccall((:CVodeGetQuadErrWeights,shlib),Cint,(Ptr{Void},N_Vector),cvode_mem,eQweight)
end

function CVodeGetQuadStats(cvode_mem,nfQevals,nQetfails)
    ccall((:CVodeGetQuadStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nfQevals,nQetfails)
end

function CVodeGetSensNumRhsEvals(cvode_mem,nfSevals)
    ccall((:CVodeGetSensNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfSevals)
end

function CVodeGetNumRhsEvalsSens(cvode_mem,nfevalsS)
    ccall((:CVodeGetNumRhsEvalsSens,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsS)
end

function CVodeGetSensNumErrTestFails(cvode_mem,nSetfails)
    ccall((:CVodeGetSensNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSetfails)
end

function CVodeGetSensNumLinSolvSetups(cvode_mem,nlinsetupsS)
    ccall((:CVodeGetSensNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetupsS)
end

function CVodeGetSensErrWeights(cvode_mem,eSweight)
    ccall((:CVodeGetSensErrWeights,shlib),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,eSweight)
end

function CVodeGetSensStats(cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
    ccall((:CVodeGetSensStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
end

function CVodeGetSensNumNonlinSolvIters(cvode_mem,nSniters)
    ccall((:CVodeGetSensNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSniters)
end

function CVodeGetSensNumNonlinSolvConvFails(cvode_mem,nSncfails)
    ccall((:CVodeGetSensNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSncfails)
end

function CVodeGetStgrSensNumNonlinSolvIters(cvode_mem,nSTGR1niters)
    ccall((:CVodeGetStgrSensNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSTGR1niters)
end

function CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem,nSTGR1ncfails)
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSTGR1ncfails)
end

function CVodeGetSensNonlinSolvStats(cvode_mem,nSniters,nSncfails)
    ccall((:CVodeGetSensNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nSniters,nSncfails)
end

function CVodeGetQuadSensNumRhsEvals(cvode_mem,nfQSevals)
    ccall((:CVodeGetQuadSensNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfQSevals)
end

function CVodeGetQuadSensNumErrTestFails(cvode_mem,nQSetfails)
    ccall((:CVodeGetQuadSensNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nQSetfails)
end

function CVodeGetQuadSensErrWeights(cvode_mem,eQSweight)
    ccall((:CVodeGetQuadSensErrWeights,shlib),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,eQSweight)
end

function CVodeGetQuadSensStats(cvode_mem,nfQSevals,nQSetfails)
    ccall((:CVodeGetQuadSensStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nfQSevals,nQSetfails)
end

function CVodeAdjInit(cvode_mem,steps::Clong,interp::Cint)
    ccall((:CVodeAdjInit,shlib),Cint,(Ptr{Void},Clong,Cint),cvode_mem,steps,interp)
end

function CVodeAdjReInit(cvode_mem)
    ccall((:CVodeAdjReInit,shlib),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeAdjFree(cvode_mem)
    ccall((:CVodeAdjFree,shlib),Void,(Ptr{Void},),cvode_mem)
end

function CVodeCreateB(cvode_mem,lmmB::Cint,iterB::Cint,which)
    ccall((:CVodeCreateB,shlib),Cint,(Ptr{Void},Cint,Cint,Ptr{Cint}),cvode_mem,lmmB,iterB,which)
end

function CVodeInitB(cvode_mem,which::Cint,fB::CVRhsFnB,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitB,shlib),Cint,(Ptr{Void},Cint,CVRhsFnB,realtype,N_Vector),cvode_mem,which,fB,tB0,yB0)
end

function CVodeInitBS(cvode_mem,which::Cint,fBs::CVRhsFnBS,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitBS,shlib),Cint,(Ptr{Void},Cint,CVRhsFnBS,realtype,N_Vector),cvode_mem,which,fBs,tB0,yB0)
end

function CVodeReInitB(cvode_mem,which::Cint,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeReInitB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,tB0,yB0)
end

function CVodeSStolerancesB(cvode_mem,which::Cint,reltolB::realtype,abstolB::realtype)
    ccall((:CVodeSStolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,realtype),cvode_mem,which,reltolB,abstolB)
end

function CVodeSVtolerancesB(cvode_mem,which::Cint,reltolB::realtype,abstolB::N_Vector)
    ccall((:CVodeSVtolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,reltolB,abstolB)
end

function CVodeQuadInitB(cvode_mem,which::Cint,fQB::CVQuadRhsFnB,yQB0::N_Vector)
    ccall((:CVodeQuadInitB,shlib),Cint,(Ptr{Void},Cint,CVQuadRhsFnB,N_Vector),cvode_mem,which,fQB,yQB0)
end

function CVodeQuadInitBS(cvode_mem,which::Cint,fQBs::CVQuadRhsFnBS,yQB0::N_Vector)
    ccall((:CVodeQuadInitBS,shlib),Cint,(Ptr{Void},Cint,CVQuadRhsFnBS,N_Vector),cvode_mem,which,fQBs,yQB0)
end

function CVodeQuadReInitB(cvode_mem,which::Cint,yQB0::N_Vector)
    ccall((:CVodeQuadReInitB,shlib),Cint,(Ptr{Void},Cint,N_Vector),cvode_mem,which,yQB0)
end

function CVodeQuadSStolerancesB(cvode_mem,which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:CVodeQuadSStolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,realtype),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem,which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:CVodeQuadSVtolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeF(cvode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint,ncheckPtr)
    ccall((:CVodeF,shlib),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint,Ptr{Cint}),cvode_mem,tout,yout,tret,itask,ncheckPtr)
end

function CVodeB(cvode_mem,tBout::realtype,itaskB::Cint)
    ccall((:CVodeB,shlib),Cint,(Ptr{Void},realtype,Cint),cvode_mem,tBout,itaskB)
end

function CVodeSetAdjNoSensi(cvode_mem)
    ccall((:CVodeSetAdjNoSensi,shlib),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeSetIterTypeB(cvode_mem,which::Cint,iterB::Cint)
    ccall((:CVodeSetIterTypeB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,iterB)
end

function CVodeSetUserDataB(cvode_mem,which::Cint,user_dataB)
    ccall((:CVodeSetUserDataB,shlib),Cint,(Ptr{Void},Cint,Ptr{Void}),cvode_mem,which,user_dataB)
end

function CVodeSetMaxOrdB(cvode_mem,which::Cint,maxordB::Cint)
    ccall((:CVodeSetMaxOrdB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxordB)
end

function CVodeSetMaxNumStepsB(cvode_mem,which::Cint,mxstepsB::Clong)
    ccall((:CVodeSetMaxNumStepsB,shlib),Cint,(Ptr{Void},Cint,Clong),cvode_mem,which,mxstepsB)
end

function CVodeSetStabLimDetB(cvode_mem,which::Cint,stldetB::Cint)
    ccall((:CVodeSetStabLimDetB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,stldetB)
end

function CVodeSetInitStepB(cvode_mem,which::Cint,hinB::realtype)
    ccall((:CVodeSetInitStepB,shlib),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hinB)
end

function CVodeSetMinStepB(cvode_mem,which::Cint,hminB::realtype)
    ccall((:CVodeSetMinStepB,shlib),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hminB)
end

function CVodeSetMaxStepB(cvode_mem,which::Cint,hmaxB::realtype)
    ccall((:CVodeSetMaxStepB,shlib),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hmaxB)
end

function CVodeSetQuadErrConB(cvode_mem,which::Cint,errconQB::Cint)
    ccall((:CVodeSetQuadErrConB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,errconQB)
end

function CVodeGetB(cvode_mem,which::Cint,tBret,yB::N_Vector)
    ccall((:CVodeGetB,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,yB)
end

function CVodeGetQuadB(cvode_mem,which::Cint,tBret,qB::N_Vector)
    ccall((:CVodeGetQuadB,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,qB)
end

function CVodeGetAdjCVodeBmem(cvode_mem,which::Cint)
    ccall((:CVodeGetAdjCVodeBmem,shlib),Ptr{Void},(Ptr{Void},Cint),cvode_mem,which)
end

function CVodeGetAdjY(cvode_mem,t::realtype,y::N_Vector)
    ccall((:CVodeGetAdjY,shlib),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t,y)
end

function CVodeGetAdjCheckPointsInfo(cvode_mem,ckpnt)
    ccall((:CVodeGetAdjCheckPointsInfo,shlib),Cint,(Ptr{Void},Ptr{CVadjCheckPointRec}),cvode_mem,ckpnt)
end

function CVodeGetAdjDataPointHermite(cvode_mem,which::Cint,t,y::N_Vector,yd::N_Vector)
    ccall((:CVodeGetAdjDataPointHermite,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),cvode_mem,which,t,y,yd)
end

function CVodeGetAdjDataPointPolynomial(cvode_mem,which::Cint,t,order,y::N_Vector)
    ccall((:CVodeGetAdjDataPointPolynomial,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},Ptr{Cint},N_Vector),cvode_mem,which,t,order,y)
end

function CVodeGetAdjCurrentCheckPoint(cvode_mem,addr)
    ccall((:CVodeGetAdjCurrentCheckPoint,shlib),Cint,(Ptr{Void},Ptr{Ptr{Void}}),cvode_mem,addr)
end

function cvEwtSet(ycur::N_Vector,weight::N_Vector,data)
    ccall((:cvEwtSet,shlib),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function cvErrHandler(error_code::Cint,_module,_function,msg,data)
    ccall((:cvErrHandler,shlib),Void,(Cint,Cstring,Cstring,Cstring,Ptr{Void}),error_code,_module,_function,msg,data)
end

function cvSensRhsWrapper(cv_mem::CVodeMem,time::realtype,ycur::N_Vector,fcur::N_Vector,yScur,fScur,temp1::N_Vector,temp2::N_Vector)
    ccall((:cvSensRhsWrapper,shlib),Cint,(CVodeMem,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector},N_Vector,N_Vector),cv_mem,time,ycur,fcur,yScur,fScur,temp1,temp2)
end

function cvSensRhs1Wrapper(cv_mem::CVodeMem,time::realtype,ycur::N_Vector,fcur::N_Vector,is::Cint,yScur::N_Vector,fScur::N_Vector,temp1::N_Vector,temp2::N_Vector)
    ccall((:cvSensRhs1Wrapper,shlib),Cint,(CVodeMem,realtype,N_Vector,N_Vector,Cint,N_Vector,N_Vector,N_Vector,N_Vector),cv_mem,time,ycur,fcur,is,yScur,fScur,temp1,temp2)
end

function cvSensRhsInternalDQ(Ns::Cint,t::realtype,y::N_Vector,ydot::N_Vector,yS,ySdot,fS_data,tempv::N_Vector,ftemp::N_Vector)
    ccall((:cvSensRhsInternalDQ,shlib),Cint,(Cint,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector},Ptr{Void},N_Vector,N_Vector),Ns,t,y,ydot,yS,ySdot,fS_data,tempv,ftemp)
end

function cvSensRhs1InternalDQ(Ns::Cint,t::realtype,y::N_Vector,ydot::N_Vector,is::Cint,yS::N_Vector,ySdot::N_Vector,fS_data,tempv::N_Vector,ftemp::N_Vector)
    ccall((:cvSensRhs1InternalDQ,shlib),Cint,(Cint,realtype,N_Vector,N_Vector,Cint,N_Vector,N_Vector,Ptr{Void},N_Vector,N_Vector),Ns,t,y,ydot,is,yS,ySdot,fS_data,tempv,ftemp)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/shlib.h
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

function CVSlsGetNumJacEvals(cvode_mem,njevals)
    ccall((:CVSlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njevals)
end

function CVSlsGetLastFlag(cvode_mem,flag)
    ccall((:CVSlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSlsGetReturnFlagName(flag::Clong)
    ccall((:CVSlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function CVSlsSetSparseJacFnB(cv_mem,which::Cint,jacB::CVSlsSparseJacFnB)
    ccall((:CVSlsSetSparseJacFnB,shlib),Cint,(Ptr{Void},Cint,CVSlsSparseJacFnB),cv_mem,which,jacB)
end

function CVSlsSetSparseJacFnBS(cv_mem,which::Cint,jacBS::CVSlsSparseJacFnBS)
    ccall((:CVSlsSetSparseJacFnBS,shlib),Cint,(Ptr{Void},Cint,CVSlsSparseJacFnBS),cv_mem,which,jacBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/shlib.h
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

function CVSpilsSetPrecTypeB(cvode_mem,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpsLinB(cvode_mem,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpsLinB,shlib),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,shlib),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetPreconditionerBS(cvode_mem,which::Cint,psetBS::CVSpilsPrecSetupFnBS,psolveBS::CVSpilsPrecSolveFnBS)
    ccall((:CVSpilsSetPreconditionerBS,shlib),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnBS,CVSpilsPrecSolveFnBS),cvode_mem,which,psetBS,psolveBS)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,shlib),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSpilsSetJacTimesVecFnBS(cvode_mem,which::Cint,jtvBS::CVSpilsJacTimesVecFnBS)
    ccall((:CVSpilsSetJacTimesVecFnBS,shlib),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnBS),cvode_mem,which,jtvBS)
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

function CVSpbcgB(cvode_mem,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSpbcgB,shlib),Cint,(Ptr{Void},Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/shlib.h
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

function CVSpilsSetPrecTypeB(cvode_mem,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpsLinB(cvode_mem,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpsLinB,shlib),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,shlib),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetPreconditionerBS(cvode_mem,which::Cint,psetBS::CVSpilsPrecSetupFnBS,psolveBS::CVSpilsPrecSolveFnBS)
    ccall((:CVSpilsSetPreconditionerBS,shlib),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnBS,CVSpilsPrecSolveFnBS),cvode_mem,which,psetBS,psolveBS)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,shlib),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSpilsSetJacTimesVecFnBS(cvode_mem,which::Cint,jtvBS::CVSpilsJacTimesVecFnBS)
    ccall((:CVSpilsSetJacTimesVecFnBS,shlib),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnBS),cvode_mem,which,jtvBS)
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

function CVSpgmrB(cvode_mem,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSpgmrB,shlib),Cint,(Ptr{Void},Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvodes/shlib.h
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

function CVSpilsSetPrecTypeB(cvode_mem,which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem,which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpsLinB(cvode_mem,which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpsLinB,shlib),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem,which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,shlib),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem,which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,shlib),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetPreconditionerBS(cvode_mem,which::Cint,psetBS::CVSpilsPrecSetupFnBS,psolveBS::CVSpilsPrecSolveFnBS)
    ccall((:CVSpilsSetPreconditionerBS,shlib),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnBS,CVSpilsPrecSolveFnBS),cvode_mem,which,psetBS,psolveBS)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem,which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,shlib),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSpilsSetJacTimesVecFnBS(cvode_mem,which::Cint,jtvBS::CVSpilsJacTimesVecFnBS)
    ccall((:CVSpilsSetJacTimesVecFnBS,shlib),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnBS),cvode_mem,which,jtvBS)
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

function CVSptfqmrB(cvode_mem,which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSptfqmrB,shlib),Cint,(Ptr{Void},Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
