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
mutable struct Handle{T <: AbstractSundialsObject} <: SundialsHandle
    ptr::Ptr{T}

    function Handle(ptr::Ptr{T}) where {T <: AbstractSundialsObject}
        h = new{T}(ptr)
        finalizer(release_handle, h)
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
    function NonLinSolHandle(ptr::SUNNonlinearSolver,
            M::T) where {T <: SundialsNonLinearSolver}
        h = new{T}(ptr, false)
        finalizer(release_handle, h)
        return h
    end
end

""" 
    Base.cconvert(::Type{Ptr{T}}, h::Handle{T}) -> h
    Base.unsafe_convert(::Type{Ptr{T}}, h::Handle{T}) -> Ptr{T}
    
Convert h::Handle{T} to Ptr{T}, for use by ccall

Conversion happens in two steps within ccall:
 - cconvert returns h, which is preserved (by ccall) from garbage collection
 - unsafe_convert to get the pointer from h 
"""
Base.cconvert(::Type{Ptr{T}}, h::Handle{T}) where {T} = h
Base.unsafe_convert(::Type{Ptr{T}}, h::Handle{T}) where {T} = h.ptr
Base.cconvert(::Type{Ptr{Cvoid}}, h::Handle{T}) where {T} = h
Base.unsafe_convert(::Type{Ptr{Cvoid}}, h::Handle{T}) where {T} = h.ptr
# For the Free functions that need Ptr{Ptr{Cvoid}}
Base.unsafe_convert(::Type{Ptr{Ptr{Nothing}}}, r::Ref{Ptr{T}}) where {T} = Base.unsafe_convert(Ptr{Ptr{Nothing}}, pointer_from_objref(r))

# Use the supplied Sundials sun_free_func to free h.ptr
# NB: CVodeFree and similar require a C pointer-to-pointer
function _release_handle(sun_free_func, h::Handle{T}) where {T}
    if h.ptr != C_NULL
        ptr_ref = Ref(h.ptr)
        h.ptr = C_NULL
        sun_free_func(ptr_ref)
    end

    return nothing
end

release_handle(h::Handle{KINMem}) = _release_handle(KINFree, h)
release_handle(h::Handle{CVODEMem}) = _release_handle(CVodeFree, h)
release_handle(h::Handle{ARKStepMem}) = _release_handle(ARKStepFree, h)
release_handle(h::Handle{ERKStepMem}) = _release_handle(ERKStepFree, h)
release_handle(h::Handle{MRIStepMem}) = _release_handle(MRIStepFree, h)
release_handle(h::Handle{IDAMem}) = _release_handle(IDAFree, h)

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
Base.empty!(h::Handle) = release_handle(h)
Base.isempty(h::Handle) = (h.ptr == C_NULL)
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
