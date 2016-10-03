# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKodeCreate()
    ccall((:ARKodeCreate,shlib),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,shlib),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,shlib),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,shlib),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,shlib),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,shlib),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,shlib),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,shlib),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,shlib),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,shlib),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,shlib),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,shlib),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,shlib),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,shlib),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,shlib),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,shlib),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,shlib),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,shlib),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,shlib),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,shlib),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,shlib),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,shlib),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,shlib),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,shlib),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,shlib),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,shlib),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,shlib),Void,(Ptr{Ptr{Void}},),arkode_mem)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/shlib.h
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

function ARKDlsSetDenseJacFn(arkode_mem,jac::ARKDlsDenseJacFn)
    ccall((:ARKDlsSetDenseJacFn,shlib),Cint,(Ptr{Void},ARKDlsDenseJacFn),arkode_mem,jac)
end

function ARKDlsSetBandJacFn(arkode_mem,jac::ARKDlsBandJacFn)
    ccall((:ARKDlsSetBandJacFn,shlib),Cint,(Ptr{Void},ARKDlsBandJacFn),arkode_mem,jac)
end

function ARKDlsSetDenseMassFn(arkode_mem,mass::ARKDlsDenseMassFn)
    ccall((:ARKDlsSetDenseMassFn,shlib),Cint,(Ptr{Void},ARKDlsDenseMassFn),arkode_mem,mass)
end

function ARKDlsSetBandMassFn(arkode_mem,mass::ARKDlsBandMassFn)
    ccall((:ARKDlsSetBandMassFn,shlib),Cint,(Ptr{Void},ARKDlsBandMassFn),arkode_mem,mass)
end

function ARKDlsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKDlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKDlsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKDlsGetMassWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKDlsGetNumJacEvals(arkode_mem,njevals)
    ccall((:ARKDlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njevals)
end

function ARKDlsGetNumMassEvals(arkode_mem,nmevals)
    ccall((:ARKDlsGetNumMassEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmevals)
end

function ARKDlsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKDlsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKDlsGetLastFlag(arkode_mem,flag)
    ccall((:ARKDlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKDlsGetLastMassFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetReturnFlagName(flag::Clong)
    ccall((:ARKDlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/shlib.h
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

function ARKDlsSetDenseJacFn(arkode_mem,jac::ARKDlsDenseJacFn)
    ccall((:ARKDlsSetDenseJacFn,shlib),Cint,(Ptr{Void},ARKDlsDenseJacFn),arkode_mem,jac)
end

function ARKDlsSetBandJacFn(arkode_mem,jac::ARKDlsBandJacFn)
    ccall((:ARKDlsSetBandJacFn,shlib),Cint,(Ptr{Void},ARKDlsBandJacFn),arkode_mem,jac)
end

function ARKDlsSetDenseMassFn(arkode_mem,mass::ARKDlsDenseMassFn)
    ccall((:ARKDlsSetDenseMassFn,shlib),Cint,(Ptr{Void},ARKDlsDenseMassFn),arkode_mem,mass)
end

function ARKDlsSetBandMassFn(arkode_mem,mass::ARKDlsBandMassFn)
    ccall((:ARKDlsSetBandMassFn,shlib),Cint,(Ptr{Void},ARKDlsBandMassFn),arkode_mem,mass)
end

function ARKDlsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKDlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKDlsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKDlsGetMassWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKDlsGetNumJacEvals(arkode_mem,njevals)
    ccall((:ARKDlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njevals)
end

function ARKDlsGetNumMassEvals(arkode_mem,nmevals)
    ccall((:ARKDlsGetNumMassEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmevals)
end

function ARKDlsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKDlsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKDlsGetLastFlag(arkode_mem,flag)
    ccall((:ARKDlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKDlsGetLastMassFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetReturnFlagName(flag::Clong)
    ccall((:ARKDlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function ARKBand(arkode_mem,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:ARKBand,shlib),Cint,(Ptr{Void},Clong,Clong,Clong),arkode_mem,N,mupper,mlower)
end

function ARKMassBand(arkode_mem,N::Clong,mupper::Clong,mlower::Clong,bmass::ARKDlsBandMassFn)
    ccall((:ARKMassBand,shlib),Cint,(Ptr{Void},Clong,Clong,Clong,ARKDlsBandMassFn),arkode_mem,N,mupper,mlower,bmass)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKBandPrecInit(arkode_mem,N::Clong,mu::Clong,ml::Clong)
    ccall((:ARKBandPrecInit,shlib),Cint,(Ptr{Void},Clong,Clong,Clong),arkode_mem,N,mu,ml)
end

function ARKBandPrecGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKBandPrecGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKBandPrecGetNumRhsEvals(arkode_mem,nfevalsBP)
    ccall((:ARKBandPrecGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsBP)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKBBDPrecInit(arkode_mem,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::ARKLocalFn,cfn::ARKCommFn)
    ccall((:ARKBBDPrecInit,shlib),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,ARKLocalFn,ARKCommFn),arkode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function ARKBBDPrecReInit(arkode_mem,mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:ARKBBDPrecReInit,shlib),Cint,(Ptr{Void},Clong,Clong,realtype),arkode_mem,mudq,mldq,dqrely)
end

function ARKBBDPrecGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKBBDPrecGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKBBDPrecGetNumGfnEvals(arkode_mem,ngevalsBBDP)
    ccall((:ARKBBDPrecGetNumGfnEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevalsBBDP)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/shlib.h
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

function ARKDlsSetDenseJacFn(arkode_mem,jac::ARKDlsDenseJacFn)
    ccall((:ARKDlsSetDenseJacFn,shlib),Cint,(Ptr{Void},ARKDlsDenseJacFn),arkode_mem,jac)
end

function ARKDlsSetBandJacFn(arkode_mem,jac::ARKDlsBandJacFn)
    ccall((:ARKDlsSetBandJacFn,shlib),Cint,(Ptr{Void},ARKDlsBandJacFn),arkode_mem,jac)
end

function ARKDlsSetDenseMassFn(arkode_mem,mass::ARKDlsDenseMassFn)
    ccall((:ARKDlsSetDenseMassFn,shlib),Cint,(Ptr{Void},ARKDlsDenseMassFn),arkode_mem,mass)
end

function ARKDlsSetBandMassFn(arkode_mem,mass::ARKDlsBandMassFn)
    ccall((:ARKDlsSetBandMassFn,shlib),Cint,(Ptr{Void},ARKDlsBandMassFn),arkode_mem,mass)
end

function ARKDlsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKDlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKDlsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKDlsGetMassWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKDlsGetNumJacEvals(arkode_mem,njevals)
    ccall((:ARKDlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njevals)
end

function ARKDlsGetNumMassEvals(arkode_mem,nmevals)
    ccall((:ARKDlsGetNumMassEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmevals)
end

function ARKDlsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKDlsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKDlsGetLastFlag(arkode_mem,flag)
    ccall((:ARKDlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKDlsGetLastMassFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetReturnFlagName(flag::Clong)
    ccall((:ARKDlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function ARKDense(arkode_mem,N::Clong)
    ccall((:ARKDense,shlib),Cint,(Ptr{Void},Clong),arkode_mem,N)
end

function ARKMassDense(arkode_mem,N::Clong,dmass::ARKDlsDenseMassFn)
    ccall((:ARKMassDense,shlib),Cint,(Ptr{Void},Clong,ARKDlsDenseMassFn),arkode_mem,N,dmass)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKodeCreate()
    ccall((:ARKodeCreate,shlib),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,shlib),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,shlib),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,shlib),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,shlib),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,shlib),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,shlib),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,shlib),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,shlib),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,shlib),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,shlib),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,shlib),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,shlib),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,shlib),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,shlib),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,shlib),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,shlib),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,shlib),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,shlib),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,shlib),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,shlib),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,shlib),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,shlib),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,shlib),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,shlib),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,shlib),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,shlib),Void,(Ptr{Ptr{Void}},),arkode_mem)
