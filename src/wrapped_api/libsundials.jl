# Julia wrapper for header: sundials_band.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_config.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_dense.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_direct.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_fconfig.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_fnvector.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_futils.h
# Automatically generated using Clang.jl


function SUNDIALSFileOpen(filename, modes)
    ccall((:SUNDIALSFileOpen, libsundials_sundials), Ptr{FILE}, (Cstring, Cstring), filename, modes)
end

function SUNDIALSFileClose(fp)
    ccall((:SUNDIALSFileClose, libsundials_sundials), Cvoid, (Ptr{FILE},), fp)
end
# Julia wrapper for header: sundials_iterative.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_lapack.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_linearsolver.h
# Automatically generated using Clang.jl


function SUNLinSolNewEmpty()
    ccall((:SUNLinSolNewEmpty, libsundials_sundials), SUNLinearSolver, ())
end

function SUNLinSolFreeEmpty(S::SUNLinearSolver)
    ccall((:SUNLinSolFreeEmpty, libsundials_sundials), Cvoid, (SUNLinearSolver,), S)
end

function SUNLinSolGetType(S::SUNLinearSolver)
    ccall((:SUNLinSolGetType, libsundials_sundials), SUNLinearSolver_Type, (SUNLinearSolver,), S)
end

function SUNLinSolGetID(S::SUNLinearSolver)
    ccall((:SUNLinSolGetID, libsundials_sundials), SUNLinearSolver_ID, (SUNLinearSolver,), S)
end

function SUNLinSolSetATimes(S, A_data, ATimes::ATimesFn)
    ccall((:SUNLinSolSetATimes, libsundials_sundials), Cint, (SUNLinearSolver, Ptr{Cvoid}, ATimesFn), S, A_data, ATimes)
end

function SUNLinSolSetPreconditioner(S, P_data, Pset::PSetupFn, Psol::PSolveFn)
    ccall((:SUNLinSolSetPreconditioner, libsundials_sundials), Cint, (SUNLinearSolver, Ptr{Cvoid}, PSetupFn, PSolveFn), S, P_data, Pset, Psol)
end

function SUNLinSolSetScalingVectors(S::SUNLinearSolver, s1::N_Vector, s2::N_Vector)
    ccall((:SUNLinSolSetScalingVectors, libsundials_sundials), Cint, (SUNLinearSolver, N_Vector, N_Vector), S, s1, s2)
end

function SUNLinSolSetScalingVectors(S, s1, s2)
    __s1 = convert(NVector, s1)
    __s2 = convert(NVector, s2)
    SUNLinSolSetScalingVectors(S, convert(N_Vector, __s1), convert(N_Vector, __s2))
end

