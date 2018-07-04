# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __SUNBandLinearSolver(y::N_Vector, A::SUNMatrix)
    ccall((:SUNBandLinearSolver, libsundials_sunlinsolband), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNBandLinearSolver(y, A)
    __y = convert(NVector, y)
    __SUNBandLinearSolver(convert(N_Vector, __y), A)
end

function SUNLinSolGetType_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_Band, libsundials_sunlinsolband), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_Band(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function __SUNLinSolSolve_Band(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_Band(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    __SUNLinSolSolve_Band(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolLastFlag_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_Band, libsundials_sunlinsolband), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_Band(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_Band, libsundials_sunlinsolband), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __SUNDenseLinearSolver(y::N_Vector, A::SUNMatrix)
    ccall((:SUNDenseLinearSolver, libsundials_sunlinsoldense), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNDenseLinearSolver(y, A)
    __y = convert(NVector, y)
    __SUNDenseLinearSolver(convert(N_Vector, __y), A)
end

function SUNLinSolGetType_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_Dense, libsundials_sunlinsoldense), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_Dense(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function __SUNLinSolSolve_Dense(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_Dense(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    __SUNLinSolSolve_Dense(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolLastFlag_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_Dense, libsundials_sunlinsoldense), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_Dense(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_Dense, libsundials_sunlinsoldense), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_klu.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __SUNKLU(y::N_Vector, A::SUNMatrix)
    ccall((:SUNKLU, libsundials_sunlinsolklu), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNKLU(y, A)
    __y = convert(NVector, y)
    __SUNKLU(convert(N_Vector, __y), A)
end

function __SUNKLUReInit(S::SUNLinearSolver, A::SUNMatrix, nnz::sunindextype, reinit_type::Cint)
    ccall((:SUNKLUReInit, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, SUNMatrix, sunindextype, Cint), S, A, nnz, reinit_type)
end

function SUNKLUReInit(S, A, nnz, reinit_type)
    __SUNKLUReInit(S, A, nnz, convert(Cint, reinit_type))
end

function __SUNKLUSetOrdering(S::SUNLinearSolver, ordering_choice::Cint)
    ccall((:SUNKLUSetOrdering, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, Cint), S, ordering_choice)
end

function SUNKLUSetOrdering(S, ordering_choice)
    __SUNKLUSetOrdering(S, convert(Cint, ordering_choice))
end

function SUNLinSolGetType_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_KLU, libsundials_sunlinsolklu), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_KLU(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function __SUNLinSolSolve_KLU(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_KLU(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    __SUNLinSolSolve_KLU(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolLastFlag_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_KLU, libsundials_sunlinsolklu), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_KLU(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_KLU(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_KLU, libsundials_sunlinsolklu), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_pcg.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __SUNPCG(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNPCG, libsundials_sunlinsolpcg), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNPCG(y, pretype, maxl)
    __y = convert(NVector, y)
    __SUNPCG(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function __SUNPCGSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNPCGSetPrecType, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNPCGSetPrecType(S, pretype)
    __SUNPCGSetPrecType(S, convert(Cint, pretype))
end

function __SUNPCGSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNPCGSetMaxl, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNPCGSetMaxl(S, maxl)
    __SUNPCGSetMaxl(S, convert(Cint, maxl))
end

function SUNLinSolGetType_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_PCG, libsundials_sunlinsolpcg), SUNLinearSolver_Type, (SUNLinearSolver,), S)
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

function __SUNLinSolSetScalingVectors_PCG(S::SUNLinearSolver, s::N_Vector, nul::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s, nul)
end

function SUNLinSolSetScalingVectors_PCG(S, s, nul)
    __s = convert(NVector, s)
    __nul = convert(NVector, nul)
    __SUNLinSolSetScalingVectors_PCG(S, convert(N_Vector, __s), convert(N_Vector, __nul))
end

function SUNLinSolSetup_PCG(S::SUNLinearSolver, nul::SUNMatrix)
    ccall((:SUNLinSolSetup_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, SUNMatrix), S, nul)
end

function __SUNLinSolSolve_PCG(S::SUNLinearSolver, nul::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, nul, x, b, tol)
end

function SUNLinSolSolve_PCG(S, nul, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    __SUNLinSolSolve_PCG(S, nul, convert(N_Vector, __x), convert(N_Vector, __b), tol)
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
    ccall((:SUNLinSolLastFlag_PCG, libsundials_sunlinsolpcg), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_PCG(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_PCG, libsundials_sunlinsolpcg), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __SUNSPBCGS(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNSPBCGS, libsundials_sunlinsolspbcgs), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPBCGS(y, pretype, maxl)
    __y = convert(NVector, y)
    __SUNSPBCGS(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function __SUNSPBCGSSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNSPBCGSSetPrecType, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPBCGSSetPrecType(S, pretype)
    __SUNSPBCGSSetPrecType(S, convert(Cint, pretype))
end

function __SUNSPBCGSSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNSPBCGSSetMaxl, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNSPBCGSSetMaxl(S, maxl)
    __SUNSPBCGSSetMaxl(S, convert(Cint, maxl))
end

function SUNLinSolGetType_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPBCGS, libsundials_sunlinsolspbcgs), SUNLinearSolver_Type, (SUNLinearSolver,), S)
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

function __SUNLinSolSetScalingVectors_SPBCGS(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetScalingVectors_SPBCGS(S, s1, s2)
    __s1 = convert(NVector, s1)
    __s2 = convert(NVector, s2)
    __SUNLinSolSetScalingVectors_SPBCGS(S, convert(N_Vector, __s1), convert(N_Vector, __s2))
end

function SUNLinSolSetup_SPBCGS(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function __SUNLinSolSolve_SPBCGS(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_SPBCGS(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    __SUNLinSolSolve_SPBCGS(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
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
    ccall((:SUNLinSolLastFlag_SPBCGS, libsundials_sunlinsolspbcgs), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPBCGS(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPBCGS, libsundials_sunlinsolspbcgs), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_spfgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __SUNSPFGMR(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNSPFGMR, libsundials_sunlinsolspfgmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPFGMR(y, pretype, maxl)
    __y = convert(NVector, y)
    __SUNSPFGMR(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function __SUNSPFGMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNSPFGMRSetPrecType, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPFGMRSetPrecType(S, pretype)
    __SUNSPFGMRSetPrecType(S, convert(Cint, pretype))
end

function __SUNSPFGMRSetGSType(S::SUNLinearSolver, gstype::Cint)
    ccall((:SUNSPFGMRSetGSType, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNSPFGMRSetGSType(S, gstype)
    __SUNSPFGMRSetGSType(S, convert(Cint, gstype))
end

function __SUNSPFGMRSetMaxRestarts(S::SUNLinearSolver, maxrs::Cint)
    ccall((:SUNSPFGMRSetMaxRestarts, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNSPFGMRSetMaxRestarts(S, maxrs)
    __SUNSPFGMRSetMaxRestarts(S, convert(Cint, maxrs))
end

function SUNLinSolGetType_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPFGMR, libsundials_sunlinsolspfgmr), SUNLinearSolver_Type, (SUNLinearSolver,), S)
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

function __SUNLinSolSetScalingVectors_SPFGMR(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetScalingVectors_SPFGMR(S, s1, s2)
    __s1 = convert(NVector, s1)
    __s2 = convert(NVector, s2)
    __SUNLinSolSetScalingVectors_SPFGMR(S, convert(N_Vector, __s1), convert(N_Vector, __s2))
end

function SUNLinSolSetup_SPFGMR(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function __SUNLinSolSolve_SPFGMR(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_SPFGMR(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    __SUNLinSolSolve_SPFGMR(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
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
    ccall((:SUNLinSolLastFlag_SPFGMR, libsundials_sunlinsolspfgmr), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPFGMR(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPFGMR, libsundials_sunlinsolspfgmr), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __SUNSPGMR(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNSPGMR, libsundials_sunlinsolspgmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPGMR(y, pretype, maxl)
    __y = convert(NVector, y)
    __SUNSPGMR(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function __SUNSPGMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNSPGMRSetPrecType, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPGMRSetPrecType(S, pretype)
    __SUNSPGMRSetPrecType(S, convert(Cint, pretype))
end

function __SUNSPGMRSetGSType(S::SUNLinearSolver, gstype::Cint)
    ccall((:SUNSPGMRSetGSType, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNSPGMRSetGSType(S, gstype)
    __SUNSPGMRSetGSType(S, convert(Cint, gstype))
end

function __SUNSPGMRSetMaxRestarts(S::SUNLinearSolver, maxrs::Cint)
    ccall((:SUNSPGMRSetMaxRestarts, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNSPGMRSetMaxRestarts(S, maxrs)
    __SUNSPGMRSetMaxRestarts(S, convert(Cint, maxrs))
end

function SUNLinSolGetType_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPGMR, libsundials_sunlinsolspgmr), SUNLinearSolver_Type, (SUNLinearSolver,), S)
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

function __SUNLinSolSetScalingVectors_SPGMR(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetScalingVectors_SPGMR(S, s1, s2)
    __s1 = convert(NVector, s1)
    __s2 = convert(NVector, s2)
    __SUNLinSolSetScalingVectors_SPGMR(S, convert(N_Vector, __s1), convert(N_Vector, __s2))
end

function SUNLinSolSetup_SPGMR(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function __SUNLinSolSolve_SPGMR(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_SPGMR(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    __SUNLinSolSolve_SPGMR(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
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
    ccall((:SUNLinSolLastFlag_SPGMR, libsundials_sunlinsolspgmr), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPGMR(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPGMR, libsundials_sunlinsolspgmr), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __SUNSPTFQMR(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNSPTFQMR, libsundials_sunlinsolsptfqmr), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPTFQMR(y, pretype, maxl)
    __y = convert(NVector, y)
    __SUNSPTFQMR(convert(N_Vector, __y), convert(Cint, pretype), convert(Cint, maxl))
end

function __SUNSPTFQMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNSPTFQMRSetPrecType, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPTFQMRSetPrecType(S, pretype)
    __SUNSPTFQMRSetPrecType(S, convert(Cint, pretype))
end

function __SUNSPTFQMRSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNSPTFQMRSetMaxl, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNSPTFQMRSetMaxl(S, maxl)
    __SUNSPTFQMRSetMaxl(S, convert(Cint, maxl))
end

function SUNLinSolGetType_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPTFQMR, libsundials_sunlinsolsptfqmr), SUNLinearSolver_Type, (SUNLinearSolver,), S)
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

function __SUNLinSolSetScalingVectors_SPTFQMR(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetScalingVectors_SPTFQMR(S, s1, s2)
    __s1 = convert(NVector, s1)
    __s2 = convert(NVector, s2)
    __SUNLinSolSetScalingVectors_SPTFQMR(S, convert(N_Vector, __s1), convert(N_Vector, __s2))
end

function SUNLinSolSetup_SPTFQMR(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function __SUNLinSolSolve_SPTFQMR(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve_SPTFQMR(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    __SUNLinSolSolve_SPTFQMR(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
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
    ccall((:SUNLinSolLastFlag_SPTFQMR, libsundials_sunlinsolsptfqmr), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPTFQMR(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPTFQMR, libsundials_sunlinsolsptfqmr), Cint, (SUNLinearSolver,), S)
end
