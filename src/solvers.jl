abstract type AbstractFastSolver end

struct FastSolver <: AbstractFastSolver
    

    function FastSolver()
        new()
    end
end


function discretize(sys::PDESystem, solver::FastSolver)

end

struct BVPSolver <: AbstractFastSolver
    approximator::AbstractApproximator

    function BVPSolver()
        new()
    end
end

function discretize(sys::PDESystem, solver::BVPSolver)

end

struct IVPSolver <: AbstractFastSolver

end


function discretize(sys::PDESystem, solver::IVPSolver)

end

struct KernelSolver <: AbstractFastSolver

end


function discretize(sys::PDESystem, solver::KernelSolver)

end