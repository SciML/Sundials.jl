# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/nvector/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,shlib),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,shlib),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,shlib),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,shlib),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,shlib),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,shlib),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,shlib),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,shlib),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,shlib),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,shlib),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,shlib),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,shlib),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,shlib),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,shlib),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,shlib),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,shlib),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,shlib),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,shlib),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,shlib),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,shlib),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,shlib),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,shlib),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,shlib),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,shlib),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,shlib),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,shlib),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,shlib),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,shlib),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,shlib),Void,(Ptr{N_Vector},Cint),vs,count)
end

function N_VNew_Serial(vec_length::Clong)
    ccall((:N_VNew_Serial,shlib),N_Vector,(Clong,),vec_length)
end

function N_VNewEmpty_Serial(vec_length::Clong)
    ccall((:N_VNewEmpty_Serial,shlib),N_Vector,(Clong,),vec_length)
end

function N_VMake_Serial(vec_length::Clong,v_data)
    ccall((:N_VMake_Serial,shlib),N_Vector,(Clong,Ptr{realtype}),vec_length,v_data)
end

function N_VCloneVectorArray_Serial(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray_Serial,shlib),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArrayEmpty_Serial(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArrayEmpty_Serial,shlib),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray_Serial(vs,count::Cint)
    ccall((:N_VDestroyVectorArray_Serial,shlib),Void,(Ptr{N_Vector},Cint),vs,count)
end

function N_VGetLength_Serial(v::N_Vector)
    ccall((:N_VGetLength_Serial,shlib),Clong,(N_Vector,),v)
end

function N_VPrint_Serial(v::N_Vector)
    ccall((:N_VPrint_Serial,shlib),Void,(N_Vector,),v)
end

function N_VGetVectorID_Serial(v::N_Vector)
    ccall((:N_VGetVectorID_Serial,shlib),N_Vector_ID,(N_Vector,),v)
end

function N_VCloneEmpty_Serial(w::N_Vector)
    ccall((:N_VCloneEmpty_Serial,shlib),N_Vector,(N_Vector,),w)
end

function N_VClone_Serial(w::N_Vector)
    ccall((:N_VClone_Serial,shlib),N_Vector,(N_Vector,),w)
end

function N_VDestroy_Serial(v::N_Vector)
    ccall((:N_VDestroy_Serial,shlib),Void,(N_Vector,),v)
end

function N_VSpace_Serial(v::N_Vector,lrw,liw)
    ccall((:N_VSpace_Serial,shlib),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer_Serial(v::N_Vector)
    ccall((:N_VGetArrayPointer_Serial,shlib),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer_Serial(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer_Serial,shlib),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum_Serial(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum_Serial,shlib),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst_Serial(c::realtype,z::N_Vector)
    ccall((:N_VConst_Serial,shlib),Void,(realtype,N_Vector),c,z)
end

function N_VProd_Serial(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd_Serial,shlib),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv_Serial(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv_Serial,shlib),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale_Serial(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale_Serial,shlib),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs_Serial(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs_Serial,shlib),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv_Serial(x::N_Vector,z::N_Vector)
    ccall((:N_VInv_Serial,shlib),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst_Serial(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst_Serial,shlib),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd_Serial(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd_Serial,shlib),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm_Serial(x::N_Vector)
    ccall((:N_VMaxNorm_Serial,shlib),realtype,(N_Vector,),x)
end

function N_VWrmsNorm_Serial(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm_Serial,shlib),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask_Serial(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask_Serial,shlib),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin_Serial(x::N_Vector)
    ccall((:N_VMin_Serial,shlib),realtype,(N_Vector,),x)
end

function N_VWL2Norm_Serial(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm_Serial,shlib),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm_Serial(x::N_Vector)
    ccall((:N_VL1Norm_Serial,shlib),realtype,(N_Vector,),x)
end

function N_VCompare_Serial(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare_Serial,shlib),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest_Serial(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest_Serial,shlib),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask_Serial(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask_Serial,shlib),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient_Serial(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient_Serial,shlib),realtype,(N_Vector,N_Vector),num,denom)
end
