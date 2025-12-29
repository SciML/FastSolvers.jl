module FastSolvers
using LinearAlgebra: norm, I

include("utils.jl")

include("problems.jl")
export BVP, IVP
export ∇, Δ, Δ²

include("kernels.jl")
export SquaredExponentialKernel, Matern52Kernel

include("wavelets.jl")
include("rfnn.jl")
end