function SUNLinSolInitialize(S::SUNLinearSolver)
    ccall((:SUNLinSolInitialize, libsundials_sundials), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolSetup(S::SUNLinearSolver, A::SUNMatrix)
    ccall((:SUNLinSolSetup, libsundials_sundials), Cint, (SUNLinearSolver, SUNMatrix), S, A)
end

function SUNLinSolSolve(S::SUNLinearSolver, A::SUNMatrix, x::N_Vector, b::N_Vector, tol::realtype)
    ccall((:SUNLinSolSolve, libsundials_sundials), Cint, (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype), S, A, x, b, tol)
end

function SUNLinSolSolve(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    SUNLinSolSolve(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolNumIters(S::SUNLinearSolver)
    ccall((:SUNLinSolNumIters, libsundials_sundials), Cint, (SUNLinearSolver,), S)
end

function SUNLinSolResNorm(S::SUNLinearSolver)
    ccall((:SUNLinSolResNorm, libsundials_sundials), realtype, (SUNLinearSolver,), S)
end

function SUNLinSolResid(S::SUNLinearSolver)
    ccall((:SUNLinSolResid, libsundials_sundials), N_Vector, (SUNLinearSolver,), S)
end

function SUNLinSolLastFlag(S::SUNLinearSolver)
    ccall((:SUNLinSolLastFlag, libsundials_sundials), sunindextype, (SUNLinearSolver,), S)
end

function SUNLinSolSpace(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall((:SUNLinSolSpace, libsundials_sundials), Cint, (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}), S, lenrwLS, leniwLS)
end

function SUNLinSolFree(S::SUNLinearSolver)
    ccall((:SUNLinSolFree, libsundials_sundials), Cint, (SUNLinearSolver,), S)
end
# Julia wrapper for header: sundials_math.h
# Automatically generated using Clang.jl


function SUNRpowerI(base::realtype, exponent::Cint)
    ccall((:SUNRpowerI, libsundials_sundials), realtype, (realtype, Cint), base, exponent)
end

function SUNRpowerI(base::realtype, exponent::Int)
    SUNRpowerI(base, convert(Cint, exponent))
end

function SUNRpowerR(base::realtype, exponent::Cint)
    ccall((:SUNRpowerR, libsundials_sundials), realtype, (realtype, realtype), base, exponent)
end

function SUNRpowerR(base::realtype, exponent::Int)
    SUNRpowerR(base, convert(Cint, exponent))
end
# Julia wrapper for header: sundials_matrix.h
# Automatically generated using Clang.jl


function SUNMatNewEmpty()
    ccall((:SUNMatNewEmpty, libsundials_sundials), SUNMatrix, ())
end

function SUNMatFreeEmpty(A::SUNMatrix)
    ccall((:SUNMatFreeEmpty, libsundials_sundials), Cvoid, (SUNMatrix,), A)
end

function SUNMatCopyOps(A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatCopyOps, libsundials_sundials), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatGetID(A::SUNMatrix)
    ccall((:SUNMatGetID, libsundials_sundials), SUNMatrix_ID, (SUNMatrix,), A)
end

function SUNMatClone(A::SUNMatrix)
    ccall((:SUNMatClone, libsundials_sundials), SUNMatrix, (SUNMatrix,), A)
end

function SUNMatDestroy(A::SUNMatrix)
    ccall((:SUNMatDestroy, libsundials_sundials), Cvoid, (SUNMatrix,), A)
end

function SUNMatZero(A::SUNMatrix)
    ccall((:SUNMatZero, libsundials_sundials), Cint, (SUNMatrix,), A)
end

function SUNMatCopy(A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatCopy, libsundials_sundials), Cint, (SUNMatrix, SUNMatrix), A, B)
end

function SUNMatScaleAdd(c::realtype, A::SUNMatrix, B::SUNMatrix)
    ccall((:SUNMatScaleAdd, libsundials_sundials), Cint, (realtype, SUNMatrix, SUNMatrix), c, A, B)
end

function SUNMatScaleAddI(c::realtype, A::SUNMatrix)
    ccall((:SUNMatScaleAddI, libsundials_sundials), Cint, (realtype, SUNMatrix), c, A)
end

function SUNMatMatvecSetup(A::SUNMatrix)
    ccall((:SUNMatMatvecSetup, libsundials_sundials), Cint, (SUNMatrix,), A)
end

function SUNMatMatvec(A::SUNMatrix, x::N_Vector, y::N_Vector)
    ccall((:SUNMatMatvec, libsundials_sundials), Cint, (SUNMatrix, N_Vector, N_Vector), A, x, y)
end

function SUNMatMatvec(A, x, y)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    SUNMatMatvec(A, convert(N_Vector, __x), convert(N_Vector, __y))
end

function SUNMatSpace(A::SUNMatrix, lenrw, leniw)
    ccall((:SUNMatSpace, libsundials_sundials), Cint, (SUNMatrix, Ptr{Clong}, Ptr{Clong}), A, lenrw, leniw)
end
# Julia wrapper for header: sundials_mpi_types.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_nonlinearsolver.h
# Automatically generated using Clang.jl


function SUNNonlinSolNewEmpty()
    ccall((:SUNNonlinSolNewEmpty, libsundials_sundials), SUNNonlinearSolver, ())
end

function SUNNonlinSolFreeEmpty(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolFreeEmpty, libsundials_sundials), Cvoid, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolGetType(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolGetType, libsundials_sundials), SUNNonlinearSolver_Type, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolInitialize(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolInitialize, libsundials_sundials), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSetup(NLS::SUNNonlinearSolver, y::N_Vector, mem)
    ccall((:SUNNonlinSolSetup, libsundials_sundials), Cint, (SUNNonlinearSolver, N_Vector, Ptr{Cvoid}), NLS, y, mem)
end

function SUNNonlinSolSetup(NLS, y, mem)
    __y = convert(NVector, y)
    SUNNonlinSolSetup(NLS, convert(N_Vector, __y), mem)
end

function SUNNonlinSolSolve(NLS::SUNNonlinearSolver, y0::N_Vector, y::N_Vector, w::N_Vector, tol::realtype, callLSetup::Cint, mem)
    ccall((:SUNNonlinSolSolve, libsundials_sundials), Cint, (SUNNonlinearSolver, N_Vector, N_Vector, N_Vector, realtype, Cint, Ptr{Cvoid}), NLS, y0, y, w, tol, callLSetup, mem)
end

function SUNNonlinSolSolve(NLS, y0, y, w, tol, callLSetup, mem)
    __y0 = convert(NVector, y0)
    __y = convert(NVector, y)
    __w = convert(NVector, w)
    SUNNonlinSolSolve(NLS, convert(N_Vector, __y0), convert(N_Vector, __y), convert(N_Vector, __w), tol, convert(Cint, callLSetup), mem)
end

function SUNNonlinSolFree(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolFree, libsundials_sundials), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSetSysFn(NLS::SUNNonlinearSolver, SysFn::SUNNonlinSolSysFn)
    ccall((:SUNNonlinSolSetSysFn, libsundials_sundials), Cint, (SUNNonlinearSolver, SUNNonlinSolSysFn), NLS, SysFn)
end

function SUNNonlinSolSetLSetupFn(NLS::SUNNonlinearSolver, SetupFn::SUNNonlinSolLSetupFn)
    ccall((:SUNNonlinSolSetLSetupFn, libsundials_sundials), Cint, (SUNNonlinearSolver, SUNNonlinSolLSetupFn), NLS, SetupFn)
end

function SUNNonlinSolSetLSolveFn(NLS::SUNNonlinearSolver, SolveFn::SUNNonlinSolLSolveFn)
    ccall((:SUNNonlinSolSetLSolveFn, libsundials_sundials), Cint, (SUNNonlinearSolver, SUNNonlinSolLSolveFn), NLS, SolveFn)
end

function SUNNonlinSolSetConvTestFn(NLS::SUNNonlinearSolver, CTestFn::SUNNonlinSolConvTestFn, ctest_data)
    ccall((:SUNNonlinSolSetConvTestFn, libsundials_sundials), Cint, (SUNNonlinearSolver, SUNNonlinSolConvTestFn, Ptr{Cvoid}), NLS, CTestFn, ctest_data)
end

function SUNNonlinSolSetMaxIters(NLS::SUNNonlinearSolver, maxiters::Cint)
    ccall((:SUNNonlinSolSetMaxIters, libsundials_sundials), Cint, (SUNNonlinearSolver, Cint), NLS, maxiters)
end

function SUNNonlinSolSetMaxIters(NLS, maxiters)
    SUNNonlinSolSetMaxIters(NLS, convert(Cint, maxiters))
end

function SUNNonlinSolGetNumIters(NLS::SUNNonlinearSolver, niters)
    ccall((:SUNNonlinSolGetNumIters, libsundials_sundials), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, niters)
end

function SUNNonlinSolGetCurIter(NLS::SUNNonlinearSolver, iter)
    ccall((:SUNNonlinSolGetCurIter, libsundials_sundials), Cint, (SUNNonlinearSolver, Ptr{Cint}), NLS, iter)
end

function SUNNonlinSolGetNumConvFails(NLS::SUNNonlinearSolver, nconvfails)
    ccall((:SUNNonlinSolGetNumConvFails, libsundials_sundials), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, nconvfails)
end
# Julia wrapper for header: sundials_nvector.h
# Automatically generated using Clang.jl


function N_VNewEmpty()
    ccall((:N_VNewEmpty, libsundials_sundials), N_Vector, ())
end

function N_VFreeEmpty(v::N_Vector)
    ccall((:N_VFreeEmpty, libsundials_sundials), Cvoid, (N_Vector,), v)
end

function N_VFreeEmpty(v)
    __v = convert(NVector, v)
    N_VFreeEmpty(convert(N_Vector, __v))
end

function N_VCopyOps(w::N_Vector, v::N_Vector)
    ccall((:N_VCopyOps, libsundials_sundials), Cint, (N_Vector, N_Vector), w, v)
end

function N_VCopyOps(w, v)
    __w = convert(NVector, w)
    __v = convert(NVector, v)
    N_VCopyOps(convert(N_Vector, __w), convert(N_Vector, __v))
end

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID, libsundials_sundials), N_Vector_ID, (N_Vector,), w)
end

