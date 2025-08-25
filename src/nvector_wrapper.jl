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
    ctx::SUNContext         # SUNContext for this NVector

    function NVector(v::Vector{realtype}, ctx::SUNContext)
        # note that N_VMake_Serial() creates N_Vector doesn't own the data,
        # so calling N_VDestroy_Serial() would not deallocate v
        nv = new(N_VMake_Serial(length(v), v, ctx), v, ctx)
        finalizer(release_handle, nv)
        return nv
    end

    function NVector(n_v::N_Vector, ctx::SUNContext = C_NULL)
        # wrap N_Vector into NVector and get non-owning access to `nv` data
        # via `v`, but don't register finalizer for `nv`
        # ctx is C_NULL for wrapped N_Vectors that don't own their context
        return new(n_v, asarray(n_v), ctx)
    end
end

function release_handle(nv::NVector)
    N_VDestroy_Serial(nv.n_v)
    # Don't free context here - it will be freed by the integrator
end

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

# Conversion from vectors to NVector requires context
function Base.convert(::Type{NVector}, v::Vector{realtype})
    error("Cannot convert Vector to NVector without context. Use NVector(v, ctx) instead.")
end
function Base.convert(::Type{NVector}, v::Vector{T}) where {T <: Real}
    error("Cannot convert Vector to NVector without context. Use NVector(v, ctx) instead.")
end
function Base.convert(::Type{NVector}, v::AbstractVector)
    error("Cannot convert AbstractVector to NVector without context. Use NVector(v, ctx) instead.")
end
Base.convert(::Type{NVector}, nv::NVector) = nv
# Removed conversion from N_Vector to NVector without context - use NVector(nv, ctx) instead
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
# cconvert for vectors removed - needs context
# Base.cconvert(::Type{N_Vector}, v::Vector{realtype}) - removed, needs context
Base.cconvert(::Type{N_Vector}, nv::NVector) = nv
Base.unsafe_convert(::Type{N_Vector}, nv::NVector) = nv.n_v
# Removed copy! that creates NVector without context - caller should handle conversion

Base.similar(nv::NVector) = NVector(similar(nv.v), nv.ctx)

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

# nvector removed - needs context
# nvector(x::Vector{realtype}) = NVector(x)
#nvector(x::N_Vector) = x
