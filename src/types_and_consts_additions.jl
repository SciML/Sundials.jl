# These are the additions to the types_and_consts.jl file not from clang.jl

function Base.convert(::Type{Matrix}, J::DlsMat)
    _dlsmat = unsafe_load(J)
    # own is false as memory is allocated by sundials
    unsafe_wrap(Array, _dlsmat.data, (_dlsmat.M, _dlsmat.N), false)
end

CVRhsFn_wrapper(fp::CVRhsFn) = fp
CVRhsFn_wrapper(f) = cfunction(f,Cint,(realtype,N_Vector,N_Vector,Ptr{Void}))

ARKRhsFn_wrapper(fp::ARKRhsFn) = fp
ARKRhsFn_wrapper(f) = cfunction(f,Cint,(realtype,N_Vector,N_Vector,Ptr{Void}))

CVRootFn_wrapper(fp::CVRootFn) = fp
CVRootFn_wrapper(f) = cfunction(f,Cint,(realtype,N_Vector,Ptr{realtype},Ptr{Void}))

CVQuadRhsFn_wrapper(fp::CVQuadRhsFn) = fp
CVQuadRhsFn_wrapper(f) = cfunction(f,Cint,(realtype,N_Vector,N_Vector,Ptr{Void}))

IDAResFn_wrapper(fp::IDAResFn) = fp
IDAResFn_wrapper(f) = cfunction(f,Cint,(realtype,N_Vector,N_Vector,N_Vector,Ptr{Void}))

IDARootFn_wrapper(fp::IDARootFn) = fp
IDARootFn_wrapper(f) = cfunction(f,Cint,(realtype,N_Vector,N_Vector,Ptr{realtype},Ptr{Void}))

KINSysFn_wrapper(fp::KINSysFn) = fp
KINSysFn_wrapper(f) = cfunction(f,Cint,(N_Vector,N_Vector,Ptr{Void}))

function Base.convert(::Type{Matrix}, J::SUNMatrix)
    _sunmat = unsafe_load(J)
    _mat = convert(SUNMatrixContent_Dense, _sunmat.content)
    mat = unsafe_load(_mat)
    # own is false as memory is allocated by sundials
    unsafe_wrap(Array, mat.data, (mat.M, mat.N), false)
end

function Base.convert(::Type{SparseMatrixCSC}, J::SUNMatrix)
    _sunmat = unsafe_load(J)
    _mat = convert(SUNMatrixContent_Sparse, _sunmat.content)
    mat = unsafe_load(_mat)
    # own is false as memory is allocated by sundials
    # TODO: Get rid of allocation for 1-based index change
    rowval = unsafe_wrap(Array, mat.indexvals, (mat.NNZ), false)# + 1
    rowval .= [1, 2, 1, 2]
    colptr = unsafe_wrap(Array, mat.indexptrs, (mat.NP+1), false)# + 1
    colptr .= [1,3,5]
    m = mat.M
    n = mat.N
    nzval = unsafe_wrap(Array,mat.data, (mat.NNZ), false)
    A = SparseMatrixCSC(m,n,colptr,rowval,nzval)
    @show A
    A
    #unsafe_wrap(Array, mat.data, (mat.M, mat.N), false)
end

abstract type SundialsMatrix end
struct DenseMatrix <: SundialsMatrix end
struct BandMatrix <: SundialsMatrix end
struct SparseMatrix <: SundialsMatrix end

abstract type SundialsLinSol end
struct Dense <: SundialsLinSol end
struct Band <: SundialsLinSol end
struct SPGMR <: SundialsLinSol end
struct SPFGMR <: SundialsLinSol end
struct SPBCGS <: SundialsLinSol end
struct PCG <: SundialsLinSol end
struct PTFQMR <: SundialsLinSol end
struct KLU <: SundialsLinSol end

abstract type StiffnessChoice end
struct Explicit <: StiffnessChoice end
struct Implicit <: StiffnessChoice end