function N_VGetVectorID(w)
    __w = convert(NVector, w)
    N_VGetVectorID(convert(N_Vector, __w))
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone, libsundials_sundials), N_Vector, (N_Vector,), w)
end

function N_VClone(w)
    __w = convert(NVector, w)
    N_VClone(convert(N_Vector, __w))
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty, libsundials_sundials), N_Vector, (N_Vector,), w)
end

function N_VCloneEmpty(w)
    __w = convert(NVector, w)
    N_VCloneEmpty(convert(N_Vector, __w))
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy, libsundials_sundials), Cvoid, (N_Vector,), v)
end

function N_VDestroy(v)
    __v = convert(NVector, v)
    N_VDestroy(convert(N_Vector, __v))
end

function N_VSpace(v::N_Vector, lrw, liw)
    ccall((:N_VSpace, libsundials_sundials), Cvoid, (N_Vector, Ptr{sunindextype}, Ptr{sunindextype}), v, lrw, liw)
end

function N_VSpace(v, lrw, liw)
    __v = convert(NVector, v)
    N_VSpace(convert(N_Vector, __v), lrw, liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer, libsundials_sundials), Ptr{realtype}, (N_Vector,), v)
end

function N_VGetArrayPointer(v)
    __v = convert(NVector, v)
    N_VGetArrayPointer(convert(N_Vector, __v))
