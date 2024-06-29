abstract type AbstractDifferentialOperator end

# First order derivatives
struct ∂₁ <: AbstractDifferentialOperator end
struct ∂₂ <: AbstractDifferentialOperator end
struct ∂₃ <: AbstractDifferentialOperator end

# Second order derivatives
struct ∂₁₁ <: AbstractDifferentialOperator end
struct ∂₁₂ <: AbstractDifferentialOperator end
struct ∂₁₃ <: AbstractDifferentialOperator end
struct ∂₂₂ <: AbstractDifferentialOperator end
struct ∂₂₃ <: AbstractDifferentialOperator end
struct ∂₃₃ <: AbstractDifferentialOperator end

# Some fourth order derivatives
struct ∂₁₁₁₁ <: AbstractDifferentialOperator end
struct ∂₂₂₂₂ <: AbstractDifferentialOperator end
struct ∂₃₃₃₃ <: AbstractDifferentialOperator end
struct ∂₄₄₄₄ <: AbstractDifferentialOperator end
struct ∂₁₁₂₂ <: AbstractDifferentialOperator end
struct ∂₂₂₃₃ <: AbstractDifferentialOperator end
struct ∂₁₁₃₃ <: AbstractDifferentialOperator end

abstract type AbstractPDEProblem end

struct BVPProblem <: AbstractPDEProblem
end

struct IVPProblem <: AbstractPDEProblem
end
