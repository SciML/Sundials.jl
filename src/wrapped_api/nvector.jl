# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/nvector/nvector_serial.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VNew_Serial(vec_length::sunindextype)
    ccall((:N_VNew_Serial, libsundials_nvecserial), N_Vector, (sunindextype,), vec_length)
end

function N_VNewEmpty_Serial(vec_length::sunindextype)
    ccall((:N_VNewEmpty_Serial, libsundials_nvecserial), N_Vector, (sunindextype,), vec_length)
end

function N_VMake_Serial(vec_length::sunindextype, v_data)
    ccall((:N_VMake_Serial, libsundials_nvecserial), N_Vector, (sunindextype, Ptr{realtype}), vec_length, v_data)
end

function __N_VCloneVectorArray_Serial(count::Cint, w::N_Vector)
    ccall((:N_VCloneVectorArray_Serial, libsundials_nvecserial), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VCloneVectorArray_Serial(count, w)
    __w = convert(NVector, w)
    __N_VCloneVectorArray_Serial(convert(Cint, count), convert(N_Vector, __w))
end

function __N_VCloneVectorArrayEmpty_Serial(count::Cint, w::N_Vector)
    ccall((:N_VCloneVectorArrayEmpty_Serial, libsundials_nvecserial), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VCloneVectorArrayEmpty_Serial(count, w)
    __w = convert(NVector, w)
    __N_VCloneVectorArrayEmpty_Serial(convert(Cint, count), convert(N_Vector, __w))
end

function __N_VDestroyVectorArray_Serial(vs, count::Cint)
    ccall((:N_VDestroyVectorArray_Serial, libsundials_nvecserial), Cvoid, (Ptr{N_Vector}, Cint), vs, count)
end

function N_VDestroyVectorArray_Serial(vs, count)
    __N_VDestroyVectorArray_Serial(vs, convert(Cint, count))
end

function __N_VGetLength_Serial(v::N_Vector)
    ccall((:N_VGetLength_Serial, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VGetLength_Serial(v)
    __v = convert(NVector, v)
    __N_VGetLength_Serial(convert(N_Vector, __v))
end

function __N_VPrint_Serial(v::N_Vector)
    ccall((:N_VPrint_Serial, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VPrint_Serial(v)
    __v = convert(NVector, v)
    __N_VPrint_Serial(convert(N_Vector, __v))
end

function __N_VPrintFile_Serial(v::N_Vector, outfile)
    ccall((:N_VPrintFile_Serial, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{Cint}), v, outfile)
end

function N_VPrintFile_Serial(v, outfile)
    __v = convert(NVector, v)
    __N_VPrintFile_Serial(convert(N_Vector, __v), outfile)
end

function __N_VGetVectorID_Serial(v::N_Vector)
    ccall((:N_VGetVectorID_Serial, libsundials_nvecserial), N_Vector_ID, (N_Vector,), v)
end

function N_VGetVectorID_Serial(v)
    __v = convert(NVector, v)
    __N_VGetVectorID_Serial(convert(N_Vector, __v))
end

function __N_VCloneEmpty_Serial(w::N_Vector)
    ccall((:N_VCloneEmpty_Serial, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VCloneEmpty_Serial(w)
    __w = convert(NVector, w)
    __N_VCloneEmpty_Serial(convert(N_Vector, __w))
end

function __N_VClone_Serial(w::N_Vector)
    ccall((:N_VClone_Serial, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VClone_Serial(w)
    __w = convert(NVector, w)
    __N_VClone_Serial(convert(N_Vector, __w))
end

function __N_VDestroy_Serial(v::N_Vector)
    ccall((:N_VDestroy_Serial, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VDestroy_Serial(v)
    __v = convert(NVector, v)
    __N_VDestroy_Serial(convert(N_Vector, __v))
end

function __N_VSpace_Serial(v::N_Vector, lrw, liw)
    ccall((:N_VSpace_Serial, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{sunindextype}, Ptr{sunindextype}), v, lrw, liw)
end

function N_VSpace_Serial(v, lrw, liw)
    __v = convert(NVector, v)
    __N_VSpace_Serial(convert(N_Vector, __v), lrw, liw)
end

function __N_VGetArrayPointer_Serial(v::N_Vector)
    ccall((:N_VGetArrayPointer_Serial, libsundials_nvecserial), Ptr{realtype}, (N_Vector,), v)
end

function N_VGetArrayPointer_Serial(v)
    __v = convert(NVector, v)
    __N_VGetArrayPointer_Serial(convert(N_Vector, __v))
end

function __N_VSetArrayPointer_Serial(v_data, v::N_Vector)
    ccall((:N_VSetArrayPointer_Serial, libsundials_nvecserial), Cvoid, (Ptr{realtype}, N_Vector), v_data, v)
end

function N_VSetArrayPointer_Serial(v_data, v)
    __v = convert(NVector, v)
    __N_VSetArrayPointer_Serial(v_data, convert(N_Vector, __v))
end

function __N_VLinearSum_Serial(a::realtype, x::N_Vector, b::realtype, y::N_Vector, z::N_Vector)
    ccall((:N_VLinearSum_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector, realtype, N_Vector, N_Vector), a, x, b, y, z)
end

function N_VLinearSum_Serial(a, x, b, y, z)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    __z = convert(NVector, z)
    __N_VLinearSum_Serial(a, convert(N_Vector, __x), b, convert(N_Vector, __y), convert(N_Vector, __z))
end

function __N_VConst_Serial(c::realtype, z::N_Vector)
    ccall((:N_VConst_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector), c, z)
end

function N_VConst_Serial(c, z)
    __z = convert(NVector, z)
    __N_VConst_Serial(c, convert(N_Vector, __z))
end

function __N_VProd_Serial(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VProd_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VProd_Serial(x, y, z)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    __z = convert(NVector, z)
    __N_VProd_Serial(convert(N_Vector, __x), convert(N_Vector, __y), convert(N_Vector, __z))
end

function __N_VDiv_Serial(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VDiv_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VDiv_Serial(x, y, z)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    __z = convert(NVector, z)
    __N_VDiv_Serial(convert(N_Vector, __x), convert(N_Vector, __y), convert(N_Vector, __z))
end

function __N_VScale_Serial(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VScale_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VScale_Serial(c, x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    __N_VScale_Serial(c, convert(N_Vector, __x), convert(N_Vector, __z))
end

function __N_VAbs_Serial(x::N_Vector, z::N_Vector)
    ccall((:N_VAbs_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VAbs_Serial(x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    __N_VAbs_Serial(convert(N_Vector, __x), convert(N_Vector, __z))
end

function __N_VInv_Serial(x::N_Vector, z::N_Vector)
    ccall((:N_VInv_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VInv_Serial(x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    __N_VInv_Serial(convert(N_Vector, __x), convert(N_Vector, __z))
end

function __N_VAddConst_Serial(x::N_Vector, b::realtype, z::N_Vector)
    ccall((:N_VAddConst_Serial, libsundials_nvecserial), Cvoid, (N_Vector, realtype, N_Vector), x, b, z)
end

function N_VAddConst_Serial(x, b, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    __N_VAddConst_Serial(convert(N_Vector, __x), b, convert(N_Vector, __z))
end

function __N_VDotProd_Serial(x::N_Vector, y::N_Vector)
    ccall((:N_VDotProd_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, y)
end

function N_VDotProd_Serial(x, y)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    __N_VDotProd_Serial(convert(N_Vector, __x), convert(N_Vector, __y))
end

function __N_VMaxNorm_Serial(x::N_Vector)
    ccall((:N_VMaxNorm_Serial, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VMaxNorm_Serial(x)
    __x = convert(NVector, x)
    __N_VMaxNorm_Serial(convert(N_Vector, __x))
end

function __N_VWrmsNorm_Serial(x::N_Vector, w::N_Vector)
    ccall((:N_VWrmsNorm_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWrmsNorm_Serial(x, w)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    __N_VWrmsNorm_Serial(convert(N_Vector, __x), convert(N_Vector, __w))
end

function __N_VWrmsNormMask_Serial(x::N_Vector, w::N_Vector, id::N_Vector)
    ccall((:N_VWrmsNormMask_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VWrmsNormMask_Serial(x, w, id)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    __id = convert(NVector, id)
    __N_VWrmsNormMask_Serial(convert(N_Vector, __x), convert(N_Vector, __w), convert(N_Vector, __id))
end

function __N_VMin_Serial(x::N_Vector)
    ccall((:N_VMin_Serial, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VMin_Serial(x)
    __x = convert(NVector, x)
    __N_VMin_Serial(convert(N_Vector, __x))
end

function __N_VWL2Norm_Serial(x::N_Vector, w::N_Vector)
    ccall((:N_VWL2Norm_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWL2Norm_Serial(x, w)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    __N_VWL2Norm_Serial(convert(N_Vector, __x), convert(N_Vector, __w))
end

function __N_VL1Norm_Serial(x::N_Vector)
    ccall((:N_VL1Norm_Serial, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VL1Norm_Serial(x)
    __x = convert(NVector, x)
    __N_VL1Norm_Serial(convert(N_Vector, __x))
end

function __N_VCompare_Serial(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VCompare_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VCompare_Serial(c, x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    __N_VCompare_Serial(c, convert(N_Vector, __x), convert(N_Vector, __z))
end

function __N_VInvTest_Serial(x::N_Vector, z::N_Vector)
    ccall((:N_VInvTest_Serial, libsundials_nvecserial), Cint, (N_Vector, N_Vector), x, z)
end

function N_VInvTest_Serial(x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    __N_VInvTest_Serial(convert(N_Vector, __x), convert(N_Vector, __z))
end

function __N_VConstrMask_Serial(c::N_Vector, x::N_Vector, m::N_Vector)
    ccall((:N_VConstrMask_Serial, libsundials_nvecserial), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VConstrMask_Serial(c, x, m)
    __c = convert(NVector, c)
    __x = convert(NVector, x)
    __m = convert(NVector, m)
    __N_VConstrMask_Serial(convert(N_Vector, __c), convert(N_Vector, __x), convert(N_Vector, __m))
end

function __N_VMinQuotient_Serial(num::N_Vector, denom::N_Vector)
    ccall((:N_VMinQuotient_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VMinQuotient_Serial(num, denom)
    __num = convert(NVector, num)
    __denom = convert(NVector, denom)
    __N_VMinQuotient_Serial(convert(N_Vector, __num), convert(N_Vector, __denom))
end
