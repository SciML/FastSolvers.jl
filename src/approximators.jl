# Abstract approximators
abstract type AbstractApproximator end

include("approximators/kernels.jl")
export SquaredExponentialKernel, Matern52Kernel, Matern72Kernel

include("approximators/wavelets.jl")
export DaubechiesWavelets

include("approximators/rfnn.jl")
export WeightedRandomFeatures, SimpleRandomFeatures
