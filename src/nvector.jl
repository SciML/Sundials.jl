
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

# header: /usr/local/include/nvector/nvector_parallel.h
@ctypedef realtype Float64
@ctypedef N_Vector_Ops Ptr{:Void}
@ctypedef N_Vector Ptr{:Void}
@ctypedef N_Vector_S Ptr{:N_Vector}
@c N_Vector N_VClone (:N_Vector,) shlib
@c N_Vector N_VCloneEmpty (:N_Vector,) shlib
@c None N_VDestroy (:N_Vector,) shlib
@c None N_VSpace (:N_Vector,Ptr{:Clong},Ptr{:Clong}) shlib
@c Ptr{:realtype} N_VGetArrayPointer (:N_Vector,) shlib
@c None N_VSetArrayPointer (Ptr{:realtype},:N_Vector) shlib
@c None N_VLinearSum (:realtype,:N_Vector,:realtype,:N_Vector,:N_Vector) shlib
@c None N_VConst (:realtype,:N_Vector) shlib
@c None N_VProd (:N_Vector,:N_Vector,:N_Vector) shlib
@c None N_VDiv (:N_Vector,:N_Vector,:N_Vector) shlib
@c None N_VScale (:realtype,:N_Vector,:N_Vector) shlib
@c None N_VAbs (:N_Vector,:N_Vector) shlib
@c None N_VInv (:N_Vector,:N_Vector) shlib
@c None N_VAddConst (:N_Vector,:realtype,:N_Vector) shlib
@c realtype N_VDotProd (:N_Vector,:N_Vector) shlib
@c realtype N_VMaxNorm (:N_Vector,) shlib
@c realtype N_VWrmsNorm (:N_Vector,:N_Vector) shlib
@c realtype N_VWrmsNormMask (:N_Vector,:N_Vector,:N_Vector) shlib
@c realtype N_VMin (:N_Vector,) shlib
@c realtype N_VWL2Norm (:N_Vector,:N_Vector) shlib
@c realtype N_VL1Norm (:N_Vector,) shlib
@c None N_VCompare (:realtype,:N_Vector,:N_Vector) shlib
@c Int32 N_VInvTest (:N_Vector,:N_Vector) shlib
@c Int32 N_VConstrMask (:N_Vector,:N_Vector,:N_Vector) shlib
@c realtype N_VMinQuotient (:N_Vector,:N_Vector) shlib
@c Ptr{:N_Vector} N_VCloneEmptyVectorArray (:Int32,:N_Vector) shlib
@c Ptr{:N_Vector} N_VCloneVectorArray (:Int32,:N_Vector) shlib
@c None N_VDestroyVectorArray (Ptr{:N_Vector},:Int32) shlib
@ctypedef N_VectorContent_Parallel Ptr{:Void}
@c N_Vector N_VNew_Parallel (:Int32,:Clong,:Clong) shlib
@c N_Vector N_VNewEmpty_Parallel (:Int32,:Clong,:Clong) shlib
@c N_Vector N_VMake_Parallel (:Int32,:Clong,:Clong,Ptr{:realtype}) shlib
@c Ptr{:N_Vector} N_VCloneVectorArray_Parallel (:Int32,:N_Vector) shlib
@c Ptr{:N_Vector} N_VCloneVectorArrayEmpty_Parallel (:Int32,:N_Vector) shlib
@c None N_VDestroyVectorArray_Parallel (Ptr{:N_Vector},:Int32) shlib
@c None N_VPrint_Parallel (:N_Vector,) shlib
@c N_Vector N_VCloneEmpty_Parallel (:N_Vector,) shlib
@c N_Vector N_VClone_Parallel (:N_Vector,) shlib
@c None N_VDestroy_Parallel (:N_Vector,) shlib
@c None N_VSpace_Parallel (:N_Vector,Ptr{:Clong},Ptr{:Clong}) shlib
@c Ptr{:realtype} N_VGetArrayPointer_Parallel (:N_Vector,) shlib
@c None N_VSetArrayPointer_Parallel (Ptr{:realtype},:N_Vector) shlib
@c None N_VLinearSum_Parallel (:realtype,:N_Vector,:realtype,:N_Vector,:N_Vector) shlib
@c None N_VConst_Parallel (:realtype,:N_Vector) shlib
@c None N_VProd_Parallel (:N_Vector,:N_Vector,:N_Vector) shlib
@c None N_VDiv_Parallel (:N_Vector,:N_Vector,:N_Vector) shlib
@c None N_VScale_Parallel (:realtype,:N_Vector,:N_Vector) shlib
@c None N_VAbs_Parallel (:N_Vector,:N_Vector) shlib
@c None N_VInv_Parallel (:N_Vector,:N_Vector) shlib
@c None N_VAddConst_Parallel (:N_Vector,:realtype,:N_Vector) shlib
@c realtype N_VDotProd_Parallel (:N_Vector,:N_Vector) shlib
@c realtype N_VMaxNorm_Parallel (:N_Vector,) shlib
@c realtype N_VWrmsNorm_Parallel (:N_Vector,:N_Vector) shlib
@c realtype N_VWrmsNormMask_Parallel (:N_Vector,:N_Vector,:N_Vector) shlib
@c realtype N_VMin_Parallel (:N_Vector,) shlib
@c realtype N_VWL2Norm_Parallel (:N_Vector,:N_Vector) shlib
@c realtype N_VL1Norm_Parallel (:N_Vector,) shlib
@c None N_VCompare_Parallel (:realtype,:N_Vector,:N_Vector) shlib
@c Int32 N_VInvTest_Parallel (:N_Vector,:N_Vector) shlib
@c Int32 N_VConstrMask_Parallel (:N_Vector,:N_Vector,:N_Vector) shlib
@c realtype N_VMinQuotient_Parallel (:N_Vector,:N_Vector) shlib

