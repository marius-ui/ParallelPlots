using Documenter
using ParallelPlots

makedocs(
    sitename = "ParallelPlots",
    format = Documenter.HTML(),
    pages = [
        "Home" => "index.md",
        "Getting Started" => "getting_started.md",
        "Usage" => "usage.md",
        "Examples" => "examples.md",
        "Development" => "development.md"
    ]
)

deploydocs(
    repo = "github.com/moritz155/ParallelPlots.git",
    devbranch = "main",
    devurl = "dev",
    versions = ["stable" => "v^", "v#.#", "dev" => "dev"]
)
