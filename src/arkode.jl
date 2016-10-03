# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ARKodeCreate()
    ccall((:ARKodeCreate,arkode),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,arkode),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,arkode),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,arkode),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,arkode),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,arkode),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,arkode),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,arkode),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,arkode),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,arkode),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,arkode),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,arkode),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,arkode),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,arkode),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,arkode),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,arkode),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,arkode),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,arkode),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,arkode),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,arkode),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,arkode),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,arkode),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,arkode),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,arkode),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,arkode),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,arkode),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,arkode),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,arkode),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,arkode),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,arkode),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,arkode),Void,(Ptr{Ptr{Void}},),arkode_mem)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_direct.h
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

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ARKDlsSetDenseJacFn(arkode_mem,jac::ARKDlsDenseJacFn)
    ccall((:ARKDlsSetDenseJacFn,arkode_direct),Cint,(Ptr{Void},ARKDlsDenseJacFn),arkode_mem,jac)
end

function ARKDlsSetBandJacFn(arkode_mem,jac::ARKDlsBandJacFn)
    ccall((:ARKDlsSetBandJacFn,arkode_direct),Cint,(Ptr{Void},ARKDlsBandJacFn),arkode_mem,jac)
end

function ARKDlsSetDenseMassFn(arkode_mem,mass::ARKDlsDenseMassFn)
    ccall((:ARKDlsSetDenseMassFn,arkode_direct),Cint,(Ptr{Void},ARKDlsDenseMassFn),arkode_mem,mass)
end

function ARKDlsSetBandMassFn(arkode_mem,mass::ARKDlsBandMassFn)
    ccall((:ARKDlsSetBandMassFn,arkode_direct),Cint,(Ptr{Void},ARKDlsBandMassFn),arkode_mem,mass)
end

function ARKDlsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKDlsGetWorkSpace,arkode_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKDlsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKDlsGetMassWorkSpace,arkode_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKDlsGetNumJacEvals(arkode_mem,njevals)
    ccall((:ARKDlsGetNumJacEvals,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njevals)
end

function ARKDlsGetNumMassEvals(arkode_mem,nmevals)
    ccall((:ARKDlsGetNumMassEvals,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmevals)
end

function ARKDlsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKDlsGetNumRhsEvals,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKDlsGetLastFlag(arkode_mem,flag)
    ccall((:ARKDlsGetLastFlag,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKDlsGetLastMassFlag,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetReturnFlagName(flag::Clong)
    ccall((:ARKDlsGetReturnFlagName,arkode_direct),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

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

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,arkode_spils),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_band.h
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

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ARKDlsSetDenseJacFn(arkode_mem,jac::ARKDlsDenseJacFn)
    ccall((:ARKDlsSetDenseJacFn,arkode_direct),Cint,(Ptr{Void},ARKDlsDenseJacFn),arkode_mem,jac)
end

function ARKDlsSetBandJacFn(arkode_mem,jac::ARKDlsBandJacFn)
    ccall((:ARKDlsSetBandJacFn,arkode_direct),Cint,(Ptr{Void},ARKDlsBandJacFn),arkode_mem,jac)
end

function ARKDlsSetDenseMassFn(arkode_mem,mass::ARKDlsDenseMassFn)
    ccall((:ARKDlsSetDenseMassFn,arkode_direct),Cint,(Ptr{Void},ARKDlsDenseMassFn),arkode_mem,mass)
end

function ARKDlsSetBandMassFn(arkode_mem,mass::ARKDlsBandMassFn)
    ccall((:ARKDlsSetBandMassFn,arkode_direct),Cint,(Ptr{Void},ARKDlsBandMassFn),arkode_mem,mass)
end

function ARKDlsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKDlsGetWorkSpace,arkode_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKDlsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKDlsGetMassWorkSpace,arkode_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKDlsGetNumJacEvals(arkode_mem,njevals)
    ccall((:ARKDlsGetNumJacEvals,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njevals)
end

function ARKDlsGetNumMassEvals(arkode_mem,nmevals)
    ccall((:ARKDlsGetNumMassEvals,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmevals)
end

function ARKDlsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKDlsGetNumRhsEvals,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKDlsGetLastFlag(arkode_mem,flag)
    ccall((:ARKDlsGetLastFlag,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKDlsGetLastMassFlag,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetReturnFlagName(flag::Clong)
    ccall((:ARKDlsGetReturnFlagName,arkode_direct),Cstring,(Clong,),flag)
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

function ARKBand(arkode_mem,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:ARKBand,arkode_band),Cint,(Ptr{Void},Clong,Clong,Clong),arkode_mem,N,mupper,mlower)
end

function ARKMassBand(arkode_mem,N::Clong,mupper::Clong,mlower::Clong,bmass::ARKDlsBandMassFn)
    ccall((:ARKMassBand,arkode_band),Cint,(Ptr{Void},Clong,Clong,Clong,ARKDlsBandMassFn),arkode_mem,N,mupper,mlower,bmass)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ARKBandPrecInit(arkode_mem,N::Clong,mu::Clong,ml::Clong)
    ccall((:ARKBandPrecInit,arkode_bandpre),Cint,(Ptr{Void},Clong,Clong,Clong),arkode_mem,N,mu,ml)
end

function ARKBandPrecGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKBandPrecGetWorkSpace,arkode_bandpre),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKBandPrecGetNumRhsEvals(arkode_mem,nfevalsBP)
    ccall((:ARKBandPrecGetNumRhsEvals,arkode_bandpre),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsBP)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ARKBBDPrecInit(arkode_mem,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::ARKLocalFn,cfn::ARKCommFn)
    ccall((:ARKBBDPrecInit,arkode_bbdpre),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,ARKLocalFn,ARKCommFn),arkode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function ARKBBDPrecReInit(arkode_mem,mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:ARKBBDPrecReInit,arkode_bbdpre),Cint,(Ptr{Void},Clong,Clong,realtype),arkode_mem,mudq,mldq,dqrely)
end

function ARKBBDPrecGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKBBDPrecGetWorkSpace,arkode_bbdpre),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKBBDPrecGetNumGfnEvals(arkode_mem,ngevalsBBDP)
    ccall((:ARKBBDPrecGetNumGfnEvals,arkode_bbdpre),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevalsBBDP)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_dense.h
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

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ARKDlsSetDenseJacFn(arkode_mem,jac::ARKDlsDenseJacFn)
    ccall((:ARKDlsSetDenseJacFn,arkode_direct),Cint,(Ptr{Void},ARKDlsDenseJacFn),arkode_mem,jac)
end

function ARKDlsSetBandJacFn(arkode_mem,jac::ARKDlsBandJacFn)
    ccall((:ARKDlsSetBandJacFn,arkode_direct),Cint,(Ptr{Void},ARKDlsBandJacFn),arkode_mem,jac)
end

function ARKDlsSetDenseMassFn(arkode_mem,mass::ARKDlsDenseMassFn)
    ccall((:ARKDlsSetDenseMassFn,arkode_direct),Cint,(Ptr{Void},ARKDlsDenseMassFn),arkode_mem,mass)
end

function ARKDlsSetBandMassFn(arkode_mem,mass::ARKDlsBandMassFn)
    ccall((:ARKDlsSetBandMassFn,arkode_direct),Cint,(Ptr{Void},ARKDlsBandMassFn),arkode_mem,mass)
end

function ARKDlsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKDlsGetWorkSpace,arkode_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKDlsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKDlsGetMassWorkSpace,arkode_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKDlsGetNumJacEvals(arkode_mem,njevals)
    ccall((:ARKDlsGetNumJacEvals,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njevals)
end

function ARKDlsGetNumMassEvals(arkode_mem,nmevals)
    ccall((:ARKDlsGetNumMassEvals,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmevals)
end

function ARKDlsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKDlsGetNumRhsEvals,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKDlsGetLastFlag(arkode_mem,flag)
    ccall((:ARKDlsGetLastFlag,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKDlsGetLastMassFlag,arkode_direct),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetReturnFlagName(flag::Clong)
    ccall((:ARKDlsGetReturnFlagName,arkode_direct),Cstring,(Clong,),flag)
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

function ARKDense(arkode_mem,N::Clong)
    ccall((:ARKDense,arkode_dense),Cint,(Ptr{Void},Clong),arkode_mem,N)
end

function ARKMassDense(arkode_mem,N::Clong,dmass::ARKDlsDenseMassFn)
    ccall((:ARKMassDense,arkode_dense),Cint,(Ptr{Void},Clong,ARKDlsDenseMassFn),arkode_mem,N,dmass)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKodeCreate()
    ccall((:ARKodeCreate,arkode),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,arkode),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,arkode),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,arkode),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,arkode),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,arkode),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,arkode),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,arkode),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,arkode),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,arkode),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,arkode),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,arkode),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,arkode),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,arkode),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,arkode),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,arkode),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,arkode),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,arkode),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,arkode),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,arkode),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,arkode),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,arkode),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,arkode),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,arkode),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,arkode),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,arkode),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,arkode),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,arkode),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,arkode),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,arkode),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,arkode),Void,(Ptr{Ptr{Void}},),arkode_mem)
