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
export ∇, Δ, Δ²

include("approximators.jl")
include("problems.jl")

include("solvers.jl")
export FastSolver
export BVPSolver, IVPSolver, KernelSolver
export discretize

end
