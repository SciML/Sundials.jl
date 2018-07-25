abstract type AbstactFunJac{J2} end
mutable struct FunJac{F, F2, J, P, J2, uType, uType2} <: AbstactFunJac{J2}
    fun::F
    fun2::F2
    jac::J
    p::P
    jac_prototype::J2
    u::uType
    du::uType
    resid::uType2
end
FunJac(fun,jac,p,jac_prototype,u,du) = FunJac(fun,nothing,jac,p,jac_prototype,u,du,nothing)
FunJac(fun,jac,p,jac_prototype,u,du,resid) = FunJac(fun,nothing,jac,p,jac_prototype,u,du,resid)

function cvodefunjac(t::Float64,
                     u::N_Vector,
                     du::N_Vector,
                     funjac::FunJac)
    @show pointer(funjac.u),__N_VGetArrayPointer_Serial(u)
    @show pointer(funjac.du),__N_VGetArrayPointer_Serial(du)

    if !(pointer(funjac.u) === __N_VGetArrayPointer_Serial(u))
      @warn "Pointer is broken to FunJac.u"
      _u = convert(Vector, u)
    else
      _u = funjac.u
    end

    if !(pointer(funjac.du) === __N_VGetArrayPointer_Serial(du))
      @warn "Pointer is broken to FunJac.du"
      _du = convert(Vector, du)
    else
      _du = funjac.du
    end

    funjac.fun(_du, _u, funjac.p, t)
    return CV_SUCCESS
end

function cvodefunjac2(t::Float64,
                     u::N_Vector,
                     du::N_Vector,
                     funjac::FunJac)
    if !(pointer(funjac.u) === __N_VGetArrayPointer_Serial(u))
      @warn "Pointer is broken to FunJac.u"
      _u = convert(Vector, u)
    end

    if !(pointer(funjac.du) === __N_VGetArrayPointer_Serial(du))
      @warn "Pointer is broken to FunJac.du"
      _du = convert(Vector, du)
    end

    funjac.fun2(_du, _u, funjac.p, t)
    return CV_SUCCESS
end

function cvodejac(t::realtype,
                  u::N_Vector,
                  du::N_Vector,
                  J::SUNMatrix,
                  funjac::AbstactFunJac{Nothing},
                  tmp1::N_Vector,
                  tmp2::N_Vector,
                  tmp3::N_Vector)

    if !(pointer(funjac.u) === __N_VGetArrayPointer_Serial(u))
      @warn "Pointer is broken to FunJac.u"
      _u = convert(Vector, u)
    end

    if !(pointer(funjac.du) === __N_VGetArrayPointer_Serial(du))
      @warn "Pointer is broken to FunJac.du"
      _du = convert(Vector, du)
    end

    funjac.jac(convert(Matrix, J), _u, funjac.p, t)
    return CV_SUCCESS
end

function cvodejac(t::realtype,
                  u::N_Vector,
                  du::N_Vector,
                  _J::SUNMatrix,
                  funjac::AbstactFunJac{<:SparseMatrixCSC},
                  tmp1::N_Vector,
                  tmp2::N_Vector,
                  tmp3::N_Vector)
    jac_prototype = funjac.jac_prototype
    J = convert(SparseMatrixCSC,_J)
    funjac.jac(jac_prototype, convert(Vector, u), funjac.p, t)
    J.nzval .= jac_prototype.nzval
    # Sundials resets the value pointers each time, so reset it too
    @. J.rowval = jac_prototype.rowval - 1
    @. J.colptr = jac_prototype.colptr - 1
    return CV_SUCCESS
end

function idasolfun(t::Float64, u::N_Vector, du::N_Vector, resid::N_Vector, funjac::FunJac)
    if !(pointer(funjac.u) === __N_VGetArrayPointer_Serial(u))
      @warn "Pointer is broken to FunJac.u"
      _u = convert(Vector, u)
    else
      _u = funjac.u
    end

    if !(pointer(funjac.du) === __N_VGetArrayPointer_Serial(du))
      @warn "Pointer is broken to FunJac.du"
      _du = convert(Vector, du)
    else
      _du = funjac.du
    end

    funjac.fun(funjac.resid, _du, _u, funjac.p, t)

    unsafe_copyto!(Sundials.__N_VGetArrayPointer_Serial(resid),
                   pointer(funjac.resid),
                   length(funjac.resid))

    return IDA_SUCCESS
end

function idajac(t::realtype,
                cj::realtype,
                x::N_Vector,
                dx::N_Vector,
                res::N_Vector,
                J::SUNMatrix,
                funjac::AbstactFunJac{Nothing},
                tmp1::N_Vector,
                tmp2::N_Vector,
                tmp3::N_Vector)

    funjac.jac(convert(Matrix, J), convert(Vector,dx),
               convert(Vector, x), funjac.p, cj, t)
    return IDA_SUCCESS
end

function idajac(t::realtype,
                cj::realtype,
                x::N_Vector,
                dx::N_Vector,
                res::N_Vector,
                _J::SUNMatrix,
                funjac::AbstactFunJac{<:SparseMatrixCSC},
                tmp1::N_Vector,
                tmp2::N_Vector,
                tmp3::N_Vector)

                jac_prototype = funjac.jac_prototype
                J = convert(SparseMatrixCSC,_J)
                funjac.jac(jac_prototype, convert(Vector,dx),
                            convert(Vector, x), funjac.p, cj, t)
                J.nzval .= jac_prototype.nzval
                # Sundials resets the value pointers each time, so reset it too
                @. J.rowval = jac_prototype.rowval - 1
                @. J.colptr = jac_prototype.colptr - 1

    return IDA_SUCCESS
end
