
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

# header: /usr/local/include/sundials/sundials_band.h
@ctypedef DlsMat Ptr{:Void}
@c DlsMat NewDenseMat (:Clong,:Clong) shlib
@c DlsMat NewBandMat (:Clong,:Clong,:Clong,:Clong) shlib
@c None DestroyMat (:DlsMat,) shlib
@c Ptr{:Int32} NewIntArray (:Int32,) shlib
@c Ptr{:Clong} NewLintArray (:Clong,) shlib
@c Ptr{:realtype} NewRealArray (:Clong,) shlib
@c None DestroyArray (Ptr{:None},) shlib
@c None AddIdentity (:DlsMat,) shlib
@c None SetToZero (:DlsMat,) shlib
@c None PrintMat (:DlsMat,) shlib
@c Ptr{Ptr{:realtype}} newDenseMat (:Clong,:Clong) shlib
@c Ptr{Ptr{:realtype}} newBandMat (:Clong,:Clong,:Clong) shlib
@c None destroyMat (Ptr{Ptr{:realtype}},) shlib
@c Ptr{:Int32} newIntArray (:Int32,) shlib
@c Ptr{:Clong} newLintArray (:Clong,) shlib
@c Ptr{:realtype} newRealArray (:Clong,) shlib
@c None destroyArray (Ptr{:None},) shlib
@c Clong BandGBTRF (:DlsMat,Ptr{:Clong}) shlib
@c Clong bandGBTRF (Ptr{Ptr{:realtype}},:Clong,:Clong,:Clong,:Clong,Ptr{:Clong}) shlib
@c None BandGBTRS (:DlsMat,Ptr{:Clong},Ptr{:realtype}) shlib
@c None bandGBTRS (Ptr{Ptr{:realtype}},:Clong,:Clong,:Clong,Ptr{:Clong},Ptr{:realtype}) shlib
@c None BandCopy (:DlsMat,:DlsMat,:Clong,:Clong) shlib
@c None bandCopy (Ptr{Ptr{:realtype}},Ptr{Ptr{:realtype}},:Clong,:Clong,:Clong,:Clong,:Clong) shlib
@c None BandScale (:realtype,:DlsMat) shlib
@c None bandScale (:realtype,Ptr{Ptr{:realtype}},:Clong,:Clong,:Clong,:Clong) shlib
@c None bandAddIdentity (Ptr{Ptr{:realtype}},:Clong,:Clong) shlib

# header: /usr/local/include/sundials/sundials_config.h

# header: /usr/local/include/sundials/sundials_dense.h
@c Clong DenseGETRF (:DlsMat,Ptr{:Clong}) shlib
@c None DenseGETRS (:DlsMat,Ptr{:Clong},Ptr{:realtype}) shlib
@c Clong denseGETRF (Ptr{Ptr{:realtype}},:Clong,:Clong,Ptr{:Clong}) shlib
@c None denseGETRS (Ptr{Ptr{:realtype}},:Clong,Ptr{:Clong},Ptr{:realtype}) shlib
@c Clong DensePOTRF (:DlsMat,) shlib
@c None DensePOTRS (:DlsMat,Ptr{:realtype}) shlib
@c Clong densePOTRF (Ptr{Ptr{:realtype}},:Clong) shlib
@c None densePOTRS (Ptr{Ptr{:realtype}},:Clong,Ptr{:realtype}) shlib
@c Int32 DenseGEQRF (:DlsMat,Ptr{:realtype},Ptr{:realtype}) shlib
@c Int32 DenseORMQR (:DlsMat,Ptr{:realtype},Ptr{:realtype},Ptr{:realtype},Ptr{:realtype}) shlib
@c Int32 denseGEQRF (Ptr{Ptr{:realtype}},:Clong,:Clong,Ptr{:realtype},Ptr{:realtype}) shlib
@c Int32 denseORMQR (Ptr{Ptr{:realtype}},:Clong,:Clong,Ptr{:realtype},Ptr{:realtype},Ptr{:realtype},Ptr{:realtype}) shlib
@c None DenseCopy (:DlsMat,:DlsMat) shlib
@c None denseCopy (Ptr{Ptr{:realtype}},Ptr{Ptr{:realtype}},:Clong,:Clong) shlib
@c None DenseScale (:realtype,:DlsMat) shlib
@c None denseScale (:realtype,Ptr{Ptr{:realtype}},:Clong,:Clong) shlib
@c None denseAddIdentity (Ptr{Ptr{:realtype}},:Clong) shlib