end

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

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function arkEwtSet(ycur::N_Vector,weight::N_Vector,data)
    ccall((:arkEwtSet,shlib),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function arkRwtSet(ycur::N_Vector,weight::N_Vector,data)
    ccall((:arkRwtSet,shlib),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function arkErrHandler(error_code::Cint,_module,_function,msg,data)
    ccall((:arkErrHandler,shlib),Void,(Cint,Cstring,Cstring,Cstring,Ptr{Void}),error_code,_module,_function,msg,data)
end

function arkExpStab(y::N_Vector,t::realtype,hstab,user_data)
    ccall((:arkExpStab,shlib),Cint,(N_Vector,realtype,Ptr{realtype},Ptr{Void}),y,t,hstab,user_data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_pcg.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKodeCreate()
    ccall((:ARKodeCreate,shlib),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,shlib),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,shlib),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,shlib),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,shlib),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,shlib),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,shlib),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,shlib),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,shlib),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,shlib),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,shlib),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,shlib),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,shlib),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,shlib),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,shlib),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,shlib),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,shlib),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,shlib),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,shlib),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,shlib),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,shlib),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,shlib),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,shlib),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,shlib),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,shlib),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,shlib),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,shlib),Void,(Ptr{Ptr{Void}},),arkode_mem)
end

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

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function PcgMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:PcgMalloc,shlib),PcgMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function PcgSolve(mem::PcgMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,delta::realtype,P_data,w::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:PcgSolve,shlib),Cint,(PcgMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,w,atimes,psolve,res_norm,nli,nps)
end

function PcgFree(mem::PcgMem)
    ccall((:PcgFree,shlib),Void,(PcgMem,),mem)
end

function ARKPcg(arkode_mem,pretype::Cint,maxl::Cint)
    ccall((:ARKPcg,shlib),Cint,(Ptr{Void},Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKMassPcg(arkode_mem,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKMassPcg,shlib),Cint,(Ptr{Void},Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_sparse.h
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

function ARKSlsSetSparseJacFn(arkode_mem,jac::ARKSlsSparseJacFn)
    ccall((:ARKSlsSetSparseJacFn,shlib),Cint,(Ptr{Void},ARKSlsSparseJacFn),arkode_mem,jac)
end

function ARKSlsSetSparseMassFn(arkode_mem,mass::ARKSlsSparseMassFn)
    ccall((:ARKSlsSetSparseMassFn,shlib),Cint,(Ptr{Void},ARKSlsSparseMassFn),arkode_mem,mass)
end

function ARKSlsGetNumJacEvals(arkode_mem,njevals)
    ccall((:ARKSlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njevals)
end

function ARKSlsGetNumMassEvals(arkode_mem,nmevals)
    ccall((:ARKSlsGetNumMassEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmevals)
end

function ARKSlsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSlsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSlsGetLastMassFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSlsGetReturnFlagName(flag::Clong)
    ccall((:ARKSlsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKodeCreate()
    ccall((:ARKodeCreate,shlib),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,shlib),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,shlib),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,shlib),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,shlib),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,shlib),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,shlib),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,shlib),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,shlib),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,shlib),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,shlib),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,shlib),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,shlib),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,shlib),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,shlib),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,shlib),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,shlib),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,shlib),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,shlib),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,shlib),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,shlib),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,shlib),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,shlib),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,shlib),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,shlib),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,shlib),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,shlib),Void,(Ptr{Ptr{Void}},),arkode_mem)
