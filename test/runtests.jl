using Sundials
using Test

# Some tests use @cfunction, but at the moment that isn't supported on non-Intel platforms
const SUPPORT_CFUNCTION = Sys.ARCH ∉ (:aarch64, :ppc64le, :powerpc64le) ||
                          startswith(lowercase(String(Sys.ARCH)), "arm")
@testset "Generator" begin include("generator.jl") end

@testset "Preconditioners" begin include("common_interface/precs.jl") end
