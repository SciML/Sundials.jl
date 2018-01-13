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

struct ARKODEMem <: AbstractSundialsObject end
const ARKODEMemPtr = Ptr{ARKODEMem}

struct IDAMem <: AbstractSundialsObject end
const IDAMemPtr = Ptr{IDAMem}

struct KINMem <: AbstractSundialsObject end
const KINMemPtr = Ptr{KINMem}

struct SUNMatrixMem <: AbstractSundialsObject end
const SUNMatrixMemPtr = Ptr{SUNMatrixMem}

abstract type SundialsHandle end

"""
   Handle for Sundials objects (CVODE, IDA, KIN).

   Wraps the reference to the pointer to the Sundials object.
   Manages automatic destruction of the referenced objects when it is
   no longer in use.
"""
struct Handle{T <: AbstractSundialsObject} <: SundialsHandle
    ptr_ref::Ref{Ptr{T}} # pointer to a pointer

    function (::Type{Handle}){T <: AbstractSundialsObject}(ptr::Ptr{T})
        h = new{T}(Ref{Ptr{T}}(ptr))
        finalizer(h.ptr_ref, release_handle)
        return h
    end
end

mutable struct MatrixHandle{T<:SundialsMatrix} <: SundialsHandle
    ptr::SUNMatrix
    destroyed::Bool
    function (::Type{MatrixHandle})(ptr::SUNMatrix,M::Dense)
        h = new{Dense}(ptr,false)
        finalizer(h, release_handle)
        return h
    end
    function (::Type{MatrixHandle})(ptr::SUNMatrix,M::Band)
        h = new{Band}(ptr,false)
        finalizer(h, release_handle)
        return h
    end
    function (::Type{MatrixHandle})(ptr::SUNMatrix,M::Sparse)
        h = new{Sparse}(ptr,false)
        finalizer(h, release_handle)
        return h
    end
end

Base.unsafe_convert(::Type{Ptr{T}}, h::Handle{T}) where T = h.ptr_ref[]
Base.convert(::Type{Ptr{T}}, h::Handle{T}) where T = h.ptr_ref[]
Base.convert{T}(::Type{Ptr{Ptr{T}}}, h::Handle{T}) = convert(Ptr{Ptr{T}}, h.ptr_ref[])

release_handle{T}(ptr_ref::Ref{Ptr{T}}) = throw(MethodError("Freeing objects of type $T not supported"))
release_handle(ptr_ref::Ref{Ptr{KINMem}}) = (ptr_ref[] != C_NULL) && KINFree(ptr_ref)
release_handle(ptr_ref::Ref{Ptr{CVODEMem}}) = (ptr_ref[] != C_NULL) && CVodeFree(ptr_ref)
release_handle(ptr_ref::Ref{Ptr{ARKODEMem}}) = (ptr_ref[] != C_NULL) && ARKodeFree(ptr_ref)
release_handle(ptr_ref::Ref{Ptr{IDAMem}}) = (ptr_ref[] != C_NULL) && IDAFree(ptr_ref)

function release_handle(h::MatrixHandle{Dense})
    if !isempty(h)
        Sundials.SUNMatDestroy_Dense(h.ptr)
        h.destroyed = true
    end
    nothing
end
function release_handle(h::MatrixHandle{Band})
    if !isempty(h)
        Sundials.SUNMatDestroy_Band(h.ptr)
        h.destroyed = true
    end
    nothing
end
function release_handle(h::MatrixHandle{Sparse})
    if !isempty(h)
        Sundials.SUNMatDestroy_Sparse(h.ptr)
        h.destroyed = true
    end
    nothing
end

Base.empty!(h::MatrixHandle) = release_handle(h)
Base.empty!{T}(h::Handle{T}) = release_handle(h.ptr_ref)
Base.isempty(h::Handle) = h.ptr_ref[] == C_NULL
Base.isempty(h::MatrixHandle) = h.destroyed

##################################################################
#
# Convenience typealiases for Sundials handles
#
##################################################################

const CVODEh  =  Handle{CVODEMem}
const ARKODEh =  Handle{ARKODEMem}
const KINh    =  Handle{KINMem}
const IDAh    =  Handle{IDAMem}
const SUNMatrixh    =  Handle{SUNMatrixMem}
