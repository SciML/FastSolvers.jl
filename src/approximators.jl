# Abstract approximators
abstract type AbstractApproximator end

include("kernels.jl")
export SquaredExponentialKernel, Matern52Kernel, Matern72Kernel

include("wavelets.jl")
export DaubechiesWavelets

include("rfnn.jl")
export WeightedRandomFeatures, SimpleRandomFeatures