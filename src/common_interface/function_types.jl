abstract type AbstractFunJac{J2} end
mutable struct FunJac{
        F, F2, J, P, M, J2, Prec, PS, U, DU,
        TResid <: Union{Nothing, AbstractArray{Float64}},
    } <: AbstractFunJac{J2}
    fun::F
    fun2::F2
    jac::J
    p::P
    mass_matrix::M
    jac_prototype::J2
    prec::Prec
    psetup::PS
    # Buffers for (or prototypes of) the arrays passed to user functions
    u::U
    du::DU
    resid::TResid
end
function FunJac(fun, jac, p, m, jac_prototype, prec, psetup, u, du)
    return FunJac(
        fun, nothing, jac, p, m,
        jac_prototype, prec,
        psetup, u, du, nothing
    )
end
function FunJac(fun, jac, p, m, jac_prototype, prec, psetup, u, du, resid)
    return FunJac(
        fun, nothing,
        jac, p, m,
        jac_prototype,
        prec, psetup, u,
        du, resid
    )
end

"""
    unsafe_wrap_nvector(prototype, x::N_Vector)

Wrap the data of `x` without copying in an array of the same type and size as `prototype`,
or return `nothing` if this is not supported for arrays of this type.

The returned array is only valid as long as `x` is.
Package extensions may add methods for additional array types.
"""
@inline function unsafe_wrap_nvector(prototype::Array{Float64}, x::N_Vector)
    return asarray(N_VGetArrayPointer_Serial(x), size(prototype))
end
unsafe_wrap_nvector(prototype, x::N_Vector) = nothing

# Arrays of the same type as `buf` with the data of `x`, as passed to user functions:
# The data is only copied (into `buf`) if it cannot be wrapped, and only for inputs
@inline function input_array!(buf, x::N_Vector)
    a = unsafe_wrap_nvector(buf, x)
    return a === nothing ? copyto!(buf, asarray(N_VGetArrayPointer_Serial(x), size(buf))) : a
end
@inline output_array(buf, x::N_Vector) = something(unsafe_wrap_nvector(buf, x), buf)

# Copy output `a` of a user function to `x`, unless `a` already aliases the data of `x`
@inline function copyback!(x::N_Vector, a)
    ptr = N_VGetArrayPointer_Serial(x)
    pointer(a) == ptr || copyto!(asarray(ptr, size(a)), a)
    return nothing
end

function cvodefunjac(t::Float64, u::N_Vector, du::N_Vector, funjac::FunJac)
    _du = output_array(funjac.du, du)
    funjac.fun(_du, input_array!(funjac.u, u), funjac.p, t)
    copyback!(du, _du)
    return CV_SUCCESS
end

function cvodefunjac2(t::Float64, u::N_Vector, du::N_Vector, funjac::FunJac)
    _du = output_array(funjac.du, du)
    funjac.fun2(_du, input_array!(funjac.u, u), funjac.p, t)
    copyback!(du, _du)
    return CV_SUCCESS
end

function cvodejac(
        t::realtype,
        u::N_Vector,
        du::N_Vector,
        J::SUNMatrix,
        funjac::AbstractFunJac{Nothing},
        tmp1::N_Vector,
        tmp2::N_Vector,
        tmp3::N_Vector
    )
    _u = input_array!(funjac.u, u)
    funjac.jac(convert(Matrix, J), _u, funjac.p, t)
    return CV_SUCCESS
end

function cvodejac(
        t::realtype,
        u::N_Vector,
        du::N_Vector,
        _J::SUNMatrix,
        funjac::AbstractFunJac{<:SparseArrays.SparseMatrixCSC},
        tmp1::N_Vector,
        tmp2::N_Vector,
        tmp3::N_Vector
    )
    jac_prototype = funjac.jac_prototype

    _u = input_array!(funjac.u, u)

    funjac.jac(jac_prototype, _u, funjac.p, t)

    copyto!(_J, jac_prototype)

    return CV_SUCCESS
end

function idasolfun(
        t::Float64, u::N_Vector, du::N_Vector, resid::N_Vector,
        funjac::FunJac
    )
    _resid = output_array(funjac.resid, resid)
    funjac.fun(_resid, input_array!(funjac.du, du), input_array!(funjac.u, u), funjac.p, t)
    copyback!(resid, _resid)
    return IDA_SUCCESS
end

