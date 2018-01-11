# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunmatrix/sunmatrix_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function SUNBandMatrix(N::sunindextype, mu::sunindextype, ml::sunindextype, smu::sunindextype)
    ccall((:SUNBandMatrix, libsundials_sunmatrix), SUNMatrix, (sunindextype, sunindextype, sunindextype, sunindextype), N, mu, ml, smu)
end

function SUNBandMatrix_Print(A::SUNMatrix, outfile)
    ccall((:SUNBandMatrix_Print, libsundials_sunmatrix), Void, (SUNMatrix, Ptr{Cint}), A, outfile)
end

function SUNBandMatrix_Rows(A::SUNMatrix)
    ccall((:SUNBandMatrix_Rows, libsundials_sunmatrix), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_Columns(A::SUNMatrix)
    ccall((:SUNBandMatrix_Columns, libsundials_sunmatrix), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_LowerBandwidth(A::SUNMatrix)
    ccall((:SUNBandMatrix_LowerBandwidth, libsundials_sunmatrix), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_UpperBandwidth(A::SUNMatrix)
    ccall((:SUNBandMatrix_UpperBandwidth, libsundials_sunmatrix), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_StoredUpperBandwidth(A::SUNMatrix)
    ccall((:SUNBandMatrix_StoredUpperBandwidth, libsundials_sunmatrix), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_LDim(A::SUNMatrix)
    ccall((:SUNBandMatrix_LDim, libsundials_sunmatrix), sunindextype, (SUNMatrix,), A)
end

function SUNBandMatrix_Data(A::SUNMatrix)
    ccall((:SUNBandMatrix_Data, libsundials_sunmatrix), Ptr{realtype}, (SUNMatrix,), A)
end

function SUNBandMatrix_Cols(A::SUNMatrix)
    ccall((:SUNBandMatrix_Cols, libsundials_sunmatrix), Ptr{Ptr{realtype}}, (SUNMatrix,), A)
end

function SUNBandMatrix_Column(A::SUNMatrix, j::sunindextype)
    ccall((:SUNBandMatrix_Column, libsundials_sunmatrix), Ptr{realtype}, (SUNMatrix, sunindextype), A, j)
end

function SUNMatGetID_Band(A::SUNMatrix)
    ccall((:SUNMatGetID_Band, libsundials_sunmatrix), SUNMatrix_ID, (SUNMatrix,), A)
end

function SUNMatClone_Band(A::SUNMatrix)
    ccall((:SUNMatClone_Band, libsundials_sunmatrix), SUNMatrix, (SUNMatrix,), A)
end

function SUNMatDestroy_Band(A::SUNMatrix)
    ccall((:SUNMatDestroy_Band, libsundials_sunmatrix), Void, (SUNMatrix,), A)
end

function SUNMatZero_Band(A::SUNMatrix)
    ccall((:SUNMatZero_Band, libsundials_sunmatrix), Cint, (SUNMatrix,), A)
end

function SUNMatCopy_Band(A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatCopy_Band, libsundials_sunmatrix), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatScaleAdd_Band(c::realtype, A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatScaleAdd_Band, libsundials_sunmatrix), Cint, (realtype, SUNMatrix, SUNMatrix), c, A, B)
end

function SUNMatScaleAddI_Band(c::realtype, A::SUNMatrix)
    ccall((:SUNMatScaleAddI_Band, libsundials_sunmatrix), Cint, (realtype, SUNMatrix), c, A)
end

function SUNMatMatvec_Band(A::SUNMatrix, x::N_Vector, y::N_Vector)
    ccall((:SUNMatMatvec_Band, libsundials_sunmatrix), Cint, (SUNMatrix, N_Vector, N_Vector), A, x, y)
end

function SUNMatSpace_Band(A::SUNMatrix, lenrw, leniw)
    ccall((:SUNMatSpace_Band, libsundials_sunmatrix), Cint, (SUNMatrix, Ptr{Clong}, Ptr{Clong}), A, lenrw, leniw)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunmatrix/sunmatrix_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function SUNDenseMatrix(M::sunindextype, N::sunindextype)
    ccall((:SUNDenseMatrix, libsundials_sunmatrixdense), SUNMatrix, (sunindextype, sunindextype), M, N)
end

function SUNDenseMatrix_Print(A::SUNMatrix, outfile)
    ccall((:SUNDenseMatrix_Print, libsundials_sunmatrix), Void, (SUNMatrix, Ptr{Cint}), A, outfile)
end

function SUNDenseMatrix_Rows(A::SUNMatrix)
    ccall((:SUNDenseMatrix_Rows, libsundials_sunmatrix), sunindextype, (SUNMatrix,), A)
end

function SUNDenseMatrix_Columns(A::SUNMatrix)
    ccall((:SUNDenseMatrix_Columns, libsundials_sunmatrix), sunindextype, (SUNMatrix,), A)
end

function SUNDenseMatrix_LData(A::SUNMatrix)
    ccall((:SUNDenseMatrix_LData, libsundials_sunmatrix), sunindextype, (SUNMatrix,), A)
end

function SUNDenseMatrix_Data(A::SUNMatrix)
    ccall((:SUNDenseMatrix_Data, libsundials_sunmatrix), Ptr{realtype}, (SUNMatrix,), A)
end

function SUNDenseMatrix_Cols(A::SUNMatrix)
    ccall((:SUNDenseMatrix_Cols, libsundials_sunmatrix), Ptr{Ptr{realtype}}, (SUNMatrix,), A)
end

function SUNDenseMatrix_Column(A::SUNMatrix, j::sunindextype)
    ccall((:SUNDenseMatrix_Column, libsundials_sunmatrix), Ptr{realtype}, (SUNMatrix, sunindextype), A, j)
end

function SUNMatGetID_Dense(A::SUNMatrix)
    ccall((:SUNMatGetID_Dense, libsundials_sunmatrix), SUNMatrix_ID, (SUNMatrix,), A)
end

function SUNMatClone_Dense(A::SUNMatrix)
    ccall((:SUNMatClone_Dense, libsundials_sunmatrix), SUNMatrix, (SUNMatrix,), A)
end

function SUNMatDestroy_Dense(A::SUNMatrix)
    ccall((:SUNMatDestroy_Dense, libsundials_sunmatrix), Void, (SUNMatrix,), A)
end

function SUNMatZero_Dense(A::SUNMatrix)
    ccall((:SUNMatZero_Dense, libsundials_sunmatrix), Cint, (SUNMatrix,), A)
end

function SUNMatCopy_Dense(A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatCopy_Dense, libsundials_sunmatrix), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatScaleAdd_Dense(c::realtype, A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatScaleAdd_Dense, libsundials_sunmatrix), Cint, (realtype, SUNMatrix, SUNMatrix), c, A, B)
end

function SUNMatScaleAddI_Dense(c::realtype, A::SUNMatrix)
    ccall((:SUNMatScaleAddI_Dense, libsundials_sunmatrix), Cint, (realtype, SUNMatrix), c, A)
end

function SUNMatMatvec_Dense(A::SUNMatrix, x::N_Vector, y::N_Vector)
    ccall((:SUNMatMatvec_Dense, libsundials_sunmatrix), Cint, (SUNMatrix, N_Vector, N_Vector), A, x, y)
end

function SUNMatSpace_Dense(A::SUNMatrix, lenrw, leniw)
    ccall((:SUNMatSpace_Dense, libsundials_sunmatrix), Cint, (SUNMatrix, Ptr{Clong}, Ptr{Clong}), A, lenrw, leniw)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunmatrix/sunmatrix_sparse.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function SUNSparseMatrix(M::sunindextype, N::sunindextype, NNZ::sunindextype, sparsetype::Cint)
    ccall((:SUNSparseMatrix, libsundials_sunmatrix), SUNMatrix, (sunindextype, sunindextype, sunindextype, Cint), M, N, NNZ, sparsetype)
end

function SUNSparseFromDenseMatrix(A::SUNMatrix, droptol::realtype, sparsetype::Cint)
    ccall((:SUNSparseFromDenseMatrix, libsundials_sunmatrix), SUNMatrix, (SUNMatrix, realtype, Cint), A, droptol, sparsetype)
end

function SUNSparseFromBandMatrix(A::SUNMatrix, droptol::realtype, sparsetype::Cint)
    ccall((:SUNSparseFromBandMatrix, libsundials_sunmatrix), SUNMatrix, (SUNMatrix, realtype, Cint), A, droptol, sparsetype)
end

function SUNSparseMatrix_Realloc(A::SUNMatrix)
    ccall((:SUNSparseMatrix_Realloc, libsundials_sunmatrix), Cint, (SUNMatrix,), A)
end

function SUNSparseMatrix_Print(A::SUNMatrix, outfile)
    ccall((:SUNSparseMatrix_Print, libsundials_sunmatrix), Void, (SUNMatrix, Ptr{Cint}), A, outfile)
end

function SUNSparseMatrix_Rows(A::SUNMatrix)
    ccall((:SUNSparseMatrix_Rows, libsundials_sunmatrix), sunindextype, (SUNMatrix,), A)
end

function SUNSparseMatrix_Columns(A::SUNMatrix)
    ccall((:SUNSparseMatrix_Columns, libsundials_sunmatrix), sunindextype, (SUNMatrix,), A)
end

function SUNSparseMatrix_NNZ(A::SUNMatrix)
    ccall((:SUNSparseMatrix_NNZ, libsundials_sunmatrix), sunindextype, (SUNMatrix,), A)
end

function SUNSparseMatrix_NP(A::SUNMatrix)
    ccall((:SUNSparseMatrix_NP, libsundials_sunmatrix), sunindextype, (SUNMatrix,), A)
end

function SUNSparseMatrix_SparseType(A::SUNMatrix)
    ccall((:SUNSparseMatrix_SparseType, libsundials_sunmatrix), Cint, (SUNMatrix,), A)
end

function SUNSparseMatrix_Data(A::SUNMatrix)
    ccall((:SUNSparseMatrix_Data, libsundials_sunmatrix), Ptr{realtype}, (SUNMatrix,), A)
end

function SUNSparseMatrix_IndexValues(A::SUNMatrix)
    ccall((:SUNSparseMatrix_IndexValues, libsundials_sunmatrix), Ptr{sunindextype}, (SUNMatrix,), A)
end

function SUNSparseMatrix_IndexPointers(A::SUNMatrix)
    ccall((:SUNSparseMatrix_IndexPointers, libsundials_sunmatrix), Ptr{sunindextype}, (SUNMatrix,), A)
end

function SUNMatGetID_Sparse(A::SUNMatrix)
    ccall((:SUNMatGetID_Sparse, libsundials_sunmatrix), SUNMatrix_ID, (SUNMatrix,), A)
end

function SUNMatClone_Sparse(A::SUNMatrix)
    ccall((:SUNMatClone_Sparse, libsundials_sunmatrix), SUNMatrix, (SUNMatrix,), A)
end

function SUNMatDestroy_Sparse(A::SUNMatrix)
    ccall((:SUNMatDestroy_Sparse, libsundials_sunmatrix), Void, (SUNMatrix,), A)
end

function SUNMatZero_Sparse(A::SUNMatrix)
    ccall((:SUNMatZero_Sparse, libsundials_sunmatrix), Cint, (SUNMatrix,), A)
end

function SUNMatCopy_Sparse(A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatCopy_Sparse, libsundials_sunmatrix), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatScaleAdd_Sparse(c::realtype, A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatScaleAdd_Sparse, libsundials_sunmatrix), Cint, (realtype, SUNMatrix, SUNMatrix), c, A, B)
end

function SUNMatScaleAddI_Sparse(c::realtype, A::SUNMatrix)
    ccall((:SUNMatScaleAddI_Sparse, libsundials_sunmatrix), Cint, (realtype, SUNMatrix), c, A)
end

function SUNMatMatvec_Sparse(A::SUNMatrix, x::N_Vector, y::N_Vector)
    ccall((:SUNMatMatvec_Sparse, libsundials_sunmatrix), Cint, (SUNMatrix, N_Vector, N_Vector), A, x, y)
end

function SUNMatSpace_Sparse(A::SUNMatrix, lenrw, leniw)
    ccall((:SUNMatSpace_Sparse, libsundials_sunmatrix), Cint, (SUNMatrix, Ptr{Clong}, Ptr{Clong}), A, lenrw, leniw)
end
