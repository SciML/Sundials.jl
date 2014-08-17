
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


type KINSOL_struct; end # dummy type to give us a typed pointer
typealias KINSOL_ptr Ptr{KINSOL_struct}


# header: /usr/local/include/kinsol/kinsol_band.h
@ctypedef KINDlsDenseJacFn Ptr{:Void}
@ctypedef KINDlsBandJacFn Ptr{:Void}
@c Int32 KINDlsSetDenseJacFn (:KINSOL_ptr,:KINDlsDenseJacFn) shlib
@c Int32 KINDlsSetBandJacFn (:KINSOL_ptr,:KINDlsBandJacFn) shlib
@c Int32 KINDlsGetWorkSpace (:KINSOL_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 KINDlsGetNumJacEvals (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Int32 KINDlsGetNumFuncEvals (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Int32 KINDlsGetLastFlag (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Ptr{:Uint8} KINDlsGetReturnFlagName (:Clong,) shlib
@c Int32 KINBand (:KINSOL_ptr,:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/kinsol/kinsol_bbdpre.h
@ctypedef KINCommFn Ptr{:Void}
@ctypedef KINLocalFn Ptr{:Void}
@c Int32 KINBBDPrecInit (:KINSOL_ptr,:Clong,:Clong,:Clong,:Clong,:Clong,:RealType,:KINLocalFn,:KINCommFn) shlib
@c Int32 KINBBDPrecGetWorkSpace (:KINSOL_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 KINBBDPrecGetNumGfnEvals (:KINSOL_ptr,Ptr{:Clong}) shlib

# header: /usr/local/include/kinsol/kinsol_dense.h
@c Int32 KINDense (:KINSOL_ptr,:Clong) shlib

# header: /usr/local/include/kinsol/kinsol_direct.h

# header: /usr/local/include/kinsol/kinsol.h
@ctypedef KINSysFn Ptr{:Void}
@ctypedef KINErrHandlerFn Ptr{:Void}
@ctypedef KINInfoHandlerFn Ptr{:Void}
@c KINSOL_ptr KINCreate () shlib
@c Int32 KINSetErrHandlerFn (:KINSOL_ptr,:KINErrHandlerFn,Ptr{:None}) shlib
@c Int32 KINSetErrFile (:KINSOL_ptr,Ptr{:FILE}) shlib
@c Int32 KINSetInfoHandlerFn (:KINSOL_ptr,:KINInfoHandlerFn,Ptr{:None}) shlib
@c Int32 KINSetInfoFile (:KINSOL_ptr,Ptr{:FILE}) shlib
@c Int32 KINSetUserData (:KINSOL_ptr,Ptr{:None}) shlib
@c Int32 KINSetPrintLevel (:KINSOL_ptr,:Int32) shlib
@c Int32 KINSetNumMaxIters (:KINSOL_ptr,:Clong) shlib
@c Int32 KINSetNoInitSetup (:KINSOL_ptr,:Int32) shlib
@c Int32 KINSetNoResMon (:KINSOL_ptr,:Int32) shlib
@c Int32 KINSetMaxSetupCalls (:KINSOL_ptr,:Clong) shlib
@c Int32 KINSetMaxSubSetupCalls (:KINSOL_ptr,:Clong) shlib
@c Int32 KINSetEtaForm (:KINSOL_ptr,:Int32) shlib
@c Int32 KINSetEtaConstValue (:KINSOL_ptr,:RealType) shlib
@c Int32 KINSetEtaParams (:KINSOL_ptr,:RealType,:RealType) shlib
@c Int32 KINSetResMonParams (:KINSOL_ptr,:RealType,:RealType) shlib
@c Int32 KINSetResMonConstValue (:KINSOL_ptr,:RealType) shlib
@c Int32 KINSetNoMinEps (:KINSOL_ptr,:Int32) shlib
@c Int32 KINSetMaxNewtonStep (:KINSOL_ptr,:RealType) shlib
@c Int32 KINSetMaxBetaFails (:KINSOL_ptr,:Clong) shlib
@c Int32 KINSetRelErrFunc (:KINSOL_ptr,:RealType) shlib
@c Int32 KINSetFuncNormTol (:KINSOL_ptr,:RealType) shlib
@c Int32 KINSetScaledStepTol (:KINSOL_ptr,:RealType) shlib
@c Int32 KINSetConstraints (:KINSOL_ptr,:N_Vector) shlib
@c Int32 KINSetSysFunc (:KINSOL_ptr,:KINSysFn) shlib
@c Int32 KINInit (:KINSOL_ptr,:KINSysFn,:N_Vector) shlib
@c Int32 KINSol (:KINSOL_ptr,:N_Vector,:Int32,:N_Vector,:N_Vector) shlib
@c Int32 KINGetWorkSpace (:KINSOL_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 KINGetNumNonlinSolvIters (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Int32 KINGetNumFuncEvals (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Int32 KINGetNumBetaCondFails (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Int32 KINGetNumBacktrackOps (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Int32 KINGetFuncNorm (:KINSOL_ptr,Ptr{:RealType}) shlib
@c Int32 KINGetStepLength (:KINSOL_ptr,Ptr{:RealType}) shlib
@c Ptr{:Uint8} KINGetReturnFlagName (:Clong,) shlib
@c None KINFree (Ptr{:KINSOL_ptr},) shlib

# header: /usr/local/include/kinsol/kinsol_impl.h
@ctypedef KINMem Ptr{:Void}
@c None KINProcessError (:KINMem,:Int32,Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8}) shlib
@c None KINErrHandler (:Int32,Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8},Ptr{:None}) shlib
@c None KINPrintInfo (:KINMem,:Int32,Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8}) shlib
@c None KINInfoHandler (Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8},Ptr{:None}) shlib

# header: /usr/local/include/kinsol/kinsol_spbcgs.h
@c Int32 KINSpbcg (:KINSOL_ptr,:Int32) shlib

# header: /usr/local/include/kinsol/kinsol_spgmr.h
@c Int32 KINSpgmr (:KINSOL_ptr,:Int32) shlib

# header: /usr/local/include/kinsol/kinsol_spils.h
@ctypedef KINSpilsPrecSetupFn Ptr{:Void}
@ctypedef KINSpilsPrecSolveFn Ptr{:Void}
@ctypedef KINSpilsJacTimesVecFn Ptr{:Void}
@c Int32 KINSpilsSetMaxRestarts (:KINSOL_ptr,:Int32) shlib
@c Int32 KINSpilsSetPreconditioner (:KINSOL_ptr,:KINSpilsPrecSetupFn,:KINSpilsPrecSolveFn) shlib
@c Int32 KINSpilsSetJacTimesVecFn (:KINSOL_ptr,:KINSpilsJacTimesVecFn) shlib
@c Int32 KINSpilsGetWorkSpace (:KINSOL_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 KINSpilsGetNumPrecEvals (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Int32 KINSpilsGetNumPrecSolves (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Int32 KINSpilsGetNumLinIters (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Int32 KINSpilsGetNumConvFails (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Int32 KINSpilsGetNumJtimesEvals (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Int32 KINSpilsGetNumFuncEvals (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Int32 KINSpilsGetLastFlag (:KINSOL_ptr,Ptr{:Clong}) shlib
@c Ptr{:Uint8} KINSpilsGetReturnFlagName (:Clong,) shlib

# header: /usr/local/include/kinsol/kinsol_sptfqmr.h
@c Int32 KINSptfqmr (:KINSOL_ptr,:Int32) shlib
