# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDACreate()
    ccall((:IDACreate,libsundials_idas),IDAMemPtr,())
end

function IDASetErrHandlerFn(ida_mem::IDAMemPtr,ehfun::IDAErrHandlerFn,eh_data::Ptr{Void})
    ccall((:IDASetErrHandlerFn,libsundials_idas),Cint,(IDAMemPtr,IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

function IDASetErrFile(ida_mem::IDAMemPtr,errfp::Ptr{FILE})
    ccall((:IDASetErrFile,libsundials_idas),Cint,(IDAMemPtr,Ptr{FILE}),ida_mem,errfp)
end

function IDASetUserData(ida_mem::IDAMemPtr,user_data::Any)
    ccall((:IDASetUserData,libsundials_idas),Cint,(IDAMemPtr,Any),ida_mem,user_data)
end

function IDASetMaxOrd(ida_mem::IDAMemPtr,maxord::Cint)
    ccall((:IDASetMaxOrd,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxord)
end

function IDASetMaxNumSteps(ida_mem::IDAMemPtr,mxsteps::Clong)
    ccall((:IDASetMaxNumSteps,libsundials_idas),Cint,(IDAMemPtr,Clong),ida_mem,mxsteps)
end

function IDASetInitStep(ida_mem::IDAMemPtr,hin::realtype)
    ccall((:IDASetInitStep,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,hin)
end

function IDASetMaxStep(ida_mem::IDAMemPtr,hmax::realtype)
    ccall((:IDASetMaxStep,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,hmax)
end

function IDASetStopTime(ida_mem::IDAMemPtr,tstop::realtype)
    ccall((:IDASetStopTime,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,tstop)
end

function IDASetNonlinConvCoef(ida_mem::IDAMemPtr,epcon::realtype)
    ccall((:IDASetNonlinConvCoef,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,epcon)
end

function IDASetMaxErrTestFails(ida_mem::IDAMemPtr,maxnef::Cint)
    ccall((:IDASetMaxErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxnef)
end

function IDASetMaxNonlinIters(ida_mem::IDAMemPtr,maxcor::Cint)
    ccall((:IDASetMaxNonlinIters,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxcor)
end

function IDASetMaxConvFails(ida_mem::IDAMemPtr,maxncf::Cint)
    ccall((:IDASetMaxConvFails,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxncf)
end

function IDASetSuppressAlg(ida_mem::IDAMemPtr,suppressalg::Cint)
    ccall((:IDASetSuppressAlg,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,suppressalg)
end

function IDASetId(ida_mem::IDAMemPtr,id::N_Vector)
    ccall((:IDASetId,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,id)
end

function IDASetConstraints(ida_mem::IDAMemPtr,constraints::N_Vector)
    ccall((:IDASetConstraints,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,constraints)
end

function IDASetRootDirection(ida_mem::IDAMemPtr,rootdir::Ptr{Cint})
    ccall((:IDASetRootDirection,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem::IDAMemPtr)
    ccall((:IDASetNoInactiveRootWarn,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

function IDAInit(ida_mem::IDAMemPtr,res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,libsundials_idas),Cint,(IDAMemPtr,IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

function IDAReInit(ida_mem::IDAMemPtr,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,libsundials_idas),Cint,(IDAMemPtr,realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

function IDASStolerances(ida_mem::IDAMemPtr,reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,realtype),ida_mem,reltol,abstol)
end

function IDASVtolerances(ida_mem::IDAMemPtr,reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,N_Vector),ida_mem,reltol,abstol)
end

function IDAWFtolerances(ida_mem::IDAMemPtr,efun::IDAEwtFn)
    ccall((:IDAWFtolerances,libsundials_idas),Cint,(IDAMemPtr,IDAEwtFn),ida_mem,efun)
end

function IDASetNonlinConvCoefIC(ida_mem::IDAMemPtr,epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,epiccon)
end

function IDASetMaxNumStepsIC(ida_mem::IDAMemPtr,maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxnh)
end

function IDASetMaxNumJacsIC(ida_mem::IDAMemPtr,maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxnj)
end

function IDASetMaxNumItersIC(ida_mem::IDAMemPtr,maxnit::Cint)
    ccall((:IDASetMaxNumItersIC,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxnit)
end

function IDASetLineSearchOffIC(ida_mem::IDAMemPtr,lsoff::Cint)
    ccall((:IDASetLineSearchOffIC,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,lsoff)
end

function IDASetStepToleranceIC(ida_mem::IDAMemPtr,steptol::realtype)
    ccall((:IDASetStepToleranceIC,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,steptol)
end

function IDARootInit(ida_mem::IDAMemPtr,nrtfn::Cint,g::IDARootFn)
    ccall((:IDARootInit,libsundials_idas),Cint,(IDAMemPtr,Cint,IDARootFn),ida_mem,nrtfn,g)
end

function IDASetQuadErrCon(ida_mem::IDAMemPtr,errconQ::Cint)
    ccall((:IDASetQuadErrCon,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,errconQ)
end

function IDAQuadInit(ida_mem::IDAMemPtr,rhsQ::IDAQuadRhsFn,yQ0::N_Vector)
    ccall((:IDAQuadInit,libsundials_idas),Cint,(IDAMemPtr,IDAQuadRhsFn,N_Vector),ida_mem,rhsQ,yQ0)
end

function IDAQuadReInit(ida_mem::IDAMemPtr,yQ0::N_Vector)
    ccall((:IDAQuadReInit,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,yQ0)
end

function IDAQuadSStolerances(ida_mem::IDAMemPtr,reltolQ::realtype,abstolQ::realtype)
    ccall((:IDAQuadSStolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,realtype),ida_mem,reltolQ,abstolQ)
end

function IDAQuadSVtolerances(ida_mem::IDAMemPtr,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:IDAQuadSVtolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,N_Vector),ida_mem,reltolQ,abstolQ)
end

function IDASetSensDQMethod(ida_mem::IDAMemPtr,DQtype::Cint,DQrhomax::realtype)
    ccall((:IDASetSensDQMethod,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,DQtype,DQrhomax)
end

function IDASetSensParams(ida_mem::IDAMemPtr,p::Ptr{realtype},pbar::Ptr{realtype},plist::Ptr{Cint})
    ccall((:IDASetSensParams,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Ptr{realtype},Ptr{Cint}),ida_mem,p,pbar,plist)
end

function IDASetSensErrCon(ida_mem::IDAMemPtr,errconS::Cint)
    ccall((:IDASetSensErrCon,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,errconS)
end

function IDASetSensMaxNonlinIters(ida_mem::IDAMemPtr,maxcorS::Cint)
    ccall((:IDASetSensMaxNonlinIters,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxcorS)
end

function IDASensInit(ida_mem::IDAMemPtr,Ns::Cint,ism::Cint,resS::IDASensResFn,yS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDASensInit,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint,IDASensResFn,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,Ns,ism,resS,yS0,ypS0)
end

function IDASensReInit(ida_mem::IDAMemPtr,ism::Cint,yS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDASensReInit,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,ism,yS0,ypS0)
end

function IDASensToggleOff(ida_mem::IDAMemPtr)
    ccall((:IDASensToggleOff,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

function IDASensSStolerances(ida_mem::IDAMemPtr,reltolS::realtype,abstolS::Ptr{realtype})
    ccall((:IDASensSStolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{realtype}),ida_mem,reltolS,abstolS)
end

function IDASensSVtolerances(ida_mem::IDAMemPtr,reltolS::realtype,abstolS::Ptr{N_Vector})
    ccall((:IDASensSVtolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{N_Vector}),ida_mem,reltolS,abstolS)
end

function IDASensEEtolerances(ida_mem::IDAMemPtr)
    ccall((:IDASensEEtolerances,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

function IDAQuadSensInit(ida_mem::IDAMemPtr,resQS::IDAQuadSensRhsFn,yQS0::Ptr{N_Vector})
    ccall((:IDAQuadSensInit,libsundials_idas),Cint,(IDAMemPtr,IDAQuadSensRhsFn,Ptr{N_Vector}),ida_mem,resQS,yQS0)
end

function IDAQuadSensReInit(ida_mem::IDAMemPtr,yQS0::Ptr{N_Vector})
    ccall((:IDAQuadSensReInit,libsundials_idas),Cint,(IDAMemPtr,Ptr{N_Vector}),ida_mem,yQS0)
end

function IDAQuadSensSStolerances(ida_mem::IDAMemPtr,reltolQS::realtype,abstolQS::Ptr{realtype})
    ccall((:IDAQuadSensSStolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{realtype}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensSVtolerances(ida_mem::IDAMemPtr,reltolQS::realtype,abstolQS::Ptr{N_Vector})
    ccall((:IDAQuadSensSVtolerances,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{N_Vector}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensEEtolerances(ida_mem::IDAMemPtr)
    ccall((:IDAQuadSensEEtolerances,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

function IDASetQuadSensErrCon(ida_mem::IDAMemPtr,errconQS::Cint)
    ccall((:IDASetQuadSensErrCon,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,errconQS)
end

function IDACalcIC(ida_mem::IDAMemPtr,icopt::Cint,tout1::realtype)
    ccall((:IDACalcIC,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,icopt,tout1)
end

function IDASolve(ida_mem::IDAMemPtr,tout::realtype,tret::Ptr{realtype},yret::N_Vector,ypret::N_Vector,itask::Cint)
    ccall((:IDASolve,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

function IDAGetDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetDky,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetWorkSpace(ida_mem::IDAMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:IDAGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

function IDAGetNumSteps(ida_mem::IDAMemPtr,nsteps::Ptr{Clong})
    ccall((:IDAGetNumSteps,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nsteps)
end

function IDAGetNumResEvals(ida_mem::IDAMemPtr,nrevals::Ptr{Clong})
    ccall((:IDAGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem::IDAMemPtr,nlinsetups::Ptr{Clong})
    ccall((:IDAGetNumLinSolvSetups,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem::IDAMemPtr,netfails::Ptr{Clong})
    ccall((:IDAGetNumErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,netfails)
end

function IDAGetNumBacktrackOps(ida_mem::IDAMemPtr,nbacktr::Ptr{Clong})
    ccall((:IDAGetNumBacktrackOps,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nbacktr)
end

function IDAGetConsistentIC(ida_mem::IDAMemPtr,yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,libsundials_idas),Cint,(IDAMemPtr,N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

function IDAGetLastOrder(ida_mem::IDAMemPtr,klast::Ptr{Cint})
    ccall((:IDAGetLastOrder,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,klast)
end

function IDAGetCurrentOrder(ida_mem::IDAMemPtr,kcur::Ptr{Cint})
    ccall((:IDAGetCurrentOrder,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,kcur)
end

function IDAGetActualInitStep(ida_mem::IDAMemPtr,hinused::Ptr{realtype})
    ccall((:IDAGetActualInitStep,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hinused)
end

function IDAGetLastStep(ida_mem::IDAMemPtr,hlast::Ptr{realtype})
    ccall((:IDAGetLastStep,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hlast)
end

function IDAGetCurrentStep(ida_mem::IDAMemPtr,hcur::Ptr{realtype})
    ccall((:IDAGetCurrentStep,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hcur)
end

function IDAGetCurrentTime(ida_mem::IDAMemPtr,tcur::Ptr{realtype})
    ccall((:IDAGetCurrentTime,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,tcur)
end

function IDAGetTolScaleFactor(ida_mem::IDAMemPtr,tolsfact::Ptr{realtype})
    ccall((:IDAGetTolScaleFactor,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,tolsfact)
end

function IDAGetErrWeights(ida_mem::IDAMemPtr,eweight::N_Vector)
    ccall((:IDAGetErrWeights,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,eweight)
end

function IDAGetEstLocalErrors(ida_mem::IDAMemPtr,ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,ele)
end

function IDAGetNumGEvals(ida_mem::IDAMemPtr,ngevals::Ptr{Clong})
    ccall((:IDAGetNumGEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,ngevals)
end

function IDAGetRootInfo(ida_mem::IDAMemPtr,rootsfound::Ptr{Cint})
    ccall((:IDAGetRootInfo,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,rootsfound)
end

function IDAGetIntegratorStats(ida_mem::IDAMemPtr,nsteps::Ptr{Clong},nrevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:IDAGetIntegratorStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem::IDAMemPtr,nniters::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvIters,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem::IDAMemPtr,nncfails::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvConvFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nncfails)
end

function IDAGetNonlinSolvStats(ida_mem::IDAMemPtr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:IDAGetNonlinSolvStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

function IDAGetQuad(ida_mem::IDAMemPtr,t::Ptr{realtype},yQout::N_Vector)
    ccall((:IDAGetQuad,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},N_Vector),ida_mem,t,yQout)
end

function IDAGetQuadDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetQuadDky,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetQuadNumRhsEvals(ida_mem::IDAMemPtr,nrhsQevals::Ptr{Clong})
    ccall((:IDAGetQuadNumRhsEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrhsQevals)
end

function IDAGetQuadNumErrTestFails(ida_mem::IDAMemPtr,nQetfails::Ptr{Clong})
    ccall((:IDAGetQuadNumErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nQetfails)
end

function IDAGetQuadErrWeights(ida_mem::IDAMemPtr,eQweight::N_Vector)
    ccall((:IDAGetQuadErrWeights,libsundials_idas),Cint,(IDAMemPtr,N_Vector),ida_mem,eQweight)
end

function IDAGetQuadStats(ida_mem::IDAMemPtr,nrhsQevals::Ptr{Clong},nQetfails::Ptr{Clong})
    ccall((:IDAGetQuadStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQevals,nQetfails)
end

function IDAGetSens(ida_mem::IDAMemPtr,tret::Ptr{realtype},yySout::Ptr{N_Vector})
    ccall((:IDAGetSens,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yySout)
end

function IDAGetSens1(ida_mem::IDAMemPtr,tret::Ptr{realtype},is::Cint,yySret::N_Vector)
    ccall((:IDAGetSens1,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yySret)
end

function IDAGetSensDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dkyS::Ptr{N_Vector})
    ccall((:IDAGetSensDky,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyS)
end

function IDAGetSensDky1(ida_mem::IDAMemPtr,t::realtype,k::Cint,is::Cint,dkyS::N_Vector)
    ccall((:IDAGetSensDky1,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyS)
end

function IDAGetSensConsistentIC(ida_mem::IDAMemPtr,yyS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDAGetSensConsistentIC,libsundials_idas),Cint,(IDAMemPtr,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,yyS0,ypS0)
end

function IDAGetSensNumResEvals(ida_mem::IDAMemPtr,nresSevals::Ptr{Clong})
    ccall((:IDAGetSensNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nresSevals)
end

function IDAGetNumResEvalsSens(ida_mem::IDAMemPtr,nresevalsS::Ptr{Clong})
    ccall((:IDAGetNumResEvalsSens,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nresevalsS)
end

function IDAGetSensNumErrTestFails(ida_mem::IDAMemPtr,nSetfails::Ptr{Clong})
    ccall((:IDAGetSensNumErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nSetfails)
end

function IDAGetSensNumLinSolvSetups(ida_mem::IDAMemPtr,nlinsetupsS::Ptr{Clong})
    ccall((:IDAGetSensNumLinSolvSetups,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlinsetupsS)
end

function IDAGetSensErrWeights(ida_mem::IDAMemPtr,eSweight::N_Vector_S)
    ccall((:IDAGetSensErrWeights,libsundials_idas),Cint,(IDAMemPtr,N_Vector_S),ida_mem,eSweight)
end

function IDAGetSensStats(ida_mem::IDAMemPtr,nresSevals::Ptr{Clong},nresevalsS::Ptr{Clong},nSetfails::Ptr{Clong},nlinsetupsS::Ptr{Clong})
    ccall((:IDAGetSensStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),ida_mem,nresSevals,nresevalsS,nSetfails,nlinsetupsS)
end

function IDAGetSensNumNonlinSolvIters(ida_mem::IDAMemPtr,nSniters::Ptr{Clong})
    ccall((:IDAGetSensNumNonlinSolvIters,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nSniters)
end

function IDAGetSensNumNonlinSolvConvFails(ida_mem::IDAMemPtr,nSncfails::Ptr{Clong})
    ccall((:IDAGetSensNumNonlinSolvConvFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nSncfails)
end

function IDAGetSensNonlinSolvStats(ida_mem::IDAMemPtr,nSniters::Ptr{Clong},nSncfails::Ptr{Clong})
    ccall((:IDAGetSensNonlinSolvStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nSniters,nSncfails)
end

function IDAGetQuadSensNumRhsEvals(ida_mem::IDAMemPtr,nrhsQSevals::Ptr{Clong})
    ccall((:IDAGetQuadSensNumRhsEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrhsQSevals)
end

function IDAGetQuadSensNumErrTestFails(ida_mem::IDAMemPtr,nQSetfails::Ptr{Clong})
    ccall((:IDAGetQuadSensNumErrTestFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nQSetfails)
end

function IDAGetQuadSensErrWeights(ida_mem::IDAMemPtr,eQSweight::Ptr{N_Vector})
    ccall((:IDAGetQuadSensErrWeights,libsundials_idas),Cint,(IDAMemPtr,Ptr{N_Vector}),ida_mem,eQSweight)
end

function IDAGetQuadSensStats(ida_mem::IDAMemPtr,nrhsQSevals::Ptr{Clong},nQSetfails::Ptr{Clong})
    ccall((:IDAGetQuadSensStats,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQSevals,nQSetfails)
end

function IDAGetQuadSens(ida_mem::IDAMemPtr,tret::Ptr{realtype},yyQSout::Ptr{N_Vector})
    ccall((:IDAGetQuadSens,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yyQSout)
end

function IDAGetQuadSens1(ida_mem::IDAMemPtr,tret::Ptr{realtype},is::Cint,yyQSret::N_Vector)
    ccall((:IDAGetQuadSens1,libsundials_idas),Cint,(IDAMemPtr,Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yyQSret)
end

function IDAGetQuadSensDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dkyQS::Ptr{N_Vector})
    ccall((:IDAGetQuadSensDky,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyQS)
end

function IDAGetQuadSensDky1(ida_mem::IDAMemPtr,t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:IDAGetQuadSensDky1,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyQS)
end

function IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function IDAFree(ida_mem::Ref{IDAMemPtr})
    ccall((:IDAFree,libsundials_idas),Void,(Ref{IDAMemPtr},),ida_mem)
end

function IDAQuadFree(ida_mem::IDAMemPtr)
    ccall((:IDAQuadFree,libsundials_idas),Void,(IDAMemPtr,),ida_mem)
end

function IDASensFree(ida_mem::IDAMemPtr)
    ccall((:IDASensFree,libsundials_idas),Void,(IDAMemPtr,),ida_mem)
end

function IDAQuadSensFree(ida_mem::IDAMemPtr)
    ccall((:IDAQuadSensFree,libsundials_idas),Void,(IDAMemPtr,),ida_mem)
end

function IDAAdjInit(ida_mem::IDAMemPtr,steps::Clong,interp::Cint)
    ccall((:IDAAdjInit,libsundials_idas),Cint,(IDAMemPtr,Clong,Cint),ida_mem,steps,interp)
end

function IDAAdjReInit(ida_mem::IDAMemPtr)
    ccall((:IDAAdjReInit,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

function IDAAdjFree(ida_mem::IDAMemPtr)
    ccall((:IDAAdjFree,libsundials_idas),Void,(IDAMemPtr,),ida_mem)
end

function IDACreateB(ida_mem::IDAMemPtr,which::Ptr{Cint})
    ccall((:IDACreateB,libsundials_idas),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,which)
end

function IDAInitB(ida_mem::IDAMemPtr,which::Cint,resB::IDAResFnB,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDAResFnB,realtype,N_Vector,N_Vector),ida_mem,which,resB,tB0,yyB0,ypB0)
end

function IDAInitBS(ida_mem::IDAMemPtr,which::Cint,resS::IDAResFnBS,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitBS,libsundials_idas),Cint,(IDAMemPtr,Cint,IDAResFnBS,realtype,N_Vector,N_Vector),ida_mem,which,resS,tB0,yyB0,ypB0)
end

function IDAReInitB(ida_mem::IDAMemPtr,which::Cint,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAReInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector,N_Vector),ida_mem,which,tB0,yyB0,ypB0)
end

function IDASStolerancesB(ida_mem::IDAMemPtr,which::Cint,relTolB::realtype,absTolB::realtype)
    ccall((:IDASStolerancesB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,realtype),ida_mem,which,relTolB,absTolB)
end

function IDASVtolerancesB(ida_mem::IDAMemPtr,which::Cint,relTolB::realtype,absTolB::N_Vector)
    ccall((:IDASVtolerancesB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector),ida_mem,which,relTolB,absTolB)
end

function IDAQuadInitB(ida_mem::IDAMemPtr,which::Cint,rhsQB::IDAQuadRhsFnB,yQB0::N_Vector)
    ccall((:IDAQuadInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDAQuadRhsFnB,N_Vector),ida_mem,which,rhsQB,yQB0)
end

function IDAQuadInitBS(ida_mem::IDAMemPtr,which::Cint,rhsQS::IDAQuadRhsFnBS,yQB0::N_Vector)
    ccall((:IDAQuadInitBS,libsundials_idas),Cint,(IDAMemPtr,Cint,IDAQuadRhsFnBS,N_Vector),ida_mem,which,rhsQS,yQB0)
end

function IDAQuadReInitB(ida_mem::IDAMemPtr,which::Cint,yQB0::N_Vector)
    ccall((:IDAQuadReInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,N_Vector),ida_mem,which,yQB0)
end

function IDAQuadSStolerancesB(ida_mem::IDAMemPtr,which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:IDAQuadSStolerancesB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,realtype),ida_mem,which,reltolQB,abstolQB)
end

function IDAQuadSVtolerancesB(ida_mem::IDAMemPtr,which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:IDAQuadSVtolerancesB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector),ida_mem,which,reltolQB,abstolQB)
end

function IDACalcICB(ida_mem::IDAMemPtr,which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDACalcICB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector,N_Vector),ida_mem,which,tout1,yy0,yp0)
end

function IDACalcICBS(ida_mem::IDAMemPtr,which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector,yyS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDACalcICBS,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,which,tout1,yy0,yp0,yyS0,ypS0)
end

function IDASolveF(ida_mem::IDAMemPtr,tout::realtype,tret::Ptr{realtype},yret::N_Vector,ypret::N_Vector,itask::Cint,ncheckPtr::Ptr{Cint})
    ccall((:IDASolveF,libsundials_idas),Cint,(IDAMemPtr,realtype,Ptr{realtype},N_Vector,N_Vector,Cint,Ptr{Cint}),ida_mem,tout,tret,yret,ypret,itask,ncheckPtr)
end

function IDASolveB(ida_mem::IDAMemPtr,tBout::realtype,itaskB::Cint)
    ccall((:IDASolveB,libsundials_idas),Cint,(IDAMemPtr,realtype,Cint),ida_mem,tBout,itaskB)
end

function IDASetAdjNoSensi(ida_mem::IDAMemPtr)
    ccall((:IDASetAdjNoSensi,libsundials_idas),Cint,(IDAMemPtr,),ida_mem)
end

function IDASetUserDataB(ida_mem::IDAMemPtr,which::Cint,user_dataB::Any)
    ccall((:IDASetUserDataB,libsundials_idas),Cint,(IDAMemPtr,Cint,Any),ida_mem,which,user_dataB)
end

function IDASetMaxOrdB(ida_mem::IDAMemPtr,which::Cint,maxordB::Cint)
    ccall((:IDASetMaxOrdB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxordB)
end

function IDASetMaxNumStepsB(ida_mem::IDAMemPtr,which::Cint,mxstepsB::Clong)
    ccall((:IDASetMaxNumStepsB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong),ida_mem,which,mxstepsB)
end

function IDASetInitStepB(ida_mem::IDAMemPtr,which::Cint,hinB::realtype)
    ccall((:IDASetInitStepB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,hinB)
end

function IDASetMaxStepB(ida_mem::IDAMemPtr,which::Cint,hmaxB::realtype)
    ccall((:IDASetMaxStepB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,hmaxB)
end

function IDASetSuppressAlgB(ida_mem::IDAMemPtr,which::Cint,suppressalgB::Cint)
    ccall((:IDASetSuppressAlgB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,suppressalgB)
end

function IDASetIdB(ida_mem::IDAMemPtr,which::Cint,idB::N_Vector)
    ccall((:IDASetIdB,libsundials_idas),Cint,(IDAMemPtr,Cint,N_Vector),ida_mem,which,idB)
end

function IDASetConstraintsB(ida_mem::IDAMemPtr,which::Cint,constraintsB::N_Vector)
    ccall((:IDASetConstraintsB,libsundials_idas),Cint,(IDAMemPtr,Cint,N_Vector),ida_mem,which,constraintsB)
end

function IDASetQuadErrConB(ida_mem::IDAMemPtr,which::Cint,errconQB::Cint)
    ccall((:IDASetQuadErrConB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,errconQB)
end

function IDAGetB(ida_mem::IDAMemPtr,which::Cint,tret::Ptr{realtype},yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetB,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,tret,yy,yp)
end

function IDAGetQuadB(ida_mem::IDAMemPtr,which::Cint,tret::Ptr{realtype},qB::N_Vector)
    ccall((:IDAGetQuadB,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{realtype},N_Vector),ida_mem,which,tret,qB)
end

function IDAGetAdjIDABmem(ida_mem::IDAMemPtr,which::Cint)
    ccall((:IDAGetAdjIDABmem,libsundials_idas),Ptr{Void},(IDAMemPtr,Cint),ida_mem,which)
end

function IDAGetConsistentICB(ida_mem::IDAMemPtr,which::Cint,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAGetConsistentICB,libsundials_idas),Cint,(IDAMemPtr,Cint,N_Vector,N_Vector),ida_mem,which,yyB0,ypB0)
end

function IDAGetAdjY(ida_mem::IDAMemPtr,t::realtype,yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetAdjY,libsundials_idas),Cint,(IDAMemPtr,realtype,N_Vector,N_Vector),ida_mem,t,yy,yp)
end

function IDAGetAdjCheckPointsInfo(ida_mem::IDAMemPtr,ckpnt::Ptr{IDAadjCheckPointRec})
    ccall((:IDAGetAdjCheckPointsInfo,libsundials_idas),Cint,(IDAMemPtr,Ptr{IDAadjCheckPointRec}),ida_mem,ckpnt)
end

function IDAGetAdjDataPointHermite(ida_mem::IDAMemPtr,which::Cint,t::Ptr{realtype},yy::N_Vector,yd::N_Vector)
    ccall((:IDAGetAdjDataPointHermite,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,t,yy,yd)
end

function IDAGetAdjDataPointPolynomial(ida_mem::IDAMemPtr,which::Cint,t::Ptr{realtype},order::Ptr{Cint},y::N_Vector)
    ccall((:IDAGetAdjDataPointPolynomial,libsundials_idas),Cint,(IDAMemPtr,Cint,Ptr{realtype},Ptr{Cint},N_Vector),ida_mem,which,t,order,y)
end

function IDAGetAdjCurrentCheckPoint(ida_mem::IDAMemPtr,addr::Ptr{Ptr{Void}})
    ccall((:IDAGetAdjCurrentCheckPoint,libsundials_idas),Cint,(IDAMemPtr,Ptr{Ptr{Void}}),ida_mem,addr)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDADlsSetDenseJacFn(ida_mem::IDAMemPtr,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,libsundials_idas),Cint,(IDAMemPtr,IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem::IDAMemPtr,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,libsundials_idas),Cint,(IDAMemPtr,IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem::IDAMemPtr,njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem::IDAMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function IDADlsSetDenseJacFnB(ida_mem::IDAMemPtr,which::Cint,jacB::IDADlsDenseJacFnB)
    ccall((:IDADlsSetDenseJacFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDADlsDenseJacFnB),ida_mem,which,jacB)
end

function IDADlsSetBandJacFnB(idaa_mem::IDAMemPtr,which::Cint,jacB::IDADlsBandJacFnB)
    ccall((:IDADlsSetBandJacFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDADlsBandJacFnB),idaa_mem,which,jacB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDASpilsSetPreconditioner(ida_mem::IDAMemPtr,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_idas),Cint,(IDAMemPtr,IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem::IDAMemPtr,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_idas),Cint,(IDAMemPtr,IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem::IDAMemPtr,gstype::Cint)
    ccall((:IDASpilsSetGSType,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem::IDAMemPtr,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpilsSetMaxl,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem::IDAMemPtr,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem::IDAMemPtr,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem::IDAMemPtr,npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem::IDAMemPtr,npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem::IDAMemPtr,nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem::IDAMemPtr,nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem::IDAMemPtr,njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem::IDAMemPtr,nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function IDASpilsSetGSTypeB(ida_mem::IDAMemPtr,which::Cint,gstypeB::Cint)
    ccall((:IDASpilsSetGSTypeB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,gstypeB)
end

function IDASpilsSetMaxRestartsB(ida_mem::IDAMemPtr,which::Cint,maxrsB::Cint)
    ccall((:IDASpilsSetMaxRestartsB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxrsB)
end

function IDASpilsSetEpsLinB(ida_mem::IDAMemPtr,which::Cint,eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,eplifacB)
end

function IDASpilsSetMaxlB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASpilsSetMaxlB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end

function IDASpilsSetIncrementFactorB(ida_mem::IDAMemPtr,which::Cint,dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,dqincfacB)
end

function IDASpilsSetPreconditionerB(ida_mem::IDAMemPtr,which::Cint,psetB::IDASpilsPrecSetupFnB,psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsPrecSetupFnB,IDASpilsPrecSolveFnB),ida_mem,which,psetB,psolveB)
end

function IDASpilsSetJacTimesVecFnB(ida_mem::IDAMemPtr,which::Cint,jtvB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesVecFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsJacTimesVecFnB),ida_mem,which,jtvB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDADlsSetDenseJacFn(ida_mem::IDAMemPtr,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,libsundials_idas),Cint,(IDAMemPtr,IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem::IDAMemPtr,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,libsundials_idas),Cint,(IDAMemPtr,IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem::IDAMemPtr,njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem::IDAMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function IDADlsSetDenseJacFnB(ida_mem::IDAMemPtr,which::Cint,jacB::IDADlsDenseJacFnB)
    ccall((:IDADlsSetDenseJacFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDADlsDenseJacFnB),ida_mem,which,jacB)
end

function IDADlsSetBandJacFnB(idaa_mem::IDAMemPtr,which::Cint,jacB::IDADlsBandJacFnB)
    ccall((:IDADlsSetBandJacFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDADlsBandJacFnB),idaa_mem,which,jacB)
end

function IDABand(ida_mem::IDAMemPtr,Neq::Clong,mupper::Clong,mlower::Clong)
    ccall((:IDABand,libsundials_idas),Cint,(IDAMemPtr,Clong,Clong,Clong),ida_mem,Neq,mupper,mlower)
end

function IDABandB(idaadj_mem::IDAMemPtr,which::Cint,NeqB::Clong,mupperB::Clong,mlowerB::Clong)
    ccall((:IDABandB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong,Clong,Clong),idaadj_mem,which,NeqB,mupperB,mlowerB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDABBDPrecInit(ida_mem::IDAMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_yy::realtype,Gres::IDABBDLocalFn,Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit,libsundials_idas),Cint,(IDAMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFn,IDABBDCommFn),ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)
end

function IDABBDPrecReInit(ida_mem::IDAMemPtr,mudq::Clong,mldq::Clong,dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit,libsundials_idas),Cint,(IDAMemPtr,Clong,Clong,realtype),ida_mem,mudq,mldq,dq_rel_yy)
end

function IDABBDPrecGetWorkSpace(ida_mem::IDAMemPtr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwBBDP,leniwBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem::IDAMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetNumGfnEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,ngevalsBBDP)
end

function IDABBDPrecInitB(ida_mem::IDAMemPtr,which::Cint,NlocalB::Clong,mudqB::Clong,mldqB::Clong,mukeepB::Clong,mlkeepB::Clong,dq_rel_yyB::realtype,GresB::IDABBDLocalFnB,GcommB::IDABBDCommFnB)
    ccall((:IDABBDPrecInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFnB,IDABBDCommFnB),ida_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dq_rel_yyB,GresB,GcommB)
end

function IDABBDPrecReInitB(ida_mem::IDAMemPtr,which::Cint,mudqB::Clong,mldqB::Clong,dq_rel_yyB::realtype)
    ccall((:IDABBDPrecReInitB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong,Clong,realtype),ida_mem,which,mudqB,mldqB,dq_rel_yyB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDADlsSetDenseJacFn(ida_mem::IDAMemPtr,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,libsundials_idas),Cint,(IDAMemPtr,IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem::IDAMemPtr,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,libsundials_idas),Cint,(IDAMemPtr,IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem::IDAMemPtr,njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem::IDAMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function IDADlsSetDenseJacFnB(ida_mem::IDAMemPtr,which::Cint,jacB::IDADlsDenseJacFnB)
    ccall((:IDADlsSetDenseJacFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDADlsDenseJacFnB),ida_mem,which,jacB)
end

function IDADlsSetBandJacFnB(idaa_mem::IDAMemPtr,which::Cint,jacB::IDADlsBandJacFnB)
    ccall((:IDADlsSetBandJacFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDADlsBandJacFnB),idaa_mem,which,jacB)
end

function IDADense(ida_mem::IDAMemPtr,Neq::Clong)
    ccall((:IDADense,libsundials_idas),Cint,(IDAMemPtr,Clong),ida_mem,Neq)
end

function IDADenseB(ida_mem::IDAMemPtr,which::Cint,NeqB::Clong)
    ccall((:IDADenseB,libsundials_idas),Cint,(IDAMemPtr,Cint,Clong),ida_mem,which,NeqB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDASpilsSetPreconditioner(ida_mem::IDAMemPtr,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_idas),Cint,(IDAMemPtr,IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem::IDAMemPtr,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_idas),Cint,(IDAMemPtr,IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem::IDAMemPtr,gstype::Cint)
    ccall((:IDASpilsSetGSType,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem::IDAMemPtr,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpilsSetMaxl,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem::IDAMemPtr,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem::IDAMemPtr,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem::IDAMemPtr,npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem::IDAMemPtr,npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem::IDAMemPtr,nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem::IDAMemPtr,nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem::IDAMemPtr,njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem::IDAMemPtr,nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function IDASpilsSetGSTypeB(ida_mem::IDAMemPtr,which::Cint,gstypeB::Cint)
    ccall((:IDASpilsSetGSTypeB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,gstypeB)
end

function IDASpilsSetMaxRestartsB(ida_mem::IDAMemPtr,which::Cint,maxrsB::Cint)
    ccall((:IDASpilsSetMaxRestartsB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxrsB)
end

function IDASpilsSetEpsLinB(ida_mem::IDAMemPtr,which::Cint,eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,eplifacB)
end

function IDASpilsSetMaxlB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASpilsSetMaxlB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end

function IDASpilsSetIncrementFactorB(ida_mem::IDAMemPtr,which::Cint,dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,dqincfacB)
end

function IDASpilsSetPreconditionerB(ida_mem::IDAMemPtr,which::Cint,psetB::IDASpilsPrecSetupFnB,psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsPrecSetupFnB,IDASpilsPrecSolveFnB),ida_mem,which,psetB,psolveB)
end

function IDASpilsSetJacTimesVecFnB(ida_mem::IDAMemPtr,which::Cint,jtvB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesVecFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsJacTimesVecFnB),ida_mem,which,jtvB)
end

function IDASpbcg(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpbcg,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpbcgB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASpbcgB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDASpilsSetPreconditioner(ida_mem::IDAMemPtr,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_idas),Cint,(IDAMemPtr,IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem::IDAMemPtr,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_idas),Cint,(IDAMemPtr,IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem::IDAMemPtr,gstype::Cint)
    ccall((:IDASpilsSetGSType,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem::IDAMemPtr,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpilsSetMaxl,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem::IDAMemPtr,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem::IDAMemPtr,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem::IDAMemPtr,npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem::IDAMemPtr,npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem::IDAMemPtr,nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem::IDAMemPtr,nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem::IDAMemPtr,njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem::IDAMemPtr,nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function IDASpilsSetGSTypeB(ida_mem::IDAMemPtr,which::Cint,gstypeB::Cint)
    ccall((:IDASpilsSetGSTypeB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,gstypeB)
end

function IDASpilsSetMaxRestartsB(ida_mem::IDAMemPtr,which::Cint,maxrsB::Cint)
    ccall((:IDASpilsSetMaxRestartsB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxrsB)
end

function IDASpilsSetEpsLinB(ida_mem::IDAMemPtr,which::Cint,eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,eplifacB)
end

function IDASpilsSetMaxlB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASpilsSetMaxlB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end

function IDASpilsSetIncrementFactorB(ida_mem::IDAMemPtr,which::Cint,dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,dqincfacB)
end

function IDASpilsSetPreconditionerB(ida_mem::IDAMemPtr,which::Cint,psetB::IDASpilsPrecSetupFnB,psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsPrecSetupFnB,IDASpilsPrecSolveFnB),ida_mem,which,psetB,psolveB)
end

function IDASpilsSetJacTimesVecFnB(ida_mem::IDAMemPtr,which::Cint,jtvB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesVecFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsJacTimesVecFnB),ida_mem,which,jtvB)
end

function IDASpgmr(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpgmr,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpgmrB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASpgmrB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/idas/idas_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDASpilsSetPreconditioner(ida_mem::IDAMemPtr,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_idas),Cint,(IDAMemPtr,IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem::IDAMemPtr,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_idas),Cint,(IDAMemPtr,IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem::IDAMemPtr,gstype::Cint)
    ccall((:IDASpilsSetGSType,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem::IDAMemPtr,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpilsSetMaxl,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem::IDAMemPtr,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem::IDAMemPtr,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_idas),Cint,(IDAMemPtr,realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem::IDAMemPtr,npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem::IDAMemPtr,npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem::IDAMemPtr,nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem::IDAMemPtr,nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem::IDAMemPtr,njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem::IDAMemPtr,nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_idas),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,libsundials_idas),Ptr{UInt8},(Clong,),flag)
end

function IDASpilsSetGSTypeB(ida_mem::IDAMemPtr,which::Cint,gstypeB::Cint)
    ccall((:IDASpilsSetGSTypeB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,gstypeB)
end

function IDASpilsSetMaxRestartsB(ida_mem::IDAMemPtr,which::Cint,maxrsB::Cint)
    ccall((:IDASpilsSetMaxRestartsB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxrsB)
end

function IDASpilsSetEpsLinB(ida_mem::IDAMemPtr,which::Cint,eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,eplifacB)
end

function IDASpilsSetMaxlB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASpilsSetMaxlB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end

function IDASpilsSetIncrementFactorB(ida_mem::IDAMemPtr,which::Cint,dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB,libsundials_idas),Cint,(IDAMemPtr,Cint,realtype),ida_mem,which,dqincfacB)
end

function IDASpilsSetPreconditionerB(ida_mem::IDAMemPtr,which::Cint,psetB::IDASpilsPrecSetupFnB,psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsPrecSetupFnB,IDASpilsPrecSolveFnB),ida_mem,which,psetB,psolveB)
end

function IDASpilsSetJacTimesVecFnB(ida_mem::IDAMemPtr,which::Cint,jtvB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesVecFnB,libsundials_idas),Cint,(IDAMemPtr,Cint,IDASpilsJacTimesVecFnB),ida_mem,which,jtvB)
end

function IDASptfqmr(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASptfqmr,libsundials_idas),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASptfqmrB(ida_mem::IDAMemPtr,which::Cint,maxlB::Cint)
    ccall((:IDASptfqmrB,libsundials_idas),Cint,(IDAMemPtr,Cint,Cint),ida_mem,which,maxlB)
end