# header: /usr/local/include/sundials/sundials_direct.h

# header: /usr/local/include/sundials/sundials_fnvector.h

# header: /usr/local/include/sundials/sundials_iterative.h
# enum ANONYMOUS
@ctypedef ANONYMOUS Uint32
const PREC_NONE = 0
const PREC_LEFT = 1
const PREC_RIGHT = 2
const PREC_BOTH = 3
# end
# enum ATimesFn
@ctypedef ATimesFn Uint32
const MODIFIED_GS = 1
const CLASSICAL_GS = 2
# end
@ctypedef PSolveFn Ptr{:Void}
@c Int32 ModifiedGS (Ptr{:N_Vector},Ptr{Ptr{:realtype}},:Int32,:Int32,Ptr{:realtype}) shlib
@c Int32 ClassicalGS (Ptr{:N_Vector},Ptr{Ptr{:realtype}},:Int32,:Int32,Ptr{:realtype},:N_Vector,Ptr{:realtype}) shlib
@c Int32 QRfact (:Int32,Ptr{Ptr{:realtype}},Ptr{:realtype},:Int32) shlib
@c Int32 QRsol (:Int32,Ptr{Ptr{:realtype}},Ptr{:realtype},Ptr{:realtype}) shlib

# header: /usr/local/include/sundials/sundials_math.h
@c realtype RPowerI (:realtype,:Int32) shlib
@c realtype RPowerR (:realtype,:realtype) shlib
@c realtype RSqrt (:realtype,) shlib
@c realtype RAbs (:realtype,) shlib
@c realtype RExp (:realtype,) shlib

# header: /usr/local/include/sundials/sundials_nvector.h

# header: /usr/local/include/sundials/sundials_spbcgs.h
@ctypedef SpbcgMemRec Void
@ctypedef SpbcgMem Ptr{:Void}
@c SpbcgMem SpbcgMalloc (:Int32,:N_Vector) shlib
@c Int32 SpbcgSolve (:SpbcgMem,Ptr{:None},:N_Vector,:N_Vector,:Int32,:realtype,Ptr{:None},:N_Vector,:N_Vector,:ATimesFn,:PSolveFn,Ptr{:realtype},Ptr{:Int32},Ptr{:Int32}) shlib
@c None SpbcgFree (:SpbcgMem,) shlib

# header: /usr/local/include/sundials/sundials_spgmr.h
@ctypedef SpgmrMemRec Void
@ctypedef SpgmrMem Ptr{:Void}
@c SpgmrMem SpgmrMalloc (:Int32,:N_Vector) shlib
@c Int32 SpgmrSolve (:SpgmrMem,Ptr{:None},:N_Vector,:N_Vector,:Int32,:Int32,:realtype,:Int32,Ptr{:None},:N_Vector,:N_Vector,:ATimesFn,:PSolveFn,Ptr{:realtype},Ptr{:Int32},Ptr{:Int32}) shlib
@c None SpgmrFree (:SpgmrMem,) shlib

# header: /usr/local/include/sundials/sundials_sptfqmr.h
@ctypedef SptfqmrMemRec Void
@ctypedef SptfqmrMem Ptr{:Void}
@c SptfqmrMem SptfqmrMalloc (:Int32,:N_Vector) shlib
@c Int32 SptfqmrSolve (:SptfqmrMem,Ptr{:None},:N_Vector,:N_Vector,:Int32,:realtype,Ptr{:None},:N_Vector,:N_Vector,:ATimesFn,:PSolveFn,Ptr{:realtype},Ptr{:Int32},Ptr{:Int32}) shlib
@c None SptfqmrFree (:SptfqmrMem,) shlib

# header: /usr/local/include/sundials/sundials_types.h

