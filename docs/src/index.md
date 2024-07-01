# [FastSolvers.jl] (@id index)

[FastSolvers.jl](https://github.com/SciML/FastSolvers.jl) is a Julia package for discretizing symbolically defined PDEs. It complements [MethodOfLines.jl](https://github.com/SciML/FastSolvers.jl) by providing additional collocation discretization schemes based on: 

 - RKHS kernels
 - Wavelets
 - Random feature neural networks
 - ...

and other approximators that do not fall under the realm of finite-difference, finite-elements and spectral methods. It is similar in spirit to [NeuralPDE.jl](https://github.com/SciML/NeuralPDE.jl), only there exist tools to rigorously analyze the convergence of the aforementioned approximators when solving a PDE.


---

## About fast solvers

Historically, fast solvers were first conceptualized  for solving boundary value problems. The genesis of the term is comically simple: 

    Here's a method that has a less than quadratic complexity for solving my BVP. It is fast!

For better or worse, all numerical methods that have complexity $\mathcal{O}(N^{s})$ when solving a boundary value problem, where $s<2$ are characterized as fast solvers. From this definition, the following methods may be regarded as fast:

 - Multigrid solvers
 - Fast multipole solvers
 - Randomized sketching based solvers
 - Sparsely factored solvers
 - Low rank factored solvers
 - Machine learning solvers
 - ...

 For a detailled collection for fast solver methods see the nice compendium of papers referenced by [Owhadi](https://arxiv.org/abs/1503.03467). There are different packages in the Julia ecosystem that service these methods. We will try to wrap all of them here in the future.

 --- 

 ## Why do we need FastSolvers.jl ?

Outer-loop problems including:

 - Optimization
 - Uncertainty propagation
 - Control

with PDE in loop are notoriously expensive (See [Peherstorfer](https://arxiv.org/abs/1806.10761)). When solving such problems with large $N$, quadratic complexity is not good enough. This necessitates the development of fast-solver methods. Indeed, there has been a lot of activity in this field with contributions from different research disciplines. (The machine learning community has recently jumped in.) 

[FastSolvers.jl](https://github.com/SciML/FastSolvers.jl) is being developed based on this consideration. In addition to providing users with a host of discretization methods, we also house a benchmark suite for linear and non-linear PDEs. *SciML*'s practice of *benchmarking everything* also applies here and should facilitate further development of these methods.
