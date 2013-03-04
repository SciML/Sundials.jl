
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

# header: /usr/include/kinsol/kinsol_band.h
@ctypedef KINDlsDenseJacFn Ptr{Void}
@ctypedef KINDlsBandJacFn Ptr{Void}
@c Int32 KINDlsSetDenseJacFn (Ptr{None},KINDlsDenseJacFn) shlib
@c Int32 KINDlsSetBandJacFn (Ptr{None},KINDlsBandJacFn) shlib
@c Int32 KINDlsGetWorkSpace (Ptr{None},Ptr{Int64},Ptr{Int64}) shlib
@c Int32 KINDlsGetNumJacEvals (Ptr{None},Ptr{Int64}) shlib
@c Int32 KINDlsGetNumFuncEvals (Ptr{None},Ptr{Int64}) shlib
@c Int32 KINDlsGetLastFlag (Ptr{None},Ptr{Int32}) shlib
@c Ptr{Uint8} KINDlsGetReturnFlagName (Int32,) shlib
@c Int32 KINBand (Ptr{None},Int32,Int32,Int32) shlib

# header /usr/include/kinsol/kinsol_bbdpre.h
@ctypedef KINCommFn Ptr{Void}
@ctypedef KINLocalFn Ptr{Void}
@c Int32 KINBBDPrecInit (Ptr{None},Int32,Int32,Int32,Int32,Int32,realtype,KINLocalFn,KINCommFn) shlib
@c Int32 KINBBDPrecGetWorkSpace (Ptr{None},Ptr{Int64},Ptr{Int64}) shlib
@c Int32 KINBBDPrecGetNumGfnEvals (Ptr{None},Ptr{Int64}) shlib

# header /usr/include/kinsol/kinsol_dense.h
@c Int32 KINDense (Ptr{None},Int32) shlib

# header /usr/include/kinsol/kinsol_direct.h

# header /usr/include/kinsol/kinsol.h
@ctypedef KINSysFn Ptr{Void}
@ctypedef KINErrHandlerFn Ptr{Void}
@ctypedef KINInfoHandlerFn Ptr{Void}
@c Ptr{None} KINCreate () shlib
@c Int32 KINSetErrHandlerFn (Ptr{None},KINErrHandlerFn,Ptr{None}) shlib
@c Int32 KINSetErrFile (Ptr{None},Ptr{FILE}) shlib
@c Int32 KINSetInfoHandlerFn (Ptr{None},KINInfoHandlerFn,Ptr{None}) shlib
@c Int32 KINSetInfoFile (Ptr{None},Ptr{FILE}) shlib
@c Int32 KINSetUserData (Ptr{None},Ptr{None}) shlib
@c Int32 KINSetPrintLevel (Ptr{None},Int32) shlib
@c Int32 KINSetNumMaxIters (Ptr{None},Int64) shlib
@c Int32 KINSetNoInitSetup (Ptr{None},Int32) shlib
@c Int32 KINSetNoResMon (Ptr{None},Int32) shlib
@c Int32 KINSetMaxSetupCalls (Ptr{None},Int64) shlib
@c Int32 KINSetMaxSubSetupCalls (Ptr{None},Int64) shlib
@c Int32 KINSetEtaForm (Ptr{None},Int32) shlib
@c Int32 KINSetEtaConstValue (Ptr{None},realtype) shlib
@c Int32 KINSetEtaParams (Ptr{None},realtype,realtype) shlib
@c Int32 KINSetResMonParams (Ptr{None},realtype,realtype) shlib
@c Int32 KINSetResMonConstValue (Ptr{None},realtype) shlib
@c Int32 KINSetNoMinEps (Ptr{None},Int32) shlib
@c Int32 KINSetMaxNewtonStep (Ptr{None},realtype) shlib
@c Int32 KINSetMaxBetaFails (Ptr{None},Int64) shlib
@c Int32 KINSetRelErrFunc (Ptr{None},realtype) shlib
@c Int32 KINSetFuncNormTol (Ptr{None},realtype) shlib
@c Int32 KINSetScaledStepTol (Ptr{None},realtype) shlib
@c Int32 KINSetConstraints (Ptr{None},N_Vector) shlib
@c Int32 KINSetSysFunc (Ptr{None},KINSysFn) shlib
@c Int32 KINInit (Ptr{None},KINSysFn,N_Vector) shlib
@c Int32 KINSol (Ptr{None},N_Vector,Int32,N_Vector,N_Vector) shlib
@c Int32 KINGetWorkSpace (Ptr{None},Ptr{Int64},Ptr{Int64}) shlib
@c Int32 KINGetNumNonlinSolvIters (Ptr{None},Ptr{Int64}) shlib
@c Int32 KINGetNumFuncEvals (Ptr{None},Ptr{Int64}) shlib
@c Int32 KINGetNumBetaCondFails (Ptr{None},Ptr{Int64}) shlib
@c Int32 KINGetNumBacktrackOps (Ptr{None},Ptr{Int64}) shlib
@c Int32 KINGetFuncNorm (Ptr{None},Ptr{realtype}) shlib
@c Int32 KINGetStepLength (Ptr{None},Ptr{realtype}) shlib
@c Ptr{Uint8} KINGetReturnFlagName (Int32,) shlib
@c None KINFree (Ptr{Ptr{None}},) shlib

