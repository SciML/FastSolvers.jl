begin
    σ = 1e-1
    kernel = SquaredExponentialKernel(σ)

    x = 1.0
    y = 1.0
    Ops = [∇(), Δ()]
    f0 = kernel(x,y)
    f1 = kernel(x,y,Ops[1])
    f2 = kernel(x,y,Ops[2])
    kernel_eval = z -> kernel(z, y)
    kernel_deriv = z -> kernel(z, y, Ops[1])
    @test size(f1) == ()
    @test size(f2) == () 
    @test f0 == kernel_eval(x)
    @test f1 == ForwardDiff.derivative(kernel_eval, x)
    @test f2 == ForwardDiff.derivative(kernel_deriv, x)

    x = rand(3)
    y = rand(3)
    kernel_eval = z -> kernel(z, y)
    kernel_deriv = z -> kernel(z, y, Ops[1])
    f0 = kernel(x,y)
    f1 = kernel(x,y,Ops[1])
    f2 = kernel(x,y,Ops[2])
    @test size(f1) == (3,)
    @test size(f2) == (3,3)
    @test ForwardDiff.gradient(kernel_eval, x) ≈ f1
    @test ForwardDiff.jacobian(kernel_deriv, x) ≈  f2
end