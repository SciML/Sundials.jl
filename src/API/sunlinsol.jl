# Julia wrapper for header: sunlinsol_band.h
# Automatically generated using Clang.jl


function SUNLinSol_Band(y::N_Vector, A::SUNMatrix)
    ccall((:SUNLinSol_Band, libsundials_sunlinsolband), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLinSol_Band(y, A)
    __y = convert(NVector, y)
    SUNLinSol_Band(convert(N_Vector, __y), A)
end

function SUNBandLinearSolver(y::N_Vector, A::SUNMatrix)
    ccall((:SUNBandLinearSolver, libsundials_sunlinsolband), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNBandLinearSolver(y, A)
    __y = convert(NVector, y)
    SUNBandLinearSolver(convert(N_Vector, __y), A)
end

function SUNLinSolGetType_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_Band, libsundials_sunlinsolband), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_Band, libsundials_sunlinsolband), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_Band(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_Band(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_Band(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    SUNLinSolSolve_Band(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolLastFlag_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_Band, libsundials_sunlinsolband), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_Band(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_dense.h
# Automatically generated using Clang.jl


function SUNLinSol_Dense(y::N_Vector, A::SUNMatrix)
    ccall((:SUNLinSol_Dense, libsundials_sunlinsoldense), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLinSol_Dense(y, A)
    __y = convert(NVector, y)
    SUNLinSol_Dense(convert(N_Vector,  __y), A)
end

function SUNDenseLinearSolver(y::N_Vector, A::SUNMatrix)
    ccall((:SUNDenseLinearSolver, libsundials_sunlinsoldense), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNDenseLinearSolver(y, A)
    __y = convert(NVector, y)
    SUNDenseLinearSolver(convert(N_Vector, __y), A)
end

function SUNLinSolGetType_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_Dense, libsundials_sunlinsoldense), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_Dense, libsundials_sunlinsoldense), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_Dense(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_Dense(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_Dense(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    SUNLinSolSolve_Dense(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolLastFlag_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_Dense, libsundials_sunlinsoldense), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_Dense(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_klu.h
# Automatically generated using Clang.jl


function SUNLinSol_KLU(y::N_Vector, A::SUNMatrix)
    ccall((:SUNLinSol_KLU, libsundials_sunlinsolklu), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLinSol_KLU(y, A)
    __y = convert(NVector, y)
    SUNLinSol_KLU(convert(N_Vector, __y), A)
end

function SUNLinSol_KLUReInit(S::SUNLinearSolver, A::SUNMatrix, nnz::sunindextype, reinit_type::Cint)
    ccall((:SUNLinSol_KLUReInit, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, SUNMatrix, sunindextype, Cint), S, A, nnz, reinit_type)
end

function SUNLinSol_KLUReInit(S, A, nnz, reinit_type)
    SUNLinSol_KLUReInit(S, A, nnz, convert(Cint, reinit_type))
end

function SUNLinSol_KLUSetOrdering(S::SUNLinearSolver, ordering_choice::Cint)
    ccall((:SUNLinSol_KLUSetOrdering, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, Cint), S, ordering_choice)
end

function SUNLinSol_KLUSetOrdering(S, ordering_choice)
    SUNLinSol_KLUSetOrdering(S, convert(Cint, ordering_choice))
end

function SUNKLU(y::N_Vector, A::SUNMatrix)
    ccall((:SUNKLU, libsundials_sunlinsolklu), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNKLU(y, A)
    __y = convert(NVector, y)
    SUNKLU(convert(N_Vector, y), A)
end

function SUNKLUReInit(S::SUNLinearSolver, A::SUNMatrix, nnz::sunindextype, reinit_type::Cint)
    ccall((:SUNKLUReInit, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, SUNMatrix, sunindextype, Cint), S, A, nnz, reinit_type)
end

function SUNKLUReInit(S, A, nnz, reinit_type)
    SUNKLUReInit(S, A, nnz, convert(Cint, reinit_type))
end

function SUNKLUSetOrdering(S::SUNLinearSolver, ordering_choice::Cint)
    ccall((:SUNKLUSetOrdering, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, Cint), S, ordering_choice)
end

function SUNKLUSetOrdering(S, ordering_choice)
    SUNKLUSetOrdering(S, convert(Cint, ordering_choice))
end

function SUNLinSol_KLUGetSymbolic(S::SUNLinearSolver)
    ccall((:SUNLinSol_KLUGetSymbolic, libsundials_sunlinsolklu), Ptr{klu_l_symbolic}, (SUNLinearSolver,), S)
end

function SUNLinSol_KLUGetNumeric(S::SUNLinearSolver)
    ccall((:SUNLinSol_KLUGetNumeric, libsundials_sunlinsolklu), Ptr{klu_l_numeric}, (SUNLinearSolver,), S)
end

function SUNLinSol_KLUGetCommon(S::SUNLinearSolver)
    ccall((:SUNLinSol_KLUGetCommon, libsundials_sunlinsolklu), Ptr{klu_l_common}, (SUNLinearSolver,), S)
end

function SUNLinSolGetType_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_KLU, libsundials_sunlinsolklu), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_KLU, libsundials_sunlinsolklu), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_KLU(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_KLU(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_KLU(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    SUNLinSolSolve_KLU(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolLastFlag_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_KLU, libsundials_sunlinsolklu), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_KLU(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_lapackband.h
# Automatically generated using Clang.jl


function SUNLinSol_LapackBand(y::N_Vector, A::SUNMatrix)
    ccall((:SUNLinSol_LapackBand, libsundials_sunlinsolband), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLinSol_LapackBand(y, A)
    __y = convert(NVector, y)
    SUNLinSol_LapackBand(convert(N_Vector, __y), A)
end

function SUNLapackBand(y::N_Vector, A::SUNMatrix)
    ccall((:SUNLapackBand, libsundials_sunlinsolband), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLapackBand(y, A)
    __y = convert(NVector, y)
    SUNLapackBand(convert(N_Vector, __y), A)
end

function SUNLinSolGetType_LapackBand(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_LapackBand, libsundials_sunlinsolband), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_LapackBand(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_LapackBand, libsundials_sunlinsolband), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_LapackBand(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_LapackBand, libsundials_sunlinsolband), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_LapackBand(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_LapackBand, libsundials_sunlinsolband), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_LapackBand(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_LapackBand, libsundials_sunlinsolband), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_LapackBand(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    SUNLinSolSolve_LapackBand(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolLastFlag_LapackBand(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_LapackBand, libsundials_sunlinsolband), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_LapackBand(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_LapackBand, libsundials_sunlinsolband), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_LapackBand(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_LapackBand, libsundials_sunlinsolband), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_lapackdense.h
# Automatically generated using Clang.jl


function SUNLinSol_LapackDense(y::N_Vector, A::SUNMatrix)
    ccall((:SUNLinSol_LapackDense, libsundials_sunlinsoldense), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLinSol_LapackDense(y, A)
    __y = convert(NVector, y)
    SUNLinSol_LapackDense(convert(N_Vector, __y), A)
end

function SUNLapackDense(y::N_Vector, A::SUNMatrix)
    ccall((:SUNLapackDense, libsundials_sunlinsoldense), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLapackDense(y, A)
    __y = convert(NVector, y)
    SUNLapackDense(convert(N_Vector, __y), A)
end

function SUNLinSolGetType_LapackDense(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_LapackDense, libsundials_sunlinsoldense), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_LapackDense(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_LapackDense, libsundials_sunlinsoldense), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_LapackDense(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_LapackDense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_LapackDense(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_LapackDense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_LapackDense(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_LapackDense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_LapackDense(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    SUNLinSolSolve_LapackDense(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolLastFlag_LapackDense(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_LapackDense, libsundials_sunlinsoldense), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_LapackDense(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_LapackDense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_LapackDense(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_LapackDense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_pcg.h
# Automatically generated using Clang.jl


function SUNLinSol_PCG(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNLinSol_PCG, libsundials_sunlinsolpcg), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNLinSol_PCG(y, pretype, maxl)
    __y = convert(NVector, y)
    SUNLinSol_PCG(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function SUNLinSol_PCGSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNLinSol_PCGSetPrecType, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_PCGSetPrecType(S, pretype)
    SUNLinSol_PCGSetPrecType(S, convert(Cint, pretype))
end

function SUNLinSol_PCGSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNLinSol_PCGSetMaxl, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNLinSol_PCGSetMaxl(S, maxl)
    SUNLinSol_PCGSetMaxl(S, convert(Cint, maxl))
end

function SUNPCG(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNPCG, libsundials_sunlinsolpcg), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNPCG(y, pretype, maxl)
    __y = convert(NVector, y)
    SUNPCG(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function SUNPCGSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNPCGSetPrecType, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNPCGSetPrecType(S, pretype)
    SUNPCGSetPrecType(S, convert(Cint, pretype))
end

function SUNPCGSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNPCGSetMaxl, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNPCGSetMaxl(S, maxl)
    SUNPCGSetMaxl(S, convert(Cint, maxl))
end

function SUNLinSolGetType_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_PCG, libsundials_sunlinsolpcg), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_PCG, libsundials_sunlinsolpcg), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_PCG(S::SUNLinearSolver, A_data, ATimes::ATimesFn)
    ccall((:SUNLinSolSetATimes_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Ptr{Cvoid}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_PCG(S::SUNLinearSolver, P_data, Pset::PSetupFn, Psol::PSolveFn)
    ccall((:SUNLinSolSetPreconditioner_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Ptr{Cvoid}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_PCG(S::SUNLinearSolver, s::N_Vector, nul::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s, nul)
end

function SUNLinSolSetScalingVectors_PCG(S, s, nul)
    __s = convert(NVector, s)
    __nul = convert(NVector, nul)
    SUNLinSolSetScalingVectors_PCG(S, convert(N_Vector, __s), convert(N_Vector, __nul))
end

function SUNLinSolSetup_PCG(S::SUNLinearSolver, nul::SUNMatrix)
    ccall((:SUNLinSolSetup_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, SUNMatrix), S, nul)
end

function SUNLinSolSolve_PCG(S::SUNLinearSolver, nul::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, nul, x, b, tol)
end

function SUNLinSolSolve_PCG(S, nul, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    SUNLinSolSolve_PCG(S, nul, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolNumIters_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_PCG, libsundials_sunlinsolpcg), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_PCG, libsundials_sunlinsolpcg), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_PCG, libsundials_sunlinsolpcg), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_PCG(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_spbcgs.h
# Automatically generated using Clang.jl


function SUNLinSol_SPBCGS(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNLinSol_SPBCGS, libsundials_sunlinsolspbcgs), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNLinSol_SPBCGS(y, pretype, maxl)
    __y = convert(NVector, y)
    SUNLinSol_SPBCGS(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function SUNLinSol_SPBCGSSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNLinSol_SPBCGSSetPrecType, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_SPBCGSSetPrecType(S::SUNLinearSolver, pretype)
    SUNLinSol_SPBCGSSetPrecType(S, convert(Cint, pretype))
end

function SUNLinSol_SPBCGSSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNLinSol_SPBCGSSetMaxl, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNLinSol_SPBCGSSetMaxl(S::SUNLinearSolver, maxl)
    SUNLinSol_SPBCGSSetMaxl(S, convert(Cint, maxl))
end

function SUNSPBCGS(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNSPBCGS, libsundials_sunlinsolspbcgs), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPBCGS(y, pretype, maxl)
    __y = convert(NVector, y)
    SUNSPBCGS(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function SUNSPBCGSSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNSPBCGSSetPrecType, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPBCGSSetPrecType(S, pretype)
    SUNSPBCGSSetPrecType(S, convert(Cint, pretype))
end

function SUNSPBCGSSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNSPBCGSSetMaxl, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNSPBCGSSetMaxl(S, maxl)
    SUNSPBCGSSetMaxl(S, convert(Cint, maxl))
end

function SUNLinSolGetType_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPBCGS, libsundials_sunlinsolspbcgs), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_SPBCGS, libsundials_sunlinsolspbcgs), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPBCGS(S::SUNLinearSolver, A_data, ATimes::ATimesFn)
    ccall((:SUNLinSolSetATimes_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Ptr{Cvoid}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPBCGS(S::SUNLinearSolver, P_data, Pset::PSetupFn, Psol::PSolveFn)
    ccall((:SUNLinSolSetPreconditioner_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Ptr{Cvoid}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPBCGS(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetScalingVectors_SPBCGS(S, s1, s2)
    __s1 = convert(NVector, s1)
    __s2 = convert(NVector, s2)
    SUNLinSolSetScalingVectors_SPBCGS(S, convert(N_Vector, __s1), convert(N_Vector, __s2))
end

function SUNLinSolSetup_SPBCGS(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPBCGS(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_SPBCGS(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    SUNLinSolSolve_SPBCGS(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolNumIters_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_SPBCGS, libsundials_sunlinsolspbcgs), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_SPBCGS, libsundials_sunlinsolspbcgs), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_SPBCGS, libsundials_sunlinsolspbcgs), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPBCGS(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_spfgmr.h
# Automatically generated using Clang.jl


function SUNLinSol_SPFGMR(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNLinSol_SPFGMR, libsundials_sunlinsolspfgmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNLinSol_SPFGMR(y, pretype, maxl)
    __y = convert(NVector, y)
    SUNLinSol_SPFGMR(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function SUNLinSol_SPFGMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNLinSol_SPFGMRSetPrecType, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_SPFGMRSetPrecType(S, pretype)
    SUNLinSol_SPFGMRSetPrecType(S, convert(Cint, pretype))
end

function SUNLinSol_SPFGMRSetGSType(S::SUNLinearSolver, gstype::Cint)
    ccall((:SUNLinSol_SPFGMRSetGSType, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNLinSol_SPFGMRSetGSType(S, gstype)
    SUNLinSol_SPFGMRSetGSType(S, convert(Cint, gstype))
end

function SUNLinSol_SPFGMRSetMaxRestarts(S::SUNLinearSolver, maxrs::Cint)
    ccall((:SUNLinSol_SPFGMRSetMaxRestarts, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNLinSol_SPFGMRSetMaxRestarts(S, maxrs)
    SUNLinSol_SPFGMRSetMaxRestarts(S, convert(Cint, maxrs))
end

function SUNSPFGMR(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNSPFGMR, libsundials_sunlinsolspfgmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPFGMR(y, pretype, maxl)
    __y = convert(NVector, y)
    SUNSPFGMR(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function SUNSPFGMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNSPFGMRSetPrecType, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPFGMRSetPrecType(S, pretype)
    SUNSPFGMRSetPrecType(S, convert(Cint, pretype))
end

function SUNSPFGMRSetGSType(S::SUNLinearSolver, gstype::Cint)
    ccall((:SUNSPFGMRSetGSType, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNSPFGMRSetGSType(S, gstype)
    SUNSPFGMRSetGSType(S, convert(Cint, gstype))
end

function SUNSPFGMRSetMaxRestarts(S::SUNLinearSolver, maxrs::Cint)
    ccall((:SUNSPFGMRSetMaxRestarts, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNSPFGMRSetMaxRestarts(S, maxrs)
    SUNSPFGMRSetMaxRestarts(S, convert(Cint, maxrs))
end

function SUNLinSolGetType_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPFGMR, libsundials_sunlinsolspfgmr), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_SPFGMR, libsundials_sunlinsolspfgmr), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPFGMR(S::SUNLinearSolver, A_data, ATimes::ATimesFn)
    ccall((:SUNLinSolSetATimes_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Ptr{Cvoid}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPFGMR(S::SUNLinearSolver, P_data, Pset::PSetupFn, Psol::PSolveFn)
    ccall((:SUNLinSolSetPreconditioner_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Ptr{Cvoid}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPFGMR(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetScalingVectors_SPFGMR(S, s1, s2)
    __s1 = convert(NVector, s1)
    __s2 = convert(NVector, s2)
    SUNLinSolSetScalingVectors_SPFGMR(S, convert(N_Vector, __s1), convert(N_Vector, __s2))
end

function SUNLinSolSetup_SPFGMR(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPFGMR(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_SPFGMR(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    SUNLinSolSolve_SPFGMR(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolNumIters_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_SPFGMR, libsundials_sunlinsolspfgmr), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_SPFGMR, libsundials_sunlinsolspfgmr), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_SPFGMR, libsundials_sunlinsolspfgmr), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPFGMR(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_spgmr.h
# Automatically generated using Clang.jl


function SUNLinSol_SPGMR(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNLinSol_SPGMR, libsundials_sunlinsolspgmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNLinSol_SPGMR(y, pretype, maxl)
    __y = convert(NVector, y)
    SUNLinSol_SPGMR(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function SUNLinSol_SPGMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNLinSol_SPGMRSetPrecType, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_SPGMRSetPrecType(S, pretype)
    SUNLinSol_SPGMRSetPrecType(S, convert(Cint, pretype))
end

function SUNLinSol_SPGMRSetGSType(S::SUNLinearSolver, gstype::Cint)
    ccall((:SUNLinSol_SPGMRSetGSType, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNLinSol_SPGMRSetGSType(S, gstype)
    SUNLinSol_SPGMRSetGSType(S, convert(Cint, gstype))
end

function SUNLinSol_SPGMRSetMaxRestarts(S::SUNLinearSolver, maxrs::Cint)
    ccall((:SUNLinSol_SPGMRSetMaxRestarts, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNLinSol_SPGMRSetMaxRestarts(S::SUNLinearSolver, maxrs)
    SUNLinSol_SPGMRSetMaxRestarts(S, convert(Cint, maxrs))
end

function SUNSPGMR(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNSPGMR, libsundials_sunlinsolspgmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPGMR(y, pretype, maxl)
    __y = convert(NVector, y)
    SUNSPGMR(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function SUNSPGMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNSPGMRSetPrecType, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPGMRSetPrecType(S, pretype)
    SUNSPGMRSetPrecType(S, convert(Cint, pretype))
end

function SUNSPGMRSetGSType(S::SUNLinearSolver, gstype::Cint)
    ccall((:SUNSPGMRSetGSType, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNSPGMRSetGSType(S, gstype)
    SUNSPGMRSetGSType(S, convert(Cint, gstype))
end

function SUNSPGMRSetMaxRestarts(S::SUNLinearSolver, maxrs::Cint)
    ccall((:SUNSPGMRSetMaxRestarts, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNSPGMRSetMaxRestarts(S, maxrs)
    SUNSPGMRSetMaxRestarts(S, convert(Cint, maxrs))
end

function SUNLinSolGetType_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPGMR, libsundials_sunlinsolspgmr), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_SPGMR, libsundials_sunlinsolspgmr), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPGMR(S::SUNLinearSolver, A_data, ATimes::ATimesFn)
    ccall((:SUNLinSolSetATimes_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Ptr{Cvoid}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPGMR(S::SUNLinearSolver, P_data, Pset::PSetupFn, Psol::PSolveFn)
    ccall((:SUNLinSolSetPreconditioner_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Ptr{Cvoid}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPGMR(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetScalingVectors_SPGMR(S, s1, s2)
    __s1 = convert(NVector, s1)
    __s2 = convert(NVector, s2)
    SUNLinSolSetScalingVectors_SPGMR(S, convert(N_Vector, __s1), convert(N_Vector, __s2))
end

function SUNLinSolSetup_SPGMR(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPGMR(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_SPGMR(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    SUNLinSolSolve_SPGMR(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolNumIters_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_SPGMR, libsundials_sunlinsolspgmr), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_SPGMR, libsundials_sunlinsolspgmr), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_SPGMR, libsundials_sunlinsolspgmr), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPGMR(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sunlinsol_sptfqmr.h
# Automatically generated using Clang.jl


function SUNLinSol_SPTFQMR(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNLinSol_SPTFQMR, libsundials_sunlinsolsptfqmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNLinSol_SPTFQMR(y, pretype, maxl)
    __y = convert(NVector, y)
    SUNLinSol_SPTFQMR(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function SUNLinSol_SPTFQMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNLinSol_SPTFQMRSetPrecType, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNLinSol_SPTFQMRSetPrecType(S, pretype)
    SUNLinSol_SPTFQMRSetPrecType(S, convert(Cint, pretype))
end

function SUNLinSol_SPTFQMRSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNLinSol_SPTFQMRSetMaxl, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNLinSol_SPTFQMRSetMaxl(S, maxl)
    SUNLinSol_SPTFQMRSetMaxl(S, convert(Cint, maxl))
end

function SUNSPTFQMR(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNSPTFQMR, libsundials_sunlinsolsptfqmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPTFQMR(y, pretype, maxl)
    __y = convert(NVector, y)
    SUNSPTFQMR(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function SUNSPTFQMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNSPTFQMRSetPrecType, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPTFQMRSetPrecType(S, pretype)
    SUNSPTFQMRSetPrecType(S, convert(Cint, pretype))
end

function SUNLinSolGetType_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPTFQMR, libsundials_sunlinsolsptfqmr), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID_SPTFQMR, libsundials_sunlinsolsptfqmr), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPTFQMR(S::SUNLinearSolver, A_data, ATimes::ATimesFn)
    ccall((:SUNLinSolSetATimes_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Ptr{Cvoid}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPTFQMR(S::SUNLinearSolver, P_data, Pset::PSetupFn, Psol::PSolveFn)
    ccall((:SUNLinSolSetPreconditioner_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Ptr{Cvoid}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPTFQMR(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetScalingVectors_SPTFQMR(S, s1, s2)
    __s1 = convert(NVector, s1)
    __s2 = convert(NVector, s2)
    SUNLinSolSetScalingVectors_SPTFQMR(S, convert(N_Vector, __s1), convert(N_Vector, __s2))
end

function SUNLinSolSetup_SPTFQMR(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPTFQMR(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_SPTFQMR(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    SUNLinSolSolve_SPTFQMR(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolNumIters_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_SPTFQMR, libsundials_sunlinsolsptfqmr), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_SPTFQMR, libsundials_sunlinsolsptfqmr), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_SPTFQMR, libsundials_sunlinsolsptfqmr), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPTFQMR(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver,), S)
end
