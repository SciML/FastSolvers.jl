using JET
using FastSolvers
using Test

@testset "JET static analysis" begin
    @testset "Package-level analysis" begin
        rep = JET.report_package(FastSolvers; toplevel_logger = nothing)
        @test length(JET.get_reports(rep)) == 0
    end

    @testset "SquaredExponentialKernel type stability" begin
        kernel = SquaredExponentialKernel(0.1)
        x_scalar = 1.0
        y_scalar = 2.0
        x_vec = [1.0, 2.0, 3.0]
        y_vec = [4.0, 5.0, 6.0]

        # Test kernel evaluation
        @test_opt target_modules = (FastSolvers,) kernel(x_scalar, y_scalar)
        @test_opt target_modules = (FastSolvers,) kernel(x_vec, y_vec)

        # Test gradient operator
        @test_opt target_modules = (FastSolvers,) kernel(x_scalar, y_scalar, ∇())
        @test_opt target_modules = (FastSolvers,) kernel(x_vec, y_vec, ∇())

        # Test Laplacian operator
        @test_opt target_modules = (FastSolvers,) kernel(x_scalar, y_scalar, Δ())
        @test_opt target_modules = (FastSolvers,) kernel(x_vec, y_vec, Δ())
    end

    @testset "Matern52Kernel construction" begin
        @test_opt target_modules = (FastSolvers,) Matern52Kernel(0.1, 0.2)
    end
end
