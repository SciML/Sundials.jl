abstract type AbstractFunJac{J2} end
mutable struct FunJac{N, F, F2, J, P, M, J2, Prec, PS,
    TResid <: Union{Nothing, Array{Float64, N}}} <: AbstractFunJac{J2}
    fun::F
    fun2::F2
    jac::J
    p::P
    mass_matrix::M
    jac_prototype::J2
    prec::Prec
    psetup::PS
    u::Array{Float64, N}
    du::Array{Float64, N}
    resid::TResid
end
function FunJac(fun, jac, p, m, jac_prototype, prec, psetup, u, du)
    FunJac(fun, nothing, jac, p, m,
        jac_prototype, prec,
        psetup, u, du, nothing)
end
function FunJac(fun, jac, p, m, jac_prototype, prec, psetup, u, du, resid)
    FunJac(fun, nothing,
        jac, p, m,
        jac_prototype,
        prec, psetup, u,
        du, resid)
end

function cvodefunjac(t::Float64, u::N_Vector, du::N_Vector, funjac::FunJac{N}) where {N}
    funjac.u = unsafe_wrap(Array{Float64, N}, N_VGetArrayPointer_Serial(u), size(funjac.u))
    funjac.du = unsafe_wrap(Array{Float64, N}, N_VGetArrayPointer_Serial(du),
        size(funjac.du))
    _du = funjac.du
    _u = funjac.u
    funjac.fun(_du, _u, funjac.p, t)
    return CV_SUCCESS
end

function cvodefunjac2(t::Float64, u::N_Vector, du::N_Vector, funjac::FunJac{N}) where {N}
    funjac.u = unsafe_wrap(Array{Float64, N}, N_VGetArrayPointer_Serial(u), size(funjac.u))
    funjac.du = unsafe_wrap(Array{Float64, N}, N_VGetArrayPointer_Serial(du),
        size(funjac.du))
    _du = funjac.du
    _u = funjac.u
    funjac.fun2(_du, _u, funjac.p, t)
    return CV_SUCCESS
end

function cvodejac(t::realtype,
    u::N_Vector,
    du::N_Vector,
    J::SUNMatrix,
    funjac::AbstractFunJac{Nothing},
    tmp1::N_Vector,
    tmp2::N_Vector,
    tmp3::N_Vector)
    funjac.u = unsafe_wrap(Vector{Float64}, N_VGetArrayPointer_Serial(u), length(funjac.u))
    _u = funjac.u
    funjac.jac(convert(Matrix, J), _u, funjac.p, t)
    return CV_SUCCESS
end

function cvodejac(t::realtype,
    u::N_Vector,
    du::N_Vector,
    _J::SUNMatrix,
    funjac::AbstractFunJac{<:SparseArrays.SparseMatrixCSC},
    tmp1::N_Vector,
    tmp2::N_Vector,
    tmp3::N_Vector)
    jac_prototype = funjac.jac_prototype

    funjac.u = unsafe_wrap(Vector{Float64}, N_VGetArrayPointer_Serial(u), length(funjac.u))
    _u = funjac.u

    funjac.jac(jac_prototype, _u, funjac.p, t)

    copyto!(_J, jac_prototype)

    return CV_SUCCESS
end

function idasolfun(t::Float64, u::N_Vector, du::N_Vector, resid::N_Vector,
    funjac::FunJac{N}) where {N}
    funjac.u = unsafe_wrap(Array{Float64, N}, N_VGetArrayPointer_Serial(u), size(funjac.u))
    _u = funjac.u
    funjac.du = unsafe_wrap(Array{Float64, N}, N_VGetArrayPointer_Serial(du),
        size(funjac.du))
    _du = funjac.du
    funjac.resid = unsafe_wrap(Array{Float64, N}, N_VGetArrayPointer_Serial(resid),
        size(funjac.resid))
    _resid = funjac.resid
    funjac.fun(_resid, _du, _u, funjac.p, t)
    return IDA_SUCCESS
end

function idajac(t::realtype,
    cj::realtype,
    u::N_Vector,
    du::N_Vector,
    res::N_Vector,
    J::SUNMatrix,
    funjac::AbstractFunJac{Nothing},
    tmp1::N_Vector,
    tmp2::N_Vector,
    tmp3::N_Vector)
    N = ndims(funjac.u)
    funjac.u = unsafe_wrap(Array{Float64, N}, N_VGetArrayPointer_Serial(u), size(funjac.u))
    _u = funjac.u
    funjac.du = unsafe_wrap(Array{Float64, N}, N_VGetArrayPointer_Serial(du),
        size(funjac.du))
    _du = funjac.du

    funjac.jac(convert(Matrix, J), _du, _u, funjac.p, cj, t)
    return IDA_SUCCESS
