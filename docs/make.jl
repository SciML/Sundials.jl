using Documenter, Sundials

DocMeta.setdocmeta!(
    Sundials, :DocTestSetup, :(using Sundials); recursive = true
)

makedocs(
    sitename = "Sundials.jl",
    authors = "Chris Rackauckas",
    clean = true,
    doctest = false,
    format = Documenter.HTML(
        canonical = "https://docs.sciml.ai/Sundials/stable/"
    ),
    pages = [
        "Home" => "index.md",
    ]
)

deploydocs(
    repo = "github.com/SciML/Sundials.jl";
    push_preview = true
)
