
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

# header: /usr/local/include/idas/idas_band.h
@ctypedef IDADlsDenseJacFnB Ptr{:Void}
@ctypedef IDADlsBandJacFnB Ptr{:Void}
@c Int32 IDADlsSetDenseJacFnB (Ptr{:None},:Int32,:IDADlsDenseJacFnB) shlib
@c Int32 IDADlsSetBandJacFnB (Ptr{:None},:Int32,:IDADlsBandJacFnB) shlib
@c Int32 IDABandB (Ptr{:None},:Int32,:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/idas/idas_bbdpre.h
@ctypedef IDABBDLocalFnB Ptr{:Void}
@ctypedef IDABBDCommFnB Ptr{:Void}
@c Int32 IDABBDPrecInitB (Ptr{:None},:Int32,:Clong,:Clong,:Clong,:Clong,:Clong,:realtype,:IDABBDLocalFnB,:IDABBDCommFnB) shlib
@c Int32 IDABBDPrecReInitB (Ptr{:None},:Int32,:Clong,:Clong,:realtype) shlib

# header: /usr/local/include/idas/idas_dense.h
@c Int32 IDADenseB (Ptr{:None},:Int32,:Clong) shlib

# header: /usr/local/include/idas/idas_direct.h

# header: /usr/local/include/idas/idas.h
@ctypedef IDAQuadRhsFn Ptr{:Void}
@ctypedef IDASensResFn Ptr{:Void}
@ctypedef IDAQuadSensRhsFn Ptr{:Void}
@ctypedef IDAResFnB Ptr{:Void}
@ctypedef IDAResFnBS Ptr{:Void}
@ctypedef IDAQuadRhsFnB Ptr{:Void}
@ctypedef IDAQuadRhsFnBS Ptr{:Void}
@c Int32 IDASetQuadErrCon (Ptr{:None},:Int32) shlib
@c Int32 IDAQuadInit (Ptr{:None},:IDAQuadRhsFn,:N_Vector) shlib
@c Int32 IDAQuadReInit (Ptr{:None},:N_Vector) shlib
@c Int32 IDAQuadSStolerances (Ptr{:None},:realtype,:realtype) shlib
@c Int32 IDAQuadSVtolerances (Ptr{:None},:realtype,:N_Vector) shlib
@c Int32 IDASetSensDQMethod (Ptr{:None},:Int32,:realtype) shlib
@c Int32 IDASetSensParams (Ptr{:None},Ptr{:realtype},Ptr{:realtype},Ptr{:Int32}) shlib
@c Int32 IDASetSensErrCon (Ptr{:None},:Int32) shlib
@c Int32 IDASetSensMaxNonlinIters (Ptr{:None},:Int32) shlib
@c Int32 IDASensInit (Ptr{:None},:Int32,:Int32,:IDASensResFn,Ptr{:N_Vector},Ptr{:N_Vector}) shlib
@c Int32 IDASensReInit (Ptr{:None},:Int32,Ptr{:N_Vector},Ptr{:N_Vector}) shlib
@c Int32 IDASensToggleOff (Ptr{:None},) shlib
@c Int32 IDASensSStolerances (Ptr{:None},:realtype,Ptr{:realtype}) shlib
@c Int32 IDASensSVtolerances (Ptr{:None},:realtype,Ptr{:N_Vector}) shlib
@c Int32 IDASensEEtolerances (Ptr{:None},) shlib
@c Int32 IDAQuadSensInit (Ptr{:None},:IDAQuadSensRhsFn,Ptr{:N_Vector}) shlib
@c Int32 IDAQuadSensReInit (Ptr{:None},Ptr{:N_Vector}) shlib
@c Int32 IDAQuadSensSStolerances (Ptr{:None},:realtype,Ptr{:realtype}) shlib
@c Int32 IDAQuadSensSVtolerances (Ptr{:None},:realtype,Ptr{:N_Vector}) shlib
@c Int32 IDAQuadSensEEtolerances (Ptr{:None},) shlib
@c Int32 IDASetQuadSensErrCon (Ptr{:None},:Int32) shlib
@c Int32 IDAGetQuad (Ptr{:None},Ptr{:realtype},:N_Vector) shlib
@c Int32 IDAGetQuadDky (Ptr{:None},:realtype,:Int32,:N_Vector) shlib
@c Int32 IDAGetQuadNumRhsEvals (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 IDAGetQuadNumErrTestFails (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 IDAGetQuadErrWeights (Ptr{:None},:N_Vector) shlib
@c Int32 IDAGetQuadStats (Ptr{:None},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDAGetSens (Ptr{:None},Ptr{:realtype},Ptr{:N_Vector}) shlib
@c Int32 IDAGetSens1 (Ptr{:None},Ptr{:realtype},:Int32,:N_Vector) shlib
@c Int32 IDAGetSensDky (Ptr{:None},:realtype,:Int32,Ptr{:N_Vector}) shlib
@c Int32 IDAGetSensDky1 (Ptr{:None},:realtype,:Int32,:Int32,:N_Vector) shlib
@c Int32 IDAGetSensConsistentIC (Ptr{:None},Ptr{:N_Vector},Ptr{:N_Vector}) shlib
@c Int32 IDAGetSensNumResEvals (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 IDAGetNumResEvalsSens (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 IDAGetSensNumErrTestFails (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 IDAGetSensNumLinSolvSetups (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 IDAGetSensErrWeights (Ptr{:None},:N_Vector_S) shlib
@c Int32 IDAGetSensStats (Ptr{:None},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDAGetSensNumNonlinSolvIters (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 IDAGetSensNumNonlinSolvConvFails (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 IDAGetSensNonlinSolvStats (Ptr{:None},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDAGetQuadSensNumRhsEvals (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 IDAGetQuadSensNumErrTestFails (Ptr{:None},Ptr{:Clong}) shlib
@c Int32 IDAGetQuadSensErrWeights (Ptr{:None},Ptr{:N_Vector}) shlib
@c Int32 IDAGetQuadSensStats (Ptr{:None},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 IDAGetQuadSens (Ptr{:None},Ptr{:realtype},Ptr{:N_Vector}) shlib
@c Int32 IDAGetQuadSens1 (Ptr{:None},Ptr{:realtype},:Int32,:N_Vector) shlib
@c Int32 IDAGetQuadSensDky (Ptr{:None},:realtype,:Int32,Ptr{:N_Vector}) shlib
@c Int32 IDAGetQuadSensDky1 (Ptr{:None},:realtype,:Int32,:Int32,:N_Vector) shlib
@c None IDAQuadFree (Ptr{:None},) shlib
@c None IDASensFree (Ptr{:None},) shlib
@c None IDAQuadSensFree (Ptr{:None},) shlib
@c Int32 IDAAdjInit (Ptr{:None},:Clong,:Int32) shlib
@c Int32 IDAAdjReInit (Ptr{:None},) shlib
@c None IDAAdjFree (Ptr{:None},) shlib
@c Int32 IDACreateB (Ptr{:None},Ptr{:Int32}) shlib
@c Int32 IDAInitB (Ptr{:None},:Int32,:IDAResFnB,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDAInitBS (Ptr{:None},:Int32,:IDAResFnBS,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDAReInitB (Ptr{:None},:Int32,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDASStolerancesB (Ptr{:None},:Int32,:realtype,:realtype) shlib
@c Int32 IDASVtolerancesB (Ptr{:None},:Int32,:realtype,:N_Vector) shlib
@c Int32 IDAQuadInitB (Ptr{:None},:Int32,:IDAQuadRhsFnB,:N_Vector) shlib
@c Int32 IDAQuadInitBS (Ptr{:None},:Int32,:IDAQuadRhsFnBS,:N_Vector) shlib
@c Int32 IDAQuadReInitB (Ptr{:None},:Int32,:N_Vector) shlib
@c Int32 IDAQuadSStolerancesB (Ptr{:None},:Int32,:realtype,:realtype) shlib
@c Int32 IDAQuadSVtolerancesB (Ptr{:None},:Int32,:realtype,:N_Vector) shlib
@c Int32 IDACalcICB (Ptr{:None},:Int32,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDACalcICBS (Ptr{:None},:Int32,:realtype,:N_Vector,:N_Vector,Ptr{:N_Vector},Ptr{:N_Vector}) shlib
@c Int32 IDASolveF (Ptr{:None},:realtype,Ptr{:realtype},:N_Vector,:N_Vector,:Int32,Ptr{:Int32}) shlib
@c Int32 IDASolveB (Ptr{:None},:realtype,:Int32) shlib
@c Int32 IDASetAdjNoSensi (Ptr{:None},) shlib
@c Int32 IDASetUserDataB (Ptr{:None},:Int32,Ptr{:None}) shlib
@c Int32 IDASetMaxOrdB (Ptr{:None},:Int32,:Int32) shlib
@c Int32 IDASetMaxNumStepsB (Ptr{:None},:Int32,:Clong) shlib
@c Int32 IDASetInitStepB (Ptr{:None},:Int32,:realtype) shlib
@c Int32 IDASetMaxStepB (Ptr{:None},:Int32,:realtype) shlib
@c Int32 IDASetSuppressAlgB (Ptr{:None},:Int32,:Int32) shlib
@c Int32 IDASetIdB (Ptr{:None},:Int32,:N_Vector) shlib
@c Int32 IDASetConstraintsB (Ptr{:None},:Int32,:N_Vector) shlib
@c Int32 IDASetQuadErrConB (Ptr{:None},:Int32,:Int32) shlib
@c Int32 IDAGetB (Ptr{:None},:Int32,Ptr{:realtype},:N_Vector,:N_Vector) shlib
@c Int32 IDAGetQuadB (Ptr{:None},:Int32,Ptr{:realtype},:N_Vector) shlib
@c Ptr{:None} IDAGetAdjIDABmem (Ptr{:None},:Int32) shlib
@c Int32 IDAGetConsistentICB (Ptr{:None},:Int32,:N_Vector,:N_Vector) shlib
@c Int32 IDAGetAdjY (Ptr{:None},:realtype,:N_Vector,:N_Vector) shlib
@ctypedef IDAadjCheckPointRec Void
@c Int32 IDAGetAdjCheckPointsInfo (Ptr{:None},Ptr{:IDAadjCheckPointRec}) shlib
@c Int32 IDAGetAdjDataPointHermite (Ptr{:None},:Int32,Ptr{:realtype},:N_Vector,:N_Vector) shlib
@c Int32 IDAGetAdjDataPointPolynomial (Ptr{:None},:Int32,Ptr{:realtype},Ptr{:Int32},:N_Vector) shlib
@c Int32 IDAGetAdjCurrentCheckPoint (Ptr{:None},Ptr{Ptr{:None}}) shlib

# header: /usr/local/include/idas/idas_impl.h
@ctypedef IDAadjMem Ptr{:Void}
@ctypedef IDABMem Ptr{:Void}
@ctypedef IDAAMMallocFn Ptr{:Void}
@ctypedef IDAAMFreeFn Ptr{:Void}
@ctypedef IDAAGetYFn Ptr{:Void}
@ctypedef IDAAStorePntFn Ptr{:Void}
@c Int32 IDASensResDQ (:Int32,:realtype,:N_Vector,:N_Vector,:N_Vector,Ptr{:N_Vector},Ptr{:N_Vector},Ptr{:N_Vector},Ptr{:None},:N_Vector,:N_Vector,:N_Vector) shlib

# header: /usr/local/include/idas/idas_spbcgs.h
@ctypedef IDASpilsPrecSetupFnB Ptr{:Void}
@ctypedef IDASpilsPrecSolveFnB Ptr{:Void}
@ctypedef IDASpilsJacTimesVecFnB Ptr{:Void}
@c Int32 IDASpilsSetGSTypeB (Ptr{:None},:Int32,:Int32) shlib
@c Int32 IDASpilsSetMaxRestartsB (Ptr{:None},:Int32,:Int32) shlib
@c Int32 IDASpilsSetEpsLinB (Ptr{:None},:Int32,:realtype) shlib
@c Int32 IDASpilsSetMaxlB (Ptr{:None},:Int32,:Int32) shlib
@c Int32 IDASpilsSetIncrementFactorB (Ptr{:None},:Int32,:realtype) shlib
@c Int32 IDASpilsSetPreconditionerB (Ptr{:None},:Int32,:IDASpilsPrecSetupFnB,:IDASpilsPrecSolveFnB) shlib
@c Int32 IDASpilsSetJacTimesVecFnB (Ptr{:None},:Int32,:IDASpilsJacTimesVecFnB) shlib
@c Int32 IDASpbcgB (Ptr{:None},:Int32,:Int32) shlib

# header: /usr/local/include/idas/idas_spgmr.h
@c Int32 IDASpgmrB (Ptr{:None},:Int32,:Int32) shlib

# header: /usr/local/include/idas/idas_spils.h

# header: /usr/local/include/idas/idas_sptfqmr.h
@c Int32 IDASptfqmrB (Ptr{:None},:Int32,:Int32) shlib

