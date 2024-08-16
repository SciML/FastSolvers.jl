abstract type AbstractFastSolver end

struct FastSolver <: AbstractFastSolver
    approximator::AbstractApproximator
    problem::AbstractProblem
    class::AbstractClass

    function FastSolver(
            approx::AbstractApproximator, prob::AbstractProblem, class::AbstractClass)
        new(approx, prob, class)
    end
end

function Base.show(io::IO, s::FastSolver)
    print(io, "FastSolver\n")
    print(io, "Problem : $(typeof(s.class)) $(typeof(s.problem))\n")
    print(io, "Approximator : $(typeof(s.approximator))\n")
end

function discretize(sys::PDESystem, solver::FastSolver)
    prob = solver.problem
    sciml_problem = nothing

    if typeof(prob) == BVP
        solver = BVPSolver(solver.approximator, solver.class)
        sciml_problem = discretize(sys, solver)
    elseif typeof(prob) == IVP
        solver = IVPSolver(solver.approximator, solver.class)
        sciml_problem = discretize(sys, solver)
    elseif typeof(prob) == EVP
        solver = EVPSolver(solver.approximator, solver.class)
        sciml_problem = discretize(sys, solver)
    elseif typeof(prob) == Auto
        solver = KernelSolver(solver.approximator, solver.class)
        sciml_problem = discretize(sys, solver)
    end

    return sciml_problem
end

struct BVPSolver <: AbstractFastSolver
    approximator::AbstractApproximator
    class::AbstractClass

    function BVPSolver(approx::AbstractApproximator, class::AbstractClass)
        new(approx, class)
    end
end

function discretize(sys::PDESystem, solver::BVPSolver)
    class = solver.class

    if typeof(class) == Linear

    elseif typeof(class) == Nonlinear
    end
end

struct IVPSolver <: AbstractFastSolver
    approximator::AbstractApproximator
    class::AbstractClass

    function IVPSolver(approx::AbstractApproximator, class::AbstractClass)
        new(approx, class)
    end
end

function discretize(sys::PDESystem, solver::IVPSolver)
    throw("Not implemented")
end

struct EVPSolver <: AbstractFastSolver
    approximator::AbstractApproximator
    class::AbstractClass

    function EVPSolver(approx::AbstractApproximator, class::AbstractClass)
        new(approx, class)
    end
end

function discretize(sys::PDESystem, solver::EVPSolver)
    throw("Not implemented")
end

struct KernelSolver <: AbstractFastSolver
    approximator::AbstractApproximator
    class::AbstractClass

    function KernelSolver(approx::AbstractApproximator, class::AbstractClass)
        new(approx, class)
    end
end

function discretize(sys::PDESystem, solver::KernelSolver)
    throw("Not implemented")
end
