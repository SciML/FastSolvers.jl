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


begin
    N = 1000
    N0 = 100
    x = LinRange(-2.0, 2.0, N)
    y = sin.(15 * x) .* cos.(15 * x)
    fy = 0.5*sin.(30*x)
    ffy = 15.0*cos.(30*x)

    kernel = SquaredExponentialKernel(1e-1)
    xcolloc = QuasiMonteCarlo.sample(N0, x[1], x[end], LatinHypercubeSample())
    Ops = [∇(), Δ()]
    Dkernel = (x,y) -> kernel(x,y,Ops[1])
    D2kernel = (x,y) -> kernel(x,y,Ops[1])

    K = spzeros(N, N0)
    for i=1:N
        for j=1:N0
            K[i,j] = Dkernel(x[i], xcolloc[j])
        end
    end
    f = (a, p) -> K * a - fy
    a0 = zeros(N0)
    prob = NonlinearLeastSquaresProblem(f, a0)
    sol = solve(prob)
    a = sol.u
    @test maximum(K*a .- fy) < 1e-2


    N0 = 150
    xcolloc = QuasiMonteCarlo.sample(N0, x[1], x[end], LatinHypercubeSample())
    K = spzeros(N, N0)
    for i=1:N
        for j=1:N0
            K[i,j] = D2kernel(x[i], xcolloc[j])
        end
    end
    f = (a, p) -> K * a - ffy
    a0 = zeros(N0)
    prob = NonlinearLeastSquaresProblem(f, a0)
    sol = solve(prob)
    a = sol.u

    @test maximum(K*a .- ffy) < 1e-2
end