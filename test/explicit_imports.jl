using ExplicitImports
using FastSolvers
using Test

@testset "ExplicitImports" begin
    @test check_no_implicit_imports(FastSolvers) === nothing
    @test check_no_stale_explicit_imports(FastSolvers) === nothing
end
