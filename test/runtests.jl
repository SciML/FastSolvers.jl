using FastSolvers
using Test
using ForwardDiff

@testset "RKHS kernels" begin
    include("kernels/interface.jl")
    include("kernels/derivatives.jl")
    include("kernels/function_approx.jl")
end

@testset "Wavelets" begin
    include("wavelets/interface.jl")
    include("wavelets/derivatives.jl")
    include("wavelets/function_approx.jl")
end

@testset "Random feature neural networks" begin
    include("rfnn/interface.jl")
    include("rfnn/derivatives.jl")
    include("rfnn/function_approx.jl")
end