end

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

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function ARKSpbcg(arkode_mem,pretype::Cint,maxl::Cint)
    ccall((:ARKSpbcg,shlib),Cint,(Ptr{Void},Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKMassSpbcg(arkode_mem,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKMassSpbcg,shlib),Cint,(Ptr{Void},Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_spfgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKodeCreate()
    ccall((:ARKodeCreate,shlib),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,shlib),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,shlib),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,shlib),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,shlib),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,shlib),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,shlib),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,shlib),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,shlib),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,shlib),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,shlib),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,shlib),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,shlib),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,shlib),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,shlib),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,shlib),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,shlib),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,shlib),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,shlib),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,shlib),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,shlib),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,shlib),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,shlib),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,shlib),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,shlib),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,shlib),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,shlib),Void,(Ptr{Ptr{Void}},),arkode_mem)
end

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

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function SpfgmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpfgmrMalloc,shlib),SpfgmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpfgmrSolve(mem::SpfgmrMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,gstype::Cint,delta::realtype,max_restarts::Cint,maxit::Cint,P_data,s1::N_Vector,s2::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:SpfgmrSolve,shlib),Cint,(SpfgmrMem,Ptr{Void},N_Vector,N_Vector,Cint,Cint,realtype,Cint,Cint,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,gstype,delta,max_restarts,maxit,P_data,s1,s2,atimes,psolve,res_norm,nli,nps)
end

function SpfgmrFree(mem::SpfgmrMem)
    ccall((:SpfgmrFree,shlib),Void,(SpfgmrMem,),mem)
end

function ARKSpfgmr(arkode_mem,pretype::Cint,maxl::Cint)
    ccall((:ARKSpfgmr,shlib),Cint,(Ptr{Void},Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKMassSpfgmr(arkode_mem,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKMassSpfgmr,shlib),Cint,(Ptr{Void},Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKodeCreate()
    ccall((:ARKodeCreate,shlib),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,shlib),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,shlib),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,shlib),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,shlib),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,shlib),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,shlib),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,shlib),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,shlib),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,shlib),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,shlib),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,shlib),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,shlib),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,shlib),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,shlib),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,shlib),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,shlib),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,shlib),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,shlib),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,shlib),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,shlib),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,shlib),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,shlib),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,shlib),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,shlib),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,shlib),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,shlib),Void,(Ptr{Ptr{Void}},),arkode_mem)
