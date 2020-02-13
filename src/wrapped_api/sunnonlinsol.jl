# Julia wrapper for header: sunnonlinsol_fixedpoint.h
# Automatically generated using Clang.jl


function SUNNonlinSol_FixedPoint(y::N_Vector, m::Cint)
    ccall((:SUNNonlinSol_FixedPoint, libsundials_sunnonlinsolfixedpoint), SUNNonlinearSolver, (N_Vector, Cint), y, m)
end

function SUNNonlinSol_FixedPoint(y, m::Int)
    __y = convert(NVector, y)
    SUNNonlinSol_FixedPoint(convert(N_Vector, __y), convert(Cint, m))
end

function SUNNonlinSol_FixedPointSens(count::Cint, y::N_Vector, m::Cint)
    ccall((:SUNNonlinSol_FixedPointSens, libsundials_sunnonlinsolfixedpoint), SUNNonlinearSolver, (Cint, N_Vector, Cint), count, y, m)
end

function SUNNonlinSol_FixedPointSens(count::Int, y, m::Int)
    __y = convert(NVector, y)
    SUNNonlinSol_FixedPointSens(convert(Cint, count), convert(N_Vector, __y), convert(Cint, m))
end

function SUNNonlinSolGetType_FixedPoint(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolGetType_FixedPoint, libsundials_sunnonlinsolfixedpoint), SUNNonlinearSolver_Type, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolInitialize_FixedPoint(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolInitialize_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSolve_FixedPoint(NLS::SUNNonlinearSolver, y0::N_Vector, y::N_Vector, w::N_Vector, tol::realtype, callSetup::Cint, mem)
    ccall((:SUNNonlinSolSolve_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, N_Vector, N_Vector, N_Vector, realtype, Cint, Ptr{Cvoid}), NLS, y0, y, w, tol, callSetup, mem)
end

function SUNNonlinSolSolve_FixedPoint(NLS::SUNNonlinearSolver, y0, y, w, tol, callSetup, mem)
    __y0 = convert(NVector, y0)
    __y = convert(NVector, y)
    __w = convert(NVector, w)
    SUNNonlinSolSolve_FixedPoint(NLS, convert(N_Vector, __y0), convert(N_Vector, __y), convert(N_Vector, __w), tol, convert(Cint, callSetup), mem)
end

function SUNNonlinSolFree_FixedPoint(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolFree_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSetSysFn_FixedPoint(NLS::SUNNonlinearSolver, SysFn::SUNNonlinSolSysFn)
    ccall((:SUNNonlinSolSetSysFn_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, SUNNonlinSolSysFn), NLS, SysFn)
end

function SUNNonlinSolSetConvTestFn_FixedPoint(NLS::SUNNonlinearSolver, CTestFn::SUNNonlinSolConvTestFn, ctest_data)
    ccall((:SUNNonlinSolSetConvTestFn_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, SUNNonlinSolConvTestFn, Ptr{Cvoid}), NLS, CTestFn, ctest_data)
end

function SUNNonlinSolSetMaxIters_FixedPoint(NLS::SUNNonlinearSolver, maxiters::Cint)
    ccall((:SUNNonlinSolSetMaxIters_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, Cint), NLS, maxiters)
end

function SUNNonlinSolSetMaxIters_FixedPoint(NLS, maxiters::Int)
    SUNNonlinSolSetMaxIters_FixedPoint(NLS, convert(Cint, maxiters))
end

function SUNNonlinSolSetDamping_FixedPoint(NLS::SUNNonlinearSolver, beta::realtype)
    ccall((:SUNNonlinSolSetDamping_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, realtype), NLS, beta)
end

function SUNNonlinSolGetNumIters_FixedPoint(NLS::SUNNonlinearSolver, niters)
    ccall((:SUNNonlinSolGetNumIters_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, niters)
end

function SUNNonlinSolGetCurIter_FixedPoint(NLS::SUNNonlinearSolver, iter)
    ccall((:SUNNonlinSolGetCurIter_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, Ptr{Cint}), NLS, iter)
end

function SUNNonlinSolGetNumConvFails_FixedPoint(NLS::SUNNonlinearSolver, nconvfails)
    ccall((:SUNNonlinSolGetNumConvFails_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, nconvfails)
end

function SUNNonlinSolGetSysFn_FixedPoint(NLS::SUNNonlinearSolver, SysFn)
    ccall((:SUNNonlinSolGetSysFn_FixedPoint, libsundials_sunnonlinsolfixedpoint), Cint, (SUNNonlinearSolver, Ptr{SUNNonlinSolSysFn}), NLS, SysFn)
end
# Julia wrapper for header: sunnonlinsol_newton.h
# Automatically generated using Clang.jl


function SUNNonlinSol_Newton(y::N_Vector)
    ccall((:SUNNonlinSol_Newton, libsundials_sunnonlinsolnewton), SUNNonlinearSolver, (N_Vector,), y)
end

function SUNNonlinSol_Newton(y)
    __y = convert(NVector, y)
    SUNNonlinSol_Newton(convert(N_Vector, __y))
end

function SUNNonlinSol_NewtonSens(count::Cint, y::N_Vector)
    ccall((:SUNNonlinSol_NewtonSens, libsundials_sunnonlinsolnewton), SUNNonlinearSolver, (Cint, N_Vector), count, y)
end

function SUNNonlinSol_NewtonSens(count::Int, y)
    __y = convert(NVector, y)
    SUNNonlinSol_NewtonSens(convert(Cint, count), convert(N_Vector, __y))
end

function SUNNonlinSolGetType_Newton(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolGetType_Newton, libsundials_sunnonlinsolnewton), SUNNonlinearSolver_Type, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolInitialize_Newton(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolInitialize_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSolve_Newton(NLS::SUNNonlinearSolver, y0::N_Vector, y::N_Vector, w::N_Vector, tol::realtype, callLSetup::Cint, mem)
    ccall((:SUNNonlinSolSolve_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, N_Vector, N_Vector, N_Vector, realtype, Cint, Ptr{Cvoid}), NLS, y0, y, w, tol, callLSetup, mem)
end

function SUNNonlinSolSolve_Newton(NLS, y0, y, w, tol, callLSetup, mem)
    __y0 = convert(NVector, y0)
    __y = convert(NVector, y)
    __w = convert(NVector, w)
    SUNNonlinSolSolve_Newton(NLS, convert(N_Vector, __y0), convert(N_Vector, __y), convert(N_Vector, __w), tol, convert(Cint, callLSetup), mem)
end

function SUNNonlinSolFree_Newton(NLS::SUNNonlinearSolver)
    ccall((:SUNNonlinSolFree_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver,), NLS)
end

function SUNNonlinSolSetSysFn_Newton(NLS::SUNNonlinearSolver, SysFn::SUNNonlinSolSysFn)
    ccall((:SUNNonlinSolSetSysFn_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, SUNNonlinSolSysFn), NLS, SysFn)
end

function SUNNonlinSolSetLSetupFn_Newton(NLS::SUNNonlinearSolver, LSetupFn::SUNNonlinSolLSetupFn)
    ccall((:SUNNonlinSolSetLSetupFn_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, SUNNonlinSolLSetupFn), NLS, LSetupFn)
end

function SUNNonlinSolSetLSolveFn_Newton(NLS::SUNNonlinearSolver, LSolveFn::SUNNonlinSolLSolveFn)
    ccall((:SUNNonlinSolSetLSolveFn_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, SUNNonlinSolLSolveFn), NLS, LSolveFn)
end

function SUNNonlinSolSetConvTestFn_Newton(NLS::SUNNonlinearSolver, CTestFn::SUNNonlinSolConvTestFn, ctest_data)
    ccall((:SUNNonlinSolSetConvTestFn_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, SUNNonlinSolConvTestFn, Ptr{Cvoid}), NLS, CTestFn, ctest_data)
end

function SUNNonlinSolSetMaxIters_Newton(NLS::SUNNonlinearSolver, maxiters::Cint)
    ccall((:SUNNonlinSolSetMaxIters_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, Cint), NLS, maxiters)
end

function SUNNonlinSolSetMaxIters_Newton(NLS, maxiters::Int)
    SUNNonlinSolSetMaxIters_Newton(NLS, convert(Cint, maxiters))
end

function SUNNonlinSolGetNumIters_Newton(NLS::SUNNonlinearSolver, niters)
    ccall((:SUNNonlinSolGetNumIters_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, niters)
end

function SUNNonlinSolGetCurIter_Newton(NLS::SUNNonlinearSolver, iter)
    ccall((:SUNNonlinSolGetCurIter_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, Ptr{Cint}), NLS, iter)
end

function SUNNonlinSolGetNumConvFails_Newton(NLS::SUNNonlinearSolver, nconvfails)
    ccall((:SUNNonlinSolGetNumConvFails_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, Ptr{Clong}), NLS, nconvfails)
end

function SUNNonlinSolGetSysFn_Newton(NLS::SUNNonlinearSolver, SysFn)
    ccall((:SUNNonlinSolGetSysFn_Newton, libsundials_sunnonlinsolnewton), Cint, (SUNNonlinearSolver, Ptr{SUNNonlinSolSysFn}), NLS, SysFn)
end
