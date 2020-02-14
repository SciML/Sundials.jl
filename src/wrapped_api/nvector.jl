# Julia wrapper for header: nvector_manyvector.h
# Automatically generated using Clang.jl


function N_VNew_ManyVector(num_subvectors, vec_array)
    ccall((:N_VNew_ManyVector, libsundials_nvecserial), N_Vector, (sunindextype, Ptr{N_Vector}), num_subvectors, vec_array)
end

function N_VGetSubvector_ManyVector(v, vec_num)
    ccall((:N_VGetSubvector_ManyVector, libsundials_nvecserial), N_Vector, (N_Vector, sunindextype), v, vec_num)
end

function N_VGetSubvectorArrayPointer_ManyVector(v, vec_num)
    ccall((:N_VGetSubvectorArrayPointer_ManyVector, libsundials_nvecserial), Ptr{realtype}, (N_Vector, sunindextype), v, vec_num)
end

function N_VSetSubvectorArrayPointer_ManyVector(v_data, v, vec_num)
    ccall((:N_VSetSubvectorArrayPointer_ManyVector, libsundials_nvecserial), Cint, (Ptr{realtype}, N_Vector, sunindextype), v_data, v, vec_num)
end

function N_VGetNumSubvectors_ManyVector(v)
    ccall((:N_VGetNumSubvectors_ManyVector, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VGetVectorID_ManyVector(v)
    ccall((:N_VGetVectorID_ManyVector, libsundials_nvecserial), N_Vector_ID, (N_Vector,), v)
end

function N_VCloneEmpty_ManyVector(w)
    ccall((:N_VCloneEmpty_ManyVector, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VClone_ManyVector(w)
    ccall((:N_VClone_ManyVector, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VDestroy_ManyVector(v)
    ccall((:N_VDestroy_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VSpace_ManyVector(v, lrw, liw)
    ccall((:N_VSpace_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{sunindextype}, Ptr{sunindextype}), v, lrw, liw)
end

function N_VGetLength_ManyVector(v)
    ccall((:N_VGetLength_ManyVector, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VLinearSum_ManyVector(a, x, b, y, z)
    ccall((:N_VLinearSum_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, realtype, N_Vector, N_Vector), a, x, b, y, z)
end

function N_VConst_ManyVector(c, z)
    ccall((:N_VConst_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector), c, z)
end

function N_VProd_ManyVector(x, y, z)
    ccall((:N_VProd_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VDiv_ManyVector(x, y, z)
    ccall((:N_VDiv_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VScale_ManyVector(c, x, z)
    ccall((:N_VScale_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VAbs_ManyVector(x, z)
    ccall((:N_VAbs_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VInv_ManyVector(x, z)
    ccall((:N_VInv_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VAddConst_ManyVector(x, b, z)
    ccall((:N_VAddConst_ManyVector, libsundials_nvecserial), Cvoid, (N_Vector, realtype, N_Vector), x, b, z)
end

function N_VWrmsNorm_ManyVector(x, w)
    ccall((:N_VWrmsNorm_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWrmsNormMask_ManyVector(x, w, id)
    ccall((:N_VWrmsNormMask_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VWL2Norm_ManyVector(x, w)
    ccall((:N_VWL2Norm_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VCompare_ManyVector(c, x, z)
    ccall((:N_VCompare_ManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VLinearCombination_ManyVector(nvec, c, V, z)
    ccall((:N_VLinearCombination_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, N_Vector), nvec, c, V, z)
end

function N_VScaleAddMulti_ManyVector(nvec, a, x, Y, Z)
    ccall((:N_VScaleAddMulti_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, x, Y, Z)
end

function N_VDotProdMulti_ManyVector(nvec, x, Y, dotprods)
    ccall((:N_VDotProdMulti_ManyVector, libsundials_nvecserial), Cint, (Cint, N_Vector, Ptr{N_Vector}, Ptr{realtype}), nvec, x, Y, dotprods)
end

function N_VLinearSumVectorArray_ManyVector(nvec, a, X, b, Y, Z)
    ccall((:N_VLinearSumVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}, realtype, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, X, b, Y, Z)
end

function N_VScaleVectorArray_ManyVector(nvec, c, X, Z)
    ccall((:N_VScaleVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}), nvec, c, X, Z)
end

function N_VConstVectorArray_ManyVector(nvecs, c, Z)
    ccall((:N_VConstVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}), nvecs, c, Z)
end

function N_VWrmsNormVectorArray_ManyVector(nvecs, X, W, nrm)
    ccall((:N_VWrmsNormVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}), nvecs, X, W, nrm)
end

function N_VWrmsNormMaskVectorArray_ManyVector(nvec, X, W, id, nrm)
    ccall((:N_VWrmsNormMaskVectorArray_ManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, N_Vector, Ptr{realtype}), nvec, X, W, id, nrm)
end

function N_VDotProdLocal_ManyVector(x, y)
    ccall((:N_VDotProdLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, y)
end

function N_VMaxNormLocal_ManyVector(x)
    ccall((:N_VMaxNormLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VMinLocal_ManyVector(x)
    ccall((:N_VMinLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VL1NormLocal_ManyVector(x)
    ccall((:N_VL1NormLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VWSqrSumLocal_ManyVector(x, w)
    ccall((:N_VWSqrSumLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWSqrSumMaskLocal_ManyVector(x, w, id)
    ccall((:N_VWSqrSumMaskLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VInvTestLocal_ManyVector(x, z)
    ccall((:N_VInvTestLocal_ManyVector, libsundials_nvecserial), Cint, (N_Vector, N_Vector), x, z)
end

function N_VConstrMaskLocal_ManyVector(c, x, m)
    ccall((:N_VConstrMaskLocal_ManyVector, libsundials_nvecserial), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VMinQuotientLocal_ManyVector(num, denom)
    ccall((:N_VMinQuotientLocal_ManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VEnableFusedOps_ManyVector(v, tf)
    ccall((:N_VEnableFusedOps_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearCombination_ManyVector(v, tf)
    ccall((:N_VEnableLinearCombination_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleAddMulti_ManyVector(v, tf)
    ccall((:N_VEnableScaleAddMulti_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableDotProdMulti_ManyVector(v, tf)
    ccall((:N_VEnableDotProdMulti_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearSumVectorArray_ManyVector(v, tf)
    ccall((:N_VEnableLinearSumVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleVectorArray_ManyVector(v, tf)
    ccall((:N_VEnableScaleVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableConstVectorArray_ManyVector(v, tf)
    ccall((:N_VEnableConstVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormVectorArray_ManyVector(v, tf)
    ccall((:N_VEnableWrmsNormVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormMaskVectorArray_ManyVector(v, tf)
    ccall((:N_VEnableWrmsNormMaskVectorArray_ManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end
# Julia wrapper for header: nvector_mpimanyvector.h
# Automatically generated using Clang.jl


function N_VMake_MPIManyVector(comm, num_subvectors, vec_array)
    ccall((:N_VMake_MPIManyVector, libsundials_nvecserial), N_Vector, (MPI_Comm, sunindextype, Ptr{N_Vector}), comm, num_subvectors, vec_array)
end

function N_VNew_MPIManyVector(num_subvectors, vec_array)
    ccall((:N_VNew_MPIManyVector, libsundials_nvecserial), N_Vector, (sunindextype, Ptr{N_Vector}), num_subvectors, vec_array)
end

function N_VGetSubvector_MPIManyVector(v, vec_num)
    ccall((:N_VGetSubvector_MPIManyVector, libsundials_nvecserial), N_Vector, (N_Vector, sunindextype), v, vec_num)
end

function N_VGetSubvectorArrayPointer_MPIManyVector(v, vec_num)
    ccall((:N_VGetSubvectorArrayPointer_MPIManyVector, libsundials_nvecserial), Ptr{realtype}, (N_Vector, sunindextype), v, vec_num)
end

function N_VSetSubvectorArrayPointer_MPIManyVector(v_data, v, vec_num)
    ccall((:N_VSetSubvectorArrayPointer_MPIManyVector, libsundials_nvecserial), Cint, (Ptr{realtype}, N_Vector, sunindextype), v_data, v, vec_num)
end

function N_VGetNumSubvectors_MPIManyVector(v)
    ccall((:N_VGetNumSubvectors_MPIManyVector, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VGetVectorID_MPIManyVector(v)
    ccall((:N_VGetVectorID_MPIManyVector, libsundials_nvecserial), N_Vector_ID, (N_Vector,), v)
end

function N_VCloneEmpty_MPIManyVector(w)
    ccall((:N_VCloneEmpty_MPIManyVector, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VClone_MPIManyVector(w)
    ccall((:N_VClone_MPIManyVector, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VDestroy_MPIManyVector(v)
    ccall((:N_VDestroy_MPIManyVector, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VSpace_MPIManyVector(v, lrw, liw)
    ccall((:N_VSpace_MPIManyVector, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{sunindextype}, Ptr{sunindextype}), v, lrw, liw)
end

function N_VGetCommunicator_MPIManyVector(v)
    ccall((:N_VGetCommunicator_MPIManyVector, libsundials_nvecserial), Ptr{Cvoid}, (N_Vector,), v)
end

function N_VGetLength_MPIManyVector(v)
    ccall((:N_VGetLength_MPIManyVector, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VLinearSum_MPIManyVector(a, x, b, y, z)
    ccall((:N_VLinearSum_MPIManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, realtype, N_Vector, N_Vector), a, x, b, y, z)
end

function N_VConst_MPIManyVector(c, z)
    ccall((:N_VConst_MPIManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector), c, z)
end

function N_VProd_MPIManyVector(x, y, z)
    ccall((:N_VProd_MPIManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VDiv_MPIManyVector(x, y, z)
    ccall((:N_VDiv_MPIManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VScale_MPIManyVector(c, x, z)
    ccall((:N_VScale_MPIManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VAbs_MPIManyVector(x, z)
    ccall((:N_VAbs_MPIManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VInv_MPIManyVector(x, z)
    ccall((:N_VInv_MPIManyVector, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VAddConst_MPIManyVector(x, b, z)
    ccall((:N_VAddConst_MPIManyVector, libsundials_nvecserial), Cvoid, (N_Vector, realtype, N_Vector), x, b, z)
end

function N_VDotProd_MPIManyVector(x, y)
    ccall((:N_VDotProd_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, y)
end

function N_VMaxNorm_MPIManyVector(x)
    ccall((:N_VMaxNorm_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VWrmsNorm_MPIManyVector(x, w)
    ccall((:N_VWrmsNorm_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWrmsNormMask_MPIManyVector(x, w, id)
    ccall((:N_VWrmsNormMask_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VMin_MPIManyVector(x)
    ccall((:N_VMin_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VWL2Norm_MPIManyVector(x, w)
    ccall((:N_VWL2Norm_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VL1Norm_MPIManyVector(x)
    ccall((:N_VL1Norm_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VCompare_MPIManyVector(c, x, z)
    ccall((:N_VCompare_MPIManyVector, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VInvTest_MPIManyVector(x, z)
    ccall((:N_VInvTest_MPIManyVector, libsundials_nvecserial), Cint, (N_Vector, N_Vector), x, z)
end

function N_VConstrMask_MPIManyVector(c, x, m)
    ccall((:N_VConstrMask_MPIManyVector, libsundials_nvecserial), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VMinQuotient_MPIManyVector(num, denom)
    ccall((:N_VMinQuotient_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VLinearCombination_MPIManyVector(nvec, c, V, z)
    ccall((:N_VLinearCombination_MPIManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, N_Vector), nvec, c, V, z)
end

function N_VScaleAddMulti_MPIManyVector(nvec, a, x, Y, Z)
    ccall((:N_VScaleAddMulti_MPIManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, x, Y, Z)
end

function N_VDotProdMulti_MPIManyVector(nvec, x, Y, dotprods)
    ccall((:N_VDotProdMulti_MPIManyVector, libsundials_nvecserial), Cint, (Cint, N_Vector, Ptr{N_Vector}, Ptr{realtype}), nvec, x, Y, dotprods)
end

function N_VLinearSumVectorArray_MPIManyVector(nvec, a, X, b, Y, Z)
    ccall((:N_VLinearSumVectorArray_MPIManyVector, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}, realtype, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, X, b, Y, Z)
end

function N_VScaleVectorArray_MPIManyVector(nvec, c, X, Z)
    ccall((:N_VScaleVectorArray_MPIManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}), nvec, c, X, Z)
end

function N_VConstVectorArray_MPIManyVector(nvecs, c, Z)
    ccall((:N_VConstVectorArray_MPIManyVector, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}), nvecs, c, Z)
end

function N_VWrmsNormVectorArray_MPIManyVector(nvecs, X, W, nrm)
    ccall((:N_VWrmsNormVectorArray_MPIManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}), nvecs, X, W, nrm)
end

function N_VWrmsNormMaskVectorArray_MPIManyVector(nvec, X, W, id, nrm)
    ccall((:N_VWrmsNormMaskVectorArray_MPIManyVector, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, N_Vector, Ptr{realtype}), nvec, X, W, id, nrm)
end

function N_VDotProdLocal_MPIManyVector(x, y)
    ccall((:N_VDotProdLocal_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, y)
end

function N_VMaxNormLocal_MPIManyVector(x)
    ccall((:N_VMaxNormLocal_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VMinLocal_MPIManyVector(x)
    ccall((:N_VMinLocal_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VL1NormLocal_MPIManyVector(x)
    ccall((:N_VL1NormLocal_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VWSqrSumLocal_MPIManyVector(x, w)
    ccall((:N_VWSqrSumLocal_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWSqrSumMaskLocal_MPIManyVector(x, w, id)
    ccall((:N_VWSqrSumMaskLocal_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VInvTestLocal_MPIManyVector(x, z)
    ccall((:N_VInvTestLocal_MPIManyVector, libsundials_nvecserial), Cint, (N_Vector, N_Vector), x, z)
end

function N_VConstrMaskLocal_MPIManyVector(c, x, m)
    ccall((:N_VConstrMaskLocal_MPIManyVector, libsundials_nvecserial), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VMinQuotientLocal_MPIManyVector(num, denom)
    ccall((:N_VMinQuotientLocal_MPIManyVector, libsundials_nvecserial), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VEnableFusedOps_MPIManyVector(v, tf)
    ccall((:N_VEnableFusedOps_MPIManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearCombination_MPIManyVector(v, tf)
    ccall((:N_VEnableLinearCombination_MPIManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleAddMulti_MPIManyVector(v, tf)
    ccall((:N_VEnableScaleAddMulti_MPIManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableDotProdMulti_MPIManyVector(v, tf)
    ccall((:N_VEnableDotProdMulti_MPIManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearSumVectorArray_MPIManyVector(v, tf)
    ccall((:N_VEnableLinearSumVectorArray_MPIManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleVectorArray_MPIManyVector(v, tf)
    ccall((:N_VEnableScaleVectorArray_MPIManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableConstVectorArray_MPIManyVector(v, tf)
    ccall((:N_VEnableConstVectorArray_MPIManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormVectorArray_MPIManyVector(v, tf)
    ccall((:N_VEnableWrmsNormVectorArray_MPIManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormMaskVectorArray_MPIManyVector(v, tf)
    ccall((:N_VEnableWrmsNormMaskVectorArray_MPIManyVector, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end
# Julia wrapper for header: nvector_mpiplusx.h
# Automatically generated using Clang.jl


function N_VMake_MPIPlusX(comm::MPI_Comm, X::N_Vector)
    ccall((:N_VMake_MPIPlusX, libsundials_nvecserial), N_Vector, (MPI_Comm, N_Vector), comm, X)
end

function N_VMake_MPIPlusX(comm, X)
    __X = convert(NVector, X)
    N_VMake_MPIPlusX(comm, convert(N_Vector, __X))
end

function N_VGetVectorID_MPIPlusX(v::N_Vector)
    ccall((:N_VGetVectorID_MPIPlusX, libsundials_nvecserial), N_Vector_ID, (N_Vector,), v)
end

function N_VGetVectorID_MPIPlusX(v)
    __v = convert(NVector, v)
    N_VGetVectorID_MPIPlusX(convert(N_Vector, __v))
end

function N_VGetArrayPointer_MPIPlusX(v::N_Vector)
    ccall((:N_VGetArrayPointer_MPIPlusX, libsundials_nvecserial), Ptr{realtype}, (N_Vector,), v)
end

function N_VGetArrayPointer_MPIPlusX(v)
    __v = convert(NVector, v)
    N_VGetArrayPointer_MPIPlusX(convert(N_Vector, __v))
end

function N_VSetArrayPointer_MPIPlusX(vdata, v::N_Vector)
    ccall((:N_VSetArrayPointer_MPIPlusX, libsundials_nvecserial), Cvoid, (Ptr{realtype}, N_Vector), vdata, v)
end

function N_VSetArrayPointer_MPIPlusX(vdata, v)
    __v = convert(NVector, v)
    N_VSetArrayPointer_MPIPlusX(vdata, convert(N_Vector, __v))
end

function N_VGetLocalVector_MPIPlusX(v::N_Vector)
    ccall((:N_VGetLocalVector_MPIPlusX, libsundials_nvecserial), N_Vector, (N_Vector,), v)
end

function N_VGetLocalVector_MPIPlusX(v)
    __v = convert(NVector, v)
    N_VGetLocalVector_MPIPlusX(convert(N_Vector, __v))
end

function N_VGetLocalLength_MPIPlusX(v::N_Vector)
    ccall((:N_VGetLocalLength_MPIPlusX, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VGetLocalLength_MPIPlusX(v)
    __v = convert(NVector, v)
    N_VGetLocalLength_MPIPlusX(convert(N_Vector, __v))
end
# Julia wrapper for header: nvector_parallel.h
# Automatically generated using Clang.jl

# Julia wrapper for header: nvector_serial.h
# Automatically generated using Clang.jl


function N_VNew_Serial(vec_length::sunindextype)
    ccall((:N_VNew_Serial, libsundials_nvecserial), N_Vector, (sunindextype,), vec_length)
end

function N_VNewEmpty_Serial(vec_length::sunindextype)
    ccall((:N_VNewEmpty_Serial, libsundials_nvecserial), N_Vector, (sunindextype,), vec_length)
end

function N_VMake_Serial(vec_length::sunindextype, v_data)
    ccall((:N_VMake_Serial, libsundials_nvecserial), N_Vector, (sunindextype, Ptr{realtype}), vec_length, v_data)
end

function N_VCloneVectorArray_Serial(count::Cint, w::N_Vector)
    ccall((:N_VCloneVectorArray_Serial, libsundials_nvecserial), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VCloneVectorArray_Serial(count::Int, w)
    __w = convert(NVector, w)
    N_VCloneVectorArray_Serial(convert(Cint, count), convert(N_Vector, __w))
end

function N_VCloneVectorArrayEmpty_Serial(count::Cint, w::N_Vector)
    ccall((:N_VCloneVectorArrayEmpty_Serial, libsundials_nvecserial), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VCloneVectorArrayEmpty_Serial(count, w)
    __w = convert(NVector, w)
    N_VCloneVectorArrayEmpty_Serial(convert(Cint, count), convert(N_Vector, __w))
end

function N_VDestroyVectorArray_Serial(vs, count::Cint)
    ccall((:N_VDestroyVectorArray_Serial, libsundials_nvecserial), Cvoid, (Ptr{N_Vector}, Cint), vs, count)
end

function N_VDestroyVectorArray_Serial(vs, count)
    N_VDestroyVectorArray_Serial(vs, convert(Cint, count))
end

function N_VGetLength_Serial(v::N_Vector)
    ccall((:N_VGetLength_Serial, libsundials_nvecserial), sunindextype, (N_Vector,), v)
end

function N_VGetLength_Serial(v)
    __v = convert(NVector, v)
    N_VGetLength_Serial(convert(N_Vector, __v))
end

function N_VPrint_Serial(v::N_Vector)
    ccall((:N_VPrint_Serial, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VPrint_Serial(v)
    __v = convert(NVector, v)
    N_VPrint_Serial(convert(N_Vector, __v))
end

function N_VPrintFile_Serial(v::N_Vector, outfile)
    ccall((:N_VPrintFile_Serial, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{FILE}), v, outfile)
end

function N_VPrintFile_Serial(v, outfile)
    __v = convert(NVector, v)
    N_VPrintFile_Serial(convert(N_Vector, __v), outfile)
end

function N_VGetVectorID_Serial(v::N_Vector)
    ccall((:N_VGetVectorID_Serial, libsundials_nvecserial), N_Vector_ID, (N_Vector,), v)
end

function N_VGetVectorID_Serial(v)
    __v = convert(NVector, v)
    N_VGetVectorID_Serial(convert(N_Vector, __v))
end

function N_VCloneEmpty_Serial(w::N_Vector)
    ccall((:N_VCloneEmpty_Serial, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VCloneEmpty_Serial(w)
    __w = convert(NVector, w)
    N_VCloneEmpty_Serial(convert(N_Vector, __w))
end

function N_VClone_Serial(w::N_Vector)
    ccall((:N_VClone_Serial, libsundials_nvecserial), N_Vector, (N_Vector,), w)
end

function N_VClone_Serial(w)
    __w = convert(NVector, w)
    N_VClone_Serial(convert(N_Vector, __w))
end

function N_VDestroy_Serial(v::N_Vector)
    ccall((:N_VDestroy_Serial, libsundials_nvecserial), Cvoid, (N_Vector,), v)
end

function N_VDestroy_Serial(v)
    __v = convert(NVector, v)
    N_VDestroy_Serial(convert(N_Vector, __v))
end

function N_VSpace_Serial(v::N_Vector, lrw, liw)
    ccall((:N_VSpace_Serial, libsundials_nvecserial), Cvoid, (N_Vector, Ptr{sunindextype}, Ptr{sunindextype}), v, lrw, liw)
end

function N_VSpace_Serial(v, lrw, liw)
    __v = convert(NVector, v)
    N_VSpace_Serial(convert(N_Vector, __v), lrw, liw)
end

function N_VGetArrayPointer_Serial(v::N_Vector)
    ccall((:N_VGetArrayPointer_Serial, libsundials_nvecserial), Ptr{realtype}, (N_Vector,), v)
end

function N_VGetArrayPointer_Serial(v)
    __v = convert(NVector, v)
    N_VGetArrayPointer_Serial(convert(N_Vector, __v))
end

function N_VSetArrayPointer_Serial(v_data, v::N_Vector)
    ccall((:N_VSetArrayPointer_Serial, libsundials_nvecserial), Cvoid, (Ptr{realtype}, N_Vector), v_data, v)
end

function N_VSetArrayPointer_Serial(v_data, v)
    __v = convert(NVector, v)
    N_VSetArrayPointer_Serial(v_data, convert(N_Vector, __v))
end

function N_VLinearSum_Serial(a::realtype, x::N_Vector, b::realtype, y::N_Vector, z::N_Vector)
    ccall((:N_VLinearSum_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector, realtype, N_Vector, N_Vector), a, x, b, y, z)
end

function N_VLinearSum_Serial(a, x, b, y, z)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    __z = convert(NVector, z)
    N_VLinearSum_Serial(a, convert(N_Vector, __x), b, convert(N_Vector, __y), convert(N_Vector, __z))
end

function N_VConst_Serial(c::realtype, z::N_Vector)
    ccall((:N_VConst_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector), c, z)
end

function N_VConst_Serial(c, z)
    __z = convert(NVector, z)
    N_VConst_Serial(c, convert(N_Vector, __z))
end

function N_VProd_Serial(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VProd_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VProd_Serial(x, y, z)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    __z = convert(NVector, z)
    N_VProd_Serial(convert(N_Vector, __x), convert(N_Vector, __y), convert(N_Vector, __z))
end

function N_VDiv_Serial(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VDiv_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VDiv_Serial(x, y, z)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    __z = convert(NVector, z)
    N_VDiv_Serial(convert(N_Vector, __x), convert(N_Vector, __y), convert(N_Vector, __z))
end

function N_VScale_Serial(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VScale_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VScale_Serial(c, x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VScale_Serial(c, convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VAbs_Serial(x::N_Vector, z::N_Vector)
    ccall((:N_VAbs_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VAbs_Serial(x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VAbs_Serial(convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VInv_Serial(x::N_Vector, z::N_Vector)
    ccall((:N_VInv_Serial, libsundials_nvecserial), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VInv_Serial(x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VInv_Serial(convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VAddConst_Serial(x::N_Vector, b::realtype, z::N_Vector)
    ccall((:N_VAddConst_Serial, libsundials_nvecserial), Cvoid, (N_Vector, realtype, N_Vector), x, b, z)
end

function N_VAddConst_Serial(x, b, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VAddConst_Serial(convert(N_Vector, __x), b, convert(N_Vector, __z))
end

function N_VDotProd_Serial(x::N_Vector, y::N_Vector)
    ccall((:N_VDotProd_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, y)
end

function N_VDotProd_Serial(x, y)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    N_VDotProd_Serial(convert(N_Vector, __x), convert(N_Vector, __y))
end

function N_VMaxNorm_Serial(x::N_Vector)
    ccall((:N_VMaxNorm_Serial, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VMaxNorm_Serial(x)
    __x = convert(NVector, x)
    N_VMaxNorm_Serial(convert(N_Vector, __x))
end

function N_VWrmsNorm_Serial(x::N_Vector, w::N_Vector)
    ccall((:N_VWrmsNorm_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWrmsNorm_Serial(x, w)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    N_VWrmsNorm_Serial(convert(N_Vector, __x), convert(N_Vector, __w))
end

function N_VWrmsNormMask_Serial(x::N_Vector, w::N_Vector, id::N_Vector)
    ccall((:N_VWrmsNormMask_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VWrmsNormMask_Serial(x, w, id)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    __id = convert(NVector, id)
    N_VWrmsNormMask_Serial(convert(N_Vector, __x), convert(N_Vector, __w), convert(N_Vector, __id))
end

function N_VMin_Serial(x::N_Vector)
    ccall((:N_VMin_Serial, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VMin_Serial(x)
    __x = convert(NVector, x)
    N_VMin_Serial(convert(N_Vector, __x))
end

function N_VWL2Norm_Serial(x::N_Vector, w::N_Vector)
    ccall((:N_VWL2Norm_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWL2Norm_Serial(x, w)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    N_VWL2Norm_Serial(convert(N_Vector, __x), convert(N_Vector, __w))
end

function N_VL1Norm_Serial(x::N_Vector)
    ccall((:N_VL1Norm_Serial, libsundials_nvecserial), realtype, (N_Vector,), x)
end

function N_VL1Norm_Serial(x)
    __x = convert(NVector, x)
    N_VL1Norm_Serial(convert(N_Vector, __x))
end

function N_VCompare_Serial(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VCompare_Serial, libsundials_nvecserial), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VCompare_Serial(c, x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VCompare_Serial(c, convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VInvTest_Serial(x::N_Vector, z::N_Vector)
    ccall((:N_VInvTest_Serial, libsundials_nvecserial), Cint, (N_Vector, N_Vector), x, z)
end

function N_VInvTest_Serial(x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VInvTest_Serial(convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VConstrMask_Serial(c::N_Vector, x::N_Vector, m::N_Vector)
    ccall((:N_VConstrMask_Serial, libsundials_nvecserial), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VConstrMask_Serial(c, x, m)
    __c = convert(NVector, c)
    __x = convert(NVector, x)
    __m = convert(NVector, m)
    N_VConstrMask_Serial(convert(N_Vector, __c), convert(N_Vector, __x), convert(N_Vector, __m))
end

function N_VMinQuotient_Serial(num::N_Vector, denom::N_Vector)
    ccall((:N_VMinQuotient_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VMinQuotient_Serial(num, denom)
    __num = convert(NVector, num)
    __denom = convert(NVector, denom)
    N_VMinQuotient_Serial(convert(N_Vector, __num), convert(N_Vector, __denom))
end

function N_VLinearCombination_Serial(nvec::Cint, c, V, z::N_Vector)
    ccall((:N_VLinearCombination_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, N_Vector), nvec, c, V, z)
end

function N_VLinearCombination_Serial(nvec, c, V, z)
    __z = convert(NVector, z)
    N_VLinearCombination_Serial(convert(Cint, nvec), c, V, convert(N_Vector, __z))
end

function N_VScaleAddMulti_Serial(nvec::Cint, a, x::N_Vector, Y, Z)
    ccall((:N_VScaleAddMulti_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, x, Y, Z)
end

function N_VScaleAddMulti_Serial(nvec, a, x, Y, Z)
    __x = convert(NVector, x)
    N_VScaleAddMulti_Serial(convert(Cint, nvec), a, convert(N_Vector, __x), Y, Z)
end

function N_VDotProdMulti_Serial(nvec::Cint, x::N_Vector, Y, dotprods)
    ccall((:N_VDotProdMulti_Serial, libsundials_nvecserial), Cint, (Cint, N_Vector, Ptr{N_Vector}, Ptr{realtype}), nvec, x, Y, dotprods)
end

function N_VDotProdMulti_Serial(nvec, x, Y, dotprods)
    __x = convert(NVector, x)
    N_VDotProdMulti_Serial(convert(Cint, nvec), convert(N_Vector, __x), Y, dotprods)
end

function N_VLinearSumVectorArray_Serial(nvec::Cint, a::realtype, X, b::realtype, Y, Z)
    ccall((:N_VLinearSumVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}, realtype, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, X, b, Y, Z)
end

function N_VLinearSumVectorArray_Serial(nvec, a, X, b, Y, Z)
    N_VLinearSumVectorArray_Serial(convert(Cint, nvec), a, X, b, Y, Z)
end

function N_VScaleVectorArray_Serial(nvec::Cint, c, X, Z)
    ccall((:N_VScaleVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}), nvec, c, X, Z)
end

function N_VScaleVectorArray_Serial(nvec, c, X, Z)
    N_VScaleVectorArray_Serial(convert(Cint, nvec), c, X, Z)
end

function N_VConstVectorArray_Serial(nvecs::Cint, c::realtype, Z)
    ccall((:N_VConstVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, realtype, Ptr{N_Vector}), nvecs, c, Z)
end

function N_VConstVectorArray_Serial(nvecs, c, Z)
    N_VConstVectorArray_Serial(convert(Cint, nvecs), c, Z)
end

function N_VWrmsNormVectorArray_Serial(nvecs::Cint, X, W, nrm)
    ccall((:N_VWrmsNormVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}), nvecs, X, W, nrm)
end

function N_VWrmsNormVectorArray_Serial(nvecs, X, W, nrm)
    N_VWrmsNormVectorArray_Serial(convert(Cint, nvecs), X, W, nrm)
end

function N_VWrmsNormMaskVectorArray_Serial(nvecs::Cint, X, W, id::N_Vector, nrm)
    ccall((:N_VWrmsNormMaskVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, N_Vector, Ptr{realtype}), nvecs, X, W, id, nrm)
end

function N_VWrmsNormMaskVectorArray_Serial(nvecs, X, W, id, nrm)
    __id = convert(NVector, id)
    N_VWrmsNormMaskVectorArray_Serial(convert(Cint, nvecs), X, W, convert(N_Vector, __id), nrm)
end

function N_VScaleAddMultiVectorArray_Serial(nvec::Cint, nsum::Cint, a, X, Y, Z)
    ccall((:N_VScaleAddMultiVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{Ptr{N_Vector}}, Ptr{Ptr{N_Vector}}), nvec, nsum, a, X, Y, Z)
end

function N_VScaleAddMultiVectorArray_Serial(nvec, nsum, a, X, Y, Z)
    N_VScaleAddMultiVectorArray_Serial(convert(Cint, nvec), convert(Cint, nsum), a, X, Y, Z)
end

function N_VLinearCombinationVectorArray_Serial(nvec::Cint, nsum::Cint, c, X, Z)
    ccall((:N_VLinearCombinationVectorArray_Serial, libsundials_nvecserial), Cint, (Cint, Cint, Ptr{realtype}, Ptr{Ptr{N_Vector}}, Ptr{N_Vector}), nvec, nsum, c, X, Z)
end

function N_VLinearCombinationVectorArray_Serial(nvec, nsum, c, X, Z)
    N_VLinearCombinationVectorArray_Serial(convert(Cint, nvec), convert(Cint, nsum), c, X, Z)
end

function N_VWSqrSumLocal_Serial(x::N_Vector, w::N_Vector)
    ccall((:N_VWSqrSumLocal_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWSqrSumLocal_Serial(x, w)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    N_VWSqrSumLocal_Serial(convert(N_Vector, __x), convert(N_Vector, __w))
end


function N_VWSqrSumMaskLocal_Serial(x::N_Vector, w::N_Vector, id::N_Vector)
    ccall((:N_VWSqrSumMaskLocal_Serial, libsundials_nvecserial), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VWSqrSumMaskLocal_Serial(x, w, id)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    __id = convert(NVector, id)
    N_VWSqrSumMaskLocal_Serial(convert(N_Vector, __x), convert(N_Vector, __w), convert(N_Vector, __id))
end

function N_VEnableFusedOps_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableFusedOps_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableFusedOps_Serial(v, tf)
    __v = convert(NVector, v)
    N_VEnableFusedOps_Serial(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableLinearCombination_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableLinearCombination_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearCombination_Serial(v, tf)
    __v = convert(NVector, v)
    N_VEnableLinearCombination_Serial(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableScaleAddMulti_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableScaleAddMulti_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleAddMulti_Serial(v, tf)
    __v = convert(NVector, v)
    N_VEnableScaleAddMulti_Serial(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableDotProdMulti_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableDotProdMulti_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableDotProdMulti_Serial(v, tf)
    __v = convert(NVector, v)
    N_VEnableDotProdMulti_Serial(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableLinearSumVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableLinearSumVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearSumVectorArray_Serial(v, tf)
    __v = convert(NVector, v)
    N_VEnableLinearSumVectorArray_Serial(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableScaleVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableScaleVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleVectorArray_Serial(v, tf)
    __v = convert(NVector, v)
    N_VEnableScaleVectorArray_Serial(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableConstVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableConstVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableConstVectorArray_Serial(v, tf)
    __v = convert(NVector, v)
    N_VEnableConstVectorArray_Serial(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableWrmsNormVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableWrmsNormVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormVectorArray_Serial(v, tf)
    __v = convert(NVector, v)
    N_VEnableWrmsNormVectorArray_Serial(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableWrmsNormMaskVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableWrmsNormMaskVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableWrmsNormMaskVectorArray_Serial(v, tf)
    __v = convert(NVector, v)
    N_VEnableWrmsNormMaskVectorArray_Serial(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableScaleAddMultiVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableScaleAddMultiVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableScaleAddMultiVectorArray_Serial(v, tf)
    __v = convert(NVector, v)
    N_VEnableScaleAddMultiVectorArray_Serial(convert(N_Vector, __v), convert(Cint, tf))
end

function N_VEnableLinearCombinationVectorArray_Serial(v::N_Vector, tf::Cint)
    ccall((:N_VEnableLinearCombinationVectorArray_Serial, libsundials_nvecserial), Cint, (N_Vector, Cint), v, tf)
end

function N_VEnableLinearCombinationVectorArray_Serial(v, tf)
    __v = convert(NVector, v)
    N_VEnableLinearCombinationVectorArray_Serial(convert(N_Vector, __v), convert(Cint, tf))
end
