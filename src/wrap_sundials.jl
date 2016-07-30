# This file is not an active part of the package. This is the code
# that uses the Clang.jl package to wrap Sundials using the headers.

# Find all headers
incpath = joinpath(dirname(@__FILE__), "..", "deps", "usr", "include")
if !isdir(incpath)
  error("Run Pkg.build(\"Sundials\") before trying to wrap C headers.")
end

wdir = joinpath(dirname(@__FILE__), "..", "new")
mkpath(wdir)
cd(wdir)

sundials_names = ["nvector", "sundials", "cvode", "cvodes", "ida", "idas", "kinsol"]
if isdir(joinpath(incpath, "arkode"))
  push!(sundials_names, "arkode")
end
headers = ASCIIString[]
for name in sundials_names
    path = joinpath(incpath, name)
    append!(headers, map(x->joinpath(path, x),split(readall(pipeline(`ls $path`, `sort`)))))
end
# @show headers


## Do wrapping using Clang.jl
ENV["JULIAHOME"] = "/Users/jgoldfar/Public/julia/usr/"

using Clang.wrap_c

if (!haskey(ENV, "JULIAHOME"))
  error("Please set JULIAHOME variable to the root of your julia install")
end

clang_includes = map(x->joinpath(ENV["JULIAHOME"], x), [
  "deps/llvm-3.2/build/Release/lib/clang/3.2/include",
  "deps/llvm-3.2/include",
  "deps/llvm-3.2/include",
  "deps/llvm-3.2/build/include/",
  "deps/llvm-3.2/include/"
  ])

# check_use_header(path) = true
header_file(str::AbstractString) = string(basename(dirname(str)), ".jl")
header_library_file(str::AbstractString) = "shlib"
clang_extraargs = [
"-D", "__STDC_LIMIT_MACROS", "-D", "__STDC_CONSTANT_MACROS", 
"-v"]
context = wrap_c.init(
common_file="sundials_h.jl", 
clang_args = clang_extraargs, clang_diagnostics = true, clang_includes = [clang_includes; incpath], header_outputfile = header_file)
context.headers = headers
run(context)
mv(joinpath(wdir, "sundials.jl"), joinpath(wdir, "libsundials.jl"))  # avoid a name conflict for case-insensitive file systems
