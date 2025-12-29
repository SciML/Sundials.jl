using Sundials
using JET
using Test

@testset "JET static analysis" begin
    # Test algorithm constructors for type stability
    @testset "Algorithm constructors" begin
        rep = JET.report_call(Sundials.CVODE_BDF, ())
        @test length(JET.get_reports(rep)) == 0

        rep = JET.report_call(Sundials.CVODE_Adams, ())
        @test length(JET.get_reports(rep)) == 0

        rep = JET.report_call(Sundials.IDA, ())
        @test length(JET.get_reports(rep)) == 0

        rep = JET.report_call(Sundials.ARKODE, ())
        @test length(JET.get_reports(rep)) == 0

        rep = JET.report_call(Sundials.KINSOL, ())
        @test length(JET.get_reports(rep)) == 0
    end
end