# header: /usr/local/include/nvector/nvector_serial.h
@ctypedef N_VectorContent_Serial Ptr{:Void}
@c N_Vector N_VNew_Serial (:Clong,) shlib
@c N_Vector N_VNewEmpty_Serial (:Clong,) shlib
@c N_Vector N_VMake_Serial (:Clong,Ptr{:realtype}) shlib
@c Ptr{:N_Vector} N_VCloneVectorArray_Serial (:Int32,:N_Vector) shlib
@c Ptr{:N_Vector} N_VCloneVectorArrayEmpty_Serial (:Int32,:N_Vector) shlib
@c None N_VDestroyVectorArray_Serial (Ptr{:N_Vector},:Int32) shlib
@c None N_VPrint_Serial (:N_Vector,) shlib
@c N_Vector N_VCloneEmpty_Serial (:N_Vector,) shlib
@c N_Vector N_VClone_Serial (:N_Vector,) shlib
@c None N_VDestroy_Serial (:N_Vector,) shlib
@c None N_VSpace_Serial (:N_Vector,Ptr{:Clong},Ptr{:Clong}) shlib
@c Ptr{:realtype} N_VGetArrayPointer_Serial (:N_Vector,) shlib
@c None N_VSetArrayPointer_Serial (Ptr{:realtype},:N_Vector) shlib
@c None N_VLinearSum_Serial (:realtype,:N_Vector,:realtype,:N_Vector,:N_Vector) shlib
@c None N_VConst_Serial (:realtype,:N_Vector) shlib
@c None N_VProd_Serial (:N_Vector,:N_Vector,:N_Vector) shlib
@c None N_VDiv_Serial (:N_Vector,:N_Vector,:N_Vector) shlib
@c None N_VScale_Serial (:realtype,:N_Vector,:N_Vector) shlib
@c None N_VAbs_Serial (:N_Vector,:N_Vector) shlib
@c None N_VInv_Serial (:N_Vector,:N_Vector) shlib
@c None N_VAddConst_Serial (:N_Vector,:realtype,:N_Vector) shlib
@c realtype N_VDotProd_Serial (:N_Vector,:N_Vector) shlib
@c realtype N_VMaxNorm_Serial (:N_Vector,) shlib
@c realtype N_VWrmsNorm_Serial (:N_Vector,:N_Vector) shlib
@c realtype N_VWrmsNormMask_Serial (:N_Vector,:N_Vector,:N_Vector) shlib
@c realtype N_VMin_Serial (:N_Vector,) shlib
@c realtype N_VWL2Norm_Serial (:N_Vector,:N_Vector) shlib
@c realtype N_VL1Norm_Serial (:N_Vector,) shlib
@c None N_VCompare_Serial (:realtype,:N_Vector,:N_Vector) shlib
@c Int32 N_VInvTest_Serial (:N_Vector,:N_Vector) shlib
@c Int32 N_VConstrMask_Serial (:N_Vector,:N_Vector,:N_Vector) shlib
@c realtype N_VMinQuotient_Serial (:N_Vector,:N_Vector) shlib

