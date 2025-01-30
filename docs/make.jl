using Documenter
using ParallelPlots

DocMeta.setdocmeta!(ParallelPlots, :DocTestSetup, :(using ParallelPlots); recursive=true)

makedocs(
    sitename = "ParallelPlots",
    format=Documenter.HTML(
        prettyurls = get(ENV, "CI", "false") == "true"
    ),
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
    repo = "github.com/marius-ui/ParallelPlots.git",  # Your repository URL
    devbranch = "main",  # The branch for "dev" documentation
    push_preview = true,  # Optional: Push preview builds
)
