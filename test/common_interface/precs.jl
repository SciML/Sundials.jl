using Sundials, Test, ModelingToolkit, LinearAlgebra, IncompleteLU
import AlgebraicMultigrid

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
u0 = init_brusselator_2d(xyd_brusselator)
prob_ode_brusselator_2d = ODEProblem(brusselator_2d_loop,
                                     u0, (0.0, 11.5), p)

prob_ode_brusselator_2d_mtk = ODEProblem(modelingtoolkitize(prob_ode_brusselator_2d), [],
                                         (0.0, 11.5); jac = true, sparse = true);

u0 = prob_ode_brusselator_2d_mtk.u0
p = prob_ode_brusselator_2d_mtk.p
const jaccache = prob_ode_brusselator_2d_mtk.f.jac(u0, p, 0.0)
const W = I - 1.0 * jaccache

prectmp = ilu(W; τ = 50.0)
const preccache = Ref(prectmp)

function psetupilu(p, t, u, du, jok, jcurPtr, gamma)
    if !jok
        prob_ode_brusselator_2d_mtk.f.jac(jaccache, u, p, t)
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
    if !jok
        prob_ode_brusselator_2d_mtk.f.jac(jaccache, u, p, t)
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