end

function N_VSetArrayPointer(v_data, v::N_Vector)
    ccall((:N_VSetArrayPointer, libsundials_sundials), Cvoid, (Ptr{realtype}, N_Vector), v_data, v)
end

function N_VSetArrayPointer(v_data, v)
    __v = convert(NVector, v)
    N_VSetArrayPointer(v_data, convert(N_Vector, __v))
end

function N_VGetCommunicator(v::N_Vector)
    ccall((:N_VGetCommunicator, libsundials_sundials), Ptr{Cvoid}, (N_Vector,), v)
end

function N_VGetCommunicator(v)
    __v = convert(NVector, v)
    N_VGetCommunicator(convert(N_Vector, __v))
end

function N_VGetLength(v::N_Vector)
    ccall((:N_VGetLength, libsundials_sundials), sunindextype, (N_Vector,), v)
end

function N_VGetLength(v)
    __v = convert(NVector, v)
    N_VGetLength(convert(N_Vector, __v))
end

function N_VLinearSum(a::realtype, x::N_Vector, b::realtype, y::N_Vector, z::N_Vector)
    ccall((:N_VLinearSum, libsundials_sundials), Cvoid, (realtype, N_Vector, realtype, N_Vector, N_Vector), a, x, b, y, z)
end

function N_VLinearSum(a, x, b, y, z)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    __z = convert(NVector, z)
    N_VLinearSum(a, convert(N_Vector, __x), b, convert(N_Vector, __y), convert(N_Vector, __z))
end

