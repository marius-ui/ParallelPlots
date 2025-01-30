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
        "Home" => "index.HTML",
        "Getting Started" => "getting_started.HTML",
        "Usage" => "usage.HTML",
        "Examples" => "examples.HTML",
        "Development" => "development.HTML"
    ]
)

deploydocs(
    repo = "github.com/marius-ui/ParallelPlots.git",  # Your repository URL
    devbranch = "master",  # The branch for "dev" documentation
    push_preview = true,  # Optional: Push preview builds
)
