
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

type IDA_struct; end # dummy type to give us a typed pointer
typealias IDA_ptr Ptr{IDA_struct}


# header: /usr/local/include/ida/ida_band.h
@ctypedef IDADlsDenseJacFn Ptr{:Void}
@ctypedef IDADlsBandJacFn Ptr{:Void}
@c Int32 IDADlsSetDenseJacFn (:IDA_ptr,:IDADlsDenseJacFn) shlib
@c Int32 IDADlsSetBandJacFn (:IDA_ptr,:IDADlsBandJacFn) shlib
@c Int32 IDADlsGetWorkSpace (:IDA_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDADlsGetNumJacEvals (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDADlsGetNumResEvals (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDADlsGetLastFlag (:IDA_ptr,Ptr{:Clong}) shlib
@c Ptr{:Uint8} IDADlsGetReturnFlagName (:Clong,) shlib
@c Int32 IDABand (:IDA_ptr,:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/ida/ida_bbdpre.h
@ctypedef IDABBDLocalFn Ptr{:Void}
@ctypedef IDABBDCommFn Ptr{:Void}
@c Int32 IDABBDPrecInit (:IDA_ptr,:Clong,:Clong,:Clong,:Clong,:Clong,:RealType,:IDABBDLocalFn,:IDABBDCommFn) shlib
@c Int32 IDABBDPrecReInit (:IDA_ptr,:Clong,:Clong,:RealType) shlib
@c Int32 IDABBDPrecGetWorkSpace (:IDA_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDABBDPrecGetNumGfnEvals (:IDA_ptr,Ptr{:Clong}) shlib

# header: /usr/local/include/ida/ida_dense.h
@c Int32 IDADense (:IDA_ptr,:Clong) shlib

# header: /usr/local/include/ida/ida_direct.h

# header: /usr/local/include/ida/ida.h
@ctypedef IDAResFn Ptr{:Void}
@ctypedef IDARootFn Ptr{:Void}
@ctypedef IDAEwtFn Ptr{:Void}
@ctypedef IDAErrHandlerFn Ptr{:Void}
@c :IDA_ptr IDACreate () shlib
@c Int32 IDASetErrHandlerFn (:IDA_ptr,:IDAErrHandlerFn,Ptr{:None}) shlib
@c Int32 IDASetErrFile (:IDA_ptr,Ptr{:FILE}) shlib
@c Int32 IDASetUserData (:IDA_ptr,Ptr{:None}) shlib
@c Int32 IDASetMaxOrd (:IDA_ptr,:Int32) shlib
@c Int32 IDASetMaxNumSteps (:IDA_ptr,:Clong) shlib
@c Int32 IDASetInitStep (:IDA_ptr,:RealType) shlib
@c Int32 IDASetMaxStep (:IDA_ptr,:RealType) shlib
@c Int32 IDASetStopTime (:IDA_ptr,:RealType) shlib
@c Int32 IDASetNonlinConvCoef (:IDA_ptr,:RealType) shlib
@c Int32 IDASetMaxErrTestFails (:IDA_ptr,:Int32) shlib
@c Int32 IDASetMaxNonlinIters (:IDA_ptr,:Int32) shlib
@c Int32 IDASetMaxConvFails (:IDA_ptr,:Int32) shlib
@c Int32 IDASetSuppressAlg (:IDA_ptr,:Int32) shlib
@c Int32 IDASetId (:IDA_ptr,:N_Vector) shlib
@c Int32 IDASetConstraints (:IDA_ptr,:N_Vector) shlib
@c Int32 IDASetRootDirection (:IDA_ptr,Ptr{:Int32}) shlib
@c Int32 IDASetNoInactiveRootWarn (:IDA_ptr,) shlib
@c Int32 IDAInit (:IDA_ptr,:IDAResFn,:RealType,:N_Vector,:N_Vector) shlib
@c Int32 IDAReInit (:IDA_ptr,:RealType,:N_Vector,:N_Vector) shlib
@c Int32 IDASStolerances (:IDA_ptr,:RealType,:RealType) shlib
@c Int32 IDASVtolerances (:IDA_ptr,:RealType,:N_Vector) shlib
@c Int32 IDAWFtolerances (:IDA_ptr,:IDAEwtFn) shlib
@c Int32 IDASetNonlinConvCoefIC (:IDA_ptr,:RealType) shlib
@c Int32 IDASetMaxNumStepsIC (:IDA_ptr,:Int32) shlib
@c Int32 IDASetMaxNumJacsIC (:IDA_ptr,:Int32) shlib
@c Int32 IDASetMaxNumItersIC (:IDA_ptr,:Int32) shlib
@c Int32 IDASetLineSearchOffIC (:IDA_ptr,:Int32) shlib
@c Int32 IDASetStepToleranceIC (:IDA_ptr,:RealType) shlib
@c Int32 IDARootInit (:IDA_ptr,:Int32,:IDARootFn) shlib
@c Int32 IDACalcIC (:IDA_ptr,:Int32,:RealType) shlib
@c Int32 IDASolve (:IDA_ptr,:RealType,Ptr{:RealType},:N_Vector,:N_Vector,:Int32) shlib
@c Int32 IDAGetDky (:IDA_ptr,:RealType,:Int32,:N_Vector) shlib
@c Int32 IDAGetWorkSpace (:IDA_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDAGetNumSteps (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDAGetNumResEvals (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDAGetNumLinSolvSetups (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDAGetNumErrTestFails (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDAGetNumBacktrackOps (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDAGetConsistentIC (:IDA_ptr,:N_Vector,:N_Vector) shlib
@c Int32 IDAGetLastOrder (:IDA_ptr,Ptr{:Int32}) shlib
@c Int32 IDAGetCurrentOrder (:IDA_ptr,Ptr{:Int32}) shlib
@c Int32 IDAGetActualInitStep (:IDA_ptr,Ptr{:RealType}) shlib
@c Int32 IDAGetLastStep (:IDA_ptr,Ptr{:RealType}) shlib
@c Int32 IDAGetCurrentStep (:IDA_ptr,Ptr{:RealType}) shlib
@c Int32 IDAGetCurrentTime (:IDA_ptr,Ptr{:RealType}) shlib
@c Int32 IDAGetTolScaleFactor (:IDA_ptr,Ptr{:RealType}) shlib
@c Int32 IDAGetErrWeights (:IDA_ptr,:N_Vector) shlib
@c Int32 IDAGetEstLocalErrors (:IDA_ptr,:N_Vector) shlib
@c Int32 IDAGetNumGEvals (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDAGetRootInfo (:IDA_ptr,Ptr{:Int32}) shlib
@c Int32 IDAGetIntegratorStats (:IDA_ptr,Ptr{:Clong},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong},Ptr{:Int32},Ptr{:Int32},Ptr{:RealType},Ptr{:RealType},Ptr{:RealType},Ptr{:RealType}) shlib
@c Int32 IDAGetNumNonlinSolvIters (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDAGetNumNonlinSolvConvFails (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDAGetNonlinSolvStats (:IDA_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Ptr{:Uint8} IDAGetReturnFlagName (:Clong,) shlib
@c None IDAFree (Ptr{:IDA_ptr},) shlib

# header: /usr/local/include/ida/ida_impl.h
@ctypedef IDAMem Ptr{:Void}
@c Int32 IDAEwtSet (:N_Vector,:N_Vector,Ptr{:None}) shlib
@c None IDAProcessError (:IDAMem,:Int32,Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8}) shlib
@c None IDAErrHandler (:Int32,Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8},Ptr{:None}) shlib

# header: /usr/local/include/ida/ida_spbcgs.h
@ctypedef IDASpilsPrecSetupFn Ptr{:Void}
@ctypedef IDASpilsPrecSolveFn Ptr{:Void}
@ctypedef IDASpilsJacTimesVecFn Ptr{:Void}
@c Int32 IDASpilsSetPreconditioner (:IDA_ptr,:IDASpilsPrecSetupFn,:IDASpilsPrecSolveFn) shlib
@c Int32 IDASpilsSetJacTimesVecFn (:IDA_ptr,:IDASpilsJacTimesVecFn) shlib
@c Int32 IDASpilsSetGSType (:IDA_ptr,:Int32) shlib
@c Int32 IDASpilsSetMaxRestarts (:IDA_ptr,:Int32) shlib
@c Int32 IDASpilsSetMaxl (:IDA_ptr,:Int32) shlib
@c Int32 IDASpilsSetEpsLin (:IDA_ptr,:RealType) shlib
@c Int32 IDASpilsSetIncrementFactor (:IDA_ptr,:RealType) shlib
@c Int32 IDASpilsGetWorkSpace (:IDA_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDASpilsGetNumPrecEvals (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDASpilsGetNumPrecSolves (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDASpilsGetNumLinIters (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDASpilsGetNumConvFails (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDASpilsGetNumJtimesEvals (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDASpilsGetNumResEvals (:IDA_ptr,Ptr{:Clong}) shlib
@c Int32 IDASpilsGetLastFlag (:IDA_ptr,Ptr{:Clong}) shlib
@c Ptr{:Uint8} IDASpilsGetReturnFlagName (:Clong,) shlib
@c Int32 IDASpbcg (:IDA_ptr,:Int32) shlib

# header: /usr/local/include/ida/ida_spgmr.h
@c Int32 IDASpgmr (:IDA_ptr,:Int32) shlib

# header: /usr/local/include/ida/ida_spils.h

# header: /usr/local/include/ida/ida_sptfqmr.h
@c Int32 IDASptfqmr (:IDA_ptr,:Int32) shlib
