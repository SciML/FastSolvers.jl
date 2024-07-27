abstract type AbstractKernel end

"""SquaredExponentialKernel

"""
struct SquaredExponentialKernel{T} <: AbstractKernel
    σ::T
end

function (k::SquaredExponentialKernel)(X, Y)
    exp(-(norm(X - Y) / k.σ)^2)
end

function (k::SquaredExponentialKernel)(X, Y, ::∇)
    -(2 / k.σ^2) * exp(-(norm(X - Y) / k.σ)^2) * (X .- Y)
end

function (k::SquaredExponentialKernel)(X, Y, ::Δ)
    Hess = -(2 / k.σ^2) * exp(-(norm(X - Y) / k.σ)^2) *
           (-2 / k.σ^2 * (X - Y) * (X - Y)' + I)
    Hess
end

function (k::SquaredExponentialKernel)(X, Y, ::Δ²)
end

"""Matern52Kernel

"""
struct Matern52Kernel{T} <: AbstractKernel
    σ::T
    ρ::T
end


"""Matern72Kernel

"""
struct Matern72Kernel{T} <: AbstractKernel
    σ::T
    ρ::T
end
