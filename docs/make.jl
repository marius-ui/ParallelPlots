using Documenter
using ParallelPlots

DocMeta.setdocmeta!(ParallelPlots, :DocTestSetup, :(using ParallelPlots); recursive=true)

makedocs(
    sitename = "ParallelPlots",
    format=Documenter.HTML(),
    repo = "https://github.com/marius-ui/ParallelPlots",
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
    target = "build",
    devbranch = "dev",
    push_preview = true,
)
