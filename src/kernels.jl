abstract type AbstractKernel end

struct SquaredExponentialKernel{T} <: AbstractKernel
    σ::T
    f::Function
    ∇f::Vector{Function}
    ∇²f::Matrix{Function}
    ∇³f::Array{Function, 3}
    ∇⁴f::Array{Function, 4}
end

struct Matern52Kernel{T} <: AbstractKernel
    σ::T
    ρ::T
    f::Function
    ∇f::Vector{Function}
    ∇²f::Matrix{Function}
    ∇³f::Array{Function, 3}
    ∇⁴f::Array{Function, 4}
end