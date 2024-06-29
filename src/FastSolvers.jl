module FastSolvers
using SparseArrays
using LinearSolve
using LinearAlgebra

import QuasiMonteCarlo.sample
import QuasiMonteCarlo.SamplingAlgorithm
import ModelingToolkit.PDESystem
import ModelingToolkit.Equation

include("utils.jl")

include("problems.jl")
export BVP, IVP
export ∇, Δ, Δ²

include("kernels.jl")
export SquaredExponentialKernel, Matern52Kernel

include("wavelets.jl")
include("rfnn.jl")
end
