abstract type AbstractKernel end

struct SquaredExponentialKernel{T} <: AbstractKernel
    σ::T
end
function (k::SquaredExponentialKernel)(X, Y)
    exp(-(norm(X - Y) / k.σ)^2)
end
function (k::SquaredExponentialKernel)(X, Y, ::∂₁) end

struct Matern52Kernel{T} <: AbstractKernel
    σ::T
    ρ::T
end
