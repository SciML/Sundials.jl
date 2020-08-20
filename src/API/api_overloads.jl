for ff in names(@__MODULE__; all = true)
    fname = string(ff)
    if occursin("SetLinearSolver", fname) &&
       !occursin("#", fname) && # filter out compiler generated names
       !occursin("Dls", fname) &&
       !occursin("Spils", fname) # filter out old names
        @eval $ff(mem, LS::SUNLinearSolver, A::Ptr, args...) =
            $ff(mem, LS, convert(SUNMatrix, A), args...)
    end
end

# Julia wrapper for header: sunlinsol_lapackband.h
# Automatically generated using Clang.jl

function SUNLinSol_LapackBand(y::N_Vector, A::SUNMatrix)
    ccall(
        (:SUNLinSol_LapackBand, libsundials_sunlinsollapackband),
        SUNLinearSolver,
        (N_Vector, SUNMatrix),
        y,
        A,
    )
end

function SUNLinSol_LapackBand(y, A)
    __y = convert(NVector, y)
    SUNLinSol_LapackBand(convert(N_Vector, __y), A)
end

function SUNLapackBand(y::N_Vector, A::SUNMatrix)
    ccall(
        (:SUNLapackBand, libsundials_sunlinsollapackband),
        SUNLinearSolver,
        (N_Vector, SUNMatrix),
        y,
        A,
    )
end

function SUNLapackBand(y, A)
    __y = convert(NVector, y)
    SUNLapackBand(convert(N_Vector, __y), A)
end

function SUNLinSolGetType_LapackBand(S::SUNLinearSolver)
    ccall(
        (:SUNLinSolGetType_LapackBand, libsundials_sunlinsollapackband),
        SUNLinearSolver_Type,
        (SUNLinearSolver,),
        S,
    )
end

function SUNLinSolGetID_LapackBand(S::SUNLinearSolver)
    ccall(
        (:SUNLinSolGetID_LapackBand, libsundials_sunlinsollapackband),
        SUNLinearSolver_ID,
        (SUNLinearSolver,),
        S,
    )
end

function SUNLinSolInitialize_LapackBand(S::SUNLinearSolver)
    ccall(
        (:SUNLinSolInitialize_LapackBand, libsundials_sunlinsollapackband),
        Cint,
        (SUNLinearSolver,),
        S,
    )
end

function SUNLinSolSetup_LapackBand(S::SUNLinearSolver, A::SUNMatrix)
    ccall(
        (:SUNLinSolSetup_LapackBand, libsundials_sunlinsollapackband),
        Cint,
        (SUNLinearSolver, SUNMatrix),
        S,
        A,
    )
end

function SUNLinSolSolve_LapackBand(
    S::SUNLinearSolver,
    A::SUNMatrix,
    x::N_Vector,
    b::N_Vector,
    tol::realtype,
)
    ccall(
        (:SUNLinSolSolve_LapackBand, libsundials_sunlinsollapackband),
        Cint,
        (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype),
        S,
        A,
        x,
        b,
        tol,
    )
end

function SUNLinSolSolve_LapackBand(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    SUNLinSolSolve_LapackBand(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolLastFlag_LapackBand(S::SUNLinearSolver)
    ccall(
        (:SUNLinSolLastFlag_LapackBand, libsundials_sunlinsollapackband),
        sunindextype,
        (SUNLinearSolver,),
        S,
    )
end

function SUNLinSolSpace_LapackBand(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall(
        (:SUNLinSolSpace_LapackBand, libsundials_sunlinsollapackband),
        Cint,
        (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}),
        S,
        lenrwLS,
        leniwLS,
    )
end

function SUNLinSolFree_LapackBand(S::SUNLinearSolver)
    ccall(
        (:SUNLinSolFree_LapackBand, libsundials_sunlinsollapackband),
        Cint,
        (SUNLinearSolver,),
        S,
    )
end
# Julia wrapper for header: sunlinsol_lapackdense.h
# Automatically generated using Clang.jl

function SUNLinSol_LapackDense(y::N_Vector, A::SUNMatrix)
    ccall(
        (:SUNLinSol_LapackDense, libsundials_sunlinsollapackdense),
        SUNLinearSolver,
        (N_Vector, SUNMatrix),
        y,
        A,
    )
end

function SUNLinSol_LapackDense(y, A)
    __y = convert(NVector, y)
    SUNLinSol_LapackDense(convert(N_Vector, __y), A)
end

function SUNLapackDense(y::N_Vector, A::SUNMatrix)
    ccall(
        (:SUNLapackDense, libsundials_sunlinsollapackdense),
        SUNLinearSolver,
        (N_Vector, SUNMatrix),
        y,
        A,
    )
end

function SUNLapackDense(y, A)
    __y = convert(NVector, y)
    SUNLapackDense(convert(N_Vector, __y), A)
end

function SUNLinSolGetType_LapackDense(S::SUNLinearSolver)
    ccall(
        (:SUNLinSolGetType_LapackDense, libsundials_sunlinsollapackdense),
        SUNLinearSolver_Type,
        (SUNLinearSolver,),
        S,
    )
end

function SUNLinSolGetID_LapackDense(S::SUNLinearSolver)
    ccall(
        (:SUNLinSolGetID_LapackDense, libsundials_sunlinsollapackdense),
        SUNLinearSolver_ID,
        (SUNLinearSolver,),
        S,
    )
end

function SUNLinSolInitialize_LapackDense(S::SUNLinearSolver)
    ccall(
        (:SUNLinSolInitialize_LapackDense, libsundials_sunlinsollapackdense),
        Cint,
        (SUNLinearSolver,),
        S,
    )
end

function SUNLinSolSetup_LapackDense(S::SUNLinearSolver, A::SUNMatrix)
    ccall(
        (:SUNLinSolSetup_LapackDense, libsundials_sunlinsollapackdense),
        Cint,
        (SUNLinearSolver, SUNMatrix),
        S,
        A,
    )
end

function SUNLinSolSolve_LapackDense(
    S::SUNLinearSolver,
    A::SUNMatrix,
    x::N_Vector,
    b::N_Vector,
    tol::realtype,
)
    ccall(
        (:SUNLinSolSolve_LapackDense, libsundials_sunlinsollapackdense),
        Cint,
        (SUNLinearSolver, SUNMatrix, N_Vector, N_Vector, realtype),
        S,
        A,
        x,
        b,
        tol,
    )
end

function SUNLinSolSolve_LapackDense(S, A, x, b, tol)
    __x = convert(NVector, x)
    __b = convert(NVector, b)
    SUNLinSolSolve_LapackDense(S, A, convert(N_Vector, __x), convert(N_Vector, __b), tol)
end

function SUNLinSolLastFlag_LapackDense(S::SUNLinearSolver)
    ccall(
        (:SUNLinSolLastFlag_LapackDense, libsundials_sunlinsollapackdense),
        sunindextype,
        (SUNLinearSolver,),
        S,
    )
end

function SUNLinSolSpace_LapackDense(S::SUNLinearSolver, lenrwLS, leniwLS)
    ccall(
        (:SUNLinSolSpace_LapackDense, libsundials_sunlinsollapackdense),
        Cint,
        (SUNLinearSolver, Ptr{Clong}, Ptr{Clong}),
        S,
        lenrwLS,
        leniwLS,
    )
end

function SUNLinSolFree_LapackDense(S::SUNLinearSolver)
    ccall(
        (:SUNLinSolFree_LapackDense, libsundials_sunlinsollapackdense),
        Cint,
        (SUNLinearSolver,),
        S,
    )
end
