using Revise
using FastSolvers
using ModelingToolkit
using DomainSets

@parameters x
@variables u(..)

Dxx = Differential(x)^2
f = u -> u^2 - 1
eq = Dxx(u(x)) ~ f(u(x))
domains = [x ∈ (-1.0, 1.0)]
bcs = [u(-1)~0.0, u(1)~0.0]
@named pde_system = PDESystem(eq, bcs, domains,[x],u)

discretizer = FastSolver()
discretization = discretize(pde_system, discretizer)

discretizer = BVPSolver()
discretization = discretize(pde_system, discretizer)