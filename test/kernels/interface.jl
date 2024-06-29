begin
    σ = 1e-1*one(Float64)
    kernel = SquaredExponentialKernel(σ)
    @test typeof(kernel.σ) == Float64
    x = float(0.0); y = float(0.0);
    @test typeof(kernel(x,y)) == Float64
    @test kernel(x,y) == float(1.0)

    x = zeros(3); y = zeros(3)
    @test typeof(kernel(x,y)) == Float64
    @test kernel(x,y) == float(1.0)
end