using Documenter
using ParallelPlots

DocMeta.setdocmeta!(ParallelPlots, :DocTestSetup, :(using ParallelPlots); recursive=true)

makedocs(
    sitename = "ParallelPlots",
    format=Documenter.HTML(;
        canonical="https://marius-ui.github.io/ParallelPlots.jl",
        edit_link="",
        assets=String[],
    ),
    pages = [
        "Home" => "index.md",
        "Getting Started" => "getting_started.md",
        "Usage" => "usage.md",
        "Examples" => "examples.md",
        "Development" => "development.md"
    ]
)

deploydocs(
    repo = "github.com/marius-ui/ParallelPlots.git",
    branch = "gh-pages",
    devbranch = "dev",
)
