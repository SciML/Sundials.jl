
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

# header: /usr/local/include/idas/idas_band.h
@ctypedef IDADlsDenseJacFnB Ptr{:Void}
@ctypedef IDADlsBandJacFnB Ptr{:Void}
@c Int32 IDADlsSetDenseJacFnB (Ptr{:Void},:Int32,:IDADlsDenseJacFnB) shlib
@c Int32 IDADlsSetBandJacFnB (Ptr{:Void},:Int32,:IDADlsBandJacFnB) shlib
@c Int32 IDABandB (Ptr{:Void},:Int32,:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/idas/idas_bbdpre.h
@ctypedef IDABBDLocalFnB Ptr{:Void}
@ctypedef IDABBDCommFnB Ptr{:Void}
@c Int32 IDABBDPrecInitB (Ptr{:Void},:Int32,:Clong,:Clong,:Clong,:Clong,:Clong,:realtype,:IDABBDLocalFnB,:IDABBDCommFnB) shlib
@c Int32 IDABBDPrecReInitB (Ptr{:Void},:Int32,:Clong,:Clong,:realtype) shlib

# header: /usr/local/include/idas/idas_dense.h
@c Int32 IDADenseB (Ptr{:Void},:Int32,:Clong) shlib

# header: /usr/local/include/idas/idas_direct.h

# header: /usr/local/include/idas/idas.h
@ctypedef IDAQuadRhsFn Ptr{:Void}
@ctypedef IDASensResFn Ptr{:Void}
@ctypedef IDAQuadSensRhsFn Ptr{:Void}
@ctypedef IDAResFnB Ptr{:Void}
@ctypedef IDAResFnBS Ptr{:Void}
@ctypedef IDAQuadRhsFnB Ptr{:Void}
@ctypedef IDAQuadRhsFnBS Ptr{:Void}
@c Int32 IDASetQuadErrCon (Ptr{:Void},:Int32) shlib
@c Int32 IDAQuadInit (Ptr{:Void},:IDAQuadRhsFn,:N_Vector) shlib
@c Int32 IDAQuadReInit (Ptr{:Void},:N_Vector) shlib
@c Int32 IDAQuadSStolerances (Ptr{:Void},:realtype,:realtype) shlib
@c Int32 IDAQuadSVtolerances (Ptr{:Void},:realtype,:N_Vector) shlib
@c Int32 IDASetSensDQMethod (Ptr{:Void},:Int32,:realtype) shlib
@c Int32 IDASetSensParams (Ptr{:Void},Ptr{:realtype},Ptr{:realtype},Ptr{:Int32}) shlib
@c Int32 IDASetSensErrCon (Ptr{:Void},:Int32) shlib
@c Int32 IDASetSensMaxNonlinIters (Ptr{:Void},:Int32) shlib
@c Int32 IDASensInit (Ptr{:Void},:Int32,:Int32,:IDASensResFn,Ptr{:N_Vector},Ptr{:N_Vector}) shlib
@c Int32 IDASensReInit (Ptr{:Void},:Int32,Ptr{:N_Vector},Ptr{:N_Vector}) shlib
@c Int32 IDASensToggleOff (Ptr{:Void},) shlib
@c Int32 IDASensSStolerances (Ptr{:Void},:realtype,Ptr{:realtype}) shlib
@c Int32 IDASensSVtolerances (Ptr{:Void},:realtype,Ptr{:N_Vector}) shlib
@c Int32 IDASensEEtolerances (Ptr{:Void},) shlib
@c Int32 IDAQuadSensInit (Ptr{:Void},:IDAQuadSensRhsFn,Ptr{:N_Vector}) shlib
@c Int32 IDAQuadSensReInit (Ptr{:Void},Ptr{:N_Vector}) shlib
@c Int32 IDAQuadSensSStolerances (Ptr{:Void},:realtype,Ptr{:realtype}) shlib
@c Int32 IDAQuadSensSVtolerances (Ptr{:Void},:realtype,Ptr{:N_Vector}) shlib
@c Int32 IDAQuadSensEEtolerances (Ptr{:Void},) shlib
@c Int32 IDASetQuadSensErrCon (Ptr{:Void},:Int32) shlib
@c Int32 IDAGetQuad (Ptr{:Void},Ptr{:realtype},:N_Vector) shlib
@c Int32 IDAGetQuadDky (Ptr{:Void},:realtype,:Int32,:N_Vector) shlib
@c Int32 IDAGetQuadNumRhsEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetQuadNumErrTestFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetQuadErrWeights (Ptr{:Void},:N_Vector) shlib
@c Int32 IDAGetQuadStats (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDAGetSens (Ptr{:Void},Ptr{:realtype},Ptr{:N_Vector}) shlib
@c Int32 IDAGetSens1 (Ptr{:Void},Ptr{:realtype},:Int32,:N_Vector) shlib
@c Int32 IDAGetSensDky (Ptr{:Void},:realtype,:Int32,Ptr{:N_Vector}) shlib
@c Int32 IDAGetSensDky1 (Ptr{:Void},:realtype,:Int32,:Int32,:N_Vector) shlib
@c Int32 IDAGetSensConsistentIC (Ptr{:Void},Ptr{:N_Vector},Ptr{:N_Vector}) shlib
@c Int32 IDAGetSensNumResEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetNumResEvalsSens (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetSensNumErrTestFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetSensNumLinSolvSetups (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetSensErrWeights (Ptr{:Void},:N_Vector_S) shlib
@c Int32 IDAGetSensStats (Ptr{:Void},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDAGetSensNumNonlinSolvIters (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetSensNumNonlinSolvConvFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetSensNonlinSolvStats (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDAGetQuadSensNumRhsEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetQuadSensNumErrTestFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 IDAGetQuadSensErrWeights (Ptr{:Void},Ptr{:N_Vector}) shlib
@c Int32 IDAGetQuadSensStats (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDAGetQuadSens (Ptr{:Void},Ptr{:realtype},Ptr{:N_Vector}) shlib
@c Int32 IDAGetQuadSens1 (Ptr{:Void},Ptr{:realtype},:Int32,:N_Vector) shlib
@c Int32 IDAGetQuadSensDky (Ptr{:Void},:realtype,:Int32,Ptr{:N_Vector}) shlib
@c Int32 IDAGetQuadSensDky1 (Ptr{:Void},:realtype,:Int32,:Int32,:N_Vector) shlib
@c Union{} IDAQuadFree (Ptr{:Void},) shlib
@c Union{} IDASensFree (Ptr{:Void},) shlib
@c Union{} IDAQuadSensFree (Ptr{:Void},) shlib
@c Int32 IDAAdjInit (Ptr{:Void},:Clong,:Int32) shlib
@c Int32 IDAAdjReInit (Ptr{:Void},) shlib
@c Union{} IDAAdjFree (Ptr{:Void},) shlib
@c Int32 IDACreateB (Ptr{:Void},Ptr{:Int32}) shlib
@c Int32 IDAInitB (Ptr{:Void},:Int32,:IDAResFnB,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDAInitBS (Ptr{:Void},:Int32,:IDAResFnBS,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDAReInitB (Ptr{:Void},:Int32,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDASStolerancesB (Ptr{:Void},:Int32,:realtype,:realtype) shlib
@c Int32 IDASVtolerancesB (Ptr{:Void},:Int32,:realtype,:N_Vector) shlib
@c Int32 IDAQuadInitB (Ptr{:Void},:Int32,:IDAQuadRhsFnB,:N_Vector) shlib
@c Int32 IDAQuadInitBS (Ptr{:Void},:Int32,:IDAQuadRhsFnBS,:N_Vector) shlib
@c Int32 IDAQuadReInitB (Ptr{:Void},:Int32,:N_Vector) shlib
@c Int32 IDAQuadSStolerancesB (Ptr{:Void},:Int32,:realtype,:realtype) shlib
@c Int32 IDAQuadSVtolerancesB (Ptr{:Void},:Int32,:realtype,:N_Vector) shlib
@c Int32 IDACalcICB (Ptr{:Void},:Int32,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDACalcICBS (Ptr{:Void},:Int32,:realtype,:N_Vector,:N_Vector,Ptr{:N_Vector},Ptr{:N_Vector}) shlib
@c Int32 IDASolveF (Ptr{:Void},:realtype,Ptr{:realtype},:N_Vector,:N_Vector,:Int32,Ptr{:Int32}) shlib
@c Int32 IDASolveB (Ptr{:Void},:realtype,:Int32) shlib
@c Int32 IDASetAdjNoSensi (Ptr{:Void},) shlib
@c Int32 IDASetUserDataB (Ptr{:Void},:Int32,Ptr{:Void}) shlib
@c Int32 IDASetMaxOrdB (Ptr{:Void},:Int32,:Int32) shlib
@c Int32 IDASetMaxNumStepsB (Ptr{:Void},:Int32,:Clong) shlib
@c Int32 IDASetInitStepB (Ptr{:Void},:Int32,:realtype) shlib
@c Int32 IDASetMaxStepB (Ptr{:Void},:Int32,:realtype) shlib
@c Int32 IDASetSuppressAlgB (Ptr{:Void},:Int32,:Int32) shlib
@c Int32 IDASetIdB (Ptr{:Void},:Int32,:N_Vector) shlib
@c Int32 IDASetConstraintsB (Ptr{:Void},:Int32,:N_Vector) shlib
@c Int32 IDASetQuadErrConB (Ptr{:Void},:Int32,:Int32) shlib
@c Int32 IDAGetB (Ptr{:Void},:Int32,Ptr{:realtype},:N_Vector,:N_Vector) shlib
@c Int32 IDAGetQuadB (Ptr{:Void},:Int32,Ptr{:realtype},:N_Vector) shlib
@c Ptr{:Void} IDAGetAdjIDABmem (Ptr{:Void},:Int32) shlib
@c Int32 IDAGetConsistentICB (Ptr{:Void},:Int32,:N_Vector,:N_Vector) shlib
@c Int32 IDAGetAdjY (Ptr{:Void},:realtype,:N_Vector,:N_Vector) shlib
@ctypedef IDAadjCheckPointRec Void
@c Int32 IDAGetAdjCheckPointsInfo (Ptr{:Void},Ptr{:IDAadjCheckPointRec}) shlib
@c Int32 IDAGetAdjDataPointHermite (Ptr{:Void},:Int32,Ptr{:realtype},:N_Vector,:N_Vector) shlib
@c Int32 IDAGetAdjDataPointPolynomial (Ptr{:Void},:Int32,Ptr{:realtype},Ptr{:Int32},:N_Vector) shlib
@c Int32 IDAGetAdjCurrentCheckPoint (Ptr{:Void},Ptr{Ptr{:Void}}) shlib

# header: /usr/local/include/idas/idas_impl.h
@ctypedef IDAadjMem Ptr{:Void}
@ctypedef IDABMem Ptr{:Void}
@ctypedef IDAAMMallocFn Ptr{:Void}
@ctypedef IDAAMFreeFn Ptr{:Void}
@ctypedef IDAAGetYFn Ptr{:Void}
@ctypedef IDAAStorePntFn Ptr{:Void}
@c Int32 IDASensResDQ (:Int32,:realtype,:N_Vector,:N_Vector,:N_Vector,Ptr{:N_Vector},Ptr{:N_Vector},Ptr{:N_Vector},Ptr{:Void},:N_Vector,:N_Vector,:N_Vector) shlib

# header: /usr/local/include/idas/idas_spbcgs.h
@ctypedef IDASpilsPrecSetupFnB Ptr{:Void}
@ctypedef IDASpilsPrecSolveFnB Ptr{:Void}
@ctypedef IDASpilsJacTimesVecFnB Ptr{:Void}
@c Int32 IDASpilsSetGSTypeB (Ptr{:Void},:Int32,:Int32) shlib
@c Int32 IDASpilsSetMaxRestartsB (Ptr{:Void},:Int32,:Int32) shlib
@c Int32 IDASpilsSetEpsLinB (Ptr{:Void},:Int32,:realtype) shlib
@c Int32 IDASpilsSetMaxlB (Ptr{:Void},:Int32,:Int32) shlib
@c Int32 IDASpilsSetIncrementFactorB (Ptr{:Void},:Int32,:realtype) shlib
@c Int32 IDASpilsSetPreconditionerB (Ptr{:Void},:Int32,:IDASpilsPrecSetupFnB,:IDASpilsPrecSolveFnB) shlib
@c Int32 IDASpilsSetJacTimesVecFnB (Ptr{:Void},:Int32,:IDASpilsJacTimesVecFnB) shlib
@c Int32 IDASpbcgB (Ptr{:Void},:Int32,:Int32) shlib

# header: /usr/local/include/idas/idas_spgmr.h
@c Int32 IDASpgmrB (Ptr{:Void},:Int32,:Int32) shlib

# header: /usr/local/include/idas/idas_spils.h

# header: /usr/local/include/idas/idas_sptfqmr.h
@c Int32 IDASptfqmrB (Ptr{:Void},:Int32,:Int32) shlib

