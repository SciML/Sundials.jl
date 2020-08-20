##################################################################
#
# Pointers to Sundials objects
#
##################################################################

"""
    Base type for dummy placeholders that help to
    providing typed pointers for Sundials objects
    (KINSOL, CVODE, IDA).

    See `Handle`.
"""
abstract type AbstractSundialsObject end

struct CVODEMem <: AbstractSundialsObject end
const CVODEMemPtr = Ptr{CVODEMem}

struct ARKStepMem <: AbstractSundialsObject end
const ARKStepMemPtr = Ptr{ARKStepMem}

struct ERKStepMem <: AbstractSundialsObject end
const ERKStepMemPtr = Ptr{ERKStepMem}

struct MRIStepMem <: AbstractSundialsObject end
const MRIStepMemPtr = Ptr{MRIStepMem}

struct IDAMem <: AbstractSundialsObject end
const IDAMemPtr = Ptr{IDAMem}

struct KINMem <: AbstractSundialsObject end
const KINMemPtr = Ptr{KINMem}

abstract type SundialsHandle end

"""
   Handle for Sundials objects (CVODE, IDA, KIN).

   Wraps the reference to the pointer to the Sundials object.
   Manages automatic destruction of the referenced objects when it is
   no longer in use.
"""
struct Handle{T <: AbstractSundialsObject} <: SundialsHandle
    ptr_ref::Ref{Ptr{T}} # pointer to a pointer

    function Handle(ptr::Ptr{T}) where {T <: AbstractSundialsObject}
        h = new{T}(Ref{Ptr{T}}(ptr))
        finalizer(release_handle, h.ptr_ref)
        return h
    end
end

mutable struct MatrixHandle{T <: SundialsMatrix} <: SundialsHandle
    ptr::SUNMatrix
    destroyed::Bool
    function MatrixHandle(ptr::SUNMatrix, M::T) where {T <: SundialsMatrix}
        h = new{T}(ptr, false)
        finalizer(release_handle, h)
        return h
    end
end

mutable struct LinSolHandle{T <: SundialsLinearSolver} <: SundialsHandle
    ptr::SUNLinearSolver
    destroyed::Bool
    function LinSolHandle(ptr::SUNLinearSolver, M::T) where {T <: SundialsLinearSolver}
        h = new{T}(ptr, false)
        finalizer(release_handle, h)
        return h
    end
end

mutable struct NonLinSolHandle{T <: SundialsNonLinearSolver} <: SundialsHandle
    ptr::SUNNonlinearSolver
    destroyed::Bool
    function NonLinSolHandle(
        ptr::SUNNonlinearSolver,
        M::T,
    ) where {T <: SundialsNonLinearSolver}
        h = new{T}(ptr, false)
        finalizer(release_handle, h)
        return h
    end
end

Base.unsafe_convert(::Type{Ptr{T}}, h::Handle{T}) where {T} = h.ptr_ref[]
Base.unsafe_convert(::Type{Ptr{Cvoid}}, h::Handle{T}) where {T} = Ptr{Cvoid}(h.ptr_ref[])
Base.convert(::Type{Ptr{T}}, h::Handle{T}) where {T} = h.ptr_ref[]
Base.convert(::Type{Ptr{Ptr{T}}}, h::Handle{T}) where {T} =
    convert(Ptr{Ptr{T}}, h.ptr_ref[])

release_handle(ptr_ref::Ref{Ptr{T}}) where {T} =
    throw(MethodError("Freeing objects of type $T not supported"))
release_handle(ptr_ref::Ref{Ptr{KINMem}}) =
    ((ptr_ref[] != C_NULL) && KINFree(ptr_ref); nothing)
release_handle(ptr_ref::Ref{Ptr{CVODEMem}}) =
    ((ptr_ref[] != C_NULL) && CVodeFree(ptr_ref); nothing)
release_handle(ptr_ref::Ref{Ptr{ARKStepMem}}) =
    ((ptr_ref[] != C_NULL) && ARKStepFree(ptr_ref); nothing)
release_handle(ptr_ref::Ref{Ptr{ERKStepMem}}) =
    ((ptr_ref[] != C_NULL) && ERKStepFree(ptr_ref); nothing)
