# Julia wrapper for header: nvector_manyvector.h
# Automatically generated using Clang.jl


function N_VNew_ManyVector(num_subvectors::sunindextype, vec_array)
    ccall((:N_VNew_ManyVector, libsundials_nvecserial), N_Vector, (sunindextype, Ptr{N_Vector}), num_subvectors, vec_array)
end

function N_VGetSubvector_ManyVector(v::N_Vector, vec_num::sunindextype)
    ccall((:N_VGetSubvector_ManyVector, libsundials_nvecserial), N_Vector, (N_Vector, sunindextype), v, vec_num)
end

function N_VGetSubvector_ManyVector(v, vec_num)
    __v = convert(NVector, v)
    N_VGetSubvector_ManyVector(convert(N_Vector, __v), vec_num)
end

function N_VGetSubvectorArrayPointer_ManyVector(v::N_Vector, vec_num::sunindextype)
    ccall((:N_VGetSubvectorArrayPointer_ManyVector, libsundials_nvecserial), Ptr{realtype}, (N_Vector, sunindextype), v, vec_num)
end

function N_VGetSubvectorArrayPointer_ManyVector(v, vec_num)
    __v = convert(NVector, v)
    N_VGetSubvectorArrayPointer_ManyVector(convert(N_Vector, __v), vec_num)
end

function N_VSetSubvectorArrayPointer_ManyVector(v_data, v::N_Vector, vec_num::sunindextype)
    ccall((:N_VSetSubvectorArrayPointer_ManyVector, libsundials_nvecserial), Cint, (Ptr{realtype}, N_Vector, sunindextype), v_data, v, vec_num)
end

function N_VSetSubvectorArrayPointer_ManyVector(v_data, v, vec_num)
    __v = convert(NVector, v)
    N_VSetSubvectorArrayPointer_ManyVector(v_data, convert(N_Vector, __v), vec_num)
end

