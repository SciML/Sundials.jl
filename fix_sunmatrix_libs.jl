#!/usr/bin/env julia

# Script to fix libsundials_sunmatrix references in generated API files

# Read the file
api_file = "src/lib/libsundials_api_rewrite.jl"
content = read(api_file, String)

# Replace dense matrix functions
content = replace(content, r"(:SUNDenseMatrix[^,]*,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixdense")
content = replace(content, r"(:SUNMatGetID_Dense,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixdense")
content = replace(content, r"(:SUNMatClone_Dense,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixdense")
content = replace(content, r"(:SUNMatDestroy_Dense,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixdense")
content = replace(content, r"(:SUNMatZero_Dense,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixdense")
content = replace(content, r"(:SUNMatCopy_Dense,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixdense")
content = replace(content, r"(:SUNMatScaleAdd_Dense,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixdense")
content = replace(content, r"(:SUNMatScaleAddI_Dense,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixdense")
content = replace(content, r"(:SUNMatMatvec_Dense,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixdense")
content = replace(content, r"(:SUNMatSpace_Dense,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixdense")

# Replace band matrix functions
content = replace(content, r"(:SUNBandMatrix[^,]*,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixband")
content = replace(content, r"(:SUNMatGetID_Band,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixband")
content = replace(content, r"(:SUNMatClone_Band,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixband")
content = replace(content, r"(:SUNMatDestroy_Band,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixband")
content = replace(content, r"(:SUNMatZero_Band,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixband")
content = replace(content, r"(:SUNMatCopy_Band,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixband")
content = replace(content, r"(:SUNMatScaleAdd_Band,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixband")
content = replace(content, r"(:SUNMatScaleAddI_Band,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixband")
content = replace(content, r"(:SUNMatMatvec_Band,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixband")
content = replace(content, r"(:SUNMatSpace_Band,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixband")

# Replace sparse matrix functions  
content = replace(content, r"(:SUNSparseMatrix[^,]*,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixsparse")
content = replace(content, r"(:SUNSparseFromDenseMatrix,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixsparse")
content = replace(content, r"(:SUNSparseFromBandMatrix,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixsparse")
content = replace(content, r"(:SUNMatGetID_Sparse,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixsparse")
content = replace(content, r"(:SUNMatClone_Sparse,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixsparse")
content = replace(content, r"(:SUNMatDestroy_Sparse,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixsparse")
content = replace(content, r"(:SUNMatZero_Sparse,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixsparse")
content = replace(content, r"(:SUNMatCopy_Sparse,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixsparse")
content = replace(content, r"(:SUNMatScaleAdd_Sparse,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixsparse")
content = replace(content, r"(:SUNMatScaleAddI_Sparse,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixsparse")
content = replace(content, r"(:SUNMatMatvec_Sparse,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixsparse")
content = replace(content, r"(:SUNMatSpace_Sparse,\s*)libsundials_sunmatrix" => s"\1libsundials_sunmatrixsparse")

# Write back
write(api_file, content)

println("Fixed libsundials_sunmatrix references in $api_file")