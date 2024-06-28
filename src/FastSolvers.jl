module FastSolvers
using SparseArrays
using LinearAlgebra
using LinearSolve

import QuasiMonteCarlo.sample
import QuasiMonteCarlo.SamplingAlgorithm
import ModelingToolkit.PDESystem
import ModelingToolkit.Equation

include("kernels.jl")
include("wavelets.jl")
include("rfnn.jl")
end