
recurs_sym_type(ex::Any) = 
  (ex==Union{} || typeof(ex)==Symbol || length(ex.args)==1) ? eval(ex) : Expr(ex.head, ex.args[1], recurs_sym_type(ex.args[2]))
macro c(ret_type, func, arg_types, lib)
  local _arg_types = Expr(:tuple, [recurs_sym_type(a) for a in arg_types.args]...)
  local _ret_type = recurs_sym_type(ret_type)
  local _args_in = Any[ symbol(string('a',x)) for x in 1:length(_arg_types.args) ]
  local _lib = eval(lib)
  quote
    $(esc(func))($(_args_in...)) = ccall( ($(string(func)), $(Expr(:quote, _lib)) ), $_ret_type, $_arg_types, $(_args_in...) )
  end
end

macro ctypedef(fake_t,real_t)
  real_t = recurs_sym_type(real_t)
  quote
    typealias $fake_t $real_t
  end
end

# header: /usr/local/include/ida/ida_band.h
@ctypedef IDADlsDenseJacFn Ptr{:Void}
@ctypedef IDADlsBandJacFn Ptr{:Void}
@c Int32 IDADlsSetDenseJacFn (Ptr{:Void},:IDADlsDenseJacFn) shlib
@c Int32 IDADlsSetBandJacFn (Ptr{:Void},:IDADlsBandJacFn) shlib
@c Int32 IDADlsGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDADlsGetNumJacEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDADlsGetNumResEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDADlsGetLastFlag (Ptr{:Void},Ptr{:Clong}) shlib
@c Ptr{:UInt8} IDADlsGetReturnFlagName (:Clong,) shlib
@c Int32 IDABand (Ptr{:Void},:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/ida/ida_bbdpre.h
@ctypedef IDABBDLocalFn Ptr{:Void}
@ctypedef IDABBDCommFn Ptr{:Void}
@c Int32 IDABBDPrecInit (Ptr{:Void},:Clong,:Clong,:Clong,:Clong,:Clong,:realtype,:IDABBDLocalFn,:IDABBDCommFn) shlib
@c Int32 IDABBDPrecReInit (Ptr{:Void},:Clong,:Clong,:realtype) shlib
@c Int32 IDABBDPrecGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDABBDPrecGetNumGfnEvals (Ptr{:Void},Ptr{:Clong}) shlib

# header: /usr/local/include/ida/ida_dense.h
@c Int32 IDADense (Ptr{:Void},:Clong) shlib

# header: /usr/local/include/ida/ida_direct.h

# header: /usr/local/include/ida/ida.h
@ctypedef IDAResFn Ptr{:Void}
@ctypedef IDARootFn Ptr{:Void}
@ctypedef IDAEwtFn Ptr{:Void}
@ctypedef IDAErrHandlerFn Ptr{:Void}
@c Ptr{:Void} IDACreate () shlib
@c Int32 IDASetErrHandlerFn (Ptr{:Void},:IDAErrHandlerFn,Ptr{:Void}) shlib
@c Int32 IDASetErrFile (Ptr{:Void},Ptr{:FILE}) shlib
@c Int32 IDASetUserData (Ptr{:Void},Ptr{:Void}) shlib
@c Int32 IDASetMaxOrd (Ptr{:Void},:Int32) shlib
@c Int32 IDASetMaxNumSteps (Ptr{:Void},:Clong) shlib
@c Int32 IDASetInitStep (Ptr{:Void},:realtype) shlib
@c Int32 IDASetMaxStep (Ptr{:Void},:realtype) shlib
@c Int32 IDASetStopTime (Ptr{:Void},:realtype) shlib
@c Int32 IDASetNonlinConvCoef (Ptr{:Void},:realtype) shlib
@c Int32 IDASetMaxErrTestFails (Ptr{:Void},:Int32) shlib
@c Int32 IDASetMaxNonlinIters (Ptr{:Void},:Int32) shlib
@c Int32 IDASetMaxConvFails (Ptr{:Void},:Int32) shlib
@c Int32 IDASetSuppressAlg (Ptr{:Void},:Int32) shlib
@c Int32 IDASetId (Ptr{:Void},:N_Vector) shlib
@c Int32 IDASetConstraints (Ptr{:Void},:N_Vector) shlib
@c Int32 IDASetRootDirection (Ptr{:Void},Ptr{:Int32}) shlib
@c Int32 IDASetNoInactiveRootWarn (Ptr{:Void},) shlib
@c Int32 IDAInit (Ptr{:Void},:IDAResFn,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDAReInit (Ptr{:Void},:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDASStolerances (Ptr{:Void},:realtype,:realtype) shlib
@c Int32 IDASVtolerances (Ptr{:Void},:realtype,:N_Vector) shlib
@c Int32 IDAWFtolerances (Ptr{:Void},:IDAEwtFn) shlib
@c Int32 IDASetNonlinConvCoefIC (Ptr{:Void},:realtype) shlib
@c Int32 IDASetMaxNumStepsIC (Ptr{:Void},:Int32) shlib
@c Int32 IDASetMaxNumJacsIC (Ptr{:Void},:Int32) shlib
@c Int32 IDASetMaxNumItersIC (Ptr{:Void},:Int32) shlib
@c Int32 IDASetLineSearchOffIC (Ptr{:Void},:Int32) shlib
@c Int32 IDASetStepToleranceIC (Ptr{:Void},:realtype) shlib
@c Int32 IDARootInit (Ptr{:Void},:Int32,:IDARootFn) shlib
@c Int32 IDACalcIC (Ptr{:Void},:Int32,:realtype) shlib
@c Int32 IDASolve (Ptr{:Void},:realtype,Ptr{:realtype},:N_Vector,:N_Vector,:Int32) shlib
@c Int32 IDAGetDky (Ptr{:Void},:realtype,:Int32,:N_Vector) shlib
@c Int32 IDAGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDAGetNumSteps (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetNumResEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetNumLinSolvSetups (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetNumErrTestFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetNumBacktrackOps (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetConsistentIC (Ptr{:Void},:N_Vector,:N_Vector) shlib
@c Int32 IDAGetLastOrder (Ptr{:Void},Ptr{:Int32}) shlib
@c Int32 IDAGetCurrentOrder (Ptr{:Void},Ptr{:Int32}) shlib
@c Int32 IDAGetActualInitStep (Ptr{:Void},Ptr{:realtype}) shlib
@c Int32 IDAGetLastStep (Ptr{:Void},Ptr{:realtype}) shlib
@c Int32 IDAGetCurrentStep (Ptr{:Void},Ptr{:realtype}) shlib
@c Int32 IDAGetCurrentTime (Ptr{:Void},Ptr{:realtype}) shlib
@c Int32 IDAGetTolScaleFactor (Ptr{:Void},Ptr{:realtype}) shlib
@c Int32 IDAGetErrWeights (Ptr{:Void},:N_Vector) shlib
@c Int32 IDAGetEstLocalErrors (Ptr{:Void},:N_Vector) shlib
@c Int32 IDAGetNumGEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetRootInfo (Ptr{:Void},Ptr{:Int32}) shlib
@c Int32 IDAGetIntegratorStats (Ptr{:Void},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong},Ptr{:Int32},Ptr{:Int32},Ptr{:realtype},Ptr{:realtype},Ptr{:realtype},Ptr{:realtype}) shlib
@c Int32 IDAGetNumNonlinSolvIters (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetNumNonlinSolvConvFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetNonlinSolvStats (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Ptr{:UInt8} IDAGetReturnFlagName (:Clong,) shlib
@c Union{} IDAFree (Ptr{Ptr{:Void}},) shlib

# header: /usr/local/include/ida/ida_impl.h
@ctypedef IDAMem Ptr{:Void}
@c Int32 IDAEwtSet (:N_Vector,:N_Vector,Ptr{:Void}) shlib
@c Union{} IDAProcessError (:IDAMem,:Int32,Ptr{:UInt8},Ptr{:UInt8},Ptr{:UInt8}) shlib
@c Union{} IDAErrHandler (:Int32,Ptr{:UInt8},Ptr{:UInt8},Ptr{:UInt8},Ptr{:Void}) shlib

# header: /usr/local/include/ida/ida_spbcgs.h
@ctypedef IDASpilsPrecSetupFn Ptr{:Void}
@ctypedef IDASpilsPrecSolveFn Ptr{:Void}
@ctypedef IDASpilsJacTimesVecFn Ptr{:Void}
@c Int32 IDASpilsSetPreconditioner (Ptr{:Void},:IDASpilsPrecSetupFn,:IDASpilsPrecSolveFn) shlib
@c Int32 IDASpilsSetJacTimesVecFn (Ptr{:Void},:IDASpilsJacTimesVecFn) shlib
@c Int32 IDASpilsSetGSType (Ptr{:Void},:Int32) shlib
@c Int32 IDASpilsSetMaxRestarts (Ptr{:Void},:Int32) shlib
@c Int32 IDASpilsSetMaxl (Ptr{:Void},:Int32) shlib
@c Int32 IDASpilsSetEpsLin (Ptr{:Void},:realtype) shlib
@c Int32 IDASpilsSetIncrementFactor (Ptr{:Void},:realtype) shlib
@c Int32 IDASpilsGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDASpilsGetNumPrecEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDASpilsGetNumPrecSolves (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDASpilsGetNumLinIters (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDASpilsGetNumConvFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDASpilsGetNumJtimesEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDASpilsGetNumResEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDASpilsGetLastFlag (Ptr{:Void},Ptr{:Clong}) shlib
@c Ptr{:UInt8} IDASpilsGetReturnFlagName (:Clong,) shlib
@c Int32 IDASpbcg (Ptr{:Void},:Int32) shlib

# header: /usr/local/include/ida/ida_spgmr.h
@c Int32 IDASpgmr (Ptr{:Void},:Int32) shlib

# header: /usr/local/include/ida/ida_spils.h

# header: /usr/local/include/ida/ida_sptfqmr.h
@c Int32 IDASptfqmr (Ptr{:Void},:Int32) shlib

