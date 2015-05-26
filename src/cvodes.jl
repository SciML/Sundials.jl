
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

# header: /usr/local/include/cvodes/cvodes_band.h
@ctypedef CVDlsDenseJacFnB Ptr{:Void}
@ctypedef CVDlsBandJacFnB Ptr{:Void}
@c Int32 CVDlsSetDenseJacFnB (Ptr{:Void},:Int32,:CVDlsDenseJacFnB) shlib
@c Int32 CVDlsSetBandJacFnB (Ptr{:Void},:Int32,:CVDlsBandJacFnB) shlib
@c Int32 CVBandB (Ptr{:Void},:Int32,:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/cvodes/cvodes_bandpre.h
@c Int32 CVBandPrecInitB (Ptr{:Void},:Int32,:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/cvodes/cvodes_bbdpre.h
@ctypedef CVLocalFnB Ptr{:Void}
@ctypedef CVCommFnB Ptr{:Void}
@c Int32 CVBBDPrecInitB (Ptr{:Void},:Int32,:Clong,:Clong,:Clong,:Clong,:Clong,:realtype,:CVLocalFnB,:CVCommFnB) shlib
@c Int32 CVBBDPrecReInitB (Ptr{:Void},:Int32,:Clong,:Clong,:realtype) shlib

# header: /usr/local/include/cvodes/cvodes_dense.h
@c Int32 CVDenseB (Ptr{:Void},:Int32,:Clong) shlib

# header: /usr/local/include/cvodes/cvodes_diag.h
@c Int32 CVDiagB (Ptr{:Void},:Int32) shlib

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
@c Int32 CVodeQuadInit (Ptr{:Void},:CVQuadRhsFn,:N_Vector) shlib
@c Int32 CVodeQuadReInit (Ptr{:Void},:N_Vector) shlib
@c Int32 CVodeQuadSStolerances (Ptr{:Void},:realtype,:realtype) shlib
@c Int32 CVodeQuadSVtolerances (Ptr{:Void},:realtype,:N_Vector) shlib
@c Int32 CVodeSensInit (Ptr{:Void},:Int32,:Int32,:CVSensRhsFn,Ptr{:N_Vector}) shlib
@c Int32 CVodeSensInit1 (Ptr{:Void},:Int32,:Int32,:CVSensRhs1Fn,Ptr{:N_Vector}) shlib
@c Int32 CVodeSensReInit (Ptr{:Void},:Int32,Ptr{:N_Vector}) shlib
@c Int32 CVodeSensSStolerances (Ptr{:Void},:realtype,Ptr{:realtype}) shlib
@c Int32 CVodeSensSVtolerances (Ptr{:Void},:realtype,Ptr{:N_Vector}) shlib
@c Int32 CVodeSensEEtolerances (Ptr{:Void},) shlib
@c Int32 CVodeQuadSensInit (Ptr{:Void},:CVQuadSensRhsFn,Ptr{:N_Vector}) shlib
@c Int32 CVodeQuadSensReInit (Ptr{:Void},Ptr{:N_Vector}) shlib
@c Int32 CVodeQuadSensSStolerances (Ptr{:Void},:realtype,Ptr{:realtype}) shlib
@c Int32 CVodeQuadSensSVtolerances (Ptr{:Void},:realtype,Ptr{:N_Vector}) shlib
@c Int32 CVodeQuadSensEEtolerances (Ptr{:Void},) shlib
@c Union{} CVodeQuadFree (Ptr{:Void},) shlib
@c Union{} CVodeSensFree (Ptr{:Void},) shlib
@c Union{} CVodeQuadSensFree (Ptr{:Void},) shlib
@c Int32 CVodeSetQuadErrCon (Ptr{:Void},:Int32) shlib
@c Int32 CVodeSetSensDQMethod (Ptr{:Void},:Int32,:realtype) shlib
@c Int32 CVodeSetSensErrCon (Ptr{:Void},:Int32) shlib
@c Int32 CVodeSetSensMaxNonlinIters (Ptr{:Void},:Int32) shlib
@c Int32 CVodeSetSensParams (Ptr{:Void},Ptr{:realtype},Ptr{:realtype},Ptr{:Int32}) shlib
@c Int32 CVodeSetQuadSensErrCon (Ptr{:Void},:Int32) shlib
@c Int32 CVodeSensToggleOff (Ptr{:Void},) shlib
@c Int32 CVodeGetQuad (Ptr{:Void},Ptr{:realtype},:N_Vector) shlib
@c Int32 CVodeGetQuadDky (Ptr{:Void},:realtype,:Int32,:N_Vector) shlib
@c Int32 CVodeGetSens (Ptr{:Void},Ptr{:realtype},Ptr{:N_Vector}) shlib
@c Int32 CVodeGetSens1 (Ptr{:Void},Ptr{:realtype},:Int32,:N_Vector) shlib
@c Int32 CVodeGetSensDky (Ptr{:Void},:realtype,:Int32,Ptr{:N_Vector}) shlib
@c Int32 CVodeGetSensDky1 (Ptr{:Void},:realtype,:Int32,:Int32,:N_Vector) shlib
@c Int32 CVodeGetQuadSens (Ptr{:Void},Ptr{:realtype},Ptr{:N_Vector}) shlib
@c Int32 CVodeGetQuadSens1 (Ptr{:Void},Ptr{:realtype},:Int32,:N_Vector) shlib
@c Int32 CVodeGetQuadSensDky (Ptr{:Void},:realtype,:Int32,Ptr{:N_Vector}) shlib
@c Int32 CVodeGetQuadSensDky1 (Ptr{:Void},:realtype,:Int32,:Int32,:N_Vector) shlib
@c Int32 CVodeGetQuadNumRhsEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetQuadNumErrTestFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetQuadErrWeights (Ptr{:Void},:N_Vector) shlib
@c Int32 CVodeGetQuadStats (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensNumRhsEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetNumRhsEvalsSens (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensNumErrTestFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensNumLinSolvSetups (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensErrWeights (Ptr{:Void},Ptr{:N_Vector}) shlib
@c Int32 CVodeGetSensStats (Ptr{:Void},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensNumNonlinSolvIters (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensNumNonlinSolvConvFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetStgrSensNumNonlinSolvIters (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetStgrSensNumNonlinSolvConvFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetSensNonlinSolvStats (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVodeGetQuadSensNumRhsEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetQuadSensNumErrTestFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetQuadSensErrWeights (Ptr{:Void},Ptr{:N_Vector}) shlib
@c Int32 CVodeGetQuadSensStats (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVodeAdjInit (Ptr{:Void},:Clong,:Int32) shlib
@c Int32 CVodeAdjReInit (Ptr{:Void},) shlib
@c Union{} CVodeAdjFree (Ptr{:Void},) shlib
@c Int32 CVodeCreateB (Ptr{:Void},:Int32,:Int32,Ptr{:Int32}) shlib
@c Int32 CVodeInitB (Ptr{:Void},:Int32,:CVRhsFnB,:realtype,:N_Vector) shlib
@c Int32 CVodeInitBS (Ptr{:Void},:Int32,:CVRhsFnBS,:realtype,:N_Vector) shlib
@c Int32 CVodeReInitB (Ptr{:Void},:Int32,:realtype,:N_Vector) shlib
@c Int32 CVodeSStolerancesB (Ptr{:Void},:Int32,:realtype,:realtype) shlib
@c Int32 CVodeSVtolerancesB (Ptr{:Void},:Int32,:realtype,:N_Vector) shlib
@c Int32 CVodeQuadInitB (Ptr{:Void},:Int32,:CVQuadRhsFnB,:N_Vector) shlib
@c Int32 CVodeQuadInitBS (Ptr{:Void},:Int32,:CVQuadRhsFnBS,:N_Vector) shlib
@c Int32 CVodeQuadReInitB (Ptr{:Void},:Int32,:N_Vector) shlib
@c Int32 CVodeQuadSStolerancesB (Ptr{:Void},:Int32,:realtype,:realtype) shlib
@c Int32 CVodeQuadSVtolerancesB (Ptr{:Void},:Int32,:realtype,:N_Vector) shlib
@c Int32 CVodeF (Ptr{:Void},:realtype,:N_Vector,Ptr{:realtype},:Int32,Ptr{:Int32}) shlib
@c Int32 CVodeB (Ptr{:Void},:realtype,:Int32) shlib
@c Int32 CVodeSetAdjNoSensi (Ptr{:Void},) shlib
@c Int32 CVodeSetIterTypeB (Ptr{:Void},:Int32,:Int32) shlib
@c Int32 CVodeSetUserDataB (Ptr{:Void},:Int32,Ptr{:Void}) shlib
@c Int32 CVodeSetMaxOrdB (Ptr{:Void},:Int32,:Int32) shlib
@c Int32 CVodeSetMaxNumStepsB (Ptr{:Void},:Int32,:Clong) shlib
@c Int32 CVodeSetStabLimDetB (Ptr{:Void},:Int32,:Int32) shlib
@c Int32 CVodeSetInitStepB (Ptr{:Void},:Int32,:realtype) shlib
@c Int32 CVodeSetMinStepB (Ptr{:Void},:Int32,:realtype) shlib
@c Int32 CVodeSetMaxStepB (Ptr{:Void},:Int32,:realtype) shlib
@c Int32 CVodeSetQuadErrConB (Ptr{:Void},:Int32,:Int32) shlib
@c Int32 CVodeGetB (Ptr{:Void},:Int32,Ptr{:realtype},:N_Vector) shlib
@c Int32 CVodeGetQuadB (Ptr{:Void},:Int32,Ptr{:realtype},:N_Vector) shlib
@c Ptr{:Void} CVodeGetAdjCVodeBmem (Ptr{:Void},:Int32) shlib
@c Int32 CVodeGetAdjY (Ptr{:Void},:realtype,:N_Vector) shlib
@ctypedef CVadjCheckPointRec Void
@c Int32 CVodeGetAdjCheckPointsInfo (Ptr{:Void},Ptr{:CVadjCheckPointRec}) shlib
@c Int32 CVodeGetAdjDataPointHermite (Ptr{:Void},:Int32,Ptr{:realtype},:N_Vector,:N_Vector) shlib
@c Int32 CVodeGetAdjDataPointPolynomial (Ptr{:Void},:Int32,Ptr{:realtype},Ptr{:Int32},:N_Vector) shlib
@c Int32 CVodeGetAdjCurrentCheckPoint (Ptr{:Void},Ptr{Ptr{:Void}}) shlib

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
@c Int32 cvEwtSet (:N_Vector,:N_Vector,Ptr{:Void}) shlib
@c Union{} cvProcessError (:CVodeMem,:Int32,Ptr{:UInt8},Ptr{:UInt8},Ptr{:UInt8}) shlib
@c Union{} cvErrHandler (:Int32,Ptr{:UInt8},Ptr{:UInt8},Ptr{:UInt8},Ptr{:Void}) shlib
@c Int32 cvSensRhsWrapper (:CVodeMem,:realtype,:N_Vector,:N_Vector,Ptr{:N_Vector},Ptr{:N_Vector},:N_Vector,:N_Vector) shlib
@c Int32 cvSensRhs1Wrapper (:CVodeMem,:realtype,:N_Vector,:N_Vector,:Int32,:N_Vector,:N_Vector,:N_Vector,:N_Vector) shlib
@c Int32 cvSensRhsInternalDQ (:Int32,:realtype,:N_Vector,:N_Vector,Ptr{:N_Vector},Ptr{:N_Vector},Ptr{:Void},:N_Vector,:N_Vector) shlib
@c Int32 cvSensRhs1InternalDQ (:Int32,:realtype,:N_Vector,:N_Vector,:Int32,:N_Vector,:N_Vector,Ptr{:Void},:N_Vector,:N_Vector) shlib

# header: /usr/local/include/cvodes/cvodes_spbcgs.h
@ctypedef CVSpilsPrecSetupFnB Ptr{:Void}
@ctypedef CVSpilsPrecSolveFnB Ptr{:Void}
@ctypedef CVSpilsJacTimesVecFnB Ptr{:Void}
@c Int32 CVSpilsSetPrecTypeB (Ptr{:Void},:Int32,:Int32) shlib
@c Int32 CVSpilsSetGSTypeB (Ptr{:Void},:Int32,:Int32) shlib
@c Int32 CVSpilsSetEpslinB (Ptr{:Void},:Int32,:realtype) shlib
@c Int32 CVSpilsSetMaxlB (Ptr{:Void},:Int32,:Int32) shlib
@c Int32 CVSpilsSetPreconditionerB (Ptr{:Void},:Int32,:CVSpilsPrecSetupFnB,:CVSpilsPrecSolveFnB) shlib
@c Int32 CVSpilsSetJacTimesVecFnB (Ptr{:Void},:Int32,:CVSpilsJacTimesVecFnB) shlib
@c Int32 CVSpbcgB (Ptr{:Void},:Int32,:Int32,:Int32) shlib

# header: /usr/local/include/cvodes/cvodes_spgmr.h
@c Int32 CVSpgmrB (Ptr{:Void},:Int32,:Int32,:Int32) shlib

# header: /usr/local/include/cvodes/cvodes_spils.h

# header: /usr/local/include/cvodes/cvodes_sptfqmr.h
@c Int32 CVSptfqmrB (Ptr{:Void},:Int32,:Int32,:Int32) shlib

