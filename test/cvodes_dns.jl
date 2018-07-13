using Sundials, Test, ForwardDiff
using Sundials: N_Vector, N_Vector_S
using LinearAlgebra

function mycopy!(pp, arr::Matrix)
  nj = size(arr,2)
  ps = unsafe_wrap(Array, pp, nj)
  for j = 1:nj
    arr[:,j] = Sundials.asarray(ps[j])
  end
  arr
end

function mycopy!(arr::Matrix, pp)
  nj = size(arr,2)
  ps = unsafe_wrap(Array, pp, nj)
  for j = 1:nj
    Sundials.asarray(ps[j])[:] = arr[:,j]
  end
end

f!(dy,t,y,p) = (dy[:]=y.*p)

function srhs(t,y,ydot,ys,ysdot)
  n = length(y)
  np = 2
  dyt = similar(y)
  chunk = min(n, 8)
  c1 = ForwardDiff.JacobianConfig(nothing, dyt, dyt, ForwardDiff.Chunk{chunk}())
  c2 = ForwardDiff.JacobianConfig(nothing, dyt, p, ForwardDiff.Chunk{chunk}())
  jac = ForwardDiff.jacobian((dy,y)->f!(dy,t,y,p), dyt, y, c1, Val{false}())
  #jac = ReverseDiff.jacobian!(t1, y)
  ysdot[:] = jac * ys

  jac = ForwardDiff.jacobian((dy,p)->f!(dy,t,y,p), dyt, p, c2, Val{false}())
  #jac = ReverseDiff.jacobian!(t2, p)
  ysdot[:, 1:np] += jac
end

"""
    sens(f!, t0, y0, p, tout; reltol, abstol)
Compute the solution and sensivities to the parametrized ODE problem defined by `f!(ẏ, t, y, p)`, starting at t0, y0, p.
Return the solutions `y` at times tout (>t0) as well as the corresponding sensivity matrices `ys`.
y[i, t] is the solutions component i at timestep t.
ys[i, j, t] is the i-th component sensivity wrt the j-th parameter at timestep t.
ys[i, np+j, t] the i-th component sensivity wrt the j-th initial condition value.
"""
function sens(f!::Function, t0::Float64, y0::Vector{Float64}, p::Vector{Float64}, tout::Vector{Float64}; reltol::Float64 = 1e-5, abstol::Float64 = 1e-5)
  n = length(y0)
  np = length(p)
  ys0 = zeros(n,np.+n)
  ys0[:, np.+(1:n)] = Matrix(1.0I,n,n)

  #t1 = ReverseDiff.JacobianTape((dy,y)->f!(dy,0,y,p), dyt, y0)
  #t2 = ReverseDiff.JacobianTape((dy,p)->f!(dy,0,y0,p), dyt, p)

  pbar = abs.(vcat(p, y0))
  y, ys = cvodes(f!, srhs, t0, y0, ys0, p, reltol, abstol, pbar, tout)
end


### internals

## data structure dealing with the sundials callbacks

struct CVSData
  f  # f(t,y,dy)
  fs # fs()
  p
  jys
  jdys
end

CVSData(f, fs, p, n::Int, nS::Int) = CVSData(f, fs, p, Array{Float64}(undef, n, nS), Array{Float64}(undef, n, nS))

function cvrhsfn(t::Float64, y::N_Vector, dy::N_Vector, data::CVSData)
    data.f(convert(Vector,dy), t, convert(Vector,y), data.p)
    return Sundials.CV_SUCCESS
end

function cvsensrhsfn(ns::Cint, t::Float64, y::N_Vector, dy::N_Vector, ys::N_Vector_S, dys::N_Vector_S, data::CVSData, tmp1::N_Vector, tmp2::N_Vector)
    jys = data.jys
    jdys = data.jdys
    mycopy!(ys, data.jys)
    data.fs(t, convert(Vector,y), convert(Vector,dy), jys, jdys)
    mycopy!(jdys, dys)
    return Sundials.CV_SUCCESS
end


## cvodes wrapper

"Given the sensivity problem, return (y,ys) where
y[i,t] is the solutions i-th componnent for timestep t and
ys[i,j,t] is the sensivity of the i-th component wrt to the j-th paramater, where
the last parameter indices correspond to the initial conditions components."
function cvodes(f,fS, t0, y0, yS0, p, reltol, abstol, pbar, t::AbstractVector)
  N, Ns = size(yS0)
  y = zeros(N, length(t))
  ys = zeros(N, Ns, length(t))
  tret = [t0]
  yret = similar(y0)
  ysret = similar(yS0)
  yS0n  = [Sundials.NVector(yS0[:,j]) for j=1:Ns]
  yS0nv = [N_Vector(n) for n in yS0n]
  pyS0 = pointer(yS0nv)
  crhs = Sundials.@cfunction(cvrhsfn, Cint, (Sundials.realtype, N_Vector, N_Vector, Ref{CVSData}))
  csensrhs = Sundials.@cfunction(cvsensrhsfn, Cint, (Cint, Sundials.realtype, N_Vector, N_Vector, N_Vector_S, N_Vector_S, Ref{CVSData}, N_Vector, N_Vector))

  ##

  mem_ptr = Sundials.CVodeCreate(Sundials.CV_ADAMS, Sundials.CV_FUNCTIONAL)
  #mem_ptr = Sundials.CVodeCreate(Sundials.CV_BDF, Sundials.CV_NEWTON)
  cvode_mem = Sundials.Handle(mem_ptr)
  Sundials.CVodeSetUserData(cvode_mem, CVSData(f, fS, p, size(yS0)...))

  Sundials.CVodeInit(cvode_mem, crhs, t0, convert(N_Vector, y0))
  Sundials.CVodeSStolerances(cvode_mem, reltol, abstol)

  Sundials.CVodeSensInit(cvode_mem, Ns, Sundials.CV_STAGGERED, csensrhs, pyS0)
  Sundials.CVodeSetSensParams(cvode_mem, C_NULL, pbar, C_NULL)
  Sundials.CVodeSensEEtolerances(cvode_mem)
  for i in 1:length(t)
    @show "here1"
    Sundials.CVode(cvode_mem, t[i], yret, tret, Sundials.CV_NORMAL)
    @show "here2"
    Sundials.CVodeGetSens(cvode_mem, tret, pyS0)
    @show "here3"
    mycopy!(pyS0, ysret)
    y[:,i] = yret
    ys[:,:,i] = ysret
  end
  empty!(cvode_mem)
  y, ys
end


t0 = 0.
t  = [1., 2.]
y0 = [1., 2.]
p  = [3., 4.]
y, ys = sens(f!, t0, y0, p, t)
@test isapprox(y[1,1], 20.0856, rtol=1e-3)
@test isapprox(ys[2,2,2], 11924.3, rtol=1e-3) # todo: check if these are indeed the right results
