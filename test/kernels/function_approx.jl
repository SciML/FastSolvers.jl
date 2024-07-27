# Test one instance of the approximator
begin
    N = 1000
    N0 = 100
    x = LinRange(-2.0, 2.0, N)
    y = sin.(14 * x) .* cos.(15 * x)
    kernel = SquaredExponentialKernel(1e-1)
    xcolloc = QuasiMonteCarlo.sample(N0, x[1], x[end], LatinHypercubeSample())
    K = spzeros(N, N0)
    for i in 1:N
        for j in 1:N0
            K[i, j] = kernel(x[i], xcolloc[j])
        end
    end
    f = (a, p) -> K * a - y
    a0 = zeros(N0)
    prob = NonlinearLeastSquaresProblem(f, a0)
    sol = solve(prob)
    a = sol.u

    @test maximum(K * a .- y) < 1e-2
end


N = 1000
N0 = 100
x = LinRange(-2.0, 2.0, N)
y = sin.(14 * x) .* cos.(15 * x)
kernel = SquaredExponentialKernel(1e-1)
Ops = [∇(), Δ()]
kernel_eval = z -> kernel(z, y)
kernel_deriv = z -> kernel(z, y, Ops[1])