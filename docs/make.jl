using Documenter
using ParallelPlots

makedocs(
    sitename = "ParallelPlots",
    format=Documenter.HTML(;
        canonical="https://muehlefeldt.github.io/AJD.jl",
        edit_link="master",
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
    repo = "github.com/moritz155/ParallelPlots.git",
    devbranch = "main",
    devurl = "dev",
    versions = ["stable" => "v^", "v#.#", "dev" => "dev"]
)
