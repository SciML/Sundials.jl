# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDACreate()
    ccall((:IDACreate,libsundials_ida),Ptr{Void},())
end

function IDASetErrHandlerFn(ida_mem::Ptr{Void},ehfun::IDAErrHandlerFn,eh_data::Ptr{Void})
    ccall((:IDASetErrHandlerFn,libsundials_ida),Cint,(Ptr{Void},IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

function IDASetErrFile(ida_mem::Ptr{Void},errfp::Ptr{Void})
    ccall((:IDASetErrFile,libsundials_ida),Cint,(Ptr{Void},Ptr{Void}),ida_mem,errfp)
end

function IDASetUserData(ida_mem::Ptr{Void},user_data::Ptr{Void})
    ccall((:IDASetUserData,libsundials_ida),Cint,(Ptr{Void},Ptr{Void}),ida_mem,user_data)
end

function IDASetMaxOrd(ida_mem::Ptr{Void},maxord::Int)
    ccall((:IDASetMaxOrd,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,maxord)
end

function IDASetMaxNumSteps(ida_mem::Ptr{Void},mxsteps::Int)
    ccall((:IDASetMaxNumSteps,libsundials_ida),Cint,(Ptr{Void},Clong),ida_mem,mxsteps)
end

function IDASetInitStep(ida_mem::Ptr{Void},hin::realtype)
    ccall((:IDASetInitStep,libsundials_ida),Cint,(Ptr{Void},realtype),ida_mem,hin)
end

function IDASetMaxStep(ida_mem::Ptr{Void},hmax::realtype)
    ccall((:IDASetMaxStep,libsundials_ida),Cint,(Ptr{Void},realtype),ida_mem,hmax)
end

function IDASetStopTime(ida_mem::Ptr{Void},tstop::realtype)
    ccall((:IDASetStopTime,libsundials_ida),Cint,(Ptr{Void},realtype),ida_mem,tstop)
end

function IDASetNonlinConvCoef(ida_mem::Ptr{Void},epcon::realtype)
    ccall((:IDASetNonlinConvCoef,libsundials_ida),Cint,(Ptr{Void},realtype),ida_mem,epcon)
end

function IDASetMaxErrTestFails(ida_mem::Ptr{Void},maxnef::Int)
    ccall((:IDASetMaxErrTestFails,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,maxnef)
end

function IDASetMaxNonlinIters(ida_mem::Ptr{Void},maxcor::Int)
    ccall((:IDASetMaxNonlinIters,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,maxcor)
end

function IDASetMaxConvFails(ida_mem::Ptr{Void},maxncf::Int)
    ccall((:IDASetMaxConvFails,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,maxncf)
end

function IDASetSuppressAlg(ida_mem::Ptr{Void},suppressalg::Int)
    ccall((:IDASetSuppressAlg,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,suppressalg)
end

function IDASetId(ida_mem::Ptr{Void},id::N_Vector)
    ccall((:IDASetId,libsundials_ida),Cint,(Ptr{Void},N_Vector),ida_mem,id)
end

function IDASetConstraints(ida_mem::Ptr{Void},constraints::N_Vector)
    ccall((:IDASetConstraints,libsundials_ida),Cint,(Ptr{Void},N_Vector),ida_mem,constraints)
end

function IDASetRootDirection(ida_mem::Ptr{Void},rootdir::Ptr{Cint})
    ccall((:IDASetRootDirection,libsundials_ida),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem::Ptr{Void})
    ccall((:IDASetNoInactiveRootWarn,libsundials_ida),Cint,(Ptr{Void},),ida_mem)
end

function IDAInit(ida_mem::Ptr{Void},res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,libsundials_ida),Cint,(Ptr{Void},IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

function IDAReInit(ida_mem::Ptr{Void},t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,libsundials_ida),Cint,(Ptr{Void},realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

function IDASStolerances(ida_mem::Ptr{Void},reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,libsundials_ida),Cint,(Ptr{Void},realtype,realtype),ida_mem,reltol,abstol)
end

function IDASVtolerances(ida_mem::Ptr{Void},reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,libsundials_ida),Cint,(Ptr{Void},realtype,N_Vector),ida_mem,reltol,abstol)
end

function IDAWFtolerances(ida_mem::Ptr{Void},efun::IDAEwtFn)
    ccall((:IDAWFtolerances,libsundials_ida),Cint,(Ptr{Void},IDAEwtFn),ida_mem,efun)
end

function IDASetNonlinConvCoefIC(ida_mem::Ptr{Void},epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,libsundials_ida),Cint,(Ptr{Void},realtype),ida_mem,epiccon)
end

function IDASetMaxNumStepsIC(ida_mem::Ptr{Void},maxnh::Int)
    ccall((:IDASetMaxNumStepsIC,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,maxnh)
end

function IDASetMaxNumJacsIC(ida_mem::Ptr{Void},maxnj::Int)
    ccall((:IDASetMaxNumJacsIC,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,maxnj)
end

function IDASetMaxNumItersIC(ida_mem::Ptr{Void},maxnit::Int)
    ccall((:IDASetMaxNumItersIC,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,maxnit)
end

function IDASetLineSearchOffIC(ida_mem::Ptr{Void},lsoff::Int)
    ccall((:IDASetLineSearchOffIC,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,lsoff)
end

function IDASetStepToleranceIC(ida_mem::Ptr{Void},steptol::realtype)
    ccall((:IDASetStepToleranceIC,libsundials_ida),Cint,(Ptr{Void},realtype),ida_mem,steptol)
end

function IDARootInit(ida_mem::Ptr{Void},nrtfn::Int,g::IDARootFn)
    ccall((:IDARootInit,libsundials_ida),Cint,(Ptr{Void},Cint,IDARootFn),ida_mem,nrtfn,g)
end

function IDASetQuadErrCon(ida_mem::Ptr{Void},errconQ::Int)
    ccall((:IDASetQuadErrCon,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,errconQ)
end

function IDAQuadInit(ida_mem::Ptr{Void},rhsQ::IDAQuadRhsFn,yQ0::N_Vector)
    ccall((:IDAQuadInit,libsundials_ida),Cint,(Ptr{Void},IDAQuadRhsFn,N_Vector),ida_mem,rhsQ,yQ0)
end

function IDAQuadReInit(ida_mem::Ptr{Void},yQ0::N_Vector)
    ccall((:IDAQuadReInit,libsundials_ida),Cint,(Ptr{Void},N_Vector),ida_mem,yQ0)
end

function IDAQuadSStolerances(ida_mem::Ptr{Void},reltolQ::realtype,abstolQ::realtype)
    ccall((:IDAQuadSStolerances,libsundials_ida),Cint,(Ptr{Void},realtype,realtype),ida_mem,reltolQ,abstolQ)
end

function IDAQuadSVtolerances(ida_mem::Ptr{Void},reltolQ::realtype,abstolQ::N_Vector)
    ccall((:IDAQuadSVtolerances,libsundials_ida),Cint,(Ptr{Void},realtype,N_Vector),ida_mem,reltolQ,abstolQ)
end

function IDASetSensDQMethod(ida_mem::Ptr{Void},DQtype::Int,DQrhomax::realtype)
    ccall((:IDASetSensDQMethod,libsundials_ida),Cint,(Ptr{Void},Cint,realtype),ida_mem,DQtype,DQrhomax)
end

function IDASetSensParams(ida_mem::Ptr{Void},p::Vector{realtype},pbar::Vector{realtype},plist::Ptr{Cint})
    ccall((:IDASetSensParams,libsundials_ida),Cint,(Ptr{Void},Ptr{realtype},Ptr{realtype},Ptr{Cint}),ida_mem,p,pbar,plist)
end

function IDASetSensErrCon(ida_mem::Ptr{Void},errconS::Int)
    ccall((:IDASetSensErrCon,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,errconS)
end

function IDASetSensMaxNonlinIters(ida_mem::Ptr{Void},maxcorS::Int)
    ccall((:IDASetSensMaxNonlinIters,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,maxcorS)
end

function IDASensInit(ida_mem::Ptr{Void},Ns::Int,ism::Int,resS::IDASensResFn,yS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDASensInit,libsundials_ida),Cint,(Ptr{Void},Cint,Cint,IDASensResFn,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,Ns,ism,resS,yS0,ypS0)
end

function IDASensReInit(ida_mem::Ptr{Void},ism::Int,yS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDASensReInit,libsundials_ida),Cint,(Ptr{Void},Cint,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,ism,yS0,ypS0)
end

function IDASensToggleOff(ida_mem::Ptr{Void})
    ccall((:IDASensToggleOff,libsundials_ida),Cint,(Ptr{Void},),ida_mem)
end

function IDASensSStolerances(ida_mem::Ptr{Void},reltolS::realtype,abstolS::Vector{realtype})
    ccall((:IDASensSStolerances,libsundials_ida),Cint,(Ptr{Void},realtype,Ptr{realtype}),ida_mem,reltolS,abstolS)
end

function IDASensSVtolerances(ida_mem::Ptr{Void},reltolS::realtype,abstolS::Ptr{N_Vector})
    ccall((:IDASensSVtolerances,libsundials_ida),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),ida_mem,reltolS,abstolS)
end

function IDASensEEtolerances(ida_mem::Ptr{Void})
    ccall((:IDASensEEtolerances,libsundials_ida),Cint,(Ptr{Void},),ida_mem)
end

function IDAQuadSensInit(ida_mem::Ptr{Void},resQS::IDAQuadSensRhsFn,yQS0::Ptr{N_Vector})
    ccall((:IDAQuadSensInit,libsundials_ida),Cint,(Ptr{Void},IDAQuadSensRhsFn,Ptr{N_Vector}),ida_mem,resQS,yQS0)
end

function IDAQuadSensReInit(ida_mem::Ptr{Void},yQS0::Ptr{N_Vector})
    ccall((:IDAQuadSensReInit,libsundials_ida),Cint,(Ptr{Void},Ptr{N_Vector}),ida_mem,yQS0)
end

function IDAQuadSensSStolerances(ida_mem::Ptr{Void},reltolQS::realtype,abstolQS::Vector{realtype})
    ccall((:IDAQuadSensSStolerances,libsundials_ida),Cint,(Ptr{Void},realtype,Ptr{realtype}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensSVtolerances(ida_mem::Ptr{Void},reltolQS::realtype,abstolQS::Ptr{N_Vector})
    ccall((:IDAQuadSensSVtolerances,libsundials_ida),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensEEtolerances(ida_mem::Ptr{Void})
    ccall((:IDAQuadSensEEtolerances,libsundials_ida),Cint,(Ptr{Void},),ida_mem)
end

function IDASetQuadSensErrCon(ida_mem::Ptr{Void},errconQS::Int)
    ccall((:IDASetQuadSensErrCon,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,errconQS)
end

function IDACalcIC(ida_mem::Ptr{Void},icopt::Int,tout1::realtype)
    ccall((:IDACalcIC,libsundials_ida),Cint,(Ptr{Void},Cint,realtype),ida_mem,icopt,tout1)
end

function IDASolve(ida_mem::Ptr{Void},tout::realtype,tret::Vector{realtype},yret::N_Vector,ypret::N_Vector,itask::Int)
    ccall((:IDASolve,libsundials_ida),Cint,(Ptr{Void},realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

function IDAGetDky(ida_mem::Ptr{Void},t::realtype,k::Int,dky::N_Vector)
    ccall((:IDAGetDky,libsundials_ida),Cint,(Ptr{Void},realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetWorkSpace(ida_mem::Ptr{Void},lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:IDAGetWorkSpace,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

function IDAGetNumSteps(ida_mem::Ptr{Void},nsteps::Ptr{Clong})
    ccall((:IDAGetNumSteps,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nsteps)
end

function IDAGetNumResEvals(ida_mem::Ptr{Void},nrevals::Ptr{Clong})
    ccall((:IDAGetNumResEvals,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem::Ptr{Void},nlinsetups::Ptr{Clong})
    ccall((:IDAGetNumLinSolvSetups,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem::Ptr{Void},netfails::Ptr{Clong})
    ccall((:IDAGetNumErrTestFails,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,netfails)
end

function IDAGetNumBacktrackOps(ida_mem::Ptr{Void},nbacktr::Ptr{Clong})
    ccall((:IDAGetNumBacktrackOps,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nbacktr)
end

function IDAGetConsistentIC(ida_mem::Ptr{Void},yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,libsundials_ida),Cint,(Ptr{Void},N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

function IDAGetLastOrder(ida_mem::Ptr{Void},klast::Ptr{Cint})
    ccall((:IDAGetLastOrder,libsundials_ida),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,klast)
end

function IDAGetCurrentOrder(ida_mem::Ptr{Void},kcur::Ptr{Cint})
    ccall((:IDAGetCurrentOrder,libsundials_ida),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,kcur)
end

function IDAGetActualInitStep(ida_mem::Ptr{Void},hinused::Vector{realtype})
    ccall((:IDAGetActualInitStep,libsundials_ida),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hinused)
end

function IDAGetLastStep(ida_mem::Ptr{Void},hlast::Vector{realtype})
    ccall((:IDAGetLastStep,libsundials_ida),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hlast)
end

function IDAGetCurrentStep(ida_mem::Ptr{Void},hcur::Vector{realtype})
    ccall((:IDAGetCurrentStep,libsundials_ida),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hcur)
end

function IDAGetCurrentTime(ida_mem::Ptr{Void},tcur::Vector{realtype})
    ccall((:IDAGetCurrentTime,libsundials_ida),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tcur)
end

function IDAGetTolScaleFactor(ida_mem::Ptr{Void},tolsfact::Vector{realtype})
    ccall((:IDAGetTolScaleFactor,libsundials_ida),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tolsfact)
end

function IDAGetErrWeights(ida_mem::Ptr{Void},eweight::N_Vector)
    ccall((:IDAGetErrWeights,libsundials_ida),Cint,(Ptr{Void},N_Vector),ida_mem,eweight)
end

function IDAGetEstLocalErrors(ida_mem::Ptr{Void},ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,libsundials_ida),Cint,(Ptr{Void},N_Vector),ida_mem,ele)
end

function IDAGetNumGEvals(ida_mem::Ptr{Void},ngevals::Ptr{Clong})
    ccall((:IDAGetNumGEvals,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,ngevals)
end

function IDAGetRootInfo(ida_mem::Ptr{Void},rootsfound::Ptr{Cint})
    ccall((:IDAGetRootInfo,libsundials_ida),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootsfound)
end

function IDAGetIntegratorStats(ida_mem::Ptr{Void},nsteps::Ptr{Clong},nrevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Vector{realtype},hlast::Vector{realtype},hcur::Vector{realtype},tcur::Vector{realtype})
    ccall((:IDAGetIntegratorStats,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem::Ptr{Void},nniters::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvIters,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem::Ptr{Void},nncfails::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvConvFails,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nncfails)
end

function IDAGetNonlinSolvStats(ida_mem::Ptr{Void},nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:IDAGetNonlinSolvStats,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

function IDAGetQuad(ida_mem::Ptr{Void},t::Vector{realtype},yQout::N_Vector)
    ccall((:IDAGetQuad,libsundials_ida),Cint,(Ptr{Void},Ptr{realtype},N_Vector),ida_mem,t,yQout)
end

function IDAGetQuadDky(ida_mem::Ptr{Void},t::realtype,k::Int,dky::N_Vector)
    ccall((:IDAGetQuadDky,libsundials_ida),Cint,(Ptr{Void},realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetQuadNumRhsEvals(ida_mem::Ptr{Void},nrhsQevals::Ptr{Clong})
    ccall((:IDAGetQuadNumRhsEvals,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrhsQevals)
end

function IDAGetQuadNumErrTestFails(ida_mem::Ptr{Void},nQetfails::Ptr{Clong})
    ccall((:IDAGetQuadNumErrTestFails,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nQetfails)
end

function IDAGetQuadErrWeights(ida_mem::Ptr{Void},eQweight::N_Vector)
    ccall((:IDAGetQuadErrWeights,libsundials_ida),Cint,(Ptr{Void},N_Vector),ida_mem,eQweight)
end

function IDAGetQuadStats(ida_mem::Ptr{Void},nrhsQevals::Ptr{Clong},nQetfails::Ptr{Clong})
    ccall((:IDAGetQuadStats,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQevals,nQetfails)
end

function IDAGetSens(ida_mem::Ptr{Void},tret::Vector{realtype},yySout::Ptr{N_Vector})
    ccall((:IDAGetSens,libsundials_ida),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yySout)
end

function IDAGetSens1(ida_mem::Ptr{Void},tret::Vector{realtype},is::Int,yySret::N_Vector)
    ccall((:IDAGetSens1,libsundials_ida),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yySret)
end

function IDAGetSensDky(ida_mem::Ptr{Void},t::realtype,k::Int,dkyS::Ptr{N_Vector})
    ccall((:IDAGetSensDky,libsundials_ida),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyS)
end

function IDAGetSensDky1(ida_mem::Ptr{Void},t::realtype,k::Int,is::Int,dkyS::N_Vector)
    ccall((:IDAGetSensDky1,libsundials_ida),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyS)
end

function IDAGetSensConsistentIC(ida_mem::Ptr{Void},yyS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDAGetSensConsistentIC,libsundials_ida),Cint,(Ptr{Void},Ptr{N_Vector},Ptr{N_Vector}),ida_mem,yyS0,ypS0)
end

function IDAGetSensNumResEvals(ida_mem::Ptr{Void},nresSevals::Ptr{Clong})
    ccall((:IDAGetSensNumResEvals,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nresSevals)
end

function IDAGetNumResEvalsSens(ida_mem::Ptr{Void},nresevalsS::Ptr{Clong})
    ccall((:IDAGetNumResEvalsSens,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nresevalsS)
end

function IDAGetSensNumErrTestFails(ida_mem::Ptr{Void},nSetfails::Ptr{Clong})
    ccall((:IDAGetSensNumErrTestFails,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSetfails)
end

function IDAGetSensNumLinSolvSetups(ida_mem::Ptr{Void},nlinsetupsS::Ptr{Clong})
    ccall((:IDAGetSensNumLinSolvSetups,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlinsetupsS)
end

function IDAGetSensErrWeights(ida_mem::Ptr{Void},eSweight::N_Vector_S)
    ccall((:IDAGetSensErrWeights,libsundials_ida),Cint,(Ptr{Void},N_Vector_S),ida_mem,eSweight)
end

function IDAGetSensStats(ida_mem::Ptr{Void},nresSevals::Ptr{Clong},nresevalsS::Ptr{Clong},nSetfails::Ptr{Clong},nlinsetupsS::Ptr{Clong})
    ccall((:IDAGetSensStats,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),ida_mem,nresSevals,nresevalsS,nSetfails,nlinsetupsS)
end

function IDAGetSensNumNonlinSolvIters(ida_mem::Ptr{Void},nSniters::Ptr{Clong})
    ccall((:IDAGetSensNumNonlinSolvIters,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSniters)
end

function IDAGetSensNumNonlinSolvConvFails(ida_mem::Ptr{Void},nSncfails::Ptr{Clong})
    ccall((:IDAGetSensNumNonlinSolvConvFails,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSncfails)
end

function IDAGetSensNonlinSolvStats(ida_mem::Ptr{Void},nSniters::Ptr{Clong},nSncfails::Ptr{Clong})
    ccall((:IDAGetSensNonlinSolvStats,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nSniters,nSncfails)
end

function IDAGetQuadSensNumRhsEvals(ida_mem::Ptr{Void},nrhsQSevals::Ptr{Clong})
    ccall((:IDAGetQuadSensNumRhsEvals,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrhsQSevals)
end

function IDAGetQuadSensNumErrTestFails(ida_mem::Ptr{Void},nQSetfails::Ptr{Clong})
    ccall((:IDAGetQuadSensNumErrTestFails,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nQSetfails)
end

function IDAGetQuadSensErrWeights(ida_mem::Ptr{Void},eQSweight::Ptr{N_Vector})
    ccall((:IDAGetQuadSensErrWeights,libsundials_ida),Cint,(Ptr{Void},Ptr{N_Vector}),ida_mem,eQSweight)
end

function IDAGetQuadSensStats(ida_mem::Ptr{Void},nrhsQSevals::Ptr{Clong},nQSetfails::Ptr{Clong})
    ccall((:IDAGetQuadSensStats,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQSevals,nQSetfails)
end

function IDAGetQuadSens(ida_mem::Ptr{Void},tret::Vector{realtype},yyQSout::Ptr{N_Vector})
    ccall((:IDAGetQuadSens,libsundials_ida),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yyQSout)
end

function IDAGetQuadSens1(ida_mem::Ptr{Void},tret::Vector{realtype},is::Int,yyQSret::N_Vector)
    ccall((:IDAGetQuadSens1,libsundials_ida),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yyQSret)
end

function IDAGetQuadSensDky(ida_mem::Ptr{Void},t::realtype,k::Int,dkyQS::Ptr{N_Vector})
    ccall((:IDAGetQuadSensDky,libsundials_ida),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyQS)
end

function IDAGetQuadSensDky1(ida_mem::Ptr{Void},t::realtype,k::Int,is::Int,dkyQS::N_Vector)
    ccall((:IDAGetQuadSensDky1,libsundials_ida),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyQS)
end

function IDAGetReturnFlagName(flag::Int)
    ccall((:IDAGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDAFree(ida_mem::Vector{Ptr{Void}})
    ccall((:IDAFree,libsundials_ida),Void,(Ptr{Ptr{Void}},),ida_mem)
end

function IDAQuadFree(ida_mem::Ptr{Void})
    ccall((:IDAQuadFree,libsundials_ida),Void,(Ptr{Void},),ida_mem)
end

function IDASensFree(ida_mem::Ptr{Void})
    ccall((:IDASensFree,libsundials_ida),Void,(Ptr{Void},),ida_mem)
end

function IDAQuadSensFree(ida_mem::Ptr{Void})
    ccall((:IDAQuadSensFree,libsundials_ida),Void,(Ptr{Void},),ida_mem)
end

function IDAAdjInit(ida_mem::Ptr{Void},steps::Int,interp::Int)
    ccall((:IDAAdjInit,libsundials_ida),Cint,(Ptr{Void},Clong,Cint),ida_mem,steps,interp)
end

function IDAAdjReInit(ida_mem::Ptr{Void})
    ccall((:IDAAdjReInit,libsundials_ida),Cint,(Ptr{Void},),ida_mem)
end

function IDAAdjFree(ida_mem::Ptr{Void})
    ccall((:IDAAdjFree,libsundials_ida),Void,(Ptr{Void},),ida_mem)
end

function IDACreateB(ida_mem::Ptr{Void},which::Ptr{Cint})
    ccall((:IDACreateB,libsundials_ida),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,which)
end

function IDAInitB(ida_mem::Ptr{Void},which::Int,resB::IDAResFnB,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitB,libsundials_ida),Cint,(Ptr{Void},Cint,IDAResFnB,realtype,N_Vector,N_Vector),ida_mem,which,resB,tB0,yyB0,ypB0)
end

function IDAInitBS(ida_mem::Ptr{Void},which::Int,resS::IDAResFnBS,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitBS,libsundials_ida),Cint,(Ptr{Void},Cint,IDAResFnBS,realtype,N_Vector,N_Vector),ida_mem,which,resS,tB0,yyB0,ypB0)
end

function IDAReInitB(ida_mem::Ptr{Void},which::Int,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAReInitB,libsundials_ida),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector),ida_mem,which,tB0,yyB0,ypB0)
end

function IDASStolerancesB(ida_mem::Ptr{Void},which::Int,relTolB::realtype,absTolB::realtype)
    ccall((:IDASStolerancesB,libsundials_ida),Cint,(Ptr{Void},Cint,realtype,realtype),ida_mem,which,relTolB,absTolB)
end

function IDASVtolerancesB(ida_mem::Ptr{Void},which::Int,relTolB::realtype,absTolB::N_Vector)
    ccall((:IDASVtolerancesB,libsundials_ida),Cint,(Ptr{Void},Cint,realtype,N_Vector),ida_mem,which,relTolB,absTolB)
end

function IDAQuadInitB(ida_mem::Ptr{Void},which::Int,rhsQB::IDAQuadRhsFnB,yQB0::N_Vector)
    ccall((:IDAQuadInitB,libsundials_ida),Cint,(Ptr{Void},Cint,IDAQuadRhsFnB,N_Vector),ida_mem,which,rhsQB,yQB0)
end

function IDAQuadInitBS(ida_mem::Ptr{Void},which::Int,rhsQS::IDAQuadRhsFnBS,yQB0::N_Vector)
    ccall((:IDAQuadInitBS,libsundials_ida),Cint,(Ptr{Void},Cint,IDAQuadRhsFnBS,N_Vector),ida_mem,which,rhsQS,yQB0)
end

function IDAQuadReInitB(ida_mem::Ptr{Void},which::Int,yQB0::N_Vector)
    ccall((:IDAQuadReInitB,libsundials_ida),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,yQB0)
end

function IDAQuadSStolerancesB(ida_mem::Ptr{Void},which::Int,reltolQB::realtype,abstolQB::realtype)
    ccall((:IDAQuadSStolerancesB,libsundials_ida),Cint,(Ptr{Void},Cint,realtype,realtype),ida_mem,which,reltolQB,abstolQB)
end

function IDAQuadSVtolerancesB(ida_mem::Ptr{Void},which::Int,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:IDAQuadSVtolerancesB,libsundials_ida),Cint,(Ptr{Void},Cint,realtype,N_Vector),ida_mem,which,reltolQB,abstolQB)
end

function IDACalcICB(ida_mem::Ptr{Void},which::Int,tout1::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDACalcICB,libsundials_ida),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector),ida_mem,which,tout1,yy0,yp0)
end

function IDACalcICBS(ida_mem::Ptr{Void},which::Int,tout1::realtype,yy0::N_Vector,yp0::N_Vector,yyS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDACalcICBS,libsundials_ida),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,which,tout1,yy0,yp0,yyS0,ypS0)
end

function IDASolveF(ida_mem::Ptr{Void},tout::realtype,tret::Vector{realtype},yret::N_Vector,ypret::N_Vector,itask::Int,ncheckPtr::Ptr{Cint})
    ccall((:IDASolveF,libsundials_ida),Cint,(Ptr{Void},realtype,Ptr{realtype},N_Vector,N_Vector,Cint,Ptr{Cint}),ida_mem,tout,tret,yret,ypret,itask,ncheckPtr)
end

function IDASolveB(ida_mem::Ptr{Void},tBout::realtype,itaskB::Int)
    ccall((:IDASolveB,libsundials_ida),Cint,(Ptr{Void},realtype,Cint),ida_mem,tBout,itaskB)
end

function IDASetAdjNoSensi(ida_mem::Ptr{Void})
    ccall((:IDASetAdjNoSensi,libsundials_ida),Cint,(Ptr{Void},),ida_mem)
end

function IDASetUserDataB(ida_mem::Ptr{Void},which::Int,user_dataB::Ptr{Void})
    ccall((:IDASetUserDataB,libsundials_ida),Cint,(Ptr{Void},Cint,Ptr{Void}),ida_mem,which,user_dataB)
end

function IDASetMaxOrdB(ida_mem::Ptr{Void},which::Int,maxordB::Int)
    ccall((:IDASetMaxOrdB,libsundials_ida),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxordB)
end

function IDASetMaxNumStepsB(ida_mem::Ptr{Void},which::Int,mxstepsB::Int)
    ccall((:IDASetMaxNumStepsB,libsundials_ida),Cint,(Ptr{Void},Cint,Clong),ida_mem,which,mxstepsB)
end

function IDASetInitStepB(ida_mem::Ptr{Void},which::Int,hinB::realtype)
    ccall((:IDASetInitStepB,libsundials_ida),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,hinB)
end

function IDASetMaxStepB(ida_mem::Ptr{Void},which::Int,hmaxB::realtype)
    ccall((:IDASetMaxStepB,libsundials_ida),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,hmaxB)
end

function IDASetSuppressAlgB(ida_mem::Ptr{Void},which::Int,suppressalgB::Int)
    ccall((:IDASetSuppressAlgB,libsundials_ida),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,suppressalgB)
end

function IDASetIdB(ida_mem::Ptr{Void},which::Int,idB::N_Vector)
    ccall((:IDASetIdB,libsundials_ida),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,idB)
end

function IDASetConstraintsB(ida_mem::Ptr{Void},which::Int,constraintsB::N_Vector)
    ccall((:IDASetConstraintsB,libsundials_ida),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,constraintsB)
end

function IDASetQuadErrConB(ida_mem::Ptr{Void},which::Int,errconQB::Int)
    ccall((:IDASetQuadErrConB,libsundials_ida),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,errconQB)
end

function IDAGetB(ida_mem::Ptr{Void},which::Int,tret::Vector{realtype},yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetB,libsundials_ida),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,tret,yy,yp)
end

function IDAGetQuadB(ida_mem::Ptr{Void},which::Int,tret::Vector{realtype},qB::N_Vector)
    ccall((:IDAGetQuadB,libsundials_ida),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),ida_mem,which,tret,qB)
end

function IDAGetAdjIDABmem(ida_mem::Ptr{Void},which::Int)
    ccall((:IDAGetAdjIDABmem,libsundials_ida),Ptr{Void},(Ptr{Void},Cint),ida_mem,which)
end

function IDAGetConsistentICB(ida_mem::Ptr{Void},which::Int,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAGetConsistentICB,libsundials_ida),Cint,(Ptr{Void},Cint,N_Vector,N_Vector),ida_mem,which,yyB0,ypB0)
end

function IDAGetAdjY(ida_mem::Ptr{Void},t::realtype,yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetAdjY,libsundials_ida),Cint,(Ptr{Void},realtype,N_Vector,N_Vector),ida_mem,t,yy,yp)
end

function IDAGetAdjCheckPointsInfo(ida_mem::Ptr{Void},ckpnt::Ptr{IDAadjCheckPointRec})
    ccall((:IDAGetAdjCheckPointsInfo,libsundials_ida),Cint,(Ptr{Void},Ptr{IDAadjCheckPointRec}),ida_mem,ckpnt)
end

function IDAGetAdjDataPointHermite(ida_mem::Ptr{Void},which::Int,t::Vector{realtype},yy::N_Vector,yd::N_Vector)
    ccall((:IDAGetAdjDataPointHermite,libsundials_ida),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,t,yy,yd)
end

function IDAGetAdjDataPointPolynomial(ida_mem::Ptr{Void},which::Int,t::Vector{realtype},order::Ptr{Cint},y::N_Vector)
    ccall((:IDAGetAdjDataPointPolynomial,libsundials_ida),Cint,(Ptr{Void},Cint,Ptr{realtype},Ptr{Cint},N_Vector),ida_mem,which,t,order,y)
end

function IDAGetAdjCurrentCheckPoint(ida_mem::Ptr{Void},addr::Vector{Ptr{Void}})
    ccall((:IDAGetAdjCurrentCheckPoint,libsundials_ida),Cint,(Ptr{Void},Ptr{Ptr{Void}}),ida_mem,addr)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDADlsSetDenseJacFn(ida_mem::Ptr{Void},jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,libsundials_ida),Cint,(Ptr{Void},IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem::Ptr{Void},jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,libsundials_ida),Cint,(Ptr{Void},IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem::Ptr{Void},njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem::Ptr{Void},nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem::Ptr{Void},flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Int)
    ccall((:IDADlsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDADlsSetDenseJacFnB(ida_mem::Ptr{Void},which::Int,jacB::IDADlsDenseJacFnB)
    ccall((:IDADlsSetDenseJacFnB,libsundials_ida),Cint,(Ptr{Void},Cint,IDADlsDenseJacFnB),ida_mem,which,jacB)
end

function IDADlsSetBandJacFnB(idaa_mem::Ptr{Void},which::Int,jacB::IDADlsBandJacFnB)
    ccall((:IDADlsSetBandJacFnB,libsundials_ida),Cint,(Ptr{Void},Cint,IDADlsBandJacFnB),idaa_mem,which,jacB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDASpilsSetPreconditioner(ida_mem::Ptr{Void},pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_ida),Cint,(Ptr{Void},IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem::Ptr{Void},jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_ida),Cint,(Ptr{Void},IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem::Ptr{Void},gstype::Int)
    ccall((:IDASpilsSetGSType,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem::Ptr{Void},maxrs::Int)
    ccall((:IDASpilsSetMaxRestarts,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem::Ptr{Void},maxl::Int)
    ccall((:IDASpilsSetMaxl,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem::Ptr{Void},eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_ida),Cint,(Ptr{Void},realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem::Ptr{Void},dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_ida),Cint,(Ptr{Void},realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem::Ptr{Void},npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem::Ptr{Void},npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem::Ptr{Void},nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem::Ptr{Void},nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem::Ptr{Void},njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem::Ptr{Void},nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem::Ptr{Void},flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Int)
    ccall((:IDASpilsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDASpilsSetGSTypeB(ida_mem::Ptr{Void},which::Int,gstypeB::Int)
    ccall((:IDASpilsSetGSTypeB,libsundials_ida),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,gstypeB)
end

function IDASpilsSetMaxRestartsB(ida_mem::Ptr{Void},which::Int,maxrsB::Int)
    ccall((:IDASpilsSetMaxRestartsB,libsundials_ida),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxrsB)
end

function IDASpilsSetEpsLinB(ida_mem::Ptr{Void},which::Int,eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB,libsundials_ida),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,eplifacB)
end

function IDASpilsSetMaxlB(ida_mem::Ptr{Void},which::Int,maxlB::Int)
    ccall((:IDASpilsSetMaxlB,libsundials_ida),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end

function IDASpilsSetIncrementFactorB(ida_mem::Ptr{Void},which::Int,dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB,libsundials_ida),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,dqincfacB)
end

function IDASpilsSetPreconditionerB(ida_mem::Ptr{Void},which::Int,psetB::IDASpilsPrecSetupFnB,psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB,libsundials_ida),Cint,(Ptr{Void},Cint,IDASpilsPrecSetupFnB,IDASpilsPrecSolveFnB),ida_mem,which,psetB,psolveB)
end

function IDASpilsSetJacTimesVecFnB(ida_mem::Ptr{Void},which::Int,jtvB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesVecFnB,libsundials_ida),Cint,(Ptr{Void},Cint,IDASpilsJacTimesVecFnB),ida_mem,which,jtvB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDABand(ida_mem::Ptr{Void},Neq::Int,mupper::Int,mlower::Int)
    ccall((:IDABand,libsundials_ida),Cint,(Ptr{Void},Clong,Clong,Clong),ida_mem,Neq,mupper,mlower)
end

function IDABandB(idaadj_mem::Ptr{Void},which::Int,NeqB::Int,mupperB::Int,mlowerB::Int)
    ccall((:IDABandB,libsundials_ida),Cint,(Ptr{Void},Cint,Clong,Clong,Clong),idaadj_mem,which,NeqB,mupperB,mlowerB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDABBDPrecInit(ida_mem::Ptr{Void},Nlocal::Int,mudq::Int,mldq::Int,mukeep::Int,mlkeep::Int,dq_rel_yy::realtype,Gres::IDABBDLocalFn,Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit,libsundials_ida),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFn,IDABBDCommFn),ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)
end

function IDABBDPrecReInit(ida_mem::Ptr{Void},mudq::Int,mldq::Int,dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit,libsundials_ida),Cint,(Ptr{Void},Clong,Clong,realtype),ida_mem,mudq,mldq,dq_rel_yy)
end

function IDABBDPrecGetWorkSpace(ida_mem::Ptr{Void},lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetWorkSpace,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwBBDP,leniwBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem::Ptr{Void},ngevalsBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetNumGfnEvals,libsundials_ida),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,ngevalsBBDP)
end

function IDABBDPrecInitB(ida_mem::Ptr{Void},which::Int,NlocalB::Int,mudqB::Int,mldqB::Int,mukeepB::Int,mlkeepB::Int,dq_rel_yyB::realtype,GresB::IDABBDLocalFnB,GcommB::IDABBDCommFnB)
    ccall((:IDABBDPrecInitB,libsundials_ida),Cint,(Ptr{Void},Cint,Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFnB,IDABBDCommFnB),ida_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dq_rel_yyB,GresB,GcommB)
end

function IDABBDPrecReInitB(ida_mem::Ptr{Void},which::Int,mudqB::Int,mldqB::Int,dq_rel_yyB::realtype)
    ccall((:IDABBDPrecReInitB,libsundials_ida),Cint,(Ptr{Void},Cint,Clong,Clong,realtype),ida_mem,which,mudqB,mldqB,dq_rel_yyB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDADense(ida_mem::Ptr{Void},Neq::Int)
    ccall((:IDADense,libsundials_ida),Cint,(Ptr{Void},Clong),ida_mem,Neq)
end

function IDADenseB(ida_mem::Ptr{Void},which::Int,NeqB::Int)
    ccall((:IDADenseB,libsundials_ida),Cint,(Ptr{Void},Cint,Clong),ida_mem,which,NeqB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDAEwtSet(ycur::N_Vector,weight::N_Vector,data::Ptr{Void})
    ccall((:IDAEwtSet,libsundials_ida),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function IDAErrHandler(error_code::Int,_module::Ptr{UInt8},_function::Ptr{UInt8},msg::Ptr{UInt8},data::Ptr{Void})
    ccall((:IDAErrHandler,libsundials_ida),Void,(Cint,Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},Ptr{Void}),error_code,_module,_function,msg,data)
end

function IDASensResDQ(Ns::Int,t::realtype,yy::N_Vector,yp::N_Vector,resval::N_Vector,yyS::Ptr{N_Vector},ypS::Ptr{N_Vector},resvalS::Ptr{N_Vector},user_dataS::Ptr{Void},ytemp::N_Vector,yptemp::N_Vector,restemp::N_Vector)
    ccall((:IDASensResDQ,libsundials_ida),Cint,(Cint,realtype,N_Vector,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector},Ptr{N_Vector},Ptr{Void},N_Vector,N_Vector,N_Vector),Ns,t,yy,yp,resval,yyS,ypS,resvalS,user_dataS,ytemp,yptemp,restemp)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function SpbcgMalloc(l_max::Int,vec_tmpl::N_Vector)
    ccall((:SpbcgMalloc,libsundials_ida),SpbcgMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpbcgSolve(mem::SpbcgMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Int,delta::realtype,P_data::Ptr{Void},sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Vector{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SpbcgSolve,libsundials_ida),Cint,(SpbcgMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SpbcgFree(mem::SpbcgMem)
    ccall((:SpbcgFree,libsundials_ida),Void,(SpbcgMem,),mem)
end

function IDASpbcg(ida_mem::Ptr{Void},maxl::Int)
    ccall((:IDASpbcg,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpbcgB(ida_mem::Ptr{Void},which::Int,maxlB::Int)
    ccall((:IDASpbcgB,libsundials_ida),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDASpgmr(ida_mem::Ptr{Void},maxl::Int)
    ccall((:IDASpgmr,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpgmrB(ida_mem::Ptr{Void},which::Int,maxlB::Int)
    ccall((:IDASpgmrB,libsundials_ida),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDASptfqmr(ida_mem::Ptr{Void},maxl::Int)
    ccall((:IDASptfqmr,libsundials_ida),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASptfqmrB(ida_mem::Ptr{Void},which::Int,maxlB::Int)
    ccall((:IDASptfqmrB,libsundials_ida),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end
