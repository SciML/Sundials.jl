# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/nvector/nvector_parallel.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/nvector/nvector_serial.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __N_VNew_Serial(vec_length::Clong)
    ccall((:N_VNew_Serial,libsundials_nvecserial),N_Vector,(Clong,),vec_length)
end

N_VNew_Serial(vec_length) = __N_VNew_Serial(convert(Clong,vec_length))

function __N_VNewEmpty_Serial(vec_length::Clong)
    ccall((:N_VNewEmpty_Serial,libsundials_nvecserial),N_Vector,(Clong,),vec_length)
end

N_VNewEmpty_Serial(vec_length) = __N_VNewEmpty_Serial(convert(Clong,vec_length))

function __N_VMake_Serial(vec_length::Clong,v_data::Ptr{realtype})
    ccall((:N_VMake_Serial,libsundials_nvecserial),N_Vector,(Clong,Ptr{realtype}),vec_length,v_data)
end

N_VMake_Serial(vec_length,v_data) = __N_VMake_Serial(convert(Clong,vec_length),pointer(v_data))

function __N_VCloneVectorArray_Serial(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray_Serial,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

N_VCloneVectorArray_Serial(count,w) = __N_VCloneVectorArray_Serial(count,convert(N_Vector,w))

function __N_VCloneVectorArrayEmpty_Serial(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArrayEmpty_Serial,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

N_VCloneVectorArrayEmpty_Serial(count,w) = __N_VCloneVectorArrayEmpty_Serial(count,convert(N_Vector,w))

function __N_VDestroyVectorArray_Serial(vs::Ptr{N_Vector},count::Cint)
    ccall((:N_VDestroyVectorArray_Serial,libsundials_nvecserial),Void,(Ptr{N_Vector},Cint),vs,count)
end

N_VDestroyVectorArray_Serial(vs,count) = __N_VDestroyVectorArray_Serial(pointer(vs),count)

function __N_VPrint_Serial(v::N_Vector)
    ccall((:N_VPrint_Serial,libsundials_nvecserial),Void,(N_Vector,),v)
end

N_VPrint_Serial(v) = __N_VPrint_Serial(convert(N_Vector,v))

function __N_VCloneEmpty_Serial(w::N_Vector)
    ccall((:N_VCloneEmpty_Serial,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

N_VCloneEmpty_Serial(w) = __N_VCloneEmpty_Serial(convert(N_Vector,w))

function __N_VClone_Serial(w::N_Vector)
    ccall((:N_VClone_Serial,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

N_VClone_Serial(w) = __N_VClone_Serial(convert(N_Vector,w))

function __N_VDestroy_Serial(v::N_Vector)
    ccall((:N_VDestroy_Serial,libsundials_nvecserial),Void,(N_Vector,),v)
end

N_VDestroy_Serial(v) = __N_VDestroy_Serial(convert(N_Vector,v))

function __N_VSpace_Serial(v::N_Vector,lrw::Ptr{Clong},liw::Ptr{Clong})
    ccall((:N_VSpace_Serial,libsundials_nvecserial),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

N_VSpace_Serial(v,lrw,liw) = __N_VSpace_Serial(convert(N_Vector,v),pointer(lrw),pointer(liw))

function __N_VGetArrayPointer_Serial(v::N_Vector)
    ccall((:N_VGetArrayPointer_Serial,libsundials_nvecserial),Ptr{realtype},(N_Vector,),v)
end

N_VGetArrayPointer_Serial(v) = __N_VGetArrayPointer_Serial(convert(N_Vector,v))

function __N_VSetArrayPointer_Serial(v_data::Ptr{realtype},v::N_Vector)
    ccall((:N_VSetArrayPointer_Serial,libsundials_nvecserial),Void,(Ptr{realtype},N_Vector),v_data,v)
end

N_VSetArrayPointer_Serial(v_data,v) = __N_VSetArrayPointer_Serial(pointer(v_data),convert(N_Vector,v))

function __N_VLinearSum_Serial(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum_Serial,libsundials_nvecserial),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

N_VLinearSum_Serial(a,x,b,y,z) = __N_VLinearSum_Serial(a,convert(N_Vector,x),b,convert(N_Vector,y),convert(N_Vector,z))

function __N_VConst_Serial(c::realtype,z::N_Vector)
    ccall((:N_VConst_Serial,libsundials_nvecserial),Void,(realtype,N_Vector),c,z)
end

N_VConst_Serial(c,z) = __N_VConst_Serial(c,convert(N_Vector,z))

function __N_VProd_Serial(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd_Serial,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

N_VProd_Serial(x,y,z) = __N_VProd_Serial(convert(N_Vector,x),convert(N_Vector,y),convert(N_Vector,z))

function __N_VDiv_Serial(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv_Serial,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

N_VDiv_Serial(x,y,z) = __N_VDiv_Serial(convert(N_Vector,x),convert(N_Vector,y),convert(N_Vector,z))

function __N_VScale_Serial(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale_Serial,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

N_VScale_Serial(c,x,z) = __N_VScale_Serial(c,convert(N_Vector,x),convert(N_Vector,z))

function __N_VAbs_Serial(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs_Serial,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

N_VAbs_Serial(x,z) = __N_VAbs_Serial(convert(N_Vector,x),convert(N_Vector,z))

function __N_VInv_Serial(x::N_Vector,z::N_Vector)
    ccall((:N_VInv_Serial,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

N_VInv_Serial(x,z) = __N_VInv_Serial(convert(N_Vector,x),convert(N_Vector,z))

function __N_VAddConst_Serial(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst_Serial,libsundials_nvecserial),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

N_VAddConst_Serial(x,b,z) = __N_VAddConst_Serial(convert(N_Vector,x),b,convert(N_Vector,z))

function __N_VDotProd_Serial(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd_Serial,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,y)
end

N_VDotProd_Serial(x,y) = __N_VDotProd_Serial(convert(N_Vector,x),convert(N_Vector,y))

function __N_VMaxNorm_Serial(x::N_Vector)
    ccall((:N_VMaxNorm_Serial,libsundials_nvecserial),realtype,(N_Vector,),x)
end

N_VMaxNorm_Serial(x) = __N_VMaxNorm_Serial(convert(N_Vector,x))

function __N_VWrmsNorm_Serial(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm_Serial,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

N_VWrmsNorm_Serial(x,w) = __N_VWrmsNorm_Serial(convert(N_Vector,x),convert(N_Vector,w))

function __N_VWrmsNormMask_Serial(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask_Serial,libsundials_nvecserial),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

N_VWrmsNormMask_Serial(x,w,id) = __N_VWrmsNormMask_Serial(convert(N_Vector,x),convert(N_Vector,w),convert(N_Vector,id))

function __N_VMin_Serial(x::N_Vector)
    ccall((:N_VMin_Serial,libsundials_nvecserial),realtype,(N_Vector,),x)
end

N_VMin_Serial(x) = __N_VMin_Serial(convert(N_Vector,x))

function __N_VWL2Norm_Serial(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm_Serial,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

N_VWL2Norm_Serial(x,w) = __N_VWL2Norm_Serial(convert(N_Vector,x),convert(N_Vector,w))

function __N_VL1Norm_Serial(x::N_Vector)
    ccall((:N_VL1Norm_Serial,libsundials_nvecserial),realtype,(N_Vector,),x)
end

N_VL1Norm_Serial(x) = __N_VL1Norm_Serial(convert(N_Vector,x))

function __N_VCompare_Serial(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare_Serial,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

N_VCompare_Serial(c,x,z) = __N_VCompare_Serial(c,convert(N_Vector,x),convert(N_Vector,z))

function __N_VInvTest_Serial(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest_Serial,libsundials_nvecserial),Cint,(N_Vector,N_Vector),x,z)
end

N_VInvTest_Serial(x,z) = __N_VInvTest_Serial(convert(N_Vector,x),convert(N_Vector,z))

function __N_VConstrMask_Serial(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask_Serial,libsundials_nvecserial),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

N_VConstrMask_Serial(c,x,m) = __N_VConstrMask_Serial(convert(N_Vector,c),convert(N_Vector,x),convert(N_Vector,m))

function __N_VMinQuotient_Serial(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient_Serial,libsundials_nvecserial),realtype,(N_Vector,N_Vector),num,denom)
end

N_VMinQuotient_Serial(num,denom) = __N_VMinQuotient_Serial(convert(N_Vector,num),convert(N_Vector,denom))
