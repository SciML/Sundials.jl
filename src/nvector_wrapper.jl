"""
   Wrapper for Sundials `N_Vector` that
   uses Julia `Vector{realtype}` as the data container.

   Implements `DenseVector` interface and
   manages automatic destruction of the referenced `N_Vector` when it is
   no longer in use.

   NB: can be supplied to ccall when an N_Vector is required
   (ie implements cconvert / unsafe_convert).
"""
mutable struct NVector <: DenseVector{realtype}
    n_v::N_Vector           # reference (C pointer) to N_Vector
    v::Vector{realtype}     # array that is referenced by N_Vector

    function NVector(v::Vector{realtype})
        # note that N_VMake_Serial() creates N_Vector doesn't own the data,
        # so calling N_VDestroy_Serial() would not deallocate v
        nv = new(N_VMake_Serial(length(v), v, get_default_context()), v)
        finalizer(release_handle, nv)
        return nv
    end

    function NVector(n_v::N_Vector)
        # wrap N_Vector into NVector and get non-owning access to `nv` data
        # via `v`, but don't register finalizer for `nv`
        return new(n_v, asarray(n_v))
    end
end

release_handle(nv::NVector) = N_VDestroy_Serial(nv.n_v)

Base.size(nv::NVector, d...) = size(nv.v, d...)
Base.stride(nv::NVector, d::Integer) = stride(nv.v, d)

Base.getindex(nv::NVector, i::Real) = getindex(nv.v, i)
Base.getindex(nv::NVector, i::AbstractArray) = getindex(nv.v, i)
Base.getindex(nv::NVector, inds...) = getindex(nv.v, inds...)

Base.setindex!(nv::NVector, X, i::Real) = setindex!(nv.v, X, i)
Base.setindex!(nv::NVector, X, i::AbstractArray) = setindex!(nv.v, X, i)
Base.setindex!(nv::NVector, X, inds...) = setindex!(nv.v, X, inds...)

Base.pointer(nv::NVector) = Sundials.N_VGetArrayPointer_Serial(nv.n_v)

##################################################################
#
# Methods to convert between Julia Vectors and Sundials N_Vectors.
# NB uses:
# - convert to convert to NVector
# - cconvert / unsafe_convert to convert to N_Vector (for use within a ccall only)
##################################################################

Base.convert(::Type{NVector}, v::Vector{realtype}) = NVector(v)
function Base.convert(::Type{NVector}, v::Vector{T}) where {T <: Real}
    NVector(copy!(similar(v,
            realtype),
        v))
end
Base.convert(::Type{NVector}, v::AbstractVector) = NVector(convert(Vector{realtype}, v))
Base.convert(::Type{NVector}, nv::NVector) = nv
Base.convert(::Type{NVector}, nv::N_Vector) = NVector(nv)
Base.convert(::Type{Vector{realtype}}, nv::NVector) = nv.v
Base.convert(::Type{Vector}, nv::NVector) = nv.v

""" 
    Base.cconvert(::Type{N_Vector}, v::Vector{realtype}) -> NVector
    Base.unsafe_convert(::Type{N_Vector}, nv::NVector) -> N_Vector

Convert v to N_Vector, for use by ccall

(NB: actually implemented to convert any Julia Vector v, although only v::NVector is needed?)

Conversion happens in two steps within ccall:
 - cconvert to convert to temporary NVector, which is preserved (by ccall) from garbage collection
 - unsafe_convert to get the N_Vector pointer from the temporary NVector
"""
Base.cconvert(::Type{N_Vector}, v::Vector{realtype}) = convert(NVector, v) # will just return v if v is an NVector
Base.unsafe_convert(::Type{N_Vector}, nv::NVector) = nv.n_v
Base.copy!(v::Vector, nv::Ptr{Sundials._generic_N_Vector}) = copy!(v, convert(NVector, nv))

Base.similar(nv::NVector) = NVector(similar(nv.v))

nvlength(x::N_Vector) = unsafe_load(unsafe_load(convert(Ptr{Ptr{Clong}}, x)))
# asarray() creates an array pointing to N_Vector data, but does not take the ownership
@inline function asarray(x::N_Vector)
    unsafe_wrap(Array, N_VGetArrayPointer_Serial(x),
        (nvlength(x),); own = false)
end
@inline function asarray(x::N_Vector, dims::Tuple)
    unsafe_wrap(Array, N_VGetArrayPointer_Serial(x),
        dims; own = false)
end
asarray(x::Vector{realtype}) = x
asarray(x::Ptr{realtype}, dims::Tuple) = unsafe_wrap(Array, x, dims; own = false)
@inline Base.convert(::Type{Vector{realtype}}, x::N_Vector) = asarray(x)
@inline Base.convert(::Type{Vector}, x::N_Vector) = asarray(x)

nvector(x::Vector{realtype}) = NVector(x)
#nvector(x::N_Vector) = x
