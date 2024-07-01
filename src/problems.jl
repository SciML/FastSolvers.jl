abstract type AbstractDifferentialOperator end

# Abstract differential operators. See docs for detailed description.
struct ∇ <: AbstractDifferentialOperator end
struct Δ <: AbstractDifferentialOperator end
struct Δ² <: AbstractDifferentialOperator end

abstract type AbstractFastSolver end

struct BVPSolver <: AbstractFastSolver
end

struct IVPSolver <: AbstractFastSolver
end