function N_VConst(c::realtype, z::N_Vector)
    ccall((:N_VConst, libsundials_sundials), Cvoid, (realtype, N_Vector), c, z)
end

function N_VConst(c, z)
    __z = convert(NVector, z)
    N_VConst(c, convert(N_Vector, __z))
end

function N_VProd(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VProd, libsundials_sundials), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VProd(x, y, z)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    __z = convert(NVector, z)
    N_VProd(convert(N_Vector, __x), convert(N_Vector, __y), convert(N_Vector, __z))
end

function N_VDiv(x::N_Vector, y::N_Vector, z::N_Vector)
    ccall((:N_VDiv, libsundials_sundials), Cvoid, (N_Vector, N_Vector, N_Vector), x, y, z)
end

function N_VDiv(x, y, z)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    __z = convert(NVector, z)
    N_VDiv(convert(N_Vector, __x), convert(N_Vector, __y), convert(N_Vector, __z))
end

function N_VScale(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VScale, libsundials_sundials), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VScale(c, x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VScale(c, convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VAbs(x::N_Vector, z::N_Vector)
    ccall((:N_VAbs, libsundials_sundials), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VAbs(x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VAbs(convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VInv(x::N_Vector, z::N_Vector)
    ccall((:N_VInv, libsundials_sundials), Cvoid, (N_Vector, N_Vector), x, z)
end

function N_VInv(x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VInv(convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VAddConst(x::N_Vector, b::realtype, z::N_Vector)
    ccall((:N_VAddConst, libsundials_sundials), Cvoid, (N_Vector, realtype, N_Vector), x, b, z)
end

function N_VAddConst(x, b, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VAddConst(convert(N_Vector, x), b, convert(N_Vector, z))
end

function N_VDotProd(x, y)
    ccall((:N_VDotProd, libsundials_sundials), realtype, (N_Vector, N_Vector), x, y)
end

function N_VDotProd(x, y)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    N_VDotProd(convert(N_Vector, __x), convert(N_Vector, __y))
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VMaxNorm(x)
    __x = convert(NVector, x)
    N_VMaxNorm(convert(N_Vector, __x))
end

function N_VWrmsNorm(x::N_Vector, w::N_Vector)
    ccall((:N_VWrmsNorm, libsundials_sundials), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWrmsNorm(x, w)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    N_VWrmsNorm(convert(N_Vector, __x), convert(N_Vector, __w))
end

function N_VWrmsNormMask(x::N_Vector, w::N_Vector, id::N_Vector)
    ccall((:N_VWrmsNormMask, libsundials_sundials), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VWrmsNormMask(x, w, id)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    __id = convert(NVector, id)
    N_VWrmsNormMask(convert(N_Vector, __x), convert(N_Vector, __w), convert(N_Vector, __id))
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VMin(x)
    __x = convert(NVector, x)
    N_VMin(convert(N_Vector, __x))
end

function N_VWL2Norm(x::N_Vector, w::N_Vector)
    ccall((:N_VWL2Norm, libsundials_sundials), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWL2Norm(x, w)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    N_VWL2Norm(convert(N_Vector, __x), convert(N_Vector, __w))
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VL1Norm(x)
    __x = convert(NVector, x)
    N_VL1Norm(convert(N_Vector, __x))
end

function N_VCompare(c::realtype, x::N_Vector, z::N_Vector)
    ccall((:N_VCompare, libsundials_sundials), Cvoid, (realtype, N_Vector, N_Vector), c, x, z)
end

function N_VCompare(c, x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VCompare(c, convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VInvTest(x::N_Vector, z::N_Vector)
    ccall((:N_VInvTest, libsundials_sundials), Cint, (N_Vector, N_Vector), x, z)
end

function N_VInvTest(x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VInvTest(convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VConstrMask(c::N_Vector, x::N_Vector, m::N_Vector)
    ccall((:N_VConstrMask, libsundials_sundials), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VConstrMask(c, x, m)
    __c = convert(NVector, c)
    __x = convert(NVector, x)
    __m = convert(NVector, m)
    N_VConstrMask(convert(N_Vector, __c), convert(N_Vector, __x), convert(N_Vector, __m))
end

function N_VMinQuotient(num::N_Vector, denom::N_Vector)
    ccall((:N_VMinQuotient, libsundials_sundials), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VMinQuotient(num, denom)
    __num = convert(NVector, num)
    __denom = convert(NVector, denom)
    N_VMinQuotient(convert(N_Vector, __num), convert(N_Vector, __denom))
end

function N_VLinearCombination(nvec::Cint, c, X, z)
    ccall((:N_VLinearCombination, libsundials_sundials), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, N_Vector), nvec, c, X, z)
end

function N_VLinearCombination(nvec::Int, c, X, z)
    N_VLinearCombination(convert(Cint, nvec), c, X, z)
end

function N_VScaleAddMulti(nvec::Cint, a, x::N_Vector, Y, Z)
    ccall((:N_VScaleAddMulti, libsundials_sundials), Cint, (Cint, Ptr{realtype}, N_Vector, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, x, Y, Z)
end

function N_VScaleAddMulti(nvec::Int, a, x, Y, Z)
    __x = convert(NVector, x)
    N_VScaleAddMulti(convert(Cint, nvec), a, convert(N_Vector, __x), Y, Z)
end

function N_VDotProdMulti(nvec::Cint, x::N_Vector, Y, dotprods)
    ccall((:N_VDotProdMulti, libsundials_sundials), Cint, (Cint, N_Vector, Ptr{N_Vector}, Ptr{realtype}), nvec, x, Y, dotprods)
end

function N_VDotProdMulti(nvec::Int, x, Y, dotprods)
    __x = convert(NVector, x)
    N_VDotProdMulti(convert(Cint, nvec), convert(N_Vector, __x), Y, dotprods)
end

function N_VLinearSumVectorArray(nvec::Cint, a::realtype, X, b::realtype, Y, Z)
    ccall((:N_VLinearSumVectorArray, libsundials_sundials), Cint, (Cint, realtype, Ptr{N_Vector}, realtype, Ptr{N_Vector}, Ptr{N_Vector}), nvec, a, X, b, Y, Z)
end

function N_VLinearSumVectorArray(nvec::Int, a, X, b, Y, Z)
    N_VLinearSumVectorArray(convert(Cint, nvec), a, X, b, Y, Z)
end

function N_VScaleVectorArray(nvec::Cint, c, X, Z)
    ccall((:N_VScaleVectorArray, libsundials_sundials), Cint, (Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{N_Vector}), nvec, c, X, Z)
end

function N_VScaleVectorArray(nvec::Int, c, X, Z)
    N_VScaleVectorArray(convert(Cint, nvec), c, X, Z)
end

function N_VConstVectorArray(nvec::Cint, c::realtype, Z)
    ccall((:N_VConstVectorArray, libsundials_sundials), Cint, (Cint, realtype, Ptr{N_Vector}), nvec, c, Z)
end

function N_VConstVectorArray(nvec::Int, c, Z)
    N_VConstVectorArray(convert(Cint, nvec), c, Z)
end

function N_VWrmsNormVectorArray(nvec::Cint, X, W, nrm)
    ccall((:N_VWrmsNormVectorArray, libsundials_sundials), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, Ptr{realtype}), nvec, X, W, nrm)
end

function N_VWrmsNormVectorArray(nvec::Int, X, W, nrm)
    N_VWrmsNormVectorArray(convert(Cint, nvec), X, W, nrm)
end

function N_VWrmsNormMaskVectorArray(nvec::Cint, X, W, id::N_Vector, nrm)
    ccall((:N_VWrmsNormMaskVectorArray, libsundials_sundials), Cint, (Cint, Ptr{N_Vector}, Ptr{N_Vector}, N_Vector, Ptr{realtype}), nvec, X, W, id, nrm)
end

function N_VWrmsNormMaskVectorArray(nvec::Int, X, W, id, nrm)
    __id = convert(NVector, id)
    N_VWrmsNormMaskVectorArray(convert(Cint, nvec), X, W, convert(N_Vector, __id), nrm)
end

function N_VScaleAddMultiVectorArray(nvec::Cint, nsum::Cint, a, X, Y, Z)
    ccall((:N_VScaleAddMultiVectorArray, libsundials_sundials), Cint, (Cint, Cint, Ptr{realtype}, Ptr{N_Vector}, Ptr{Ptr{N_Vector}}, Ptr{Ptr{N_Vector}}), nvec, nsum, a, X, Y, Z)
end

function N_VScaleAddMultiVectorArray(nvec::Int, nsum::Int, a, X, Y, Z)
    N_VScaleAddMultiVectorArray(convert(Cint, nvec), convert(Cint, nsum), a, X, Y, Z)
end

function N_VLinearCombinationVectorArray(nvec::Cint, nsum::Cint, c, X, Z)
    ccall((:N_VLinearCombinationVectorArray, libsundials_sundials), Cint, (Cint, Cint, Ptr{realtype}, Ptr{Ptr{N_Vector}}, Ptr{N_Vector}), nvec, nsum, c, X, Z)
end

function N_VLinearCombinationVectorArray(nvec::Int, nsum::Int, c, X, Z)
    N_VLinearCombinationVectorArray(convert(Cint, nvec), convert(Cint, nsum), c, X, Z)
end

function N_VDotProdLocal(x::N_Vector, y::N_Vector)
    ccall((:N_VDotProdLocal, libsundials_sundials), realtype, (N_Vector, N_Vector), x, y)
end

function N_VDotProdLocal(x, y)
    __x = convert(NVector, x)
    __y = convert(NVector, y)
    N_VDotProdLocal(convert(N_Vector, __x), convert(N_Vector, __y))
end

function N_VMaxNormLocal(x::N_Vector)
    ccall((:N_VMaxNormLocal, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VMaxNormLocal(x)
    __x = convert(NVector, x)
    N_VMaxNormLocal(convert(N_Vector, __x))
end

function N_VMinLocal(x::N_Vector)
    ccall((:N_VMinLocal, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VMinLocal(x)
    __x = convert(NVector, x)
    N_VMinLocal(convert(N_Vector, __x))
end

function N_VL1NormLocal(x)
    ccall((:N_VL1NormLocal, libsundials_sundials), realtype, (N_Vector,), x)
end

function N_VL1NormLocal(x)
    __x = convert(NVector, x)
    N_VL1NormLocal(convert(N_Vector, __x))
end

function N_VWSqrSumLocal(x::N_Vector, w::N_Vector)
    ccall((:N_VWSqrSumLocal, libsundials_sundials), realtype, (N_Vector, N_Vector), x, w)
end

function N_VWSqrSumLocal(x, w)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    N_VWSqrSumLocal(convert(N_Vector, __x), convert(N_Vector, __w))
end

function N_VWSqrSumMaskLocal(x::N_Vector, w::N_Vector, id::N_Vector)
    ccall((:N_VWSqrSumMaskLocal, libsundials_sundials), realtype, (N_Vector, N_Vector, N_Vector), x, w, id)
end

function N_VWSqrSumMaskLocal(x, w, id)
    __x = convert(NVector, x)
    __w = convert(NVector, w)
    __id = convert(NVector, id)
    N_VWSqrSumMaskLocal(convert(N_Vector, __x), convert(N_Vector, __w), convert(N_Vector, __id))
end

function N_VInvTestLocal(x::N_Vector, z::N_Vector)
    ccall((:N_VInvTestLocal, libsundials_sundials), Cint, (N_Vector, N_Vector), x, z)
end

function N_VInvTestLocal(x, z)
    __x = convert(NVector, x)
    __z = convert(NVector, z)
    N_VInvTestLocal(convert(N_Vector, __x), convert(N_Vector, __z))
end

function N_VConstrMaskLocal(c::N_Vector, x::N_Vector, m::N_Vector)
    ccall((:N_VConstrMaskLocal, libsundials_sundials), Cint, (N_Vector, N_Vector, N_Vector), c, x, m)
end

function N_VConstrMaskLocal(c, x, m)
    __c = convert(NVector, c)
    __x = convert(NVector, x)
    __m = convert(NVector, m)
    N_VConstrMaskLocal(convert(N_Vector, __c), convert(N_Vector, __x), convert(N_Vector, __m))
end

function N_VMinQuotientLocal(num::N_Vector, denom::N_Vector)
    ccall((:N_VMinQuotientLocal, libsundials_sundials), realtype, (N_Vector, N_Vector), num, denom)
end

function N_VMinQuotientLocal(num, denom)
    __num = convert(NVector, num)
    __denom = convert(NVector, denom)
    N_VMinQuotientLocal(convert(N_Vector, __num), convert(N_Vector, __denom))
end

function N_VNewVectorArray(count::Cint)
    ccall((:N_VNewVectorArray, libsundials_sundials), Ptr{N_Vector}, (Cint,), count)
end

function N_VNewVectorArray(count::Int)
    N_VNewVectorArray(convert(Cint, count))
end

function N_VCloneEmptyVectorArray(count::Cint, w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray, libsundials_sundials), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VCloneEmptyVectorArray(count::Int, w)
    __w = convert(NVector, w)
    N_VCloneEmptyVectorArray(convert(Cint, count), convert(N_Vector, __w))
end

function N_VCloneVectorArray(count::Cint, w::N_Vector)
    ccall((:N_VCloneVectorArray, libsundials_sundials), Ptr{N_Vector}, (Cint, N_Vector), count, w)
end

function N_VCloneVectorArray(count::Int, w)
    __w = convert(NVector, w)
    N_VCloneVectorArray(convert(Cint, count), convert(N_Vector, __w))
end

function N_VDestroyVectorArray(vs, count::Cint)
    ccall((:N_VDestroyVectorArray, libsundials_sundials), Cvoid, (Ptr{N_Vector}, Cint), vs, count)
end

function N_VDestroyVectorArray(vs, count::Int)
    N_VDestroyVectorArray(vs, convert(Cint, count))
end

function N_VGetVecAtIndexVectorArray(vs, index::Cint)
    ccall((:N_VGetVecAtIndexVectorArray, libsundials_sundials), N_Vector, (Ptr{N_Vector}, Cint), vs, index)
end

function N_VGetVecAtIndexVectorArray(vs, index::Int)
    N_VGetVecAtIndexVectorArray(vs, convert(Cint, index))
end

function N_VSetVecAtIndexVectorArray(vs, index::Cint, w::N_Vector)
    ccall((:N_VSetVecAtIndexVectorArray, libsundials_sundials), Cvoid, (Ptr{N_Vector}, Cint, N_Vector), vs, index, w)
end

function N_VSetVecAtIndexVectorArray(vs, index::Int, w)
    __w = convert(NVector, w)
    N_VSetVecAtIndexVectorArray(vs, convert(Cint, index, convert(N_Vector, __w)))
end
# Julia wrapper for header: sundials_types.h
# Automatically generated using Clang.jl

# Julia wrapper for header: sundials_version.h
# Automatically generated using Clang.jl


function SUNDIALSGetVersion(version, len::Cint)
    ccall((:SUNDIALSGetVersion, libsundials_sundials), Cint, (Cstring, Cint), version, len)
end

function SUNDIALSGetVersion(version, len::Int)
    SUNDIALSGetVersion(version, convert(Cint, len))
end

function SUNDIALSGetVersionNumber(major, minor, patch, label, len::Cint)
    ccall((:SUNDIALSGetVersionNumber, libsundials_sundials), Cint, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cstring, Cint), major, minor, patch, label, len)
end

function SUNDIALSGetVersionNumber(major, minor, patch, label, len::Int)
    SUNDIALSGetVersionNumber(major, minor, patch, label, convert(Cint, len))
end