function N_VGetNumSubvectors_ManyVector(v::N_Vector)
    ccall((:N_VGetNumSubvectors_ManyVector, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VGetNumSubvectors_ManyVector(v)
    __v = convert(NVector, v)
    N_VGetNumSubvectors_ManyVector(convert(N_Vector, __v))
end

function N_VGetVectorID_ManyVector(v::N_Vector)
    ccall((:N_VGetVectorID_ManyVector, libsundials_nvecserial), N_Vector_ID, (N_Vector,), v)
end

function N_VGetVectorID_ManyVector(v)
    __v = convert(NVector, v)
    N_VGetVectorID_ManyVector(convert(N_Vector, __v))
end

function N_VCloneEmpty_ManyVector(w::N_Vector)
    ccall((:N_VCloneEmpty_ManyVector, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VCloneEmpty_ManyVector(w)
    __w = convert(NVector, w)
    N_VCloneEmpty_ManyVector(convert(N_Vector, __w))
end

function N_VClone_ManyVector(w::N_Vector)
    ccall((:N_VClone_ManyVector, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VClone_ManyVector(w)
    __w = convert(NVector, w)
    N_VClone_ManyVector(convert(N_Vector, __w))
end

function N_VDestroy_ManyVector(v::N_Vector)
    ccall((:N_VDestroy_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VDestroy_ManyVector(v)
    __v = convert(NVector, v)
    N_VDestroy_ManyVector(convert(N_Vector, __v))
end

function N_VSpace_ManyVector(v::N_Vector, lrw, liw)
    ccall((:N_VSpace_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{sunindextype}, Ptr{sunindextype}), v, lrw, liw)
end

function N_VSpace_ManyVector(v, lrw, liw)
    __v = convert(NVector, v)
    N_VSpace_ManyVector(convert(N_Vector, __v), lrw, liw)
end

function N_VGetLength_ManyVector(v::N_Vector)
    ccall((:N_VGetLength_ManyVector, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VGetLength_ManyVector(v)
    __v = convert(NVector, v)
    N_VGetLength_ManyVector(convert(N_Vector, __v))
end

function N_VLinearSum_ManyVector(a::realtype, x::N_Vector, b::realtype, y::N_Vector, z::N_Vector)
    ccall((:N_VLinearSum_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, realtype, N_Vector, N_Vector), a, x, b, y, z)
end

function N_VLinearSum_ManyVector(a, x, b, y, z)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    __z = convert(NVector, z)
    N_VLinearSum_ManyVector(a, convert(N_Vector, __x), b, convert(N_Vector, __y), convert(N_Vector, __z))
end

function N_VConst_ManyVector(c::realtype, z::N_Vector)
    ccall((:N_VConst_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector), c, z)
end

function N_VConst_ManyVector(c, z)
    __z = convert(NVector, z)
    N_VConst_ManyVector(c, convert(N_Vector, __z))
end

function N_VProd_ManyVector(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VProd_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VProd_ManyVector(x, y, z)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    __z = convert(NVector, z)
    N_VProd_ManyVector(convert(N_Vector, __x), convert(N_Vector, __y), convert(N_Vector, __z))
end

function N_VDiv_ManyVector(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VDiv_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VDiv_ManyVector(x, y, z)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    __z = convert(NVector, z)
    N_VDiv_ManyVector(convert(N_Vector, __x), convert(N_Vector, __y), convert(N_Vector, __z))
end

function N_VScale_ManyVector(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VScale_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VScale_ManyVector(c, x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VScale_ManyVector(c, convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VAbs_ManyVector(x::N_Vector, z::N_Vector)
    ccall((:N_VAbs_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VAbs_ManyVector(x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VAbs_ManyVector(convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VInv_ManyVector(x::N_Vector, z::N_Vector)
    ccall((:N_VInv_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VInv_ManyVector(x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VInv_ManyVector(convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VAddConst_ManyVector(x::N_Vector, b::realtype, z::N_Vector)
    ccall((:N_VAddConst_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, realtype, N_Vector), x, b, z)
end

function N_VAddConst_ManyVector(x, b, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VAddConst_ManyVector(convert(N_Vector, __x), b, convert(N_Vector, __z))
end

function N_VWrmsNorm_ManyVector(x::N_Vector, w::N_Vector)
    ccall((:N_VWrmsNorm_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWrmsNorm_ManyVector(x, w)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    N_VWrmsNorm_ManyVector(convert(N_Vector, __x), convert(N_Vector, __w))
end

function N_VWrmsNormMask_ManyVector(x::N_Vector, w::N_Vector, id::N_Vector)
    ccall((:N_VWrmsNormMask_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VWrmsNormMask_ManyVector(x, w, id)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    __id = convert(NVector, id)
    N_VWrmsNormMask_ManyVector(convert(N_Vector, __x), convert(N_Vector, __w), convert(N_Vector, __id))
end

function N_VWL2Norm_ManyVector(x::N_Vector, w::N_Vector)
    ccall((:N_VWL2Norm_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWL2Norm_ManyVector(x, w)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    N_VWL2Norm_ManyVector(convert(N_Vector, __x), convert(N_Vector, __w))
end

function N_VCompare_ManyVector(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VCompare_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VCompare_ManyVector(c, x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VCompare_ManyVector(c, convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VLinearCombination_ManyVector(nvec::Cint, c, V, z::N_Vector)
    ccall((:N_VLinearCombination_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, N_Vector), nvec, c, V, z)
end

function N_VLinearCombination_ManyVector(nvec::Int, c, V, z)
    __z = convert(NVector, z)
    N_VLinearCombination_ManyVector(convert(Cint, nvec), c, V, convert(N_Vector, __z))
end

function N_VScaleAddMulti_ManyVector(nvec::Cint, a, x::N_Vector, Y, Z)
    ccall((:N_VScaleAddMulti_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, x, Y, Z)
end

function N_VScaleAddMulti_ManyVector(nvec::Int, a, x, Y, Z)
    __x = convert(NVector, x)
    N_VScaleAddMulti_ManyVector(convert(Cint, nvec), a, convert(N_Vector, __x), Y, Z)
end

function N_VDotProdMulti_ManyVector(nvec::Cint, x::N_Vector, Y, dotprods)
    ccall((:N_VDotProdMulti_ManyVector, libsundials_nvecserial), Cint, (Cint, N_Vector, Ptr{N_Vector}, Ptr{realtype}), nvec, x, Y, dotprods)
end

function N_VDotProdMulti_ManyVector(nvec, x, Y, dotprods)
    __x = convert(NVector, x)
    N_VDotProdMulti_ManyVector(convert(N_Vector, nvec), convert(N_Vector, __x), Y, dotprods)
end

function N_VLinearSumVectorArray_ManyVector(nvec::Cint, a::realtype, X, b::realtype, Y, Z)
    ccall((:N_VLinearSumVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}, realtype, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, X, b, Y, Z)
end

function N_VLinearSumVectorArray_ManyVector(nvec::Int, a, X, b, Y, Z)
    N_VLinearSumVectorArray_ManyVector(convert(Cint, nvec), a, X, b, Y, Z)
end

function N_VScaleVectorArray_ManyVector(nvec::Cint, c::realtype, X, Z)
    ccall((:N_VScaleVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}), nvec, c, X, Z)
end

function N_VScaleVectorArray_ManyVector(nvec::Int, c, X, Z)
    N_VScaleVectorArray_ManyVector(convert(Cint, nvec), c, X, Z)
end

function N_VConstVectorArray_ManyVector(nvecs::Cint, c::realtype, Z)
    ccall((:N_VConstVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}), nvecs, c, Z)
end

function N_VConstVectorArray_ManyVector(nvecs::Int, c, Z)
    N_VConstVectorArray_ManyVector(convert(Cint, nvecs), c, Z)
end

function N_VWrmsNormVectorArray_ManyVector(nvecs::Cint, X, W, nrm)
    ccall((:N_VWrmsNormVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}), nvecs, X, W, nrm)
end

function N_VWrmsNormVectorArray_ManyVector(nvecs::Int, X, W, nrm)
    N_VWrmsNormVectorArray_ManyVector(convert(Cint, nvecs), X, W, nrm)
end

function N_VWrmsNormMaskVectorArray_ManyVector(nvec, X, W, id, nrm)
    ccall((:N_VWrmsNormMaskVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, N_Vector, Ptr{realtype}), nvec, X, W, id, nrm)
end

function N_VWrmsNormMaskVectorArray_ManyVector(nvec::Int, X, W, id, nrm)
    __id = convert(NVector, id)
    N_VWrmsNormMaskVectorArray_ManyVector(convert(Cint, nvec), X, W, convert(N_Vector, __id), nrm)
end

function N_VDotProdLocal_ManyVector(x::N_Vector, y::N_Vector)
    ccall((:N_VDotProdLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, y)
end

function N_VDotProdLocal_ManyVector(x, y)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    N_VDotProdLocal_ManyVector(convert(N_Vector, __x), convert(N_Vector, __y))
end

function N_VMaxNormLocal_ManyVector(x::N_Vector)
    ccall((:N_VMaxNormLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VMaxNormLocal_ManyVector(x)
    __x = convert(NVector, x)
    N_VMaxNormLocal_ManyVector(convert(N_Vector, __x))
end

function N_VMinLocal_ManyVector(x::N_Vector)
    ccall((:N_VMinLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VMinLocal_ManyVector(x)
    __x = convert(NVector, x)
    N_VMinLocal_ManyVector(convert(N_Vector, __x))
end

function N_VL1NormLocal_ManyVector(x::N_Vector)
    ccall((:N_VL1NormLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VL1NormLocal_ManyVector(x)
    __x = convert(NVector, x)
    N_VL1NormLocal_ManyVector(convert(N_Vector, __x))
end

function N_VWSqrSumLocal_ManyVector(x::N_Vector, w::N_Vector)
    ccall((:N_VWSqrSumLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWSqrSumLocal_ManyVector(x, w)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    N_VWSqrSumLocal_ManyVector(convert(N_Vector, __x), convert(N_Vector, __w))
end

function N_VWSqrSumMaskLocal_ManyVector(x::N_Vector, w::N_Vector, id::N_Vector)
    ccall((:N_VWSqrSumMaskLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VWSqrSumMaskLocal_ManyVector(x, w, id)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    __id = convert(NVector, id)
    N_VWSqrSumMaskLocal_ManyVector(convert(N_Vector, __x), convert(N_Vector, __w), convert(N_Vector, __id))
end

function N_VInvTestLocal_ManyVector(x::N_Vector, z::N_Vector)
    ccall((:N_VInvTestLocal_ManyVector, libsundials_nvecserial), Cint, (N_Vector, N_Vector), x, z)
end

function N_VInvTestLocal_ManyVector(x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VInvTestLocal_ManyVector(convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VConstrMaskLocal_ManyVector(c::N_Vector, x::N_Vector, m::N_Vector)
    ccall((:N_VConstrMaskLocal_ManyVector, libsundials_nvecserial), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VConstrMaskLocal_ManyVector(c, x, m)
    __c = convert(NVector, c)
    __x = convert(NVector, x)
    __m = convert(NVector, m)
    N_VConstrMaskLocal_ManyVector(convert(N_Vector, __c), convert(N_Vector, __x), convert(N_Vector, __m))
end

function N_VMinQuotientLocal_ManyVector(num::N_Vector, denom::N_Vector)
    ccall((:N_VMinQuotientLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VMinQuotientLocal_ManyVector(num, denom)
    __num = convert(NVector, num)
    __denom = convert(NVector, denom)
    N_VMinQuotientLocal_ManyVector(convert(N_Vector, __num), convert(N_Vector, __denom))
end

function N_VEnableFusedOps_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableFusedOps_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableFusedOps_ManyVector(v, tf::Int)
    __v = convert(NVector, v)
    N_VEnableFusedOps_ManyVector(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableLinearCombination_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableLinearCombination_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearCombination_ManyVector(v, tf::Int)
    __v = convert(NVector, v)
    N_VEnableLinearCombination_ManyVector(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableScaleAddMulti_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableScaleAddMulti_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleAddMulti_ManyVector(v, tf::Int)
    __v = convert(NVector, v)
    N_VEnableScaleAddMulti_ManyVector(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableDotProdMulti_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableDotProdMulti_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableDotProdMulti_ManyVector(v, tf::Int)
    __v = convert(NVector, v)
    N_VEnableDotProdMulti_ManyVector(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableLinearSumVectorArray_ManyVector(v::N_Vector, tf::Cint)
    ccall((:N_VEnableLinearSumVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearSumVectorArray_ManyVector(v, tf::Int)
    __v = convert(NVector, v)
    N_VEnableLinearSumVectorArray_ManyVector(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableScaleVectorArray_ManyVector(v::N_Vector, tf::Int)
    ccall((:N_VEnableScaleVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleVectorArray_ManyVector(v, tf::Int)
    __v = convert(NVector, v)
    N_VEnableScaleVectorArray_ManyVector(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableConstVectorArray_ManyVector(v::N_Vector, tf::Int)
    ccall((:N_VEnableConstVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableConstVectorArray_ManyVector(v, tf::Int)
    __v = convert(NVector, v)
    N_VEnableConstVectorArray_ManyVector(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableWrmsNormVectorArray_ManyVector(v::N_Vector, tf::Int)
    ccall((:N_VEnableWrmsNormVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormVectorArray_ManyVector(v, tf::Int)
    __v = convert(NVector, v)
    N_VEnableWrmsNormVectorArray_ManyVector(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableWrmsNormMaskVectorArray_ManyVector(v::N_Vector, tf::Int)
    ccall((:N_VEnableWrmsNormMaskVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormMaskVectorArray_ManyVector(v, tf::Int)
    __v = convert(NVector, v)
    N_VEnableWrmsNormMaskVectorArray_ManyVector(convert(N_Vector, __v), convert(Cint, tf))
end
