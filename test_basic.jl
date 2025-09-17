using Pkg
Pkg.instantiate()
using Sundials

function lorenz(du, u, p, t)
    du[1] = 10.0(u[2] - u[1])
    du[2] = u[1] * (28.0 - u[3]) - u[2]
    du[3] = u[1] * u[2] - (8/3) * u[3]
end

using SciMLBase
prob = ODEProblem(lorenz, [1.0; 0.0; 0.0], (0.0, 1.0))
sol = solve(prob, CVODE_BDF())
println("Success! Solution at t=0.5: ", sol(0.5))