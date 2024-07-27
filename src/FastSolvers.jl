module FastSolvers
using SparseArrays
using NonlinearSolve
using LinearAlgebra
using QuasiMonteCarlo

import QuasiMonteCarlo.SamplingAlgorithm
import QuasiMonteCarlo.sample

import ModelingToolkit.PDESystem
import ModelingToolkit.Equation

include("utils.jl")

include("problems.jl")
export BVPSolver, IVPSolver, KernelSolver
export ∇, Δ, Δ²

include("kernels.jl")
export SquaredExponentialKernel, Matern52Kernel, Matern72Kernel

include("wavelets.jl")
export DaubechiesWavelets

include("rfnn.jl")
export WeightedRandomFeatures, SimpleRandomFeatures

end
