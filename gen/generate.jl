using Clang.Generators
using Sundials_jll
using MLStyle
using Pkg

include_dir = joinpath(Sundials_jll.artifact_dir, "include") |> normpath

artifact_toml = joinpath(dirname(pathof(Sundials_jll.SuiteSparse_jll)), "..",
    "StdlibArtifacts.toml")
suitesparse_dir = Pkg.Artifacts.ensure_artifact_installed("SuiteSparse", artifact_toml)
suitesparse_include_sir = joinpath(suitesparse_dir, "include")

# wrapper generator options
options = load_options(joinpath(@__DIR__, "generate.toml"))

# add compiler flags, e.g. "-DXXXXXXXXX"
args = get_default_args()
push!(args, "-I$include_dir", "-isystem$suitesparse_include_sir")

library_names = Dict(raw"sundials[\\/].+" => "libsundials_sundials",
    raw"sunnonlinsol[\\/].+" => "libsundials_sunnonlinsol",
    raw"sunmatrix[\\/].+" => "libsundials_sunmatrix",
    raw"kinsol[\\/].+" => "libsundials_kinsol",
    raw"ida[\\/].+" => "libsundials_idas",
    raw"cvodes[\\/].+" => "libsundials_cvodes",
    raw"sunlinsol[\\/].+$(?<!lapackband\.h)(?<!lapackdense\.h)" => "libsundials_sunlinsol",
    raw"cvode[\\/].+" => "libsundials_cvodes",
    raw"idas[\\/].+" => "libsundials_idas",
    raw"arkode[\\/].+" => "libsundials_arkode",
    raw"nvector[\\/].+" => "libsundials_nvecserial",
    raw"lapackband\.h" => "libsundials_sunlinsollapackband",
    raw"lapackdense\.h" => "libsundials_sunlinsollapackdense")
headers = String[]
for lib in readdir(include_dir)
    header_dir = joinpath(include_dir, lib)
    append!(headers,
        joinpath(header_dir, header)
        for header in readdir(header_dir) if endswith(header, ".h"))
end
options["general"]["library_names"] = library_names

ctx = create_context(headers, args, options)

# run generator
build!(ctx)