end

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

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,arkode_spils),Cstring,(Clong,),flag)
end

function arkEwtSet(ycur::N_Vector,weight::N_Vector,data)
    ccall((:arkEwtSet,arkode_impl),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function arkRwtSet(ycur::N_Vector,weight::N_Vector,data)
    ccall((:arkRwtSet,arkode_impl),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function arkErrHandler(error_code::Cint,_module,_function,msg,data)
    ccall((:arkErrHandler,arkode_impl),Void,(Cint,Cstring,Cstring,Cstring,Ptr{Void}),error_code,_module,_function,msg,data)
end

function arkExpStab(y::N_Vector,t::realtype,hstab,user_data)
    ccall((:arkExpStab,arkode_impl),Cint,(N_Vector,realtype,Ptr{realtype},Ptr{Void}),y,t,hstab,user_data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_pcg.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKodeCreate()
    ccall((:ARKodeCreate,arkode),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,arkode),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,arkode),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,arkode),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,arkode),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,arkode),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,arkode),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,arkode),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,arkode),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,arkode),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,arkode),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,arkode),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,arkode),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,arkode),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,arkode),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,arkode),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,arkode),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,arkode),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,arkode),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,arkode),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,arkode),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,arkode),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,arkode),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,arkode),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,arkode),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,arkode),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,arkode),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,arkode),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,arkode),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,arkode),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,arkode),Void,(Ptr{Ptr{Void}},),arkode_mem)
end

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

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,arkode_spils),Cstring,(Clong,),flag)
end

function PcgMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:PcgMalloc,sundials_pcg),PcgMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function PcgSolve(mem::PcgMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,delta::realtype,P_data,w::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:PcgSolve,sundials_pcg),Cint,(PcgMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,w,atimes,psolve,res_norm,nli,nps)
end

function PcgFree(mem::PcgMem)
    ccall((:PcgFree,sundials_pcg),Void,(PcgMem,),mem)
end

function ARKPcg(arkode_mem,pretype::Cint,maxl::Cint)
    ccall((:ARKPcg,arkode_pcg),Cint,(Ptr{Void},Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKMassPcg(arkode_mem,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKMassPcg,arkode_pcg),Cint,(Ptr{Void},Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_sparse.h
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

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ARKSlsSetSparseJacFn(arkode_mem,jac::ARKSlsSparseJacFn)
    ccall((:ARKSlsSetSparseJacFn,arkode_sparse),Cint,(Ptr{Void},ARKSlsSparseJacFn),arkode_mem,jac)
end

function ARKSlsSetSparseMassFn(arkode_mem,mass::ARKSlsSparseMassFn)
    ccall((:ARKSlsSetSparseMassFn,arkode_sparse),Cint,(Ptr{Void},ARKSlsSparseMassFn),arkode_mem,mass)
end

function ARKSlsGetNumJacEvals(arkode_mem,njevals)
    ccall((:ARKSlsGetNumJacEvals,arkode_sparse),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njevals)
end

function ARKSlsGetNumMassEvals(arkode_mem,nmevals)
    ccall((:ARKSlsGetNumMassEvals,arkode_sparse),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmevals)
end

function ARKSlsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSlsGetLastFlag,arkode_sparse),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSlsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSlsGetLastMassFlag,arkode_sparse),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSlsGetReturnFlagName(flag::Clong)
    ccall((:ARKSlsGetReturnFlagName,arkode_sparse),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKodeCreate()
    ccall((:ARKodeCreate,arkode),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,arkode),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,arkode),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,arkode),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,arkode),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,arkode),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,arkode),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,arkode),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,arkode),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,arkode),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,arkode),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,arkode),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,arkode),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,arkode),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,arkode),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,arkode),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,arkode),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,arkode),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,arkode),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,arkode),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,arkode),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,arkode),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,arkode),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,arkode),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,arkode),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,arkode),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,arkode),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,arkode),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,arkode),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,arkode),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,arkode),Void,(Ptr{Ptr{Void}},),arkode_mem)