end

function idajac(t::realtype,
    cj::realtype,
    u::N_Vector,
    du::N_Vector,
    res::N_Vector,
    _J::SUNMatrix,
    funjac::AbstractFunJac{<:SparseArrays.SparseMatrixCSC},
    tmp1::N_Vector,
    tmp2::N_Vector,
    tmp3::N_Vector)
    jac_prototype = funjac.jac_prototype
    N = ndims(funjac.u)
    funjac.u = unsafe_wrap(Array{Float64, N}, N_VGetArrayPointer_Serial(u), size(funjac.u))
    _u = funjac.u
    funjac.du = unsafe_wrap(Array{Float64, N}, N_VGetArrayPointer_Serial(du),
        size(funjac.du))
    _du = funjac.du

    funjac.jac(jac_prototype, _du, _u, funjac.p, cj, t)

    copyto!(_J, jac_prototype)

    return IDA_SUCCESS
end

function massmat(t::Float64,
    _M::SUNMatrix,
    mmf::AbstractFunJac,
    tmp1::N_Vector,
    tmp2::N_Vector,
    tmp3::N_Vector)
    if mmf.mass_matrix isa Array
        M = convert(Matrix, _M)
        M .= mmf.mass_matrix
    else
        copyto!(_M, mmf.mass_matrix)
    end

    return IDA_SUCCESS
end

function jactimes(v::N_Vector,
    Jv::N_Vector,
    t::Float64,
    y::N_Vector,
    fy::N_Vector,
    fj::AbstractFunJac,
    tmp::N_Vector)
    DiffEqBase.update_coefficients!(fj.jac_prototype, y, fj.p, t)
    LinearAlgebra.mul!(convert(Vector, Jv), fj.jac_prototype, convert(Vector, v))
    return CV_SUCCESS
end

function idajactimes(t::Float64,
    y::N_Vector,
    fy::N_Vector,
    r::N_Vector,
    v::N_Vector,
    Jv::N_Vector,
    cj::Float64,
    fj::AbstractFunJac,
    tmp1::N_Vector,
    tmp2::N_Vector)
    DiffEqBase.update_coefficients!(fj.jac_prototype, y, fj.p, t)
    LinearAlgebra.mul!(convert(Vector, Jv), fj.jac_prototype, convert(Vector, v))
    return IDA_SUCCESS
end

function precsolve(t::Float64,
    y::N_Vector,
    fy::N_Vector,
    r::N_Vector,
    z::N_Vector,
    gamma::Float64,
    delta::Float64,
    lr::Int,
    fj::AbstractFunJac)
    fj.prec(convert(Vector, z),
        convert(Vector, r),
        fj.p,
        t,
        convert(Vector, y),
        convert(Vector, fy),
        gamma,
        delta,
        lr)
    return CV_SUCCESS
end

function precsetup(t::Float64,
    y::N_Vector,
    fy::N_Vector,
    jok::Int,
    jcurPtr::Ref{Int},
    gamma::Float64,
    fj::AbstractFunJac)
    fj.psetup(fj.p,
        t,
        convert(Vector, y),
        convert(Vector, fy),
        jok == 1,
        Base.unsafe_wrap(Vector{Int}, jcurPtr, 1),
        gamma)
    return CV_SUCCESS
end

function idaprecsolve(t::Float64,
    y::N_Vector,
    fy::N_Vector,
    resid::N_Vector,
    r::N_Vector,
    z::N_Vector,
    gamma::Float64,
    delta::Float64,
    fj::AbstractFunJac)
    fj.prec(convert(Vector, z),
        convert(Vector, r),
        fj.p,
        t,
        convert(Vector, y),
        convert(Vector, fy),
        convert(Vector, resid),
        gamma,
        delta)
    return IDA_SUCCESS
end

function idaprecsetup(t::Float64,
    y::N_Vector,
    fy::N_Vector,
    rr::N_Vector,
    gamma::Float64,
    fj::AbstractFunJac)
    fj.psetup(fj.p, t, convert(Vector, rr), convert(Vector, y), convert(Vector, fy), gamma)
    return IDA_SUCCESS
end
