using Documenter, ParallelPlots

makedocs(
    sitename = "ParallelPlots",
    format = Documenter.HTML(),
    pages = [
        "Home" => "index.md",
        "API Reference" => "api.md",
    ],
    modules = [ParallelPlots],
)
