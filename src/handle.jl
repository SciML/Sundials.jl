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
abstract AbstractSundialsObject

immutable CVODEMem <: AbstractSundialsObject end
typealias CVODEMemPtr Ptr{CVODEMem}

immutable IDAMem <: AbstractSundialsObject end
typealias IDAMemPtr Ptr{IDAMem}

immutable KINMem <: AbstractSundialsObject end
typealias KINMemPtr Ptr{KINMem}

"""
   Handle for Sundials objects (CVODE, IDA, KIN).

   Wraps the reference to the pointer to the Sundials object.
   Manages automatic destruction of the referenced objects when it is
   no longer in use.
"""
immutable Handle{T <: AbstractSundialsObject}
    ptr_ref::Ref{Ptr{T}} # pointer to a pointer

    @compat function (::Type{Handle}){T <: AbstractSundialsObject}(ptr::Ptr{T})
        (ptr == C_NULL) && throw(ArgumentError("Null pointer passed to Handle()"))
        h = new{T}(Ref{Ptr{T}}(ptr))
        finalizer(h.ptr_ref, release_handle)
        return h
    end
end

Base.convert{T}(::Type{Ptr{T}}, h::Handle{T}) = h.ptr_ref[]
Base.convert{T}(::Type{Ptr{Ptr{T}}}, h::Handle{T}) = convert(Ptr{Ptr{T}}, h.ptr_ref[])

release_handle{T}(ptr_ref::Ref{Ptr{T}}) = throw(MethodError("Freeing objects of type $T not supported"))
release_handle(ptr_ref::Ref{Ptr{KINMem}}) = !isempty(h) && KINFree(ptr_ref)
release_handle(ptr_ref::Ref{Ptr{CVODEMem}}) = !isempty(h) && CVodeFree(ptr_ref)
release_handle(ptr_ref::Ref{Ptr{IDAMem}}) = !isempty(h) && IDAFree(ptr_ref)

Base.empty!{T}(h::Handle{T}) = release_handle(h.ptr_ref)
Base.isempty{T}(h::Handle{T}) = h.ptr_ref == C_NULL

##################################################################
#
# Convenience typealiases for Sundials handles
#
##################################################################

typealias CVODEh Handle{CVODEMem}
typealias KINh Handle{KINMem}
typealias IDAh Handle{IDAMem}