end

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

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,arkode_spils),Cstring,(Clong,),flag)
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

function ARKSpbcg(arkode_mem,pretype::Cint,maxl::Cint)
    ccall((:ARKSpbcg,arkode_spbcgs),Cint,(Ptr{Void},Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKMassSpbcg(arkode_mem,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKMassSpbcg,arkode_spbcgs),Cint,(Ptr{Void},Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_spfgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKodeCreate()
    ccall((:ARKodeCreate,arkode),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,arkode),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,arkode),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,arkode),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,arkode),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,arkode),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,arkode),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,arkode),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,arkode),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,arkode),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,arkode),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,arkode),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,arkode),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,arkode),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,arkode),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,arkode),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,arkode),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,arkode),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,arkode),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,arkode),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,arkode),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,arkode),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,arkode),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,arkode),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,arkode),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,arkode),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,arkode),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,arkode),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,arkode),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,arkode),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,arkode),Void,(Ptr{Ptr{Void}},),arkode_mem)
end

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

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,arkode_spils),Cstring,(Clong,),flag)
end

function SpfgmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpfgmrMalloc,sundials_spfgmr),SpfgmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpfgmrSolve(mem::SpfgmrMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,gstype::Cint,delta::realtype,max_restarts::Cint,maxit::Cint,P_data,s1::N_Vector,s2::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:SpfgmrSolve,sundials_spfgmr),Cint,(SpfgmrMem,Ptr{Void},N_Vector,N_Vector,Cint,Cint,realtype,Cint,Cint,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,gstype,delta,max_restarts,maxit,P_data,s1,s2,atimes,psolve,res_norm,nli,nps)
end

function SpfgmrFree(mem::SpfgmrMem)
    ccall((:SpfgmrFree,sundials_spfgmr),Void,(SpfgmrMem,),mem)
end

function ARKSpfgmr(arkode_mem,pretype::Cint,maxl::Cint)
    ccall((:ARKSpfgmr,arkode_spfgmr),Cint,(Ptr{Void},Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKMassSpfgmr(arkode_mem,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKMassSpfgmr,arkode_spfgmr),Cint,(Ptr{Void},Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKodeCreate()
    ccall((:ARKodeCreate,arkode),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,arkode),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,arkode),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,arkode),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,arkode),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,arkode),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,arkode),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,arkode),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,arkode),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,arkode),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,arkode),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,arkode),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,arkode),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,arkode),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,arkode),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,arkode),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,arkode),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,arkode),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,arkode),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,arkode),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,arkode),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,arkode),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,arkode),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,arkode),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,arkode),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,arkode),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,arkode),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,arkode),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,arkode),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,arkode),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,arkode),Void,(Ptr{Ptr{Void}},),arkode_mem)
end

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

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,arkode_spils),Cstring,(Clong,),flag)
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

function ARKSpgmr(arkode_mem,pretype::Cint,maxl::Cint)
    ccall((:ARKSpgmr,arkode_spgmr),Cint,(Ptr{Void},Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKMassSpgmr(arkode_mem,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKMassSpgmr,arkode_spgmr),Cint,(Ptr{Void},Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKodeCreate()
    ccall((:ARKodeCreate,arkode),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,arkode),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,arkode),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,arkode),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,arkode),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,arkode),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,arkode),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,arkode),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,arkode),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,arkode),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,arkode),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,arkode),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,arkode),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,arkode),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,arkode),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,arkode),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,arkode),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,arkode),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,arkode),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,arkode),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,arkode),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,arkode),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,arkode),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,arkode),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,arkode),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,arkode),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,arkode),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,arkode),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,arkode),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,arkode),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,arkode),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,arkode),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,arkode),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,arkode),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,arkode),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,arkode),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,arkode),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,arkode),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,arkode),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,arkode),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,arkode),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,arkode),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,arkode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,arkode),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,arkode),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,arkode),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,arkode),Void,(Ptr{Ptr{Void}},),arkode_mem)
end

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

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,arkode_spils),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,arkode_spils),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,arkode_spils),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,arkode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,arkode_spils),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,arkode_spils),Cstring,(Clong,),flag)
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

function ARKSptfqmr(arkode_mem,pretype::Cint,maxl::Cint)
    ccall((:ARKSptfqmr,arkode_sptfqmr),Cint,(Ptr{Void},Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKMassSptfqmr(arkode_mem,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKMassSptfqmr,arkode_sptfqmr),Cint,(Ptr{Void},Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end
