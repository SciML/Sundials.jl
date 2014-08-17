
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

# header: /usr/local/include/cvodes/cvodes_band.h
@ctypedef CVDlsDenseJacFnB Ptr{:Void}
@ctypedef CVDlsBandJacFnB Ptr{:Void}
@c Int32 CVDlsSetDenseJacFnB (Ptr{:None},:Int32,:CVDlsDenseJacFnB) shlib
@c Int32 CVDlsSetBandJacFnB (Ptr{:None},:Int32,:CVDlsBandJacFnB) shlib
@c Int32 CVBandB (Ptr{:None},:Int32,:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/cvodes/cvodes_bandpre.h
@c Int32 CVBandPrecInitB (Ptr{:None},:Int32,:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/cvodes/cvodes_bbdpre.h
@ctypedef CVLocalFnB Ptr{:Void}
@ctypedef CVCommFnB Ptr{:Void}
@c Int32 CVBBDPrecInitB (Ptr{:None},:Int32,:Clong,:Clong,:Clong,:Clong,:Clong,:RealType,:CVLocalFnB,:CVCommFnB) shlib
@c Int32 CVBBDPrecReInitB (Ptr{:None},:Int32,:Clong,:Clong,:RealType) shlib

# header: /usr/local/include/cvodes/cvodes_dense.h
@c Int32 CVDenseB (Ptr{:None},:Int32,:Clong) shlib

# header: /usr/local/include/cvodes/cvodes_diag.h
@c Int32 CVDiagB (Ptr{:None},:Int32) shlib

# header: /usr/local/include/cvodes/cvodes_direct.h

# header: /usr/local/include/cvodes/cvodes.h
@ctypedef CVQuadRhsFn Ptr{:Void}
@ctypedef CVSensRhsFn Ptr{:Void}
@ctypedef CVSensRhs1Fn Ptr{:Void}
@ctypedef CVQuadSensRhsFn Ptr{:Void}
@ctypedef CVRhsFnB Ptr{:Void}
@ctypedef CVRhsFnBS Ptr{:Void}
@ctypedef CVQuadRhsFnB Ptr{:Void}
@ctypedef CVQuadRhsFnBS Ptr{:Void}
@c Int32 CVodeQuadInit (Ptr{:None},:CVQuadRhsFn,:N_Vector) shlib
@c Int32 CVodeQuadReInit (Ptr{:None},:N_Vector) shlib
@c Int32 CVodeQuadSStolerances (Ptr{:None},:RealType,:RealType) shlib
@c Int32 CVodeQuadSVtolerances (Ptr{:None},:RealType,:N_Vector) shlib
@c Int32 CVodeSensInit (Ptr{:None},:Int32,:Int32,:CVSensRhsFn,Ptr{:N_Vector}) shlib
@c Int32 CVodeSensInit1 (Ptr{:None},:Int32,:Int32,:CVSensRhs1Fn,Ptr{:N_Vector}) shlib
@c Int32 CVodeSensReInit (Ptr{:None},:Int32,Ptr{:N_Vector}) shlib
@c Int32 CVodeSensSStolerances (Ptr{:None},:RealType,Ptr{:RealType}) shlib
@c Int32 CVodeSensSVtolerances (Ptr{:None},:RealType,Ptr{:N_Vector}) shlib
@c Int32 CVodeSensEEtolerances (Ptr{:None},) shlib
@c Int32 CVodeQuadSensInit (Ptr{:None},:CVQuadSensRhsFn,Ptr{:N_Vector}) shlib
@c Int32 CVodeQuadSensReInit (Ptr{:None},Ptr{:N_Vector}) shlib
@c Int32 CVodeQuadSensSStolerances (Ptr{:None},:RealType,Ptr{:RealType}) shlib
@c Int32 CVodeQuadSensSVtolerances (Ptr{:None},:RealType,Ptr{:N_Vector}) shlib
@c Int32 CVodeQuadSensEEtolerances (Ptr{:None},) shlib
@c None CVodeQuadFree (Ptr{:None},) shlib
@c None CVodeSensFree (Ptr{:None},) shlib
@c None CVodeQuadSensFree (Ptr{:None},) shlib
@c Int32 CVodeSetQuadErrCon (Ptr{:None},:Int32) shlib
@c Int32 CVodeSetSensDQMethod (Ptr{:None},:Int32,:RealType) shlib
@c Int32 CVodeSetSensErrCon (Ptr{:None},:Int32) shlib
@c Int32 CVodeSetSensMaxNonlinIters (Ptr{:None},:Int32) shlib
@c Int32 CVodeSetSensParams (Ptr{:None},Ptr{:RealType},Ptr{:RealType},Ptr{:Int32}) shlib
@c Int32 CVodeSetQuadSensErrCon (Ptr{:None},:Int32) shlib
@c Int32 CVodeSensToggleOff (Ptr{:None},) shlib
@c Int32 CVodeGetQuad (Ptr{:None},Ptr{:RealType},:N_Vector) shlib
@c Int32 CVodeGetQuadDky (Ptr{:None},:RealType,:Int32,:N_Vector) shlib
@c Int32 CVodeGetSens (Ptr{:None},Ptr{:RealType},Ptr{:N_Vector}) shlib
@c Int32 CVodeGetSens1 (Ptr{:None},Ptr{:RealType},:Int32,:N_Vector) shlib
@c Int32 CVodeGetSensDky (Ptr{:None},:RealType,:Int32,Ptr{:N_Vector}) shlib
@c Int32 CVodeGetSensDky1 (Ptr{:None},:RealType,:Int32,:Int32,:N_Vector) shlib
@c Int32 CVodeGetQuadSens (Ptr{:None},Ptr{:RealType},Ptr{:N_Vector}) shlib
@c Int32 CVodeGetQuadSens1 (Ptr{:None},Ptr{:RealType},:Int32,:N_Vector) shlib
@c Int32 CVodeGetQuadSensDky (Ptr{:None},:RealType,:Int32,Ptr{:N_Vector}) shlib
@c Int32 CVodeGetQuadSensDky1 (Ptr{:None},:RealType,:Int32,:Int32,:N_Vector) shlib
@c Int32 CVodeGetQuadNumRhsEvals (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 CVodeGetQuadNumErrTestFails (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 CVodeGetQuadErrWeights (Ptr{:None},:N_Vector) shlib
@c Int32 CVodeGetQuadStats (Ptr{:None},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensNumRhsEvals (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 CVodeGetNumRhsEvalsSens (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensNumErrTestFails (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensNumLinSolvSetups (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensErrWeights (Ptr{:None},Ptr{:N_Vector}) shlib
@c Int32 CVodeGetSensStats (Ptr{:None},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensNumNonlinSolvIters (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensNumNonlinSolvConvFails (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 CVodeGetStgrSensNumNonlinSolvIters (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 CVodeGetStgrSensNumNonlinSolvConvFails (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensNonlinSolvStats (Ptr{:None},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVodeGetQuadSensNumRhsEvals (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 CVodeGetQuadSensNumErrTestFails (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 CVodeGetQuadSensErrWeights (Ptr{:None},Ptr{:N_Vector}) shlib
@c Int32 CVodeGetQuadSensStats (Ptr{:None},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVodeAdjInit (Ptr{:None},:Clong,:Int32) shlib
@c Int32 CVodeAdjReInit (Ptr{:None},) shlib
@c None CVodeAdjFree (Ptr{:None},) shlib
@c Int32 CVodeCreateB (Ptr{:None},:Int32,:Int32,Ptr{:Int32}) shlib
@c Int32 CVodeInitB (Ptr{:None},:Int32,:CVRhsFnB,:RealType,:N_Vector) shlib
@c Int32 CVodeInitBS (Ptr{:None},:Int32,:CVRhsFnBS,:RealType,:N_Vector) shlib
@c Int32 CVodeReInitB (Ptr{:None},:Int32,:RealType,:N_Vector) shlib
@c Int32 CVodeSStolerancesB (Ptr{:None},:Int32,:RealType,:RealType) shlib
@c Int32 CVodeSVtolerancesB (Ptr{:None},:Int32,:RealType,:N_Vector) shlib
@c Int32 CVodeQuadInitB (Ptr{:None},:Int32,:CVQuadRhsFnB,:N_Vector) shlib
@c Int32 CVodeQuadInitBS (Ptr{:None},:Int32,:CVQuadRhsFnBS,:N_Vector) shlib
@c Int32 CVodeQuadReInitB (Ptr{:None},:Int32,:N_Vector) shlib
@c Int32 CVodeQuadSStolerancesB (Ptr{:None},:Int32,:RealType,:RealType) shlib
@c Int32 CVodeQuadSVtolerancesB (Ptr{:None},:Int32,:RealType,:N_Vector) shlib
@c Int32 CVodeF (Ptr{:None},:RealType,:N_Vector,Ptr{:RealType},:Int32,Ptr{:Int32}) shlib
@c Int32 CVodeB (Ptr{:None},:RealType,:Int32) shlib
@c Int32 CVodeSetAdjNoSensi (Ptr{:None},) shlib
@c Int32 CVodeSetIterTypeB (Ptr{:None},:Int32,:Int32) shlib
@c Int32 CVodeSetUserDataB (Ptr{:None},:Int32,Ptr{:None}) shlib
@c Int32 CVodeSetMaxOrdB (Ptr{:None},:Int32,:Int32) shlib
@c Int32 CVodeSetMaxNumStepsB (Ptr{:None},:Int32,:Clong) shlib
@c Int32 CVodeSetStabLimDetB (Ptr{:None},:Int32,:Int32) shlib
@c Int32 CVodeSetInitStepB (Ptr{:None},:Int32,:RealType) shlib
@c Int32 CVodeSetMinStepB (Ptr{:None},:Int32,:RealType) shlib
@c Int32 CVodeSetMaxStepB (Ptr{:None},:Int32,:RealType) shlib
@c Int32 CVodeSetQuadErrConB (Ptr{:None},:Int32,:Int32) shlib
@c Int32 CVodeGetB (Ptr{:None},:Int32,Ptr{:RealType},:N_Vector) shlib
@c Int32 CVodeGetQuadB (Ptr{:None},:Int32,Ptr{:RealType},:N_Vector) shlib
@c Ptr{:None} CVodeGetAdjCVodeBmem (Ptr{:None},:Int32) shlib
@c Int32 CVodeGetAdjY (Ptr{:None},:RealType,:N_Vector) shlib
@ctypedef CVadjCheckPointRec Void
@c Int32 CVodeGetAdjCheckPointsInfo (Ptr{:None},Ptr{:CVadjCheckPointRec}) shlib
@c Int32 CVodeGetAdjDataPointHermite (Ptr{:None},:Int32,Ptr{:RealType},:N_Vector,:N_Vector) shlib
@c Int32 CVodeGetAdjDataPointPolynomial (Ptr{:None},:Int32,Ptr{:RealType},Ptr{:Int32},:N_Vector) shlib
@c Int32 CVodeGetAdjCurrentCheckPoint (Ptr{:None},Ptr{Ptr{:None}}) shlib

# header: /usr/local/include/cvodes/cvodes_impl.h
@ctypedef CVadjMem Ptr{:Void}
@ctypedef CkpntMem Ptr{:Void}
@ctypedef DtpntMem Ptr{:Void}
@ctypedef CVodeBMem Ptr{:Void}
@ctypedef cvaIMMallocFn Ptr{:Void}
@ctypedef cvaIMFreeFn Ptr{:Void}
@ctypedef cvaIMGetYFn Ptr{:Void}
@ctypedef cvaIMStorePntFn Ptr{:Void}
@ctypedef HermiteDataMem Ptr{:Void}
@ctypedef PolynomialDataMem Ptr{:Void}
@c Int32 cvEwtSet (:N_Vector,:N_Vector,Ptr{:None}) shlib
@c None cvProcessError (:CVodeMem,:Int32,Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8}) shlib
@c None cvErrHandler (:Int32,Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8},Ptr{:None}) shlib
@c Int32 cvSensRhsWrapper (:CVodeMem,:RealType,:N_Vector,:N_Vector,Ptr{:N_Vector},Ptr{:N_Vector},:N_Vector,:N_Vector) shlib
@c Int32 cvSensRhs1Wrapper (:CVodeMem,:RealType,:N_Vector,:N_Vector,:Int32,:N_Vector,:N_Vector,:N_Vector,:N_Vector) shlib
@c Int32 cvSensRhsInternalDQ (:Int32,:RealType,:N_Vector,:N_Vector,Ptr{:N_Vector},Ptr{:N_Vector},Ptr{:None},:N_Vector,:N_Vector) shlib
@c Int32 cvSensRhs1InternalDQ (:Int32,:RealType,:N_Vector,:N_Vector,:Int32,:N_Vector,:N_Vector,Ptr{:None},:N_Vector,:N_Vector) shlib

# header: /usr/local/include/cvodes/cvodes_spbcgs.h
@ctypedef CVSpilsPrecSetupFnB Ptr{:Void}
@ctypedef CVSpilsPrecSolveFnB Ptr{:Void}
@ctypedef CVSpilsJacTimesVecFnB Ptr{:Void}
@c Int32 CVSpilsSetPrecTypeB (Ptr{:None},:Int32,:Int32) shlib
@c Int32 CVSpilsSetGSTypeB (Ptr{:None},:Int32,:Int32) shlib
@c Int32 CVSpilsSetEpslinB (Ptr{:None},:Int32,:RealType) shlib
@c Int32 CVSpilsSetMaxlB (Ptr{:None},:Int32,:Int32) shlib
@c Int32 CVSpilsSetPreconditionerB (Ptr{:None},:Int32,:CVSpilsPrecSetupFnB,:CVSpilsPrecSolveFnB) shlib
@c Int32 CVSpilsSetJacTimesVecFnB (Ptr{:None},:Int32,:CVSpilsJacTimesVecFnB) shlib
@c Int32 CVSpbcgB (Ptr{:None},:Int32,:Int32,:Int32) shlib

# header: /usr/local/include/cvodes/cvodes_spgmr.h
@c Int32 CVSpgmrB (Ptr{:None},:Int32,:Int32,:Int32) shlib

# header: /usr/local/include/cvodes/cvodes_spils.h

# header: /usr/local/include/cvodes/cvodes_sptfqmr.h
@c Int32 CVSptfqmrB (Ptr{:None},:Int32,:Int32,:Int32) shlib
