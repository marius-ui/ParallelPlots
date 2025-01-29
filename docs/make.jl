using ParallelPlots
using Documenter

DocMeta.setdocmeta!(ParallelPlots, :DocTestSetup, :(using ParallelPlots); recursive=true)

makedocs(;
    modules=[ParallelPlots],
    authors="Moritz Schelten <moritz155@win.tu-berlin.de>",
    sitename="ParallelPlots.jl",
    format=Documenter.HTML(;
        canonical="https://github.com/marius-ui/ParallelPlots/blob/New/src/ParallelPlots.jl",
        edit_link="New",
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
    repo="marius-ui/ParallelPlots/blob/New/src/ParallelPlots.jl",
    devbranch="New",
)
