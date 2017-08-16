# This is an auto-generated file; do not edit

# Pre-hooks
# Macro to load a library
macro checked_lib(libname, path)
    ((VERSION >= v"0.4.0-dev+3844" ? Base.Libdl.dlopen_e : Base.dlopen_e)(path) == C_NULL) && error("Unable to load \n\n$libname ($path)\n\nPlease re-run Pkg.build(package), and restart Julia.")
    quote const $(esc(libname)) = $path end
end

using BinDeps2

const platform = string(BinDeps2.platform_suffix())
const ext = is_windows() ? "dll" : is_apple() ? "dylib" : "so"
# Load dependencies
const libsundials_kinsol     = "$(@__DIR__)/$platform/lib/libsundials_kinsol.$ext"
const libsundials_idas       = "$(@__DIR__)/$platform/lib/libsundials_idas.$ext"
const libsundials_nvecserial = "$(@__DIR__)/$platform/lib/libsundials_nvecserial.$ext"
const libsundials_cvodes     = "$(@__DIR__)/$platform/lib/libsundials_cvodes.$ext"
# @checked_lib libsundials_kinsol "$(@__DIR__)/$platform/lib/libsundials_kinsol.$ext"
# @checked_lib libsundials_idas "$(@__DIR__)/$platform/lib/libsundials_idas.$ext"
# @checked_lib libsundials_nvecserial "$(@__DIR__)/$platform/lib/libsundials_nvecserial.$ext"
# @checked_lib libsundials_cvodes "$(@__DIR__)/$platform/lib/libsundials_cvodes.$ext"

# Load-hooks

