using SciMLBase, Sundials, Test

function f_iip(du, u, p)
    du[1] = 2 - 2u[1]
    du[2] = u[1] - 4u[2]
end

u0 = zeros(2)
prob_iip = NonlinearProblem{true}(f_iip, u0)
abstol = 1e-8

@testset "linear_solver = $(linear_solver) | globalization_strategy = $(globalization_strategy)" for linear_solver in
                                                                                                     (
        :Dense,
        :LapackDense), # COMMENTED OUT: Iterative solvers (:GMRES, :FGMRES, :BCG, :PCG, :TFQMR) cause segfaults in SUNDIALS 7.4
    globalization_strategy in (:LineSearch, :None)

    local sol
    alg = KINSOL(; linear_solver, globalization_strategy)
    sol = solve(prob_iip, alg; abstol)
    
    if linear_solver == :LapackDense
        @test SciMLBase.successful_retcode(sol.retcode)
        if SciMLBase.successful_retcode(sol.retcode)
            du = zeros(2)
            f_iip(du, sol.u, nothing)
            @test maximum(abs, du) < 1e-6
        end
    else
        @test SciMLBase.successful_retcode(sol.retcode)
        du = zeros(2)
        f_iip(du, sol.u, nothing)
        @test maximum(abs, du) < 1e-6
    end
end

# OOP Tests
f_oop(u, p) = [2 - 2u[1], u[1] - 4u[2]]
u0 = zeros(2)
prob_oop = NonlinearProblem{false}(f_oop, u0)

@testset "linear_solver = $(linear_solver) | globalization_strategy = $(globalization_strategy)" for linear_solver in
                                                                                                     (
        :Dense,
        :LapackDense), # COMMENTED OUT: Iterative solvers (:GMRES, :FGMRES, :BCG, :PCG, :TFQMR) cause segfaults in SUNDIALS 7.4
    globalization_strategy in (:LineSearch, :None)

    local sol
    alg = KINSOL(; linear_solver, globalization_strategy)
    sol = solve(prob_oop, alg; abstol)
    
    if linear_solver == :LapackDense
        @test SciMLBase.successful_retcode(sol.retcode)
        if SciMLBase.successful_retcode(sol.retcode)
            du = zeros(2)
            f_oop(sol.u, nothing)
            @test maximum(abs, du) < 1e-6
        end

        # Pure Newton Steps
        alg = KINSOL(; linear_solver, globalization_strategy, maxsetupcalls = 1)
        sol = solve(prob_oop, alg; abstol)
        @test SciMLBase.successful_retcode(sol.retcode)
        if SciMLBase.successful_retcode(sol.retcode)
            du = zeros(2)
            f_oop(sol.u, nothing)
            @test maximum(abs, du) < 1e-6
        end
    else
        @test SciMLBase.successful_retcode(sol.retcode)
        du = zeros(2)
        f_oop(sol.u, nothing)
        @test maximum(abs, du) < 1e-6

        # Pure Newton Steps
        alg = KINSOL(; linear_solver, globalization_strategy, maxsetupcalls = 1)
        sol = solve(prob_oop, alg; abstol)
        @test SciMLBase.successful_retcode(sol.retcode)
        du = zeros(2)
        f_oop(sol.u, nothing)
        @test maximum(abs, du) < 1e-6
    end
end

# Scalar
f_scalar(u, p) = 2 - 2u
u0 = 0.0
prob_scalar = NonlinearProblem{false}(f_scalar, u0)

@testset "linear_solver = $(linear_solver) | globalization_strategy = $(globalization_strategy)" for linear_solver in
                                                                                                     (
        :Dense,
        :LapackDense), # COMMENTED OUT: Iterative solvers (:GMRES, :FGMRES, :PCG, :TFQMR) cause segfaults in SUNDIALS 7.4
    globalization_strategy in (:LineSearch, :None)

    local sol
    alg = KINSOL(; linear_solver, globalization_strategy)
    sol = solve(prob_scalar, alg; abstol)
    
    if linear_solver == :LapackDense
        @test SciMLBase.successful_retcode(sol.retcode)
        @test sol.u isa Number
        if SciMLBase.successful_retcode(sol.retcode)
            resid = f_scalar(sol.u, nothing)
            @test abs(resid) < 1e-6
        end
    else
        @test SciMLBase.successful_retcode(sol.retcode)
        @test sol.u isa Number
        resid = f_scalar(sol.u, nothing)
        @test abs(resid) < 1e-6
    end
end