end

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

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function ARKSpgmr(arkode_mem,pretype::Cint,maxl::Cint)
    ccall((:ARKSpgmr,shlib),Cint,(Ptr{Void},Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKMassSpgmr(arkode_mem,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKMassSpgmr,shlib),Cint,(Ptr{Void},Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/arkode/arkode_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ARKodeCreate()
    ccall((:ARKodeCreate,shlib),Ptr{Void},())
end

function ARKodeSetDefaults(arkode_mem)
    ccall((:ARKodeSetDefaults,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    ccall((:ARKodeSetOptimalParams,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun::ARKErrHandlerFn,eh_data)
    ccall((:ARKodeSetErrHandlerFn,shlib),Cint,(Ptr{Void},ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    ccall((:ARKodeSetErrFile,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetUserData(arkode_mem,user_data)
    ccall((:ARKodeSetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),arkode_mem,user_data)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    ccall((:ARKodeSetDiagnostics,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetOrder(arkode_mem,maxord::Cint)
    ccall((:ARKodeSetOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxord)
end

function ARKodeSetDenseOrder(arkode_mem,dord::Cint)
    ccall((:ARKodeSetDenseOrder,shlib),Cint,(Ptr{Void},Cint),arkode_mem,dord)
end

function ARKodeSetLinear(arkode_mem,timedepend::Cint)
    ccall((:ARKodeSetLinear,shlib),Cint,(Ptr{Void},Cint),arkode_mem,timedepend)
end

function ARKodeSetNonlinear(arkode_mem)
    ccall((:ARKodeSetNonlinear,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,shlib),Cint,(Ptr{Void},Clong),arkode_mem,fp_m)
end

function ARKodeSetNewton(arkode_mem)
    ccall((:ARKodeSetNewton,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    ccall((:ARKodeSetExplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    ccall((:ARKodeSetImplicit,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    ccall((:ARKodeSetImEx,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetERKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetERKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s::Cint,q::Cint,p::Cint,c,A,b,bembed)
    ccall((:ARKodeSetIRKTable,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetARKTables(arkode_mem,s::Cint,q::Cint,p::Cint,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    ccall((:ARKodeSetARKTables,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetERKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetERKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,shlib),Cint,(Ptr{Void},Cint),arkode_mem,itable)
end

function ARKodeSetARKTableNum(arkode_mem,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,shlib),Cint,(Ptr{Void},Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,shlib),Cint,(Ptr{Void},Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,shlib),Cint,(Ptr{Void},Cint),arkode_mem,mxhnil)
end

function ARKodeSetInitStep(arkode_mem,hin::realtype)
    ccall((:ARKodeSetInitStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hin)
end

function ARKodeSetMinStep(arkode_mem,hmin::realtype)
    ccall((:ARKodeSetMinStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmin)
end

function ARKodeSetMaxStep(arkode_mem,hmax::realtype)
    ccall((:ARKodeSetMaxStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hmax)
end

function ARKodeSetStopTime(arkode_mem,tstop::realtype)
    ccall((:ARKodeSetStopTime,shlib),Cint,(Ptr{Void},realtype),arkode_mem,tstop)
end

function ARKodeSetFixedStep(arkode_mem,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,shlib),Cint,(Ptr{Void},realtype),arkode_mem,hfixed)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,shlib),Cint,(Ptr{Void},realtype),arkode_mem,cfl_frac)
end

function ARKodeSetSafetyFactor(arkode_mem,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,shlib),Cint,(Ptr{Void},realtype),arkode_mem,safety)
end

function ARKodeSetErrorBias(arkode_mem,bias::realtype)
    ccall((:ARKodeSetErrorBias,shlib),Cint,(Ptr{Void},realtype),arkode_mem,bias)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,mx_growth)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod::Cint,idefault::Cint,pq::Cint,adapt_params)
    ccall((:ARKodeSetAdaptivityMethod,shlib),Cint,(Ptr{Void},Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun::ARKAdaptFn,h_data)
    ccall((:ARKodeSetAdaptivityFn,shlib),Cint,(Ptr{Void},ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etamxf)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,small_nef)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,shlib),Cint,(Ptr{Void},realtype),arkode_mem,etacf)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,shlib),Cint,(Ptr{Void},realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rdiv)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,shlib),Cint,(Ptr{Void},realtype),arkode_mem,dgmax)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,shlib),Cint,(Ptr{Void},Cint),arkode_mem,msbp)
end

function ARKodeSetPredictorMethod(arkode_mem,method::Cint)
    ccall((:ARKodeSetPredictorMethod,shlib),Cint,(Ptr{Void},Cint),arkode_mem,method)
end

function ARKodeSetStabilityFn(arkode_mem,EStab::ARKExpStabFn,estab_data)
    ccall((:ARKodeSetStabilityFn,shlib),Cint,(Ptr{Void},ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxncf)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,shlib),Cint,(Ptr{Void},realtype),arkode_mem,nlscoef)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    ccall((:ARKodeSetRootDirection,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    ccall((:ARKodeSetNoInactiveRootWarn,shlib),Cint,(Ptr{Void},),arkode_mem)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,shlib),Cint,(Ptr{Void},ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,shlib),Cint,(Ptr{Void},ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeResize(arkode_mem,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data)
    ccall((:ARKodeResize,shlib),Cint,(Ptr{Void},N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeSStolerances(arkode_mem,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeWFtolerances(arkode_mem,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,shlib),Cint,(Ptr{Void},ARKEwtFn),arkode_mem,efun)
end

function ARKodeResStolerance(arkode_mem,rabstol::realtype)
    ccall((:ARKodeResStolerance,shlib),Cint,(Ptr{Void},realtype),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,rabstol)
end

function ARKodeResFtolerance(arkode_mem,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,shlib),Cint,(Ptr{Void},ARKRwtFn),arkode_mem,rfun)
end

function ARKodeRootInit(arkode_mem,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,shlib),Cint,(Ptr{Void},Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKode(arkode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:ARKode,shlib),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKodeGetDky(arkode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    ccall((:ARKodeGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    ccall((:ARKodeGetNumSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    ccall((:ARKodeGetNumExpSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    ccall((:ARKodeGetNumAccSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    ccall((:ARKodeGetNumStepAttempts,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    ccall((:ARKodeGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    ccall((:ARKodeGetNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    ccall((:ARKodeGetNumMassSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    ccall((:ARKodeGetNumMassMultiplies,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    ccall((:ARKodeGetNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    ccall((:ARKodeGetActualInitStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    ccall((:ARKodeGetLastStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    ccall((:ARKodeGetCurrentStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    ccall((:ARKodeGetCurrentTime,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    ccall((:ARKodeGetCurrentButcherTables,shlib),Cint,(Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    ccall((:ARKodeGetTolScaleFactor,shlib),Cint,(Ptr{Void},Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetErrWeights(arkode_mem,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,eweight)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,shlib),Cint,(Ptr{Void},N_Vector),arkode_mem,ele)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    ccall((:ARKodeGetNumGEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    ccall((:ARKodeGetRootInfo,shlib),Cint,(Ptr{Void},Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    ccall((:ARKodeGetIntegratorStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    ccall((:ARKodeGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    ccall((:ARKodeGetNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    ccall((:ARKodeGetNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeLoadButcherTable(imethod::Cint,s,q,p,A,b,c,b2)
    ccall((:ARKodeLoadButcherTable,shlib),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,shlib),Cstring,(Clong,),flag)
end

function ARKodeWriteParameters(arkode_mem,fp)
    ccall((:ARKodeWriteParameters,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    ccall((:ARKodeWriteButcher,shlib),Cint,(Ptr{Void},Ptr{FILE}),arkode_mem,fp)
end

function ARKodeFree(arkode_mem)
    ccall((:ARKodeFree,shlib),Void,(Ptr{Ptr{Void}},),arkode_mem)
end

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

function ARKSpilsSetPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,pretype)
end

function ARKSpilsSetGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,shlib),Cint,(Ptr{Void},Cint),arkode_mem,gstype)
end

function ARKSpilsSetMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,shlib),Cint,(Ptr{Void},Cint),arkode_mem,maxl)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,shlib),Cint,(Ptr{Void},realtype),arkode_mem,eplifac)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,shlib),Cint,(Ptr{Void},ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKSpilsSetMassTimesVecFn,shlib),Cint,(Ptr{Void},ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    ccall((:ARKSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    ccall((:ARKSpilsGetMassWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    ccall((:ARKSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    ccall((:ARKSpilsGetNumMassPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    ccall((:ARKSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    ccall((:ARKSpilsGetNumMassPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    ccall((:ARKSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    ccall((:ARKSpilsGetNumMassIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    ccall((:ARKSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    ccall((:ARKSpilsGetNumMassConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    ccall((:ARKSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    ccall((:ARKSpilsGetNumMtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    ccall((:ARKSpilsGetNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    ccall((:ARKSpilsGetLastMassFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,shlib),Cstring,(Clong,),flag)
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

function ARKSptfqmr(arkode_mem,pretype::Cint,maxl::Cint)
    ccall((:ARKSptfqmr,shlib),Cint,(Ptr{Void},Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKMassSptfqmr(arkode_mem,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data)
    ccall((:ARKMassSptfqmr,shlib),Cint,(Ptr{Void},Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end
