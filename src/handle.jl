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
type CVODEMemContainer <: AbstractSundialsObject
    ptr::Ptr{CVODEMem}
    function CVODEMemContainer(lmm, iter)
        ptr = new(CVodeCreate(lmm,iter))
        finalizer(ptr,cvode_finalizer)
        ptr
    end
end
typealias CVODEMemPtr Ptr{CVODEMem}
cvode_finalizer(mem::CVODEMemContainer) = mem.ptr == C_NULL || (CVodeFree(Ref{CVODEMemPtr}(mem.ptr)) ; mem.ptr = C_NULL)
convert(::Type{CVODEMemPtr},mem::CVODEMemContainer) = mem.ptr

immutable IDAMem <: AbstractSundialsObject end
type IDAMemContainer <: AbstractSundialsObject
  ptr::Ptr{IDAMem}
  function IDAMemContainer()
      ptr = new(IDACreate())
      finalizer(ptr,ida_finalizer)
      ptr
  end
end
typealias IDAMemPtr Ptr{IDAMem}
ida_finalizer(mem::IDAMemContainer) = mem.ptr == C_NULL || (IDAFree(Ref{IDAMemPtr}(mem.ptr)) ; mem.ptr = C_NULL)
convert(::Type{IDAMemPtr},mem::IDAMemContainer) = mem.ptr

immutable KINMem <: AbstractSundialsObject end
type KINMemContainer <: AbstractSundialsObject
  ptr::Ptr{KINMem}
  function KINMemContainer()
      ptr = new(KINCreate())
      finalizer(ptr,kin_finalizer)
      ptr
  end
end
typealias KINMemPtr Ptr{KINMem}
kin_finalizer(mem::KINMemContainer) = mem.ptr == C_NULL || (KINFree(Ref{KINMemPtr}(mem.ptr)) ; mem.ptr = C_NULL)
convert(::Type{KINMemPtr},mem::KINMemContainer) = mem.ptr

"""
   Handle for Sundials objects (CVODE, IDA, KIN).

   Wraps the reference to the pointer to the Sundials object.
   Manages automatic destruction of the referenced objects when it is
   no longer in use.
"""
immutable Handle{T <: AbstractSundialsObject}
    ptr_ref::Ref{Ptr{T}} # pointer to a pointer

    @compat function (::Type{Handle}){T}(ptr::Ptr{T})
        h = new{T}(Ref{Ptr{T}}(ptr))
        finalizer(h.ptr_ref, release_handle)
        return h
    end
end

Base.convert{T}(::Type{Ptr{T}}, h::Handle{T}) = h.ptr_ref[]
Base.convert{T}(::Type{Ptr{Ptr{T}}}, h::Handle{T}) = convert(Ptr{Ptr{T}}, h.ptr_ref[])

release_handle{T}(ptr_ref::Ref{Ptr{T}}) = throw(MethodError("Freeing objects of type $T not supported"))
release_handle(ptr_ref::Ref{Ptr{KINMem}}) = KINSOLFree(ptr_ref)
release_handle(ptr_ref::Ref{Ptr{CVODEMem}}) = CVodeFree(ptr_ref)
release_handle(ptr_ref::Ref{Ptr{IDAMem}}) = IDAFree(ptr_ref)

##################################################################
#
# Convenience typealiases for Sundials handles
#
##################################################################

typealias CVODEh Handle{CVODEMem}
typealias KINh Handle{KINMem}
typealias IDAh Handle{IDAMem}
