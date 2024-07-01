var documenterSearchIndex = {"docs":
[{"location":"tutorials/BVP/#index","page":"Boundary value problems","title":"Boundary value problems","text":"","category":"section"},{"location":"tutorials/BVP/","page":"Boundary value problems","title":"Boundary value problems","text":"WIP","category":"page"},{"location":"benchmark/non_linear_pdes/#index","page":"Non-linear PDEs","title":"Non-linear PDEs","text":"","category":"section"},{"location":"benchmark/non_linear_pdes/","page":"Non-linear PDEs","title":"Non-linear PDEs","text":"WIP","category":"page"},{"location":"discretizations/rfnn/#type","page":"Random Feature Discretizations","title":"Random feature neural network discretizations","text":"","category":"section"},{"location":"discretizations/rfnn/","page":"Random Feature Discretizations","title":"Random Feature Discretizations","text":"WIP","category":"page"},{"location":"benchmark/linear_pdes/#index","page":"Linear PDEs","title":"Linear PDEs","text":"","category":"section"},{"location":"benchmark/linear_pdes/","page":"Linear PDEs","title":"Linear PDEs","text":"WIP","category":"page"},{"location":"discretizations/rbf/#type","page":"RKHS discretizations","title":"Reproducing kernel Hilbert space discretizations","text":"","category":"section"},{"location":"discretizations/rbf/","page":"RKHS discretizations","title":"RKHS discretizations","text":"WIP","category":"page"},{"location":"tutorials/IVP/#index","page":"Initial value problems","title":"Initial value problems","text":"","category":"section"},{"location":"tutorials/IVP/","page":"Initial value problems","title":"Initial value problems","text":"WIP","category":"page"},{"location":"discretizations/wavelets/#type","page":"Wavelet Discretizations","title":"Wavelet discretizations","text":"","category":"section"},{"location":"discretizations/wavelets/","page":"Wavelet Discretizations","title":"Wavelet Discretizations","text":"WIP","category":"page"},{"location":"#index","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"","category":"section"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"FastSolvers.jl is a Julia package for discretizing symbolically defined PDEs. It complements MethodOfLines.jl by providing additional collocation discretization schemes based on: ","category":"page"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"RKHS kernels\nWavelets\nRandom feature neural networks\n...","category":"page"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"and other approximators that do not fall under the realm of finite-difference, finite-elements and spectral methods. It is similar in spirit to NeuralPDE.jl, only there exist tools to rigorously analyze the convergence of the aforementioned approximators when solving a PDE.","category":"page"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"","category":"page"},{"location":"#About-fast-solvers","page":"FastSolvers.jl","title":"About fast solvers","text":"","category":"section"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"Historically, fast solvers were first conceptualized  for solving boundary value problems. The genesis of the term is comically simple: ","category":"page"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"Here's a method that has a less than quadratic complexity for solving my BVP. It is fast!","category":"page"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"For better or worse, all numerical methods that have complexity mathcalO(N^s) when solving a boundary value problem, where s2 are characterized as fast solvers. From this definition, the following methods may be regarded as fast:","category":"page"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"Multigrid solvers\nFast multipole solvers\nRandomized sketching based solvers\nSparsely factored solvers\nLow rank factored solvers\nMachine learning solvers\n...","category":"page"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"For a detailled collection for fast solver methods see the nice compendium of papers referenced by Owhadi. There are different packages in the Julia ecosystem that service these methods. We will try to wrap all of them here in the future.","category":"page"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"","category":"page"},{"location":"#Why-do-we-need-FastSolvers.jl-?","page":"FastSolvers.jl","title":"Why do we need FastSolvers.jl ?","text":"","category":"section"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"Outer-loop problems including:","category":"page"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"Optimization\nUncertainty propagation\nControl","category":"page"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"with PDE in loop are notoriously expensive (See Peherstorfer). When solving such problems with large N, quadratic complexity is not good enough. This necessitates the development of fast-solver methods. Indeed, there has been a lot of activity in this field with contributions from different research disciplines. (The machine learning community has recently jumped in.) ","category":"page"},{"location":"","page":"FastSolvers.jl","title":"FastSolvers.jl","text":"FastSolvers.jl is being developed based on this consideration. In addition to providing users with a host of discretization methods, we also house a benchmark suite for linear and non-linear PDEs. SciML's practice of benchmarking everything also applies here and should facilitate further development of these methods.","category":"page"}]
}