# header /usr/include/kinsol/kinsol_impl.h
@ctypedef KINMem Ptr{Void}
@c None KINProcessError (KINMem,Int32,Ptr{Uint8},Ptr{Uint8},Ptr{Uint8}) shlib
@c None KINErrHandler (Int32,Ptr{Uint8},Ptr{Uint8},Ptr{Uint8},Ptr{None}) shlib
@c None KINPrintInfo (KINMem,Int32,Ptr{Uint8},Ptr{Uint8},Ptr{Uint8}) shlib
@c None KINInfoHandler (Ptr{Uint8},Ptr{Uint8},Ptr{Uint8},Ptr{None}) shlib

# header /usr/include/kinsol/kinsol_lapack.h
@c Int32 KINLapackDense (Ptr{None},Int32) shlib
@c Int32 KINLapackBand (Ptr{None},Int32,Int32,Int32) shlib

# header /usr/include/kinsol/kinsol_spbcgs.h
@ctypedef KINSpilsPrecSetupFn Ptr{Void}
@ctypedef KINSpilsPrecSolveFn Ptr{Void}
@ctypedef KINSpilsJacTimesVecFn Ptr{Void}
@c Int32 KINSpilsSetMaxRestarts (Ptr{None},Int32) shlib
@c Int32 KINSpilsSetPreconditioner (Ptr{None},KINSpilsPrecSetupFn,KINSpilsPrecSolveFn) shlib
@c Int32 KINSpilsSetJacTimesVecFn (Ptr{None},KINSpilsJacTimesVecFn) shlib
@c Int32 KINSpilsGetWorkSpace (Ptr{None},Ptr{Int64},Ptr{Int64}) shlib
@c Int32 KINSpilsGetNumPrecEvals (Ptr{None},Ptr{Int64}) shlib
@c Int32 KINSpilsGetNumPrecSolves (Ptr{None},Ptr{Int64}) shlib
@c Int32 KINSpilsGetNumLinIters (Ptr{None},Ptr{Int64}) shlib
@c Int32 KINSpilsGetNumConvFails (Ptr{None},Ptr{Int64}) shlib
@c Int32 KINSpilsGetNumJtimesEvals (Ptr{None},Ptr{Int64}) shlib
@c Int32 KINSpilsGetNumFuncEvals (Ptr{None},Ptr{Int64}) shlib
@c Int32 KINSpilsGetLastFlag (Ptr{None},Ptr{Int32}) shlib
@c Ptr{Uint8} KINSpilsGetReturnFlagName (Int32,) shlib
@c Int32 KINSpbcg (Ptr{None},Int32) shlib

# header /usr/include/kinsol/kinsol_spgmr.h
@c Int32 KINSpgmr (Ptr{None},Int32) shlib

# header /usr/include/kinsol/kinsol_spils.h

# header /usr/include/kinsol/kinsol_sptfqmr.h
@c Int32 KINSptfqmr (Ptr{None},Int32) shlib

