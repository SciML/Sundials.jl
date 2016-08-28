"""
   Wrapper for Sundials `N_Vector` that
   uses Julia `Vector{realtype}` as the data container.

   Implements `DenseVector` interface and
   manages automatic destruction of the referenced `N_Vector` when it is
   no longer in use.
"""
immutable NVector <: DenseVector{realtype}
    ref_nv::Ref{N_Vector}   # reference to N_Vector
    v::Vector{realtype}     # array that is referenced by N_Vector

    function NVector(v::Vector{realtype})
        # note that N_VMake_Serial() creates N_Vector doesn't own the data,
        # so calling N_VDestroy_Serial() would not deallocate v
        nv = new(Ref{N_Vector}(N_VMake_Serial(length(v), v)), v)
        finalizer(nv.ref_nv, release_handle)
        return nv
    end

    function NVector(nv::N_Vector)
        # wrap N_Vector into NVector and get non-owning access to `nv` data
        # via `v`, but don't register finalizer for `nv`
        return new(Ref{N_Vector}(nv), asarray(nv))
    end
end

release_handle(ref_nv::Ref{N_Vector}) = N_VDestroy_Serial(ref_nv[])

Base.size(nv::NVector, d...) = size(nv.v, d...)
Base.stride(nv::NVector, d::Integer) = stride(nv.v, d)

Base.getindex(nv::NVector, i::Real) = getindex(nv.v, i)
Base.getindex(nv::NVector, i::AbstractArray) = getindex(nv.v, i)
Base.getindex(nv::NVector, inds...) = getindex(nv.v, inds...)

Base.setindex!(nv::NVector, X, i::Real) = setindex!(nv.v, X, i)
Base.setindex!(nv::NVector, X, i::AbstractArray) = setindex!(nv.v, X, i)
Base.setindex!(nv::NVector, X, inds...) = setindex!(nv.v, X, inds...)

##################################################################
#
# Methods to convert between Julia Vectors and Sundials N_Vectors.
#
##################################################################

Base.convert(::Type{NVector}, v::Vector{realtype}) = NVector(v)
Base.convert{T<:Real}(::Type{NVector}, v::Vector{T}) = NVector(copy!(similar(v, realtype), v))
Base.convert(::Type{NVector}, nv::NVector) = nv
Base.convert(::Type{NVector}, nv::N_Vector) = NVector(nv)
Base.convert(::Type{N_Vector}, nv::NVector) = nv.ref_nv[]
Base.convert(::Type{Vector{realtype}}, nv::NVector)= nv.v
Base.convert(::Type{Vector}, nv::NVector)= nv.v

""" `N_Vector(v::Vector{T})`

    Converts Julia `Vector` to `N_Vector`.

    Implicitly creates `NVector` object that manages automatic
    destruction of `N_Vector` object when no longer in use.
"""
Base.convert(::Type{N_Vector}, v::Vector{realtype}) = N_Vector(NVector(v))
Base.convert{T<:Real}(::Type{N_Vector}, v::Vector{T}) = N_Vector(NVector(v))

Base.similar(nv::NVector) = NVector(similar(nv.v))

nvlength(x::N_Vector) = unsafe_load(unsafe_load(convert(Ptr{Ptr{Clong}}, x)))
# asarray() creates an array pointing to N_Vector data, but does not take the ownership
@inline asarray(x::N_Vector) = @compat unsafe_wrap(Array, __N_VGetArrayPointer_Serial(x), (nvlength(x),), false)
@inline asarray(x::N_Vector, dims::Tuple) = @compat unsafe_wrap(Array, __N_VGetArrayPointer_Serial(x), dims, false)
asarray(x::Vector{realtype}) = x
asarray(x::Ptr{realtype}, dims::Tuple) = @compat unsafe_wrap(Array, x, dims, false)
@inline Base.convert(::Type{Vector{realtype}}, x::N_Vector) = asarray(x)
@inline Base.convert(::Type{Vector}, x::N_Vector) = asarray(x)

nvector(x::Vector{realtype}) = NVector(x)
#nvector(x::N_Vector) = x
