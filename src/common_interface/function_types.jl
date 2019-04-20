abstract type AbstractFunJac{J2} end
mutable struct FunJac{F, F2, J, P, M, J2, uType, uType2, Prec} <: AbstractFunJac{J2}
    fun::F
    fun2::F2
    jac::J
    p::P
    mass_matrix::M
    jac_prototype::J2
    prec::Prec
    u::uType
    du::uType
    resid::uType2
end
FunJac(fun,jac,p,m,jac_prototype,prec,u,du) = FunJac(fun,nothing,jac,p,m,jac_prototype,prec,u,du,nothing)
FunJac(fun,jac,p,m,jac_prototype,prec,u,du,resid) = FunJac(fun,nothing,jac,p,m,jac_prototype,prec,u,du,resid)

function cvodefunjac(t::Float64,
                     u::N_Vector,
                     du::N_Vector,
                     funjac::FunJac)
    funjac.u = unsafe_wrap(Vector{Float64}, __N_VGetArrayPointer_Serial(u),length(funjac.u))
    funjac.du = unsafe_wrap(Vector{Float64}, __N_VGetArrayPointer_Serial(du),length(funjac.du))
    _du = funjac.du
    _u = funjac.u
    funjac.fun(_du, _u, funjac.p, t)
    return CV_SUCCESS
end

function cvodefunjac2(t::Float64,
                     u::N_Vector,
                     du::N_Vector,
                     funjac::FunJac)
    funjac.u = unsafe_wrap(Vector{Float64}, __N_VGetArrayPointer_Serial(u),length(funjac.u))
    funjac.du = unsafe_wrap(Vector{Float64}, __N_VGetArrayPointer_Serial(du),length(funjac.du))
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

    funjac.u = unsafe_wrap(Vector{Float64}, __N_VGetArrayPointer_Serial(u),length(funjac.u))
    _u = funjac.u
    funjac.jac(convert(Matrix, J), _u, funjac.p, t)
    return CV_SUCCESS
end

function cvodejac(t::realtype,
                  u::N_Vector,
                  du::N_Vector,
                  _J::SUNMatrix,
                  funjac::AbstractFunJac{<:SparseMatrixCSC},
                  tmp1::N_Vector,
                  tmp2::N_Vector,
                  tmp3::N_Vector)
    jac_prototype = funjac.jac_prototype
    J = convert(SparseMatrixCSC,_J)

    funjac.u = unsafe_wrap(Vector{Float64}, __N_VGetArrayPointer_Serial(u),length(funjac.u))
    _u = funjac.u

    funjac.jac(jac_prototype, _u, funjac.p, t)
    J.nzval .= jac_prototype.nzval
    # Sundials resets the value pointers each time, so reset it too
    @. J.rowval = jac_prototype.rowval - 1
    @. J.colptr = jac_prototype.colptr - 1
    return CV_SUCCESS
end

function idasolfun(t::Float64, u::N_Vector, du::N_Vector, resid::N_Vector, funjac::FunJac)
    funjac.u = unsafe_wrap(Vector{Float64}, __N_VGetArrayPointer_Serial(u),length(funjac.u))
    _u = funjac.u
    funjac.du = unsafe_wrap(Vector{Float64}, __N_VGetArrayPointer_Serial(du),length(funjac.du))
    _du = funjac.du
    funjac.resid = unsafe_wrap(Vector{Float64}, __N_VGetArrayPointer_Serial(resid),length(funjac.resid))
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


    funjac.u = unsafe_wrap(Vector{Float64}, __N_VGetArrayPointer_Serial(u),length(funjac.u))
    _u = funjac.u
    funjac.du = unsafe_wrap(Vector{Float64}, __N_VGetArrayPointer_Serial(du),length(funjac.du))
    _du = funjac.du

    funjac.jac(convert(Matrix, J), _du,
               _u, funjac.p, cj, t)
    return IDA_SUCCESS
end

function idajac(t::realtype,
                cj::realtype,
                u::N_Vector,
                du::N_Vector,
                res::N_Vector,
                _J::SUNMatrix,
                funjac::AbstractFunJac{<:SparseMatrixCSC},
                tmp1::N_Vector,
                tmp2::N_Vector,
                tmp3::N_Vector)

  jac_prototype = funjac.jac_prototype
  J = convert(SparseMatrixCSC,_J)

  funjac.u = unsafe_wrap(Vector{Float64}, __N_VGetArrayPointer_Serial(u),length(funjac.u))
  _u = funjac.u
  funjac.du = unsafe_wrap(Vector{Float64}, __N_VGetArrayPointer_Serial(du),length(funjac.du))
  _du = funjac.du
  
  funjac.jac(jac_prototype, _du, convert(Vector, _u), funjac.p, cj, t)
  J.nzval .= jac_prototype.nzval
  # Sundials resets the value pointers each time, so reset it too
  @. J.rowval = jac_prototype.rowval - 1
  @. J.colptr = jac_prototype.colptr - 1

  return IDA_SUCCESS
end

function massmat(t::Float64,
                 _M::SUNMatrix,
                 mmf::AbstractFunJac,
                 tmp1::N_Vector,
                 tmp2::N_Vector,
                 tmp3::N_Vector)
  if typeof(mmf.mass_matrix) <: Array
    M = convert(Matrix, _M)
  else
    M = convert(SparseMatrixCSC, _M)
  end
  M .= mmf.mass_matrix

  return IDA_SUCCESS
end

function jactimes(v::N_Vector,
                 Jv::N_Vector,
                 t::Float64,
                 y::N_Vector,
                 fy::N_Vector,
                 fj::AbstractFunJac,
                 tmp::N_Vector)
    DiffEqBase.update_coefficients!(fj.jac_prototype,y,fj.p,t)
    mul!(convert(Vector,Jv),fj.jac_prototype,convert(Vector,v))
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
                 tmp2::N_Vector)
    DiffEqBase.update_coefficients!(fj.jac_prototype,y,fj.p,t)
    mul!(convert(Vector,Jv),fj.jac_prototype,convert(Vector,v))
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
    fj.prec(convert(Vector,z),convert(Vector,r),fj.p,t,convert(Vector,y),convert(Vector,fy),gamma,delta,lr)
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
                   lr::Int,
                   fj::AbstractFunJac)
    fj.prec(convert(Vector,z),convert(Vector,r),fj.p,t,convert(Vector,y),convert(Vector,fy),convert(Vector,resid),gamma,delta,lr)
    return IDA_SUCCESS
end
