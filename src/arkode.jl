# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function ARKodeCreate()
    ccall((:ARKodeCreate,libsundials_arkode),ARKODEMemPtr,())
end

function __ARKodeSetDefaults(arkode_mem::ARKODEMemPtr)
    ccall((:ARKodeSetDefaults,libsundials_arkode),Cint,(ARKODEMemPtr,),arkode_mem)
end

function ARKodeSetDefaults(arkode_mem)
    __ARKodeSetDefaults(convert(ARKODEMemPtr,arkode_mem))
end

function __ARKodeSetOptimalParams(arkode_mem::ARKODEMemPtr)
    ccall((:ARKodeSetOptimalParams,libsundials_arkode),Cint,(ARKODEMemPtr,),arkode_mem)
end

function ARKodeSetOptimalParams(arkode_mem)
    __ARKodeSetOptimalParams(convert(ARKODEMemPtr,arkode_mem))
end

function __ARKodeSetErrHandlerFn(arkode_mem::ARKODEMemPtr,ehfun::ARKErrHandlerFn,eh_data::Ptr{Void})
    ccall((:ARKodeSetErrHandlerFn,libsundials_arkode),Cint,(ARKODEMemPtr,ARKErrHandlerFn,Ptr{Void}),arkode_mem,ehfun,eh_data)
end

function ARKodeSetErrHandlerFn(arkode_mem,ehfun,eh_data)
    __ARKodeSetErrHandlerFn(convert(ARKODEMemPtr,arkode_mem),ehfun,pointer(eh_data))
end

function __ARKodeSetErrFile(arkode_mem::ARKODEMemPtr,errfp::Ptr{FILE})
    ccall((:ARKodeSetErrFile,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{FILE}),arkode_mem,errfp)
end

function ARKodeSetErrFile(arkode_mem,errfp)
    __ARKodeSetErrFile(convert(ARKODEMemPtr,arkode_mem),errfp)
end

function __ARKodeSetUserData(arkode_mem::ARKODEMemPtr,user_data::Any)
    ccall((:ARKodeSetUserData,libsundials_arkode),Cint,(ARKODEMemPtr,Any),arkode_mem,user_data)
end

function ARKodeSetUserData(arkode_mem,user_data)
    __ARKodeSetUserData(convert(ARKODEMemPtr,arkode_mem),user_data)
end

function __ARKodeSetDiagnostics(arkode_mem::ARKODEMemPtr,diagfp::Ptr{FILE})
    ccall((:ARKodeSetDiagnostics,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{FILE}),arkode_mem,diagfp)
end

function ARKodeSetDiagnostics(arkode_mem,diagfp)
    __ARKodeSetDiagnostics(convert(ARKODEMemPtr,arkode_mem),diagfp)
end

