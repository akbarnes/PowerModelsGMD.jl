### Basic Max Loading Tests

@testset "test ac ml" begin
    @testset "3-bus case" begin
        result = run_ml("$(Pkg.dir("PowerModels"))/test/data/case3.json", ACPPowerModel, ipopt_solver)

        #println(result)
        @test result["status"] == :LocalOptimal
        @test isapprox(result["objective"], 4.44; atol = 1e-2)
    end
    @testset "24-bus rts case" begin
        result = run_ml("$(Pkg.dir("PowerModels"))/test/data/case24.json", ACPPowerModel, ipopt_solver)

        #println(result)
        @test result["status"] == :LocalOptimal
        @test isapprox(result["objective"], 34.29; atol = 1e-2)
    end
end


@testset "test dc ml" begin
    @testset "3-bus case" begin
        result = run_ml("$(Pkg.dir("PowerModels"))/test/data/case3.json", DCPPowerModel, ipopt_solver)

        #println(result)
        @test result["status"] == :LocalOptimal
        @test isapprox(result["objective"], 3.15; atol = 1e-2)
    end
    @testset "24-bus rts case" begin
        result = run_ml("$(Pkg.dir("PowerModels"))/test/data/case24.json", DCPPowerModel, ipopt_solver)

        #println(result)
        @test result["status"] == :LocalOptimal
        @test isapprox(result["objective"], 28.45; atol = 1e-2)
    end
end


@testset "test soc ml" begin
    @testset "3-bus case" begin
        result = run_ml("$(Pkg.dir("PowerModels"))/test/data/case3.json", SOCWRPowerModel, ipopt_solver)

        @test result["status"] == :LocalOptimal
        @test isapprox(result["objective"], 4.44; atol = 1e-2)
    end
    @testset "24-bus rts case" begin
        result = run_ml("$(Pkg.dir("PowerModels"))/test/data/case24.json", SOCWRPowerModel, ipopt_solver)

        @test result["status"] == :LocalOptimal
        @test isapprox(result["objective"], 34.29; atol = 1e-2)
    end
end


@testset "test qc ml" begin
    @testset "3-bus case" begin
        result = run_ml("$(Pkg.dir("PowerModels"))/test/data/case3.json", QCWRPowerModel, ipopt_solver)

        @test result["status"] == :LocalOptimal
        @test isapprox(result["objective"], 4.44; atol = 1e-2)
    end
    @testset "24-bus rts case" begin
        result = run_ml("$(Pkg.dir("PowerModels"))/test/data/case24.json", QCWRPowerModel, ipopt_solver)

        @test result["status"] == :LocalOptimal
        @test isapprox(result["objective"], 34.29; atol = 1e-2)
    end
end


@testset "test sdp ml" begin
    @testset "3-bus case" begin
        result = run_ml("$(Pkg.dir("PowerModels"))/test/data/case3.json", SDPWRMPowerModel, scs_solver)

        @test result["status"] == :Optimal
        @test isapprox(result["objective"], 4.4; atol = 1e-1)
    end
    # TODO replace this with smaller case, way too slow for unit testing
    #@testset "24-bus rts case" begin
    #    result = run_ml("$(Pkg.dir("PowerModels"))/test/data/case24.json", SDPWRMPowerModel, scs_solver)

    #    @test result["status"] == :Optimal
    #    @test isapprox(result["objective"], 34.29; atol = 1e-2)
    #end
end

