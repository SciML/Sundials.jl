# Context-aware wrapper functions for Sundials 6.0+ API

# Matrix constructors
SUNDenseMatrix(M::sunindextype, N::sunindextype) = SUNDenseMatrix(M, N, get_default_context())
SUNBandMatrix(N::sunindextype, mu::sunindextype, ml::sunindextype) = SUNBandMatrix(N, mu, ml, get_default_context())
SUNBandMatrixStorage(N::sunindextype, mu::sunindextype, ml::sunindextype, smu::sunindextype) = SUNBandMatrixStorage(N, mu, ml, smu, get_default_context())
SUNSparseMatrix(M::sunindextype, N::sunindextype, NNZ::sunindextype, sparsetype::Cint) = SUNSparseMatrix(M, N, NNZ, sparsetype, get_default_context())

# Linear solver constructors
SUNLinSol_Dense(y::N_Vector, A::SUNMatrix) = SUNLinSol_Dense(y, A, get_default_context())
SUNLinSol_Band(y::N_Vector, A::SUNMatrix) = SUNLinSol_Band(y, A, get_default_context())
SUNLinSol_LapackDense(y::N_Vector, A::SUNMatrix) = SUNLinSol_LapackDense(y, A, get_default_context())
SUNLinSol_LapackBand(y::N_Vector, A::SUNMatrix) = SUNLinSol_LapackBand(y, A, get_default_context())
SUNLinSol_KLU(y::N_Vector, A::SUNMatrix) = SUNLinSol_KLU(y, A, get_default_context())
SUNLinSol_SPGMR(y::N_Vector, prec_type::Cint, maxl::Cint) = SUNLinSol_SPGMR(y, prec_type, maxl, get_default_context())
SUNLinSol_SPFGMR(y::N_Vector, prec_type::Cint, maxl::Cint) = SUNLinSol_SPFGMR(y, prec_type, maxl, get_default_context())
SUNLinSol_SPBCGS(y::N_Vector, prec_type::Cint, maxl::Cint) = SUNLinSol_SPBCGS(y, prec_type, maxl, get_default_context())
SUNLinSol_PCG(y::N_Vector, prec_type::Cint, maxl::Cint) = SUNLinSol_PCG(y, prec_type, maxl, get_default_context())
SUNLinSol_SPTFQMR(y::N_Vector, prec_type::Cint, maxl::Cint) = SUNLinSol_SPTFQMR(y, prec_type, maxl, get_default_context())