function __ARKodeSetOrder(arkode_mem::ARKODEMemPtr,maxord::Cint)
    ccall((:ARKodeSetOrder,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,maxord)
end

function ARKodeSetOrder(arkode_mem,maxord)
    __ARKodeSetOrder(convert(ARKODEMemPtr,arkode_mem),convert(Cint,maxord))
end

function __ARKodeSetDenseOrder(arkode_mem::ARKODEMemPtr,dord::Cint)
    ccall((:ARKodeSetDenseOrder,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,dord)
end

function ARKodeSetDenseOrder(arkode_mem,dord)
    __ARKodeSetDenseOrder(convert(ARKODEMemPtr,arkode_mem),convert(Cint,dord))
end

function __ARKodeSetLinear(arkode_mem::ARKODEMemPtr,timedepend::Cint)
    ccall((:ARKodeSetLinear,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,timedepend)
end

function ARKodeSetLinear(arkode_mem,timedepend)
    __ARKodeSetLinear(convert(ARKODEMemPtr,arkode_mem),convert(Cint,timedepend))
end

function __ARKodeSetNonlinear(arkode_mem::ARKODEMemPtr)
    ccall((:ARKodeSetNonlinear,libsundials_arkode),Cint,(ARKODEMemPtr,),arkode_mem)
end

function ARKodeSetNonlinear(arkode_mem)
    __ARKodeSetNonlinear(convert(ARKODEMemPtr,arkode_mem))
end

function __ARKodeSetFixedPoint(arkode_mem::ARKODEMemPtr,fp_m::Clong)
    ccall((:ARKodeSetFixedPoint,libsundials_arkode),Cint,(ARKODEMemPtr,Clong),arkode_mem,fp_m)
end

function ARKodeSetFixedPoint(arkode_mem,fp_m)
    __ARKodeSetFixedPoint(convert(ARKODEMemPtr,arkode_mem),convert(Clong,fp_m))
end

function __ARKodeSetNewton(arkode_mem::ARKODEMemPtr)
    ccall((:ARKodeSetNewton,libsundials_arkode),Cint,(ARKODEMemPtr,),arkode_mem)
end

function ARKodeSetNewton(arkode_mem)
    __ARKodeSetNewton(convert(ARKODEMemPtr,arkode_mem))
end

function __ARKodeSetExplicit(arkode_mem::ARKODEMemPtr)
    ccall((:ARKodeSetExplicit,libsundials_arkode),Cint,(ARKODEMemPtr,),arkode_mem)
end

function ARKodeSetExplicit(arkode_mem)
    __ARKodeSetExplicit(convert(ARKODEMemPtr,arkode_mem))
end

function __ARKodeSetImplicit(arkode_mem::ARKODEMemPtr)
    ccall((:ARKodeSetImplicit,libsundials_arkode),Cint,(ARKODEMemPtr,),arkode_mem)
end

function ARKodeSetImplicit(arkode_mem)
    __ARKodeSetImplicit(convert(ARKODEMemPtr,arkode_mem))
end

function __ARKodeSetImEx(arkode_mem::ARKODEMemPtr)
    ccall((:ARKodeSetImEx,libsundials_arkode),Cint,(ARKODEMemPtr,),arkode_mem)
end

function ARKodeSetImEx(arkode_mem)
    __ARKodeSetImEx(convert(ARKODEMemPtr,arkode_mem))
end

function __ARKodeSetERKTable(arkode_mem::ARKODEMemPtr,s::Cint,q::Cint,p::Cint,c::Ptr{realtype},A::Ptr{realtype},b::Ptr{realtype},bembed::Ptr{realtype})
    ccall((:ARKodeSetERKTable,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetERKTable(arkode_mem,s,q,p,c,A,b,bembed)
    __ARKodeSetERKTable(convert(ARKODEMemPtr,arkode_mem),convert(Cint,s),convert(Cint,q),convert(Cint,p),pointer(c),pointer(A),pointer(b),pointer(bembed))
end

function __ARKodeSetIRKTable(arkode_mem::ARKODEMemPtr,s::Cint,q::Cint,p::Cint,c::Ptr{realtype},A::Ptr{realtype},b::Ptr{realtype},bembed::Ptr{realtype})
    ccall((:ARKodeSetIRKTable,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,c,A,b,bembed)
end

function ARKodeSetIRKTable(arkode_mem,s,q,p,c,A,b,bembed)
    __ARKodeSetIRKTable(convert(ARKODEMemPtr,arkode_mem),convert(Cint,s),convert(Cint,q),convert(Cint,p),pointer(c),pointer(A),pointer(b),pointer(bembed))
end

function __ARKodeSetARKTables(arkode_mem::ARKODEMemPtr,s::Cint,q::Cint,p::Cint,ci::Ptr{realtype},ce::Ptr{realtype},Ai::Ptr{realtype},Ae::Ptr{realtype},bi::Ptr{realtype},be::Ptr{realtype},b2i::Ptr{realtype},b2e::Ptr{realtype})
    ccall((:ARKodeSetARKTables,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint,Cint,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
end

function ARKodeSetARKTables(arkode_mem,s,q,p,ci,ce,Ai,Ae,bi,be,b2i,b2e)
    __ARKodeSetARKTables(convert(ARKODEMemPtr,arkode_mem),convert(Cint,s),convert(Cint,q),convert(Cint,p),pointer(ci),pointer(ce),pointer(Ai),pointer(Ae),pointer(bi),pointer(be),pointer(b2i),pointer(b2e))
end

function __ARKodeSetERKTableNum(arkode_mem::ARKODEMemPtr,itable::Cint)
    ccall((:ARKodeSetERKTableNum,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,itable)
end

function ARKodeSetERKTableNum(arkode_mem,itable)
    __ARKodeSetERKTableNum(convert(ARKODEMemPtr,arkode_mem),convert(Cint,itable))
end

function __ARKodeSetIRKTableNum(arkode_mem::ARKODEMemPtr,itable::Cint)
    ccall((:ARKodeSetIRKTableNum,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,itable)
end

function ARKodeSetIRKTableNum(arkode_mem,itable)
    __ARKodeSetIRKTableNum(convert(ARKODEMemPtr,arkode_mem),convert(Cint,itable))
end

function __ARKodeSetARKTableNum(arkode_mem::ARKODEMemPtr,itable::Cint,etable::Cint)
    ccall((:ARKodeSetARKTableNum,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint),arkode_mem,itable,etable)
end

function ARKodeSetARKTableNum(arkode_mem,itable,etable)
    __ARKodeSetARKTableNum(convert(ARKODEMemPtr,arkode_mem),convert(Cint,itable),convert(Cint,etable))
end

function __ARKodeSetMaxNumSteps(arkode_mem::ARKODEMemPtr,mxsteps::Clong)
    ccall((:ARKodeSetMaxNumSteps,libsundials_arkode),Cint,(ARKODEMemPtr,Clong),arkode_mem,mxsteps)
end

function ARKodeSetMaxNumSteps(arkode_mem,mxsteps)
    __ARKodeSetMaxNumSteps(convert(ARKODEMemPtr,arkode_mem),convert(Clong,mxsteps))
end

function __ARKodeSetMaxHnilWarns(arkode_mem::ARKODEMemPtr,mxhnil::Cint)
    ccall((:ARKodeSetMaxHnilWarns,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,mxhnil)
end

function ARKodeSetMaxHnilWarns(arkode_mem,mxhnil)
    __ARKodeSetMaxHnilWarns(convert(ARKODEMemPtr,arkode_mem),convert(Cint,mxhnil))
end

function __ARKodeSetInitStep(arkode_mem::ARKODEMemPtr,hin::realtype)
    ccall((:ARKodeSetInitStep,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,hin)
end

function ARKodeSetInitStep(arkode_mem,hin)
    __ARKodeSetInitStep(convert(ARKODEMemPtr,arkode_mem),hin)
end

function __ARKodeSetMinStep(arkode_mem::ARKODEMemPtr,hmin::realtype)
    ccall((:ARKodeSetMinStep,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,hmin)
end

function ARKodeSetMinStep(arkode_mem,hmin)
    __ARKodeSetMinStep(convert(ARKODEMemPtr,arkode_mem),hmin)
end

function __ARKodeSetMaxStep(arkode_mem::ARKODEMemPtr,hmax::realtype)
    ccall((:ARKodeSetMaxStep,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,hmax)
end

function ARKodeSetMaxStep(arkode_mem,hmax)
    __ARKodeSetMaxStep(convert(ARKODEMemPtr,arkode_mem),hmax)
end

function __ARKodeSetStopTime(arkode_mem::ARKODEMemPtr,tstop::realtype)
    ccall((:ARKodeSetStopTime,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,tstop)
end

function ARKodeSetStopTime(arkode_mem,tstop)
    __ARKodeSetStopTime(convert(ARKODEMemPtr,arkode_mem),tstop)
end

function __ARKodeSetFixedStep(arkode_mem::ARKODEMemPtr,hfixed::realtype)
    ccall((:ARKodeSetFixedStep,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,hfixed)
end

function ARKodeSetFixedStep(arkode_mem,hfixed)
    __ARKodeSetFixedStep(convert(ARKODEMemPtr,arkode_mem),hfixed)
end

function __ARKodeSetCFLFraction(arkode_mem::ARKODEMemPtr,cfl_frac::realtype)
    ccall((:ARKodeSetCFLFraction,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,cfl_frac)
end

function ARKodeSetCFLFraction(arkode_mem,cfl_frac)
    __ARKodeSetCFLFraction(convert(ARKODEMemPtr,arkode_mem),cfl_frac)
end

function __ARKodeSetSafetyFactor(arkode_mem::ARKODEMemPtr,safety::realtype)
    ccall((:ARKodeSetSafetyFactor,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,safety)
end

function ARKodeSetSafetyFactor(arkode_mem,safety)
    __ARKodeSetSafetyFactor(convert(ARKODEMemPtr,arkode_mem),safety)
end

function __ARKodeSetErrorBias(arkode_mem::ARKODEMemPtr,bias::realtype)
    ccall((:ARKodeSetErrorBias,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,bias)
end

function ARKodeSetErrorBias(arkode_mem,bias)
    __ARKodeSetErrorBias(convert(ARKODEMemPtr,arkode_mem),bias)
end

function __ARKodeSetMaxGrowth(arkode_mem::ARKODEMemPtr,mx_growth::realtype)
    ccall((:ARKodeSetMaxGrowth,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,mx_growth)
end

function ARKodeSetMaxGrowth(arkode_mem,mx_growth)
    __ARKodeSetMaxGrowth(convert(ARKODEMemPtr,arkode_mem),mx_growth)
end

function __ARKodeSetFixedStepBounds(arkode_mem::ARKODEMemPtr,lb::realtype,ub::realtype)
    ccall((:ARKodeSetFixedStepBounds,libsundials_arkode),Cint,(ARKODEMemPtr,realtype,realtype),arkode_mem,lb,ub)
end

function ARKodeSetFixedStepBounds(arkode_mem,lb,ub)
    __ARKodeSetFixedStepBounds(convert(ARKODEMemPtr,arkode_mem),lb,ub)
end

function __ARKodeSetAdaptivityMethod(arkode_mem::ARKODEMemPtr,imethod::Cint,idefault::Cint,pq::Cint,adapt_params::Ptr{realtype})
    ccall((:ARKodeSetAdaptivityMethod,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint,Cint,Ptr{realtype}),arkode_mem,imethod,idefault,pq,adapt_params)
end

function ARKodeSetAdaptivityMethod(arkode_mem,imethod,idefault,pq,adapt_params)
    __ARKodeSetAdaptivityMethod(convert(ARKODEMemPtr,arkode_mem),convert(Cint,imethod),convert(Cint,idefault),convert(Cint,pq),pointer(adapt_params))
end

function __ARKodeSetAdaptivityFn(arkode_mem::ARKODEMemPtr,hfun::ARKAdaptFn,h_data::Ptr{Void})
    ccall((:ARKodeSetAdaptivityFn,libsundials_arkode),Cint,(ARKODEMemPtr,ARKAdaptFn,Ptr{Void}),arkode_mem,hfun,h_data)
end

function ARKodeSetAdaptivityFn(arkode_mem,hfun,h_data)
    __ARKodeSetAdaptivityFn(convert(ARKODEMemPtr,arkode_mem),hfun,pointer(h_data))
end

function __ARKodeSetMaxFirstGrowth(arkode_mem::ARKODEMemPtr,etamx1::realtype)
    ccall((:ARKodeSetMaxFirstGrowth,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,etamx1)
end

function ARKodeSetMaxFirstGrowth(arkode_mem,etamx1)
    __ARKodeSetMaxFirstGrowth(convert(ARKODEMemPtr,arkode_mem),etamx1)
end

function __ARKodeSetMaxEFailGrowth(arkode_mem::ARKODEMemPtr,etamxf::realtype)
    ccall((:ARKodeSetMaxEFailGrowth,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,etamxf)
end

function ARKodeSetMaxEFailGrowth(arkode_mem,etamxf)
    __ARKodeSetMaxEFailGrowth(convert(ARKODEMemPtr,arkode_mem),etamxf)
end

function __ARKodeSetSmallNumEFails(arkode_mem::ARKODEMemPtr,small_nef::Cint)
    ccall((:ARKodeSetSmallNumEFails,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,small_nef)
end

function ARKodeSetSmallNumEFails(arkode_mem,small_nef)
    __ARKodeSetSmallNumEFails(convert(ARKODEMemPtr,arkode_mem),convert(Cint,small_nef))
end

function __ARKodeSetMaxCFailGrowth(arkode_mem::ARKODEMemPtr,etacf::realtype)
    ccall((:ARKodeSetMaxCFailGrowth,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,etacf)
end

function ARKodeSetMaxCFailGrowth(arkode_mem,etacf)
    __ARKodeSetMaxCFailGrowth(convert(ARKODEMemPtr,arkode_mem),etacf)
end

function __ARKodeSetNonlinCRDown(arkode_mem::ARKODEMemPtr,crdown::realtype)
    ccall((:ARKodeSetNonlinCRDown,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,crdown)
end

function ARKodeSetNonlinCRDown(arkode_mem,crdown)
    __ARKodeSetNonlinCRDown(convert(ARKODEMemPtr,arkode_mem),crdown)
end

function __ARKodeSetNonlinRDiv(arkode_mem::ARKODEMemPtr,rdiv::realtype)
    ccall((:ARKodeSetNonlinRDiv,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,rdiv)
end

function ARKodeSetNonlinRDiv(arkode_mem,rdiv)
    __ARKodeSetNonlinRDiv(convert(ARKODEMemPtr,arkode_mem),rdiv)
end

function __ARKodeSetDeltaGammaMax(arkode_mem::ARKODEMemPtr,dgmax::realtype)
    ccall((:ARKodeSetDeltaGammaMax,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,dgmax)
end

function ARKodeSetDeltaGammaMax(arkode_mem,dgmax)
    __ARKodeSetDeltaGammaMax(convert(ARKODEMemPtr,arkode_mem),dgmax)
end

function __ARKodeSetMaxStepsBetweenLSet(arkode_mem::ARKODEMemPtr,msbp::Cint)
    ccall((:ARKodeSetMaxStepsBetweenLSet,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,msbp)
end

function ARKodeSetMaxStepsBetweenLSet(arkode_mem,msbp)
    __ARKodeSetMaxStepsBetweenLSet(convert(ARKODEMemPtr,arkode_mem),convert(Cint,msbp))
end

function __ARKodeSetPredictorMethod(arkode_mem::ARKODEMemPtr,method::Cint)
    ccall((:ARKodeSetPredictorMethod,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,method)
end

function ARKodeSetPredictorMethod(arkode_mem,method)
    __ARKodeSetPredictorMethod(convert(ARKODEMemPtr,arkode_mem),convert(Cint,method))
end

function __ARKodeSetStabilityFn(arkode_mem::ARKODEMemPtr,EStab::ARKExpStabFn,estab_data::Ptr{Void})
    ccall((:ARKodeSetStabilityFn,libsundials_arkode),Cint,(ARKODEMemPtr,ARKExpStabFn,Ptr{Void}),arkode_mem,EStab,estab_data)
end

function ARKodeSetStabilityFn(arkode_mem,EStab,estab_data)
    __ARKodeSetStabilityFn(convert(ARKODEMemPtr,arkode_mem),EStab,pointer(estab_data))
end

function __ARKodeSetMaxErrTestFails(arkode_mem::ARKODEMemPtr,maxnef::Cint)
    ccall((:ARKodeSetMaxErrTestFails,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,maxnef)
end

function ARKodeSetMaxErrTestFails(arkode_mem,maxnef)
    __ARKodeSetMaxErrTestFails(convert(ARKODEMemPtr,arkode_mem),convert(Cint,maxnef))
end

function __ARKodeSetMaxNonlinIters(arkode_mem::ARKODEMemPtr,maxcor::Cint)
    ccall((:ARKodeSetMaxNonlinIters,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,maxcor)
end

function ARKodeSetMaxNonlinIters(arkode_mem,maxcor)
    __ARKodeSetMaxNonlinIters(convert(ARKODEMemPtr,arkode_mem),convert(Cint,maxcor))
end

function __ARKodeSetMaxConvFails(arkode_mem::ARKODEMemPtr,maxncf::Cint)
    ccall((:ARKodeSetMaxConvFails,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,maxncf)
end

function ARKodeSetMaxConvFails(arkode_mem,maxncf)
    __ARKodeSetMaxConvFails(convert(ARKODEMemPtr,arkode_mem),convert(Cint,maxncf))
end

function __ARKodeSetNonlinConvCoef(arkode_mem::ARKODEMemPtr,nlscoef::realtype)
    ccall((:ARKodeSetNonlinConvCoef,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,nlscoef)
end

function ARKodeSetNonlinConvCoef(arkode_mem,nlscoef)
    __ARKodeSetNonlinConvCoef(convert(ARKODEMemPtr,arkode_mem),nlscoef)
end

function __ARKodeSetRootDirection(arkode_mem::ARKODEMemPtr,rootdir::Ptr{Cint})
    ccall((:ARKodeSetRootDirection,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Cint}),arkode_mem,rootdir)
end

function ARKodeSetRootDirection(arkode_mem,rootdir)
    __ARKodeSetRootDirection(convert(ARKODEMemPtr,arkode_mem),pointer(rootdir))
end

function __ARKodeSetNoInactiveRootWarn(arkode_mem::ARKODEMemPtr)
    ccall((:ARKodeSetNoInactiveRootWarn,libsundials_arkode),Cint,(ARKODEMemPtr,),arkode_mem)
end

function ARKodeSetNoInactiveRootWarn(arkode_mem)
    __ARKodeSetNoInactiveRootWarn(convert(ARKODEMemPtr,arkode_mem))
end

function __ARKodeSetPostprocessStepFn(arkode_mem::ARKODEMemPtr,ProcessStep::ARKPostProcessStepFn)
    ccall((:ARKodeSetPostprocessStepFn,libsundials_arkode),Cint,(ARKODEMemPtr,ARKPostProcessStepFn),arkode_mem,ProcessStep)
end

function ARKodeSetPostprocessStepFn(arkode_mem,ProcessStep)
    __ARKodeSetPostprocessStepFn(convert(ARKODEMemPtr,arkode_mem),ProcessStep)
end

function __ARKodeInit(arkode_mem::ARKODEMemPtr,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeInit,libsundials_arkode),Cint,(ARKODEMemPtr,ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeInit(arkode_mem,fe,fi,t0,y0)
    __y0 = convert(NVector,y0)
    __ARKodeInit(convert(ARKODEMemPtr,arkode_mem),ARKRhsFn_wrapper(fe),ARKRhsFn_wrapper(fi),t0,convert(N_Vector,__y0))
end

function __ARKodeReInit(arkode_mem::ARKODEMemPtr,fe::ARKRhsFn,fi::ARKRhsFn,t0::realtype,y0::N_Vector)
    ccall((:ARKodeReInit,libsundials_arkode),Cint,(ARKODEMemPtr,ARKRhsFn,ARKRhsFn,realtype,N_Vector),arkode_mem,fe,fi,t0,y0)
end

function ARKodeReInit(arkode_mem,fe,fi,t0,y0)
    __y0 = convert(NVector,y0)
    __ARKodeReInit(convert(ARKODEMemPtr,arkode_mem),ARKRhsFn_wrapper(fe),ARKRhsFn_wrapper(fi),t0,convert(N_Vector,__y0))
end

function __ARKodeResize(arkode_mem::ARKODEMemPtr,ynew::N_Vector,hscale::realtype,t0::realtype,resize::ARKVecResizeFn,resize_data::Ptr{Void})
    ccall((:ARKodeResize,libsundials_arkode),Cint,(ARKODEMemPtr,N_Vector,realtype,realtype,ARKVecResizeFn,Ptr{Void}),arkode_mem,ynew,hscale,t0,resize,resize_data)
end

function ARKodeResize(arkode_mem,ynew,hscale,t0,resize,resize_data)
    __ynew = convert(NVector,ynew)
    __ARKodeResize(convert(ARKODEMemPtr,arkode_mem),convert(N_Vector,__ynew),hscale,t0,resize,pointer(resize_data))
end

function __ARKodeSStolerances(arkode_mem::ARKODEMemPtr,reltol::realtype,abstol::realtype)
    ccall((:ARKodeSStolerances,libsundials_arkode),Cint,(ARKODEMemPtr,realtype,realtype),arkode_mem,reltol,abstol)
end

function ARKodeSStolerances(arkode_mem,reltol,abstol)
    __ARKodeSStolerances(convert(ARKODEMemPtr,arkode_mem),reltol,abstol)
end

function __ARKodeSVtolerances(arkode_mem::ARKODEMemPtr,reltol::realtype,abstol::N_Vector)
    ccall((:ARKodeSVtolerances,libsundials_arkode),Cint,(ARKODEMemPtr,realtype,N_Vector),arkode_mem,reltol,abstol)
end

function ARKodeSVtolerances(arkode_mem,reltol,abstol)
    __abstol = convert(NVector,abstol)
    __ARKodeSVtolerances(convert(ARKODEMemPtr,arkode_mem),reltol,convert(N_Vector,__abstol))
end

function __ARKodeWFtolerances(arkode_mem::ARKODEMemPtr,efun::ARKEwtFn)
    ccall((:ARKodeWFtolerances,libsundials_arkode),Cint,(ARKODEMemPtr,ARKEwtFn),arkode_mem,efun)
end

function ARKodeWFtolerances(arkode_mem,efun)
    __ARKodeWFtolerances(convert(ARKODEMemPtr,arkode_mem),efun)
end

function __ARKodeResStolerance(arkode_mem::ARKODEMemPtr,rabstol::realtype)
    ccall((:ARKodeResStolerance,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,rabstol)
end

function ARKodeResStolerance(arkode_mem,rabstol)
    __ARKodeResStolerance(convert(ARKODEMemPtr,arkode_mem),rabstol)
end

function __ARKodeResVtolerance(arkode_mem::ARKODEMemPtr,rabstol::N_Vector)
    ccall((:ARKodeResVtolerance,libsundials_arkode),Cint,(ARKODEMemPtr,N_Vector),arkode_mem,rabstol)
end

function ARKodeResVtolerance(arkode_mem,rabstol)
    __rabstol = convert(NVector,rabstol)
    __ARKodeResVtolerance(convert(ARKODEMemPtr,arkode_mem),convert(N_Vector,__rabstol))
end

function __ARKodeResFtolerance(arkode_mem::ARKODEMemPtr,rfun::ARKRwtFn)
    ccall((:ARKodeResFtolerance,libsundials_arkode),Cint,(ARKODEMemPtr,ARKRwtFn),arkode_mem,rfun)
end

function ARKodeResFtolerance(arkode_mem,rfun)
    __ARKodeResFtolerance(convert(ARKODEMemPtr,arkode_mem),rfun)
end

function __ARKodeRootInit(arkode_mem::ARKODEMemPtr,nrtfn::Cint,g::ARKRootFn)
    ccall((:ARKodeRootInit,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,ARKRootFn),arkode_mem,nrtfn,g)
end

function ARKodeRootInit(arkode_mem,nrtfn,g)
    __ARKodeRootInit(convert(ARKODEMemPtr,arkode_mem),convert(Cint,nrtfn),g)
end

function __ARKode(arkode_mem::ARKODEMemPtr,tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint)
    ccall((:ARKode,libsundials_arkode),Cint,(ARKODEMemPtr,realtype,N_Vector,Ptr{realtype},Cint),arkode_mem,tout,yout,tret,itask)
end

function ARKode(arkode_mem,tout,yout,tret,itask)
    __yout = convert(NVector,yout)
    __ARKode(convert(ARKODEMemPtr,arkode_mem),tout,convert(N_Vector,__yout),pointer(tret),convert(Cint,itask))
end

function __ARKodeGetDky(arkode_mem::ARKODEMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:ARKodeGetDky,libsundials_arkode),Cint,(ARKODEMemPtr,realtype,Cint,N_Vector),arkode_mem,t,k,dky)
end

function ARKodeGetDky(arkode_mem,t,k,dky)
    __dky = convert(NVector,dky)
    __ARKodeGetDky(convert(ARKODEMemPtr,arkode_mem),t,convert(Cint,k),convert(N_Vector,__dky))
end

function __ARKodeGetWorkSpace(arkode_mem::ARKODEMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:ARKodeGetWorkSpace,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong},Ptr{Clong}),arkode_mem,lenrw,leniw)
end

function ARKodeGetWorkSpace(arkode_mem,lenrw,leniw)
    __ARKodeGetWorkSpace(convert(ARKODEMemPtr,arkode_mem),pointer(lenrw),pointer(leniw))
end

function __ARKodeGetNumSteps(arkode_mem::ARKODEMemPtr,nsteps::Ptr{Clong})
    ccall((:ARKodeGetNumSteps,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nsteps)
end

function ARKodeGetNumSteps(arkode_mem,nsteps)
    __ARKodeGetNumSteps(convert(ARKODEMemPtr,arkode_mem),pointer(nsteps))
end

function __ARKodeGetNumExpSteps(arkode_mem::ARKODEMemPtr,expsteps::Ptr{Clong})
    ccall((:ARKodeGetNumExpSteps,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,expsteps)
end

function ARKodeGetNumExpSteps(arkode_mem,expsteps)
    __ARKodeGetNumExpSteps(convert(ARKODEMemPtr,arkode_mem),pointer(expsteps))
end

function __ARKodeGetNumAccSteps(arkode_mem::ARKODEMemPtr,accsteps::Ptr{Clong})
    ccall((:ARKodeGetNumAccSteps,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,accsteps)
end

function ARKodeGetNumAccSteps(arkode_mem,accsteps)
    __ARKodeGetNumAccSteps(convert(ARKODEMemPtr,arkode_mem),pointer(accsteps))
end

function __ARKodeGetNumStepAttempts(arkode_mem::ARKODEMemPtr,step_attempts::Ptr{Clong})
    ccall((:ARKodeGetNumStepAttempts,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,step_attempts)
end

function ARKodeGetNumStepAttempts(arkode_mem,step_attempts)
    __ARKodeGetNumStepAttempts(convert(ARKODEMemPtr,arkode_mem),pointer(step_attempts))
end

function __ARKodeGetNumRhsEvals(arkode_mem::ARKODEMemPtr,nfe_evals::Ptr{Clong},nfi_evals::Ptr{Clong})
    ccall((:ARKodeGetNumRhsEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong},Ptr{Clong}),arkode_mem,nfe_evals,nfi_evals)
end

function ARKodeGetNumRhsEvals(arkode_mem,nfe_evals,nfi_evals)
    __ARKodeGetNumRhsEvals(convert(ARKODEMemPtr,arkode_mem),pointer(nfe_evals),pointer(nfi_evals))
end

function __ARKodeGetNumLinSolvSetups(arkode_mem::ARKODEMemPtr,nlinsetups::Ptr{Clong})
    ccall((:ARKodeGetNumLinSolvSetups,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nlinsetups)
end

function ARKodeGetNumLinSolvSetups(arkode_mem,nlinsetups)
    __ARKodeGetNumLinSolvSetups(convert(ARKODEMemPtr,arkode_mem),pointer(nlinsetups))
end

function __ARKodeGetNumMassSolves(arkode_mem::ARKODEMemPtr,nMassSolves::Ptr{Clong})
    ccall((:ARKodeGetNumMassSolves,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nMassSolves)
end

function ARKodeGetNumMassSolves(arkode_mem,nMassSolves)
    __ARKodeGetNumMassSolves(convert(ARKODEMemPtr,arkode_mem),pointer(nMassSolves))
end

function __ARKodeGetNumMassMultiplies(arkode_mem::ARKODEMemPtr,nMassMult::Ptr{Clong})
    ccall((:ARKodeGetNumMassMultiplies,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nMassMult)
end

function ARKodeGetNumMassMultiplies(arkode_mem,nMassMult)
    __ARKodeGetNumMassMultiplies(convert(ARKODEMemPtr,arkode_mem),pointer(nMassMult))
end

function __ARKodeGetNumErrTestFails(arkode_mem::ARKODEMemPtr,netfails::Ptr{Clong})
    ccall((:ARKodeGetNumErrTestFails,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,netfails)
end

function ARKodeGetNumErrTestFails(arkode_mem,netfails)
    __ARKodeGetNumErrTestFails(convert(ARKODEMemPtr,arkode_mem),pointer(netfails))
end

function __ARKodeGetActualInitStep(arkode_mem::ARKODEMemPtr,hinused::Ptr{realtype})
    ccall((:ARKodeGetActualInitStep,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{realtype}),arkode_mem,hinused)
end

function ARKodeGetActualInitStep(arkode_mem,hinused)
    __ARKodeGetActualInitStep(convert(ARKODEMemPtr,arkode_mem),pointer(hinused))
end

function __ARKodeGetLastStep(arkode_mem::ARKODEMemPtr,hlast::Ptr{realtype})
    ccall((:ARKodeGetLastStep,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{realtype}),arkode_mem,hlast)
end

function ARKodeGetLastStep(arkode_mem,hlast)
    __ARKodeGetLastStep(convert(ARKODEMemPtr,arkode_mem),pointer(hlast))
end

function __ARKodeGetCurrentStep(arkode_mem::ARKODEMemPtr,hcur::Ptr{realtype})
    ccall((:ARKodeGetCurrentStep,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{realtype}),arkode_mem,hcur)
end

function ARKodeGetCurrentStep(arkode_mem,hcur)
    __ARKodeGetCurrentStep(convert(ARKODEMemPtr,arkode_mem),pointer(hcur))
end

function __ARKodeGetCurrentTime(arkode_mem::ARKODEMemPtr,tcur::Ptr{realtype})
    ccall((:ARKodeGetCurrentTime,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{realtype}),arkode_mem,tcur)
end

function ARKodeGetCurrentTime(arkode_mem,tcur)
    __ARKodeGetCurrentTime(convert(ARKODEMemPtr,arkode_mem),pointer(tcur))
end

function __ARKodeGetCurrentButcherTables(arkode_mem::ARKODEMemPtr,s::Ptr{Cint},q::Ptr{Cint},p::Ptr{Cint},Ai::Ptr{realtype},Ae::Ptr{realtype},ci::Ptr{realtype},ce::Ptr{realtype},bi::Ptr{realtype},be::Ptr{realtype},b2i::Ptr{realtype},b2e::Ptr{realtype})
    ccall((:ARKodeGetCurrentButcherTables,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
end

function ARKodeGetCurrentButcherTables(arkode_mem,s,q,p,Ai,Ae,ci,ce,bi,be,b2i,b2e)
    __ARKodeGetCurrentButcherTables(convert(ARKODEMemPtr,arkode_mem),pointer(s),pointer(q),pointer(p),pointer(Ai),pointer(Ae),pointer(ci),pointer(ce),pointer(bi),pointer(be),pointer(b2i),pointer(b2e))
end

function __ARKodeGetTolScaleFactor(arkode_mem::ARKODEMemPtr,tolsfac::Ptr{realtype})
    ccall((:ARKodeGetTolScaleFactor,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{realtype}),arkode_mem,tolsfac)
end

function ARKodeGetTolScaleFactor(arkode_mem,tolsfac)
    __ARKodeGetTolScaleFactor(convert(ARKODEMemPtr,arkode_mem),pointer(tolsfac))
end

function __ARKodeGetErrWeights(arkode_mem::ARKODEMemPtr,eweight::N_Vector)
    ccall((:ARKodeGetErrWeights,libsundials_arkode),Cint,(ARKODEMemPtr,N_Vector),arkode_mem,eweight)
end

function ARKodeGetErrWeights(arkode_mem,eweight)
    __eweight = convert(NVector,eweight)
    __ARKodeGetErrWeights(convert(ARKODEMemPtr,arkode_mem),convert(N_Vector,__eweight))
end

function __ARKodeGetEstLocalErrors(arkode_mem::ARKODEMemPtr,ele::N_Vector)
    ccall((:ARKodeGetEstLocalErrors,libsundials_arkode),Cint,(ARKODEMemPtr,N_Vector),arkode_mem,ele)
end

function ARKodeGetEstLocalErrors(arkode_mem,ele)
    __ele = convert(NVector,ele)
    __ARKodeGetEstLocalErrors(convert(ARKODEMemPtr,arkode_mem),convert(N_Vector,__ele))
end

function __ARKodeGetNumGEvals(arkode_mem::ARKODEMemPtr,ngevals::Ptr{Clong})
    ccall((:ARKodeGetNumGEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,ngevals)
end

function ARKodeGetNumGEvals(arkode_mem,ngevals)
    __ARKodeGetNumGEvals(convert(ARKODEMemPtr,arkode_mem),pointer(ngevals))
end

function __ARKodeGetRootInfo(arkode_mem::ARKODEMemPtr,rootsfound::Ptr{Cint})
    ccall((:ARKodeGetRootInfo,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Cint}),arkode_mem,rootsfound)
end

function ARKodeGetRootInfo(arkode_mem,rootsfound)
    __ARKodeGetRootInfo(convert(ARKODEMemPtr,arkode_mem),pointer(rootsfound))
end

function __ARKodeGetIntegratorStats(arkode_mem::ARKODEMemPtr,nsteps::Ptr{Clong},expsteps::Ptr{Clong},accsteps::Ptr{Clong},step_attempts::Ptr{Clong},nfe_evals::Ptr{Clong},nfi_evals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:ARKodeGetIntegratorStats,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
end

function ARKodeGetIntegratorStats(arkode_mem,nsteps,expsteps,accsteps,step_attempts,nfe_evals,nfi_evals,nlinsetups,netfails,hinused,hlast,hcur,tcur)
    __ARKodeGetIntegratorStats(convert(ARKODEMemPtr,arkode_mem),pointer(nsteps),pointer(expsteps),pointer(accsteps),pointer(step_attempts),pointer(nfe_evals),pointer(nfi_evals),pointer(nlinsetups),pointer(netfails),pointer(hinused),pointer(hlast),pointer(hcur),pointer(tcur))
end

function __ARKodeGetNumNonlinSolvIters(arkode_mem::ARKODEMemPtr,nniters::Ptr{Clong})
    ccall((:ARKodeGetNumNonlinSolvIters,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nniters)
end

function ARKodeGetNumNonlinSolvIters(arkode_mem,nniters)
    __ARKodeGetNumNonlinSolvIters(convert(ARKODEMemPtr,arkode_mem),pointer(nniters))
end

function __ARKodeGetNumNonlinSolvConvFails(arkode_mem::ARKODEMemPtr,nncfails::Ptr{Clong})
    ccall((:ARKodeGetNumNonlinSolvConvFails,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nncfails)
end

function ARKodeGetNumNonlinSolvConvFails(arkode_mem,nncfails)
    __ARKodeGetNumNonlinSolvConvFails(convert(ARKODEMemPtr,arkode_mem),pointer(nncfails))
end

function __ARKodeGetNonlinSolvStats(arkode_mem::ARKODEMemPtr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:ARKodeGetNonlinSolvStats,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong},Ptr{Clong}),arkode_mem,nniters,nncfails)
end

function ARKodeGetNonlinSolvStats(arkode_mem,nniters,nncfails)
    __ARKodeGetNonlinSolvStats(convert(ARKODEMemPtr,arkode_mem),pointer(nniters),pointer(nncfails))
end

function __ARKodeLoadButcherTable(imethod::Cint,s::Ptr{Cint},q::Ptr{Cint},p::Ptr{Cint},A::Ptr{realtype},b::Ptr{realtype},c::Ptr{realtype},b2::Ptr{realtype})
    ccall((:ARKodeLoadButcherTable,libsundials_arkode),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),imethod,s,q,p,A,b,c,b2)
end

function ARKodeLoadButcherTable(imethod,s,q,p,A,b,c,b2)
    __ARKodeLoadButcherTable(convert(Cint,imethod),pointer(s),pointer(q),pointer(p),pointer(A),pointer(b),pointer(c),pointer(b2))
end

function __ARKodeGetReturnFlagName(flag::Clong)
    ccall((:ARKodeGetReturnFlagName,libsundials_arkode),Ptr{UInt8},(Clong,),flag)
end

function ARKodeGetReturnFlagName(flag)
    __ARKodeGetReturnFlagName(convert(Clong,flag))
end

function __ARKodeWriteParameters(arkode_mem::ARKODEMemPtr,fp::Ptr{FILE})
    ccall((:ARKodeWriteParameters,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteParameters(arkode_mem,fp)
    __ARKodeWriteParameters(convert(ARKODEMemPtr,arkode_mem),fp)
end

function __ARKodeWriteButcher(arkode_mem::ARKODEMemPtr,fp::Ptr{FILE})
    ccall((:ARKodeWriteButcher,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{FILE}),arkode_mem,fp)
end

function ARKodeWriteButcher(arkode_mem,fp)
    __ARKodeWriteButcher(convert(ARKODEMemPtr,arkode_mem),fp)
end

function ARKodeFree(arkode_mem::Ref{ARKODEMemPtr})
    ccall((:ARKodeFree,libsundials_arkode),Void,(Ref{ARKODEMemPtr},),arkode_mem)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __ARKDlsSetDenseJacFn(arkode_mem::ARKODEMemPtr,jac::ARKDlsDenseJacFn)
    ccall((:ARKDlsSetDenseJacFn,libsundials_arkode),Cint,(ARKODEMemPtr,ARKDlsDenseJacFn),arkode_mem,jac)
end

function ARKDlsSetDenseJacFn(arkode_mem,jac)
    __ARKDlsSetDenseJacFn(convert(ARKODEMemPtr,arkode_mem),jac)
end

function __ARKDlsSetBandJacFn(arkode_mem::ARKODEMemPtr,jac::ARKDlsBandJacFn)
    ccall((:ARKDlsSetBandJacFn,libsundials_arkode),Cint,(ARKODEMemPtr,ARKDlsBandJacFn),arkode_mem,jac)
end

function ARKDlsSetBandJacFn(arkode_mem,jac)
    __ARKDlsSetBandJacFn(convert(ARKODEMemPtr,arkode_mem),jac)
end

function __ARKDlsSetDenseMassFn(arkode_mem::ARKODEMemPtr,mass::ARKDlsDenseMassFn)
    ccall((:ARKDlsSetDenseMassFn,libsundials_arkode),Cint,(ARKODEMemPtr,ARKDlsDenseMassFn),arkode_mem,mass)
end

function ARKDlsSetDenseMassFn(arkode_mem,mass)
    __ARKDlsSetDenseMassFn(convert(ARKODEMemPtr,arkode_mem),mass)
end

function __ARKDlsSetBandMassFn(arkode_mem::ARKODEMemPtr,mass::ARKDlsBandMassFn)
    ccall((:ARKDlsSetBandMassFn,libsundials_arkode),Cint,(ARKODEMemPtr,ARKDlsBandMassFn),arkode_mem,mass)
end

function ARKDlsSetBandMassFn(arkode_mem,mass)
    __ARKDlsSetBandMassFn(convert(ARKODEMemPtr,arkode_mem),mass)
end

function __ARKDlsGetWorkSpace(arkode_mem::ARKODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:ARKDlsGetWorkSpace,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKDlsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    __ARKDlsGetWorkSpace(convert(ARKODEMemPtr,arkode_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __ARKDlsGetMassWorkSpace(arkode_mem::ARKODEMemPtr,lenrwMLS::Ptr{Clong},leniwMLS::Ptr{Clong})
    ccall((:ARKDlsGetMassWorkSpace,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKDlsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    __ARKDlsGetMassWorkSpace(convert(ARKODEMemPtr,arkode_mem),pointer(lenrwMLS),pointer(leniwMLS))
end

function __ARKDlsGetNumJacEvals(arkode_mem::ARKODEMemPtr,njevals::Ptr{Clong})
    ccall((:ARKDlsGetNumJacEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,njevals)
end

function ARKDlsGetNumJacEvals(arkode_mem,njevals)
    __ARKDlsGetNumJacEvals(convert(ARKODEMemPtr,arkode_mem),pointer(njevals))
end

function __ARKDlsGetNumMassEvals(arkode_mem::ARKODEMemPtr,nmevals::Ptr{Clong})
    ccall((:ARKDlsGetNumMassEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nmevals)
end

function ARKDlsGetNumMassEvals(arkode_mem,nmevals)
    __ARKDlsGetNumMassEvals(convert(ARKODEMemPtr,arkode_mem),pointer(nmevals))
end

function __ARKDlsGetNumRhsEvals(arkode_mem::ARKODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:ARKDlsGetNumRhsEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKDlsGetNumRhsEvals(arkode_mem,nfevalsLS)
    __ARKDlsGetNumRhsEvals(convert(ARKODEMemPtr,arkode_mem),pointer(nfevalsLS))
end

function __ARKDlsGetLastFlag(arkode_mem::ARKODEMemPtr,flag::Ptr{Clong})
    ccall((:ARKDlsGetLastFlag,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetLastFlag(arkode_mem,flag)
    __ARKDlsGetLastFlag(convert(ARKODEMemPtr,arkode_mem),pointer(flag))
end

function __ARKDlsGetLastMassFlag(arkode_mem::ARKODEMemPtr,flag::Ptr{Clong})
    ccall((:ARKDlsGetLastMassFlag,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,flag)
end

function ARKDlsGetLastMassFlag(arkode_mem,flag)
    __ARKDlsGetLastMassFlag(convert(ARKODEMemPtr,arkode_mem),pointer(flag))
end

function __ARKDlsGetReturnFlagName(flag::Clong)
    ccall((:ARKDlsGetReturnFlagName,libsundials_arkode),Ptr{UInt8},(Clong,),flag)
end

function ARKDlsGetReturnFlagName(flag)
    __ARKDlsGetReturnFlagName(convert(Clong,flag))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __ARKSpilsSetPrecType(arkode_mem::ARKODEMemPtr,pretype::Cint)
    ccall((:ARKSpilsSetPrecType,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,pretype)
end

function ARKSpilsSetPrecType(arkode_mem,pretype)
    __ARKSpilsSetPrecType(convert(ARKODEMemPtr,arkode_mem),convert(Cint,pretype))
end

function __ARKSpilsSetMassPrecType(arkode_mem::ARKODEMemPtr,pretype::Cint)
    ccall((:ARKSpilsSetMassPrecType,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,pretype)
end

function ARKSpilsSetMassPrecType(arkode_mem,pretype)
    __ARKSpilsSetMassPrecType(convert(ARKODEMemPtr,arkode_mem),convert(Cint,pretype))
end

function __ARKSpilsSetGSType(arkode_mem::ARKODEMemPtr,gstype::Cint)
    ccall((:ARKSpilsSetGSType,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,gstype)
end

function ARKSpilsSetGSType(arkode_mem,gstype)
    __ARKSpilsSetGSType(convert(ARKODEMemPtr,arkode_mem),convert(Cint,gstype))
end

function __ARKSpilsSetMassGSType(arkode_mem::ARKODEMemPtr,gstype::Cint)
    ccall((:ARKSpilsSetMassGSType,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,gstype)
end

function ARKSpilsSetMassGSType(arkode_mem,gstype)
    __ARKSpilsSetMassGSType(convert(ARKODEMemPtr,arkode_mem),convert(Cint,gstype))
end

function __ARKSpilsSetMaxl(arkode_mem::ARKODEMemPtr,maxl::Cint)
    ccall((:ARKSpilsSetMaxl,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,maxl)
end

function ARKSpilsSetMaxl(arkode_mem,maxl)
    __ARKSpilsSetMaxl(convert(ARKODEMemPtr,arkode_mem),convert(Cint,maxl))
end

function __ARKSpilsSetMassMaxl(arkode_mem::ARKODEMemPtr,maxl::Cint)
    ccall((:ARKSpilsSetMassMaxl,libsundials_arkode),Cint,(ARKODEMemPtr,Cint),arkode_mem,maxl)
end

function ARKSpilsSetMassMaxl(arkode_mem,maxl)
    __ARKSpilsSetMassMaxl(convert(ARKODEMemPtr,arkode_mem),convert(Cint,maxl))
end

function __ARKSpilsSetEpsLin(arkode_mem::ARKODEMemPtr,eplifac::realtype)
    ccall((:ARKSpilsSetEpsLin,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,eplifac)
end

function ARKSpilsSetEpsLin(arkode_mem,eplifac)
    __ARKSpilsSetEpsLin(convert(ARKODEMemPtr,arkode_mem),eplifac)
end

function __ARKSpilsSetMassEpsLin(arkode_mem::ARKODEMemPtr,eplifac::realtype)
    ccall((:ARKSpilsSetMassEpsLin,libsundials_arkode),Cint,(ARKODEMemPtr,realtype),arkode_mem,eplifac)
end

function ARKSpilsSetMassEpsLin(arkode_mem,eplifac)
    __ARKSpilsSetMassEpsLin(convert(ARKODEMemPtr,arkode_mem),eplifac)
end

function __ARKSpilsSetPreconditioner(arkode_mem::ARKODEMemPtr,pset::ARKSpilsPrecSetupFn,psolve::ARKSpilsPrecSolveFn)
    ccall((:ARKSpilsSetPreconditioner,libsundials_arkode),Cint,(ARKODEMemPtr,ARKSpilsPrecSetupFn,ARKSpilsPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetPreconditioner(arkode_mem,pset,psolve)
    __ARKSpilsSetPreconditioner(convert(ARKODEMemPtr,arkode_mem),pset,psolve)
end

function __ARKSpilsSetMassPreconditioner(arkode_mem::ARKODEMemPtr,pset::ARKSpilsMassPrecSetupFn,psolve::ARKSpilsMassPrecSolveFn)
    ccall((:ARKSpilsSetMassPreconditioner,libsundials_arkode),Cint,(ARKODEMemPtr,ARKSpilsMassPrecSetupFn,ARKSpilsMassPrecSolveFn),arkode_mem,pset,psolve)
end

function ARKSpilsSetMassPreconditioner(arkode_mem,pset,psolve)
    __ARKSpilsSetMassPreconditioner(convert(ARKODEMemPtr,arkode_mem),pset,psolve)
end

function __ARKSpilsSetJacTimesVecFn(arkode_mem::ARKODEMemPtr,jtv::ARKSpilsJacTimesVecFn)
    ccall((:ARKSpilsSetJacTimesVecFn,libsundials_arkode),Cint,(ARKODEMemPtr,ARKSpilsJacTimesVecFn),arkode_mem,jtv)
end

function ARKSpilsSetJacTimesVecFn(arkode_mem,jtv)
    __ARKSpilsSetJacTimesVecFn(convert(ARKODEMemPtr,arkode_mem),jtv)
end

function __ARKSpilsSetMassTimesVecFn(arkode_mem::ARKODEMemPtr,mtv::ARKSpilsMassTimesVecFn,mtimes_data::Ptr{Void})
    ccall((:ARKSpilsSetMassTimesVecFn,libsundials_arkode),Cint,(ARKODEMemPtr,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,mtv,mtimes_data)
end

function ARKSpilsSetMassTimesVecFn(arkode_mem,mtv,mtimes_data)
    __ARKSpilsSetMassTimesVecFn(convert(ARKODEMemPtr,arkode_mem),mtv,pointer(mtimes_data))
end

function __ARKSpilsGetWorkSpace(arkode_mem::ARKODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:ARKSpilsGetWorkSpace,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKSpilsGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    __ARKSpilsGetWorkSpace(convert(ARKODEMemPtr,arkode_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __ARKSpilsGetMassWorkSpace(arkode_mem::ARKODEMemPtr,lenrwMLS::Ptr{Clong},leniwMLS::Ptr{Clong})
    ccall((:ARKSpilsGetMassWorkSpace,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwMLS,leniwMLS)
end

function ARKSpilsGetMassWorkSpace(arkode_mem,lenrwMLS,leniwMLS)
    __ARKSpilsGetMassWorkSpace(convert(ARKODEMemPtr,arkode_mem),pointer(lenrwMLS),pointer(leniwMLS))
end

function __ARKSpilsGetNumPrecEvals(arkode_mem::ARKODEMemPtr,npevals::Ptr{Clong})
    ccall((:ARKSpilsGetNumPrecEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,npevals)
end

function ARKSpilsGetNumPrecEvals(arkode_mem,npevals)
    __ARKSpilsGetNumPrecEvals(convert(ARKODEMemPtr,arkode_mem),pointer(npevals))
end

function __ARKSpilsGetNumMassPrecEvals(arkode_mem::ARKODEMemPtr,nmpevals::Ptr{Clong})
    ccall((:ARKSpilsGetNumMassPrecEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nmpevals)
end

function ARKSpilsGetNumMassPrecEvals(arkode_mem,nmpevals)
    __ARKSpilsGetNumMassPrecEvals(convert(ARKODEMemPtr,arkode_mem),pointer(nmpevals))
end

function __ARKSpilsGetNumPrecSolves(arkode_mem::ARKODEMemPtr,npsolves::Ptr{Clong})
    ccall((:ARKSpilsGetNumPrecSolves,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,npsolves)
end

function ARKSpilsGetNumPrecSolves(arkode_mem,npsolves)
    __ARKSpilsGetNumPrecSolves(convert(ARKODEMemPtr,arkode_mem),pointer(npsolves))
end

function __ARKSpilsGetNumMassPrecSolves(arkode_mem::ARKODEMemPtr,nmpsolves::Ptr{Clong})
    ccall((:ARKSpilsGetNumMassPrecSolves,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nmpsolves)
end

function ARKSpilsGetNumMassPrecSolves(arkode_mem,nmpsolves)
    __ARKSpilsGetNumMassPrecSolves(convert(ARKODEMemPtr,arkode_mem),pointer(nmpsolves))
end

function __ARKSpilsGetNumLinIters(arkode_mem::ARKODEMemPtr,nliters::Ptr{Clong})
    ccall((:ARKSpilsGetNumLinIters,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nliters)
end

function ARKSpilsGetNumLinIters(arkode_mem,nliters)
    __ARKSpilsGetNumLinIters(convert(ARKODEMemPtr,arkode_mem),pointer(nliters))
end

function __ARKSpilsGetNumMassIters(arkode_mem::ARKODEMemPtr,nmiters::Ptr{Clong})
    ccall((:ARKSpilsGetNumMassIters,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nmiters)
end

function ARKSpilsGetNumMassIters(arkode_mem,nmiters)
    __ARKSpilsGetNumMassIters(convert(ARKODEMemPtr,arkode_mem),pointer(nmiters))
end

function __ARKSpilsGetNumConvFails(arkode_mem::ARKODEMemPtr,nlcfails::Ptr{Clong})
    ccall((:ARKSpilsGetNumConvFails,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nlcfails)
end

function ARKSpilsGetNumConvFails(arkode_mem,nlcfails)
    __ARKSpilsGetNumConvFails(convert(ARKODEMemPtr,arkode_mem),pointer(nlcfails))
end

function __ARKSpilsGetNumMassConvFails(arkode_mem::ARKODEMemPtr,nmcfails::Ptr{Clong})
    ccall((:ARKSpilsGetNumMassConvFails,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nmcfails)
end

function ARKSpilsGetNumMassConvFails(arkode_mem,nmcfails)
    __ARKSpilsGetNumMassConvFails(convert(ARKODEMemPtr,arkode_mem),pointer(nmcfails))
end

function __ARKSpilsGetNumJtimesEvals(arkode_mem::ARKODEMemPtr,njvevals::Ptr{Clong})
    ccall((:ARKSpilsGetNumJtimesEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,njvevals)
end

function ARKSpilsGetNumJtimesEvals(arkode_mem,njvevals)
    __ARKSpilsGetNumJtimesEvals(convert(ARKODEMemPtr,arkode_mem),pointer(njvevals))
end

function __ARKSpilsGetNumMtimesEvals(arkode_mem::ARKODEMemPtr,nmvevals::Ptr{Clong})
    ccall((:ARKSpilsGetNumMtimesEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nmvevals)
end

function ARKSpilsGetNumMtimesEvals(arkode_mem,nmvevals)
    __ARKSpilsGetNumMtimesEvals(convert(ARKODEMemPtr,arkode_mem),pointer(nmvevals))
end

function __ARKSpilsGetNumRhsEvals(arkode_mem::ARKODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:ARKSpilsGetNumRhsEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nfevalsLS)
end

function ARKSpilsGetNumRhsEvals(arkode_mem,nfevalsLS)
    __ARKSpilsGetNumRhsEvals(convert(ARKODEMemPtr,arkode_mem),pointer(nfevalsLS))
end

function __ARKSpilsGetLastFlag(arkode_mem::ARKODEMemPtr,flag::Ptr{Clong})
    ccall((:ARKSpilsGetLastFlag,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastFlag(arkode_mem,flag)
    __ARKSpilsGetLastFlag(convert(ARKODEMemPtr,arkode_mem),pointer(flag))
end

function __ARKSpilsGetLastMassFlag(arkode_mem::ARKODEMemPtr,flag::Ptr{Clong})
    ccall((:ARKSpilsGetLastMassFlag,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,flag)
end

function ARKSpilsGetLastMassFlag(arkode_mem,flag)
    __ARKSpilsGetLastMassFlag(convert(ARKODEMemPtr,arkode_mem),pointer(flag))
end

function __ARKSpilsGetReturnFlagName(flag::Clong)
    ccall((:ARKSpilsGetReturnFlagName,libsundials_arkode),Ptr{UInt8},(Clong,),flag)
end

function ARKSpilsGetReturnFlagName(flag)
    __ARKSpilsGetReturnFlagName(convert(Clong,flag))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __ARKBand(arkode_mem::ARKODEMemPtr,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:ARKBand,libsundials_arkode),Cint,(ARKODEMemPtr,Clong,Clong,Clong),arkode_mem,N,mupper,mlower)
end

function ARKBand(arkode_mem,N,mupper,mlower)
    __ARKBand(convert(ARKODEMemPtr,arkode_mem),convert(Clong,N),convert(Clong,mupper),convert(Clong,mlower))
end

function __ARKMassBand(arkode_mem::ARKODEMemPtr,N::Clong,mupper::Clong,mlower::Clong,bmass::ARKDlsBandMassFn)
    ccall((:ARKMassBand,libsundials_arkode),Cint,(ARKODEMemPtr,Clong,Clong,Clong,ARKDlsBandMassFn),arkode_mem,N,mupper,mlower,bmass)
end

function ARKMassBand(arkode_mem,N,mupper,mlower,bmass)
    __ARKMassBand(convert(ARKODEMemPtr,arkode_mem),convert(Clong,N),convert(Clong,mupper),convert(Clong,mlower),bmass)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __ARKBandPrecInit(arkode_mem::ARKODEMemPtr,N::Clong,mu::Clong,ml::Clong)
    ccall((:ARKBandPrecInit,libsundials_arkode),Cint,(ARKODEMemPtr,Clong,Clong,Clong),arkode_mem,N,mu,ml)
end

function ARKBandPrecInit(arkode_mem,N,mu,ml)
    __ARKBandPrecInit(convert(ARKODEMemPtr,arkode_mem),convert(Clong,N),convert(Clong,mu),convert(Clong,ml))
end

function __ARKBandPrecGetWorkSpace(arkode_mem::ARKODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:ARKBandPrecGetWorkSpace,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKBandPrecGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    __ARKBandPrecGetWorkSpace(convert(ARKODEMemPtr,arkode_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __ARKBandPrecGetNumRhsEvals(arkode_mem::ARKODEMemPtr,nfevalsBP::Ptr{Clong})
    ccall((:ARKBandPrecGetNumRhsEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nfevalsBP)
end

function ARKBandPrecGetNumRhsEvals(arkode_mem,nfevalsBP)
    __ARKBandPrecGetNumRhsEvals(convert(ARKODEMemPtr,arkode_mem),pointer(nfevalsBP))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __ARKBBDPrecInit(arkode_mem::ARKODEMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::ARKLocalFn,cfn::ARKCommFn)
    ccall((:ARKBBDPrecInit,libsundials_arkode),Cint,(ARKODEMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,ARKLocalFn,ARKCommFn),arkode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function ARKBBDPrecInit(arkode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
    __ARKBBDPrecInit(convert(ARKODEMemPtr,arkode_mem),convert(Clong,Nlocal),convert(Clong,mudq),convert(Clong,mldq),convert(Clong,mukeep),convert(Clong,mlkeep),dqrely,gloc,cfn)
end

function __ARKBBDPrecReInit(arkode_mem::ARKODEMemPtr,mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:ARKBBDPrecReInit,libsundials_arkode),Cint,(ARKODEMemPtr,Clong,Clong,realtype),arkode_mem,mudq,mldq,dqrely)
end

function ARKBBDPrecReInit(arkode_mem,mudq,mldq,dqrely)
    __ARKBBDPrecReInit(convert(ARKODEMemPtr,arkode_mem),convert(Clong,mudq),convert(Clong,mldq),dqrely)
end

function __ARKBBDPrecGetWorkSpace(arkode_mem::ARKODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:ARKBBDPrecGetWorkSpace,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong},Ptr{Clong}),arkode_mem,lenrwLS,leniwLS)
end

function ARKBBDPrecGetWorkSpace(arkode_mem,lenrwLS,leniwLS)
    __ARKBBDPrecGetWorkSpace(convert(ARKODEMemPtr,arkode_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __ARKBBDPrecGetNumGfnEvals(arkode_mem::ARKODEMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:ARKBBDPrecGetNumGfnEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,ngevalsBBDP)
end

function ARKBBDPrecGetNumGfnEvals(arkode_mem,ngevalsBBDP)
    __ARKBBDPrecGetNumGfnEvals(convert(ARKODEMemPtr,arkode_mem),pointer(ngevalsBBDP))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __ARKDense(arkode_mem::ARKODEMemPtr,N::Clong)
    ccall((:ARKDense,libsundials_arkode),Cint,(ARKODEMemPtr,Clong),arkode_mem,N)
end

function ARKDense(arkode_mem,N)
    __ARKDense(convert(ARKODEMemPtr,arkode_mem),convert(Clong,N))
end

function __ARKMassDense(arkode_mem::ARKODEMemPtr,N::Clong,dmass::ARKDlsDenseMassFn)
    ccall((:ARKMassDense,libsundials_arkode),Cint,(ARKODEMemPtr,Clong,ARKDlsDenseMassFn),arkode_mem,N,dmass)
end

function ARKMassDense(arkode_mem,N,dmass)
    __ARKMassDense(convert(ARKODEMemPtr,arkode_mem),convert(Clong,N),dmass)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode_pcg.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __ARKPcg(arkode_mem::ARKODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:ARKPcg,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKPcg(arkode_mem,pretype,maxl)
    __ARKPcg(convert(ARKODEMemPtr,arkode_mem),convert(Cint,pretype),convert(Cint,maxl))
end

function __ARKMassPcg(arkode_mem::ARKODEMemPtr,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data::Ptr{Void})
    ccall((:ARKMassPcg,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end

function ARKMassPcg(arkode_mem,pretype,maxl,mtimes,mtimes_data)
    __ARKMassPcg(convert(ARKODEMemPtr,arkode_mem),convert(Cint,pretype),convert(Cint,maxl),mtimes,pointer(mtimes_data))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode_sparse.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __ARKSlsSetSparseJacFn(arkode_mem::ARKODEMemPtr,jac::ARKSlsSparseJacFn)
    ccall((:ARKSlsSetSparseJacFn,libsundials_arkode),Cint,(ARKODEMemPtr,ARKSlsSparseJacFn),arkode_mem,jac)
end

function ARKSlsSetSparseJacFn(arkode_mem,jac)
    __ARKSlsSetSparseJacFn(convert(ARKODEMemPtr,arkode_mem),jac)
end

function __ARKSlsSetSparseMassFn(arkode_mem::ARKODEMemPtr,mass::ARKSlsSparseMassFn)
    ccall((:ARKSlsSetSparseMassFn,libsundials_arkode),Cint,(ARKODEMemPtr,ARKSlsSparseMassFn),arkode_mem,mass)
end

function ARKSlsSetSparseMassFn(arkode_mem,mass)
    __ARKSlsSetSparseMassFn(convert(ARKODEMemPtr,arkode_mem),mass)
end

function __ARKSlsGetNumJacEvals(arkode_mem::ARKODEMemPtr,njevals::Ptr{Clong})
    ccall((:ARKSlsGetNumJacEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,njevals)
end

function ARKSlsGetNumJacEvals(arkode_mem,njevals)
    __ARKSlsGetNumJacEvals(convert(ARKODEMemPtr,arkode_mem),pointer(njevals))
end

function __ARKSlsGetNumMassEvals(arkode_mem::ARKODEMemPtr,nmevals::Ptr{Clong})
    ccall((:ARKSlsGetNumMassEvals,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,nmevals)
end

function ARKSlsGetNumMassEvals(arkode_mem,nmevals)
    __ARKSlsGetNumMassEvals(convert(ARKODEMemPtr,arkode_mem),pointer(nmevals))
end

function __ARKSlsGetLastFlag(arkode_mem::ARKODEMemPtr,flag::Ptr{Clong})
    ccall((:ARKSlsGetLastFlag,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,flag)
end

function ARKSlsGetLastFlag(arkode_mem,flag)
    __ARKSlsGetLastFlag(convert(ARKODEMemPtr,arkode_mem),pointer(flag))
end

function __ARKSlsGetLastMassFlag(arkode_mem::ARKODEMemPtr,flag::Ptr{Clong})
    ccall((:ARKSlsGetLastMassFlag,libsundials_arkode),Cint,(ARKODEMemPtr,Ptr{Clong}),arkode_mem,flag)
end

function ARKSlsGetLastMassFlag(arkode_mem,flag)
    __ARKSlsGetLastMassFlag(convert(ARKODEMemPtr,arkode_mem),pointer(flag))
end

function __ARKSlsGetReturnFlagName(flag::Clong)
    ccall((:ARKSlsGetReturnFlagName,libsundials_arkode),Ptr{UInt8},(Clong,),flag)
end

function ARKSlsGetReturnFlagName(flag)
    __ARKSlsGetReturnFlagName(convert(Clong,flag))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __ARKSpbcg(arkode_mem::ARKODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:ARKSpbcg,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKSpbcg(arkode_mem,pretype,maxl)
    __ARKSpbcg(convert(ARKODEMemPtr,arkode_mem),convert(Cint,pretype),convert(Cint,maxl))
end

function __ARKMassSpbcg(arkode_mem::ARKODEMemPtr,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data::Ptr{Void})
    ccall((:ARKMassSpbcg,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end

function ARKMassSpbcg(arkode_mem,pretype,maxl,mtimes,mtimes_data)
    __ARKMassSpbcg(convert(ARKODEMemPtr,arkode_mem),convert(Cint,pretype),convert(Cint,maxl),mtimes,pointer(mtimes_data))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode_spfgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __ARKSpfgmr(arkode_mem::ARKODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:ARKSpfgmr,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKSpfgmr(arkode_mem,pretype,maxl)
    __ARKSpfgmr(convert(ARKODEMemPtr,arkode_mem),convert(Cint,pretype),convert(Cint,maxl))
end

function __ARKMassSpfgmr(arkode_mem::ARKODEMemPtr,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data::Ptr{Void})
    ccall((:ARKMassSpfgmr,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end

function ARKMassSpfgmr(arkode_mem,pretype,maxl,mtimes,mtimes_data)
    __ARKMassSpfgmr(convert(ARKODEMemPtr,arkode_mem),convert(Cint,pretype),convert(Cint,maxl),mtimes,pointer(mtimes_data))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __ARKSpgmr(arkode_mem::ARKODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:ARKSpgmr,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKSpgmr(arkode_mem,pretype,maxl)
    __ARKSpgmr(convert(ARKODEMemPtr,arkode_mem),convert(Cint,pretype),convert(Cint,maxl))
end

function __ARKMassSpgmr(arkode_mem::ARKODEMemPtr,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data::Ptr{Void})
    ccall((:ARKMassSpgmr,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end

function ARKMassSpgmr(arkode_mem,pretype,maxl,mtimes,mtimes_data)
    __ARKMassSpgmr(convert(ARKODEMemPtr,arkode_mem),convert(Cint,pretype),convert(Cint,maxl),mtimes,pointer(mtimes_data))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/arkode/arkode_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __ARKSptfqmr(arkode_mem::ARKODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:ARKSptfqmr,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint),arkode_mem,pretype,maxl)
end

function ARKSptfqmr(arkode_mem,pretype,maxl)
    __ARKSptfqmr(convert(ARKODEMemPtr,arkode_mem),convert(Cint,pretype),convert(Cint,maxl))
end

function __ARKMassSptfqmr(arkode_mem::ARKODEMemPtr,pretype::Cint,maxl::Cint,mtimes::ARKSpilsMassTimesVecFn,mtimes_data::Ptr{Void})
    ccall((:ARKMassSptfqmr,libsundials_arkode),Cint,(ARKODEMemPtr,Cint,Cint,ARKSpilsMassTimesVecFn,Ptr{Void}),arkode_mem,pretype,maxl,mtimes,mtimes_data)
end

function ARKMassSptfqmr(arkode_mem,pretype,maxl,mtimes,mtimes_data)
    __ARKMassSptfqmr(convert(ARKODEMemPtr,arkode_mem),convert(Cint,pretype),convert(Cint,maxl),mtimes,pointer(mtimes_data))
end
