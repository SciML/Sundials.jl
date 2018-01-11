# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function SUNBandLinearSolver(y::N_Vector, A::SUNMatrix)
    ccall((:SUNBandLinearSolver, libsundials_sunlinsol), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLinSolGetType_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_Band, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_Band, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_Band(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_Band, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_Band(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_Band, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolLastFlag_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_Band, libsundials_sunlinsol), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_Band(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_Band, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_Band(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_Band, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function SUNDenseLinearSolver(y::N_Vector, A::SUNMatrix)
    ccall((:SUNDenseLinearSolver, libsundials_sunlinsoldense), SUNLinearSolver, (N_Vector, SUNMatrix), y, A)
end

function SUNLinSolGetType_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_Dense, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_Dense, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup_Dense(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_Dense, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_Dense(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_Dense, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolLastFlag_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_Dense, libsundials_sunlinsol), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_Dense(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_Dense, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_Dense(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_Dense, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_pcg.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function SUNPCG(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNPCG, libsundials_sunlinsol), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNPCGSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNPCGSetPrecType, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNPCGSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNPCGSetMaxl, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNLinSolGetType_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_PCG, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_PCG(S::SUNLinearSolver, A_data, ATimes::ATimesFn)
    ccall((:SUNLinSolSetATimes_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Void}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_PCG(S::SUNLinearSolver, P_data, Pset::PSetupFn, Psol::PSolveFn)
    ccall((:SUNLinSolSetPreconditioner_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Void}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_PCG(S::SUNLinearSolver, s::N_Vector, nul::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s, nul)
end

function SUNLinSolSetup_PCG(S::SUNLinearSolver, nul::SUNMatrix)
    ccall((:SUNLinSolSetup_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, nul)
end

function SUNLinSolSolve_PCG(S::SUNLinearSolver, nul::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, nul, x, b, tol)
end

function SUNLinSolNumIters_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_PCG, libsundials_sunlinsol), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_PCG, libsundials_sunlinsol), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_PCG, libsundials_sunlinsol), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_PCG(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_PCG(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_PCG, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function SUNSPBCGS(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNSPBCGS, libsundials_sunlinsol), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPBCGSSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNSPBCGSSetPrecType, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPBCGSSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNSPBCGSSetMaxl, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNLinSolGetType_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPBCGS, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPBCGS(S::SUNLinearSolver, A_data, ATimes::ATimesFn)
    ccall((:SUNLinSolSetATimes_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Void}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPBCGS(S::SUNLinearSolver, P_data, Pset::PSetupFn, Psol::PSolveFn)
    ccall((:SUNLinSolSetPreconditioner_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Void}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPBCGS(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetup_SPBCGS(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPBCGS(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_SPBCGS, libsundials_sunlinsol), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_SPBCGS, libsundials_sunlinsol), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_SPBCGS, libsundials_sunlinsol), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPBCGS(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPBCGS(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPBCGS, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_spfgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function SUNSPFGMR(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNSPFGMR, libsundials_sunlinsol), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPFGMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNSPFGMRSetPrecType, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPFGMRSetGSType(S::SUNLinearSolver, gstype::Cint)
    ccall((:SUNSPFGMRSetGSType, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNSPFGMRSetMaxRestarts(S::SUNLinearSolver, maxrs::Cint)
    ccall((:SUNSPFGMRSetMaxRestarts, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNLinSolGetType_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPFGMR, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPFGMR(S::SUNLinearSolver, A_data, ATimes::ATimesFn)
    ccall((:SUNLinSolSetATimes_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Void}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPFGMR(S::SUNLinearSolver, P_data, Pset::PSetupFn, Psol::PSolveFn)
    ccall((:SUNLinSolSetPreconditioner_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Void}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPFGMR(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetup_SPFGMR(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPFGMR(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_SPFGMR, libsundials_sunlinsol), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_SPFGMR, libsundials_sunlinsol), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_SPFGMR, libsundials_sunlinsol), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPFGMR(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPFGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPFGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function SUNSPGMR(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNSPGMR, libsundials_sunlinsol), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPGMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNSPGMRSetPrecType, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPGMRSetGSType(S::SUNLinearSolver, gstype::Cint)
    ccall((:SUNSPGMRSetGSType, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, gstype)
end

function SUNSPGMRSetMaxRestarts(S::SUNLinearSolver, maxrs::Cint)
    ccall((:SUNSPGMRSetMaxRestarts, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, maxrs)
end

function SUNLinSolGetType_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPGMR, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPGMR(S::SUNLinearSolver, A_data, ATimes::ATimesFn)
    ccall((:SUNLinSolSetATimes_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Void}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPGMR(S::SUNLinearSolver, P_data, Pset::PSetupFn, Psol::PSolveFn)
    ccall((:SUNLinSolSetPreconditioner_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Void}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPGMR(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetup_SPGMR(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPGMR(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_SPGMR, libsundials_sunlinsol), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_SPGMR, libsundials_sunlinsol), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_SPGMR, libsundials_sunlinsol), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPGMR(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPGMR(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPGMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: /home/osboxes/.julia/v0.6/Sundials/deps/usr/include/sunlinsol/sunlinsol_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function SUNSPTFQMR(y::N_Vector, pretype::Cint, maxl::Cint)
    ccall((:SUNSPTFQMR, libsundials_sunlinsol), SUNLinearSolver, (N_Vector, Cint, Cint), y, pretype, maxl)
end

function SUNSPTFQMRSetPrecType(S::SUNLinearSolver, pretype::Cint)
    ccall((:SUNSPTFQMRSetPrecType, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, pretype)
end

function SUNSPTFQMRSetMaxl(S::SUNLinearSolver, maxl::Cint)
    ccall((:SUNSPTFQMRSetMaxl, libsundials_sunlinsol), Cint, (SUNLinearSolver, Cint), S, maxl)
end

function SUNLinSolGetType_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType_SPTFQMR, libsundials_sunlinsol), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolInitialize_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes_SPTFQMR(S::SUNLinearSolver, A_data, ATimes::ATimesFn)
    ccall((:SUNLinSolSetATimes_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Void}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner_SPTFQMR(S::SUNLinearSolver, P_data, Pset::PSetupFn, Psol::PSolveFn)
    ccall((:SUNLinSolSetPreconditioner_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Void}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors_SPTFQMR(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetup_SPTFQMR(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve_SPTFQMR(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolNumIters_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm_SPTFQMR, libsundials_sunlinsol), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolResid_SPTFQMR, libsundials_sunlinsol), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag_SPTFQMR, libsundials_sunlinsol), Clong, (SUNLinearSolver,), S)
end

function SUNLinSolSpace_SPTFQMR(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree_SPTFQMR(S::SUNLinearSolver)
    ccall((:SUNLinSolFree_SPTFQMR, libsundials_sunlinsol), Cint, (SUNLinearSolver,), S)
end
