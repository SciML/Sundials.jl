using ModelingToolkit, SciMLBase, Sundials, Test
using SymbolicIndexingInterface
using ModelingToolkit: t_nounits as t, D_nounits as D

@testset "ODE" begin
    @variables x(t) [guess = 1.0] y(t) [guess = 1.0]
    @parameters p = missing [guess = 1.0] q = missing [guess = 1.0]
    @mtkbuild sys = ODESystem([D(x) ~ p * y + q * t, D(y) ~ 5x + q], t; initialization_eqs = [p ^2 + q^2 ~ 3, x^3 + y^3 ~ 5])

    @testset "IIP: $iip" for iip in [true, false]
        prob = ODEProblem{iip}(sys, [x => 1.0, p => 1.0], (0.0, 1.0))

        @testset "$alg" for alg in [CVODE_BDF, CVODE_Adams, ARKODE]
            integ = init(prob, alg())
            @test integ.initializealg isa Sundials.DefaultInit
            @test integ[x] ≈ 1.0
            @test integ[y] ≈ cbrt(4)
            @test integ.ps[p] ≈ 1.0
            @test integ.ps[q] ≈ sqrt(2)
            sol = solve(prob, alg())
            @test SciMLBase.successful_retcode(sol)
            @test sol[x, 1] ≈ 1.0
            @test sol[y, 1] ≈ cbrt(4)
            @test sol.ps[p] ≈ 1.0
            @test sol.ps[q] ≈ sqrt(2)
        end
    end
end
@testset "DAE" begin
    @variables x(t) [guess = 1.0] y(t) [guess = 1.0]
    @parameters p = missing [guess = 1.0] q = missing [guess = 1.0]
    @mtkbuild sys = ODESystem([D(x) ~ p * y + q * t, x^3 + y^3 ~ 5], t; initialization_eqs = [p ^2 + q^2 ~ 3])

    @testset "DAEProblem{$iip}" for iip in [true, false]
        prob = DAEProblem(sys, [D(x) => cbrt(4), D(y) => -1 / cbrt(4), p => 1.0], (0.0, 0.4))
        @testset "OverrideInit" begin
            integ = init(prob, IDA())
            @test integ.initializealg isa Sundials.DefaultInit
            @test integ[x] ≈ 1.0
            @test integ[y] ≈ cbrt(4)
            @test integ.ps[p] ≈ 1.0
            @test integ.ps[q] ≈ sqrt(2)
            sol = solve(prob, IDA())
            @test SciMLBase.successful_retcode(sol)
            @test sol[x, 1] ≈ 1.0
            @test sol[y, 1] ≈ cbrt(4)
            @test sol.ps[p] ≈ 1.0
            @test sol.ps[q] ≈ sqrt(2)
        end
        @testset "CheckInit" begin
            prob = DAEProblem(sys, [D(x) => cbrt(4), D(y) => -1 / cbrt(4), p => 1.0], (0.0, 0.4))
            @test_throws Any init(prob, IDA(); initializealg = SciMLBase.CheckInit())
            # Create a new problem with correct initial values
            # D(x) = p*y = 1*cbrt(4) = cbrt(4)
            # D(y) = -x²/y²*D(x) = -1/cbrt(4)²*cbrt(4) = -1/cbrt(4)
            prob_correct = DAEProblem(sys,
                [D(x) => cbrt(4), D(y) => -1 / cbrt(4), p => 1.0, x => 1.0, y => cbrt(4), q => sqrt(2)],
                (0.0, 0.4))
            # Need to convert to IIP/OOP after creation to get proper numeric arrays
            if iip
                prob_correct_typed = DAEProblem{true}(prob_correct.f, prob_correct.du0, prob_correct.u0,
                                                       prob_correct.tspan, prob_correct.p)
            else
                prob_correct_typed = DAEProblem{false}(prob_correct.f, prob_correct.du0, prob_correct.u0,
                                                        prob_correct.tspan, prob_correct.p)
            end
            @test_nowarn init(prob_correct_typed, IDA(); initializealg = SciMLBase.CheckInit())

        end
    end
end
