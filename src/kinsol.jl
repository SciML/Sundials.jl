
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

# header: /usr/local/include/kinsol/kinsol_band.h
@ctypedef KINDlsDenseJacFn Ptr{:Void}
@ctypedef KINDlsBandJacFn Ptr{:Void}
@c Int32 KINDlsSetDenseJacFn (Ptr{:Void},:KINDlsDenseJacFn) shlib
@c Int32 KINDlsSetBandJacFn (Ptr{:Void},:KINDlsBandJacFn) shlib
@c Int32 KINDlsGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 KINDlsGetNumJacEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 KINDlsGetNumFuncEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 KINDlsGetLastFlag (Ptr{:Void},Ptr{:Clong}) shlib
@c Ptr{:UInt8} KINDlsGetReturnFlagName (:Clong,) shlib
@c Int32 KINBand (Ptr{:Void},:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/kinsol/kinsol_bbdpre.h
@ctypedef KINCommFn Ptr{:Void}
@ctypedef KINLocalFn Ptr{:Void}
@c Int32 KINBBDPrecInit (Ptr{:Void},:Clong,:Clong,:Clong,:Clong,:Clong,:realtype,:KINLocalFn,:KINCommFn) shlib
@c Int32 KINBBDPrecGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 KINBBDPrecGetNumGfnEvals (Ptr{:Void},Ptr{:Clong}) shlib

# header: /usr/local/include/kinsol/kinsol_dense.h
@c Int32 KINDense (Ptr{:Void},:Clong) shlib

# header: /usr/local/include/kinsol/kinsol_direct.h

# header: /usr/local/include/kinsol/kinsol.h
@ctypedef KINSysFn Ptr{:Void}
@ctypedef KINErrHandlerFn Ptr{:Void}
@ctypedef KINInfoHandlerFn Ptr{:Void}
@c Ptr{:Void} KINCreate () shlib
@c Int32 KINSetErrHandlerFn (Ptr{:Void},:KINErrHandlerFn,Ptr{:Void}) shlib
@c Int32 KINSetErrFile (Ptr{:Void},Ptr{:FILE}) shlib
@c Int32 KINSetInfoHandlerFn (Ptr{:Void},:KINInfoHandlerFn,Ptr{:Void}) shlib
@c Int32 KINSetInfoFile (Ptr{:Void},Ptr{:FILE}) shlib
@c Int32 KINSetUserData (Ptr{:Void},Ptr{:Void}) shlib
@c Int32 KINSetPrintLevel (Ptr{:Void},:Int32) shlib
@c Int32 KINSetNumMaxIters (Ptr{:Void},:Clong) shlib
@c Int32 KINSetNoInitSetup (Ptr{:Void},:Int32) shlib
@c Int32 KINSetNoResMon (Ptr{:Void},:Int32) shlib
@c Int32 KINSetMaxSetupCalls (Ptr{:Void},:Clong) shlib
@c Int32 KINSetMaxSubSetupCalls (Ptr{:Void},:Clong) shlib
@c Int32 KINSetEtaForm (Ptr{:Void},:Int32) shlib
@c Int32 KINSetEtaConstValue (Ptr{:Void},:realtype) shlib
@c Int32 KINSetEtaParams (Ptr{:Void},:realtype,:realtype) shlib
@c Int32 KINSetResMonParams (Ptr{:Void},:realtype,:realtype) shlib
@c Int32 KINSetResMonConstValue (Ptr{:Void},:realtype) shlib
@c Int32 KINSetNoMinEps (Ptr{:Void},:Int32) shlib
@c Int32 KINSetMaxNewtonStep (Ptr{:Void},:realtype) shlib
@c Int32 KINSetMaxBetaFails (Ptr{:Void},:Clong) shlib
@c Int32 KINSetRelErrFunc (Ptr{:Void},:realtype) shlib
@c Int32 KINSetFuncNormTol (Ptr{:Void},:realtype) shlib
@c Int32 KINSetScaledStepTol (Ptr{:Void},:realtype) shlib
@c Int32 KINSetConstraints (Ptr{:Void},:N_Vector) shlib
@c Int32 KINSetSysFunc (Ptr{:Void},:KINSysFn) shlib
@c Int32 KINInit (Ptr{:Void},:KINSysFn,:N_Vector) shlib
@c Int32 KINSol (Ptr{:Void},:N_Vector,:Int32,:N_Vector,:N_Vector) shlib
@c Int32 KINGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 KINGetNumNonlinSolvIters (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 KINGetNumFuncEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 KINGetNumBetaCondFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 KINGetNumBacktrackOps (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 KINGetFuncNorm (Ptr{:Void},Ptr{:realtype}) shlib
@c Int32 KINGetStepLength (Ptr{:Void},Ptr{:realtype}) shlib
@c Ptr{:UInt8} KINGetReturnFlagName (:Clong,) shlib
@c Union{} KINFree (Ptr{Ptr{:Void}},) shlib

# header: /usr/local/include/kinsol/kinsol_impl.h
@ctypedef KINMem Ptr{:Void}
@c Union{} KINProcessError (:KINMem,:Int32,Ptr{:UInt8},Ptr{:UInt8},Ptr{:UInt8}) shlib
@c Union{} KINErrHandler (:Int32,Ptr{:UInt8},Ptr{:UInt8},Ptr{:UInt8},Ptr{:Void}) shlib
@c Union{} KINPrintInfo (:KINMem,:Int32,Ptr{:UInt8},Ptr{:UInt8},Ptr{:UInt8}) shlib
@c Union{} KINInfoHandler (Ptr{:UInt8},Ptr{:UInt8},Ptr{:UInt8},Ptr{:Void}) shlib

# header: /usr/local/include/kinsol/kinsol_spbcgs.h
@ctypedef KINSpilsPrecSetupFn Ptr{:Void}
@ctypedef KINSpilsPrecSolveFn Ptr{:Void}
@ctypedef KINSpilsJacTimesVecFn Ptr{:Void}
@c Int32 KINSpilsSetMaxRestarts (Ptr{:Void},:Int32) shlib
@c Int32 KINSpilsSetPreconditioner (Ptr{:Void},:KINSpilsPrecSetupFn,:KINSpilsPrecSolveFn) shlib
@c Int32 KINSpilsSetJacTimesVecFn (Ptr{:Void},:KINSpilsJacTimesVecFn) shlib
@c Int32 KINSpilsGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 KINSpilsGetNumPrecEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 KINSpilsGetNumPrecSolves (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 KINSpilsGetNumLinIters (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 KINSpilsGetNumConvFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 KINSpilsGetNumJtimesEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 KINSpilsGetNumFuncEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 KINSpilsGetLastFlag (Ptr{:Void},Ptr{:Clong}) shlib
@c Ptr{:UInt8} KINSpilsGetReturnFlagName (:Clong,) shlib
@c Int32 KINSpbcg (Ptr{:Void},:Int32) shlib

# header: /usr/local/include/kinsol/kinsol_spgmr.h
@c Int32 KINSpgmr (Ptr{:Void},:Int32) shlib

# header: /usr/local/include/kinsol/kinsol_spils.h

# header: /usr/local/include/kinsol/kinsol_sptfqmr.h
@c Int32 KINSptfqmr (Ptr{:Void},:Int32) shlib

