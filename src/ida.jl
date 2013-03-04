
recurs_sym_type(ex::Any) = 
  (ex==None || typeof(ex)==Symbol || length(ex.args)==1) ? eval(ex) : Expr(ex.head, ex.args[1], recurs_sym_type(ex.args[2]))
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
@c Int32 IDADlsSetDenseJacFn (Ptr{:None},:IDADlsDenseJacFn) shlib
@c Int32 IDADlsSetBandJacFn (Ptr{:None},:IDADlsBandJacFn) shlib
@c Int32 IDADlsGetWorkSpace (Ptr{:None},Ptr{:Int64},Ptr{:Int64}) shlib
@c Int32 IDADlsGetNumJacEvals (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDADlsGetNumResEvals (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDADlsGetLastFlag (Ptr{:None},Ptr{:Int64}) shlib
@c Ptr{:Uint8} IDADlsGetReturnFlagName (:Int64,) shlib
@c Int32 IDABand (Ptr{:None},:Int64,:Int64,:Int64) shlib

# header: /usr/local/include/ida/ida_bbdpre.h
@ctypedef IDABBDLocalFn Ptr{:Void}
@ctypedef IDABBDCommFn Ptr{:Void}
@c Int32 IDABBDPrecInit (Ptr{:None},:Int64,:Int64,:Int64,:Int64,:Int64,:realtype,:IDABBDLocalFn,:IDABBDCommFn) shlib
@c Int32 IDABBDPrecReInit (Ptr{:None},:Int64,:Int64,:realtype) shlib
@c Int32 IDABBDPrecGetWorkSpace (Ptr{:None},Ptr{:Int64},Ptr{:Int64}) shlib
@c Int32 IDABBDPrecGetNumGfnEvals (Ptr{:None},Ptr{:Int64}) shlib

# header: /usr/local/include/ida/ida_dense.h
@c Int32 IDADense (Ptr{:None},:Int64) shlib

# header: /usr/local/include/ida/ida_direct.h

# header: /usr/local/include/ida/ida.h
@ctypedef IDAResFn Ptr{:Void}
@ctypedef IDARootFn Ptr{:Void}
@ctypedef IDAEwtFn Ptr{:Void}
@ctypedef IDAErrHandlerFn Ptr{:Void}
@c Ptr{:None} IDACreate () shlib
@c Int32 IDASetErrHandlerFn (Ptr{:None},:IDAErrHandlerFn,Ptr{:None}) shlib
@c Int32 IDASetErrFile (Ptr{:None},Ptr{:FILE}) shlib
@c Int32 IDASetUserData (Ptr{:None},Ptr{:None}) shlib
@c Int32 IDASetMaxOrd (Ptr{:None},:Int32) shlib
@c Int32 IDASetMaxNumSteps (Ptr{:None},:Int64) shlib
@c Int32 IDASetInitStep (Ptr{:None},:realtype) shlib
@c Int32 IDASetMaxStep (Ptr{:None},:realtype) shlib
@c Int32 IDASetStopTime (Ptr{:None},:realtype) shlib
@c Int32 IDASetNonlinConvCoef (Ptr{:None},:realtype) shlib
@c Int32 IDASetMaxErrTestFails (Ptr{:None},:Int32) shlib
@c Int32 IDASetMaxNonlinIters (Ptr{:None},:Int32) shlib
@c Int32 IDASetMaxConvFails (Ptr{:None},:Int32) shlib
@c Int32 IDASetSuppressAlg (Ptr{:None},:Int32) shlib
@c Int32 IDASetId (Ptr{:None},:N_Vector) shlib
@c Int32 IDASetConstraints (Ptr{:None},:N_Vector) shlib
@c Int32 IDASetRootDirection (Ptr{:None},Ptr{:Int32}) shlib
@c Int32 IDASetNoInactiveRootWarn (Ptr{:None},) shlib
@c Int32 IDAInit (Ptr{:None},:IDAResFn,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDAReInit (Ptr{:None},:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDASStolerances (Ptr{:None},:realtype,:realtype) shlib
@c Int32 IDASVtolerances (Ptr{:None},:realtype,:N_Vector) shlib
@c Int32 IDAWFtolerances (Ptr{:None},:IDAEwtFn) shlib
@c Int32 IDASetNonlinConvCoefIC (Ptr{:None},:realtype) shlib
@c Int32 IDASetMaxNumStepsIC (Ptr{:None},:Int32) shlib
@c Int32 IDASetMaxNumJacsIC (Ptr{:None},:Int32) shlib
@c Int32 IDASetMaxNumItersIC (Ptr{:None},:Int32) shlib
@c Int32 IDASetLineSearchOffIC (Ptr{:None},:Int32) shlib
@c Int32 IDASetStepToleranceIC (Ptr{:None},:realtype) shlib
@c Int32 IDARootInit (Ptr{:None},:Int32,:IDARootFn) shlib
@c Int32 IDACalcIC (Ptr{:None},:Int32,:realtype) shlib
@c Int32 IDASolve (Ptr{:None},:realtype,Ptr{:realtype},:N_Vector,:N_Vector,:Int32) shlib
@c Int32 IDAGetDky (Ptr{:None},:realtype,:Int32,:N_Vector) shlib
@c Int32 IDAGetWorkSpace (Ptr{:None},Ptr{:Int64},Ptr{:Int64}) shlib
@c Int32 IDAGetNumSteps (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDAGetNumResEvals (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDAGetNumLinSolvSetups (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDAGetNumErrTestFails (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDAGetNumBacktrackOps (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDAGetConsistentIC (Ptr{:None},:N_Vector,:N_Vector) shlib
@c Int32 IDAGetLastOrder (Ptr{:None},Ptr{:Int32}) shlib
@c Int32 IDAGetCurrentOrder (Ptr{:None},Ptr{:Int32}) shlib
@c Int32 IDAGetActualInitStep (Ptr{:None},Ptr{:realtype}) shlib
@c Int32 IDAGetLastStep (Ptr{:None},Ptr{:realtype}) shlib
@c Int32 IDAGetCurrentStep (Ptr{:None},Ptr{:realtype}) shlib
@c Int32 IDAGetCurrentTime (Ptr{:None},Ptr{:realtype}) shlib
@c Int32 IDAGetTolScaleFactor (Ptr{:None},Ptr{:realtype}) shlib
@c Int32 IDAGetErrWeights (Ptr{:None},:N_Vector) shlib
@c Int32 IDAGetEstLocalErrors (Ptr{:None},:N_Vector) shlib
@c Int32 IDAGetNumGEvals (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDAGetRootInfo (Ptr{:None},Ptr{:Int32}) shlib
@c Int32 IDAGetIntegratorStats (Ptr{:None},Ptr{:Int64},Ptr{:Int64},Ptr{:Int64},Ptr{:Int64},Ptr{:Int32},Ptr{:Int32},Ptr{:realtype},Ptr{:realtype},Ptr{:realtype},Ptr{:realtype}) shlib
@c Int32 IDAGetNumNonlinSolvIters (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDAGetNumNonlinSolvConvFails (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDAGetNonlinSolvStats (Ptr{:None},Ptr{:Int64},Ptr{:Int64}) shlib
@c Ptr{:Uint8} IDAGetReturnFlagName (:Int64,) shlib
@c None IDAFree (Ptr{Ptr{:None}},) shlib

# header: /usr/local/include/ida/ida_impl.h
@ctypedef IDAMem Ptr{:Void}
@c Int32 IDAEwtSet (:N_Vector,:N_Vector,Ptr{:None}) shlib
@c None IDAProcessError (:IDAMem,:Int32,Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8}) shlib
@c None IDAErrHandler (:Int32,Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8},Ptr{:None}) shlib

# header: /usr/local/include/ida/ida_spbcgs.h
@ctypedef IDASpilsPrecSetupFn Ptr{:Void}
@ctypedef IDASpilsPrecSolveFn Ptr{:Void}
@ctypedef IDASpilsJacTimesVecFn Ptr{:Void}
@c Int32 IDASpilsSetPreconditioner (Ptr{:None},:IDASpilsPrecSetupFn,:IDASpilsPrecSolveFn) shlib
@c Int32 IDASpilsSetJacTimesVecFn (Ptr{:None},:IDASpilsJacTimesVecFn) shlib
@c Int32 IDASpilsSetGSType (Ptr{:None},:Int32) shlib
@c Int32 IDASpilsSetMaxRestarts (Ptr{:None},:Int32) shlib
@c Int32 IDASpilsSetMaxl (Ptr{:None},:Int32) shlib
@c Int32 IDASpilsSetEpsLin (Ptr{:None},:realtype) shlib
@c Int32 IDASpilsSetIncrementFactor (Ptr{:None},:realtype) shlib
@c Int32 IDASpilsGetWorkSpace (Ptr{:None},Ptr{:Int64},Ptr{:Int64}) shlib
@c Int32 IDASpilsGetNumPrecEvals (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDASpilsGetNumPrecSolves (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDASpilsGetNumLinIters (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDASpilsGetNumConvFails (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDASpilsGetNumJtimesEvals (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDASpilsGetNumResEvals (Ptr{:None},Ptr{:Int64}) shlib
@c Int32 IDASpilsGetLastFlag (Ptr{:None},Ptr{:Int64}) shlib
@c Ptr{:Uint8} IDASpilsGetReturnFlagName (:Int64,) shlib
@c Int32 IDASpbcg (Ptr{:None},:Int32) shlib

# header: /usr/local/include/ida/ida_spgmr.h
@c Int32 IDASpgmr (Ptr{:None},:Int32) shlib

# header: /usr/local/include/ida/ida_spils.h

# header: /usr/local/include/ida/ida_sptfqmr.h
@c Int32 IDASptfqmr (Ptr{:None},:Int32) shlib

