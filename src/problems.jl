abstract type AbstractProblem end
struct BVP <: AbstractProblem end
struct IVP <: AbstractProblem end
struct EVP <: AbstractProblem end
struct Auto <: AbstractProblem end
export BVP, IVP, EVP, Auto

abstract type AbstractClass end
struct Linear <: AbstractClass end
struct Nonlinear <: AbstractClass end
export Linear, Nonlinear
