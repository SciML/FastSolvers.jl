abstract type AbstractDifferentialOperator end

# Abstract differential operators. See docs for detailed description.
struct ∇ <: AbstractDifferentialOperator end
struct Δ <: AbstractDifferentialOperator end
struct Δ² <: AbstractDifferentialOperator end

function sample_collocation_points(
        domain::T, num_points::Tuple{Int, Int}, sampler::SamplingAlgorithm) where {T}
    d = length(domain)
    ni, nb = num_points

    # Sample interior points
    lb = []
    ub = []
    for i in 1:d
        push!(lb, domain[i].left)
        push!(ub, domain[i].right)
    end
    interior_points = sample(ni, lb, ub, sampler)

    # Sample boundary points
    nbcs = length(bcs)
    nb_local = floor(Int, nb / nbcs)
    boundary_points = []
    for j in 1:nbcs
        mask = []
        bcs_local = bcs[j]
        for i in 1:d
            if typeof(bcs_local.lhs.arguments[i]) != SymbolicUtils.BasicSymbolic
                push!(mask, i)
            end
        end
        lb_local = lb[mask]
        ub_local = ub[mask]
        push!(
            boundary_points, QuasiMonteCarlo.sample(nb_local, lb_local, ub_local, sampler))
    end
    return interior_points, reduce(vcat, boundary_points)
end

function LinearAlgebra.UpperTriangular(a::Float64)
    return a
end