function idajac(
        t::realtype,
        cj::realtype,
        u::N_Vector,
        du::N_Vector,
        res::N_Vector,
        J::SUNMatrix,
        funjac::AbstractFunJac{Nothing},
        tmp1::N_Vector,
        tmp2::N_Vector,
        tmp3::N_Vector
    )
    _u = input_array!(funjac.u, u)
    _du = input_array!(funjac.du, du)

    funjac.jac(convert(Matrix, J), _du, _u, funjac.p, cj, t)
    return IDA_SUCCESS
end

function idajac(
        t::realtype,
        cj::realtype,
        u::N_Vector,
        du::N_Vector,
        res::N_Vector,
        _J::SUNMatrix,
        funjac::AbstractFunJac{<:SparseArrays.SparseMatrixCSC},
        tmp1::N_Vector,
        tmp2::N_Vector,
        tmp3::N_Vector
    )
    jac_prototype = funjac.jac_prototype
    _u = input_array!(funjac.u, u)
    _du = input_array!(funjac.du, du)

    funjac.jac(jac_prototype, _du, _u, funjac.p, cj, t)

    copyto!(_J, jac_prototype)

    return IDA_SUCCESS
end

function massmat(
        t::Float64,
        _M::SUNMatrix,
        mmf::AbstractFunJac,
        tmp1::N_Vector,
        tmp2::N_Vector,
        tmp3::N_Vector
    )
    if mmf.mass_matrix isa Array
        M = convert(Matrix, _M)
        M .= mmf.mass_matrix
    else
        copyto!(_M, mmf.mass_matrix)
    end

    return IDA_SUCCESS
end

function jactimes(
        v::N_Vector,
        Jv::N_Vector,
        t::Float64,
        y::N_Vector,
        fy::N_Vector,
        fj::AbstractFunJac,
        tmp::N_Vector
    )
    update_coefficients!(fj.jac_prototype, convert(Vector, y), fj.p, t)
    LinearAlgebra.mul!(convert(Vector, Jv), fj.jac_prototype, convert(Vector, v))
    return CV_SUCCESS
end

function idajactimes(
        t::Float64,
        y::N_Vector,
        fy::N_Vector,
        r::N_Vector,
        v::N_Vector,
        Jv::N_Vector,
        cj::Float64,
        fj::AbstractFunJac,
        tmp1::N_Vector,
        tmp2::N_Vector
    )
    update_coefficients!(fj.jac_prototype, convert(Vector, y), fj.p, t)
    LinearAlgebra.mul!(convert(Vector, Jv), fj.jac_prototype, convert(Vector, v))
    return IDA_SUCCESS
end

function precsolve(
        t::Float64,
        y::N_Vector,
        fy::N_Vector,
        r::N_Vector,
        z::N_Vector,
        gamma::Float64,
        delta::Float64,
        lr::Int,
        fj::AbstractFunJac
    )
    fj.prec(
        convert(Vector, z),
        convert(Vector, r),
        fj.p,
        t,
        convert(Vector, y),
        convert(Vector, fy),
        gamma,
        delta,
        lr
    )
    return CV_SUCCESS
end

function precsetup(
        t::Float64,
        y::N_Vector,
        fy::N_Vector,
        jok::Int,
        jcurPtr::Ref{Int},
        gamma::Float64,
        fj::AbstractFunJac
    )
    fj.psetup(
        fj.p,
        t,
        convert(Vector, y),
        convert(Vector, fy),
        jok == 1,
        Base.unsafe_wrap(Vector{Int}, jcurPtr, 1),
        gamma
    )
    return CV_SUCCESS
end

function idaprecsolve(
        t::Float64,
        y::N_Vector,
        fy::N_Vector,
        resid::N_Vector,
        r::N_Vector,
        z::N_Vector,
        gamma::Float64,
        delta::Float64,
        fj::AbstractFunJac
    )
    fj.prec(
        convert(Vector, z),
        convert(Vector, r),
        fj.p,
        t,
        convert(Vector, y),
        convert(Vector, fy),
        convert(Vector, resid),
        gamma,
        delta
    )
    return IDA_SUCCESS
end

function idaprecsetup(
        t::Float64,
        y::N_Vector,
        fy::N_Vector,
        rr::N_Vector,
        gamma::Float64,
        fj::AbstractFunJac
    )
    fj.psetup(fj.p, t, convert(Vector, rr), convert(Vector, y), convert(Vector, fy), gamma)
    return IDA_SUCCESS
end
