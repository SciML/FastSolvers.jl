using Documenter, MethodOfLines

cp("./docs/Manifest.toml", "./docs/src/assets/Manifest.toml", force = true)
cp("./docs/Project.toml", "./docs/src/assets/Project.toml", force = true)

# Make sure that plots don't throw a bunch of warnings / errors!
ENV["GKSwstype"] = "100"

include("pages.jl")

makedocs(sitename = "FastSolvers.jl",
    authors = "Rahul Manavalan, Chris Rackauckas",
    clean = true, doctest = false, linkcheck = true,
    modules = [FastSolvers],
    warnonly = [:docs_block, :missing_docs, :cross_references],
    format = Documenter.HTML(assets = ["assets/favicon.ico"],
        canonical = "https://github.com/SciML/FastSolvers.jl"),
    pages = pages)

deploydocs(repo = "https://github.com/SciML/FastSolvers.jl"; push_preview = true)
