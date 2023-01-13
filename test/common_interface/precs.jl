using Sundials, Test, LinearAlgebra, IncompleteLU
import AlgebraicMultigrid
import SparsityTracing, SparseDiffTools

const N = 32
const xyd_brusselator = range(0; stop = 1, length = N)
brusselator_f(x, y, t) = (((x - 0.3)^2 + (y - 0.6)^2) <= 0.1^2) * (t >= 1.1) * 5.0
limit(a, N) = a == N + 1 ? 1 : a == 0 ? N : a

function brusselator_2d_loop(du, u, p, t)
    A, B, alpha, dx = p
    alpha = alpha / dx^2
    @inbounds for I in CartesianIndices((N, N))
        i, j = Tuple(I)
        x, y = xyd_brusselator[I[1]], xyd_brusselator[I[2]]
        ip1, im1, jp1, jm1 = limit(i + 1, N), limit(i - 1, N), limit(j + 1, N),
                             limit(j - 1, N)
        du[i, j, 1] = alpha * (u[im1, j, 1] + u[ip1, j, 1] + u[i, jp1, 1] + u[i, jm1, 1] -
                       4u[i, j, 1]) +
                      B + u[i, j, 1]^2 * u[i, j, 2] - (A + 1) * u[i, j, 1] +
                      brusselator_f(x, y, t)
        du[i, j, 2] = alpha * (u[im1, j, 2] + u[ip1, j, 2] + u[i, jp1, 2] + u[i, jm1, 2] -
                       4u[i, j, 2]) +
                      A * u[i, j, 1] - u[i, j, 1]^2 * u[i, j, 2]
    end
end

# vector arguments to simplify Jacobian setup
function brusselator_2d_vec(du_vec, u_vec, p, t)
    du = reshape(du_vec, N, N, 2)
    u = reshape(u_vec, N, N, 2)
    return brusselator_2d_loop(du, u, p, t)
end

p = (3.4, 1.0, 10.0, step(xyd_brusselator))

function init_brusselator_2d(xyd)
    N = length(xyd)
    u = zeros(N, N, 2)
    for I in CartesianIndices((N, N))
        x = xyd[I[1]]
        y = xyd[I[2]]
        u[I, 1] = 22 * (y * (1 - y))^(3 / 2)
        u[I, 2] = 27 * (x * (1 - x))^(3 / 2)
    end
    u
end
u0 = vec(init_brusselator_2d(xyd_brusselator))

prob_ode_brusselator_2d = ODEProblem(brusselator_2d_vec,
                                     u0, (0.0, 11.5), p)

# find Jacobian sparsity pattern
u0_st = SparsityTracing.create_advec(u0)
du_st = similar(u0_st)
brusselator_2d_vec(du_st, u0_st, p, 0.0)
const jaccache = SparsityTracing.jacobian(du_st, length(du_st))
const W = I - 1.0 * jaccache

# setup sparse AD for Jacobian
colors = SparseDiffTools.matrix_colors(jaccache)
const jaccache_fc = SparseDiffTools.ForwardColorJacCache(nothing, # don't use f to create unique Tag
                                                         u0,
                                                         colorvec = colors,
                                                         sparsity = jaccache)

prectmp = ilu(W; τ = 50.0)
const preccache = Ref(prectmp)

function psetupilu(p, t, u, du, jok, jcurPtr, gamma)
    if jok
        SparseDiffTools.forwarddiff_color_jacobian!(jaccache,
                                                    (y, x) -> brusselator_2d_vec(y, x, p, t),
                                                    u, jaccache_fc)
        jcurPtr[] = true

        # W = I - gamma*J
        @. W = -gamma * jaccache
        idxs = diagind(W)
        @. @view(W[idxs]) = @view(W[idxs]) + 1

        # Build preconditioner on W
        preccache[] = ilu(W; τ = 5.0)
    end
end

function precilu(z, r, p, t, y, fy, gamma, delta, lr)
    ldiv!(z, preccache[], r)
end

prectmp2 = AlgebraicMultigrid.aspreconditioner(AlgebraicMultigrid.ruge_stuben(W;
                                                                              presmoother = AlgebraicMultigrid.Jacobi(rand(size(W,
                                                                                                                                1))),
                                                                              postsmoother = AlgebraicMultigrid.Jacobi(rand(size(W,
                                                                                                                                 1)))))
const preccache2 = Ref(prectmp2)
function psetupamg(p, t, u, du, jok, jcurPtr, gamma)
    if jok
        SparseDiffTools.forwarddiff_color_jacobian!(jaccache,
                                                    (y, x) -> brusselator_2d_vec(y, x, p, t),
                                                    u, jaccache_fc)
        jcurPtr[] = true

        # W = I - gamma*J
        @. W = -gamma * jaccache
        idxs = diagind(W)
        @. @view(W[idxs]) = @view(W[idxs]) + 1

        # Build preconditioner on W
        preccache2[] = AlgebraicMultigrid.aspreconditioner(AlgebraicMultigrid.ruge_stuben(W;
                                                                                          presmoother = AlgebraicMultigrid.Jacobi(rand(size(W,
                                                                                                                                            1))),
                                                                                          postsmoother = AlgebraicMultigrid.Jacobi(rand(size(W,
                                                                                                                                             1)))))
    end
end

function precamg(z, r, p, t, y, fy, gamma, delta, lr)
    ldiv!(z, preccache2[], r)
end

sol1 = solve(prob_ode_brusselator_2d, CVODE_BDF(; linear_solver = :GMRES);
             save_everystep = false);
sol2 = solve(prob_ode_brusselator_2d,
             CVODE_BDF(; linear_solver = :GMRES, prec = precilu, psetup = psetupilu,
                       prec_side = 1); save_everystep = false);
sol3 = solve(prob_ode_brusselator_2d,
             CVODE_BDF(; linear_solver = :GMRES, prec = precamg, psetup = psetupamg,
                       prec_side = 1); save_everystep = false);
@test sol1.destats.nf > sol2.destats.nf
@test sol1.destats.nf > sol3.destats.nf