release_handle(ptr_ref::Ref{Ptr{MRIStepMem}}) =
    ((ptr_ref[] != C_NULL) && MRIStepFree(ptr_ref); nothing)
release_handle(ptr_ref::Ref{Ptr{IDAMem}}) =
    ((ptr_ref[] != C_NULL) && IDAFree(ptr_ref); nothing)

function release_handle(h::MatrixHandle{DenseMatrix})
    if !isempty(h)
        Sundials.SUNMatDestroy_Dense(h.ptr)
        h.destroyed = true
    end
    nothing
end
function release_handle(h::MatrixHandle{BandMatrix})
    if !isempty(h)
        Sundials.SUNMatDestroy_Band(h.ptr)
        h.destroyed = true
    end
    nothing
end
function release_handle(h::MatrixHandle{SparseMatrix})
    if !isempty(h)
        Sundials.SUNMatDestroy_Sparse(h.ptr)
        h.destroyed = true
    end
    nothing
end

function release_handle(h::LinSolHandle{Dense})
    if !isempty(h)
        Sundials.SUNLinSolFree_Dense(h.ptr)
        h.destroyed = true
    end
    nothing
end

function release_handle(h::LinSolHandle{Band})
    if !isempty(h)
        Sundials.SUNLinSolFree_Band(h.ptr)
        h.destroyed = true
    end
    nothing
end

function release_handle(h::LinSolHandle{SPGMR})
    if !isempty(h)
        Sundials.SUNLinSolFree_SPGMR(h.ptr)
        h.destroyed = true
    end
    nothing
end

function release_handle(h::LinSolHandle{SPFGMR})
    if !isempty(h)
        Sundials.SUNLinSolFree_SPFGMR(h.ptr)
        h.destroyed = true
    end
    nothing
end

function release_handle(h::LinSolHandle{SPBCGS})
    if !isempty(h)
        Sundials.SUNLinSolFree_SPBCGS(h.ptr)
        h.destroyed = true
    end
    nothing
end

function release_handle(h::LinSolHandle{PCG})
    if !isempty(h)
        Sundials.SUNLinSolFree_PCG(h.ptr)
        h.destroyed = true
    end
    nothing
end

function release_handle(h::LinSolHandle{PTFQMR})
    if !isempty(h)
        Sundials.SUNLinSolFree_SPTFQMR(h.ptr)
        h.destroyed = true
    end
    nothing
end

function release_handle(h::LinSolHandle{KLU})
    if !isempty(h)
        Sundials.SUNLinSolFree_KLU(h.ptr)
        h.destroyed = true
    end
    nothing
end

function release_handle(h::LinSolHandle{LapackBand})
    if !isempty(h)
        Sundials.SUNLinSolFree_LapackBand(h.ptr)
        h.destroyed = true
    end
    nothing
end

function release_handle(h::LinSolHandle{LapackDense})
    if !isempty(h)
        Sundials.SUNLinSolFree_LapackDense(h.ptr)
        h.destroyed = true
    end
    nothing
end

function release_handle(h::NonLinSolHandle{FixedPoint})
    if !isempty(h)
        Sundials.SUNNonlinSolFree_FixedPoint(h.ptr)
        h.destroyed = true
    end
    nothing
end

function release_handle(h::NonLinSolHandle{Newton})
    if !isempty(h)
        Sundials.SUNNonlinSolFree_Newton(h.ptr)
        h.destroyed = true
    end
    nothing
end

Base.empty!(h::LinSolHandle) = release_handle(h)
Base.empty!(h::NonLinSolHandle) = release_handle(h)
Base.empty!(h::MatrixHandle) = release_handle(h)
Base.empty!(h::Handle{T}) where {T} = release_handle(h.ptr_ref)
Base.isempty(h::Handle) = h.ptr_ref[] == C_NULL
Base.isempty(h::MatrixHandle) = h.destroyed
Base.isempty(h::LinSolHandle) = h.destroyed
Base.isempty(h::NonLinSolHandle) = h.destroyed

##################################################################
#
# Convenience typealiases for Sundials handles
#
##################################################################

const CVODEh = Handle{CVODEMem}
const ARKSteph = Handle{ARKStepMem}
const ERKSteph = Handle{ERKStepMem}
const MRISteph = Handle{MRIStepMem}
const KINh = Handle{KINMem}
const IDAh = Handle{IDAMem}
