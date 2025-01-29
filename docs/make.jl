using ParallelPlots
using Documenter

DocMeta.setdocmeta!(ParallelPlots, :DocTestSetup, :(using ParallelPlots); recursive=true)

makedocs(;
    modules=[ParallelPlots],
    authors="Moritz Schelten <moritz155@win.tu-berlin.de>",
    sitename="ParallelPlots.jl",
    format=Documenter.HTML(;
        canonical="https://moritz155.github.io/ParallelPlots.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Getting Started" => "getting_started.md",
        "Usage" => "usage.md",
        "Examples" => "examples.md",
        "Working on ParallelPlots" => "development.md"
    ],
)

deploydocs(;
    repo="github.com/moritz155/ParallelPlots.jl",
    devbranch="main",
)
