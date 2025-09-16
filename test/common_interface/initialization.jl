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
            @test integ.initializealg isa Sundials.SundialsDefaultInit
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
            @test integ.initializealg isa Sundials.SundialsDefaultInit
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
            @test_throws SciMLBase.CheckInitFailureError init(prob, IDA(); initializealg = SciMLBase.CheckInit())
            prob[x] = 1.0
            prob[y] = cbrt(4)
            prob.ps[p] = 1
            prob.ps[q] = sqrt(2)
            @test_nowarn init(prob, IDA(); initializealg = SciMLBase.CheckInit())

        end
    end
end
