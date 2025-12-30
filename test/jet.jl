using JET

@testset "JET static analysis" begin
    @testset "SquaredExponentialKernel type stability" begin
        k = SquaredExponentialKernel(1.0)

        # Scalar inputs
        @test_opt target_modules = (FastSolvers,) k(1.0, 2.0)
        @test_opt target_modules = (FastSolvers,) k(1.0, 2.0, ∇())
        @test_opt target_modules = (FastSolvers,) k(1.0, 2.0, Δ())

        # Vector inputs
        X = [1.0, 2.0, 3.0]
        Y = [4.0, 5.0, 6.0]
        @test_opt target_modules = (FastSolvers,) k(X, Y)
        @test_opt target_modules = (FastSolvers,) k(X, Y, ∇())
        @test_opt target_modules = (FastSolvers,) k(X, Y, Δ())
    end

    @testset "No errors in FastSolvers module" begin
        # Use @test_call which is more focused on actual errors vs false positives
        k = SquaredExponentialKernel(1.0)
        X = [1.0, 2.0]
        Y = [3.0, 4.0]

        @test_call target_modules = (FastSolvers,) k(X, Y)
        @test_call target_modules = (FastSolvers,) k(X, Y, ∇())
        @test_call target_modules = (FastSolvers,) k(X, Y, Δ())
    end
end
