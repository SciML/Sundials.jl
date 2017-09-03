try 
    Pkg.clone("https://github.com/staticfloat/BinaryProvider.jl.git")
end


using BinaryProvider

const platform = platform_triplet(platform_key())

const prefix = "https://github.com/tshort/Sundials.jl.build/releases/download/v0.0.3"
lib_downloads = Dict(
    "aarch64-linux-gnu" => ("$prefix/libsundials.aarch64-linux-gnu.tar.gz", "632581ff784c189482526d18a32b4beff6e3e5de538c30fd2b7b8e9861802f13"),
    "powerpc64le-linux-gnu" => ("$prefix/libsundials.powerpc64le-linux-gnu.tar.gz", "a1fa7442f082e2a67204676418176d43d70fb90107b2da5e355729aca7685a01"),
    "i686-w64-mingw32" => ("$prefix/libsundials.i686-w64-mingw32.tar.gz", "2edcb2e12b2088b1519bf9716c05a916246a256a0a085697a53bc8ee65750076"),
    "x86_64-linux-gnu" => ("$prefix/libsundials.x86_64-linux-gnu.tar.gz", "24e15a21c9b634ee20c1241135ba62f9892022742ae15ffe645adf9de120a545"),
    "x86_64-apple-darwin14" => ("$prefix/libsundials.x86_64-apple-darwin14.tar.gz", "2fb8841c280a1e7693aca36e79b07a9f2007579c912866b25af7a2506fb4a21a"),
    "x86_64-w64-mingw32" => ("$prefix/libsundials.x86_64-w64-mingw32.tar.gz", "c32f985c8ecf442d2d6d67406fcb8fdd9df073c6047e9421bf1d1bfe0bb85393"),
    "arm-linux-gnueabihf" => ("$prefix/libsundials.arm-linux-gnueabihf.tar.gz", "be1a45384d75142fa85e8c09680e4dc531a8e5864752d6f5e17f79ee60e4cfe0"),
    "i686-linux-gnu" => ("$prefix/libsundials.i686-linux-gnu.tar.gz", "d3957545243861ffe2605301137d9f47c30f9bcf7e987598edd71e205949a397"),
)

url, hash = lib_downloads[platform]
install(url, hash; prefix=BinaryProvider.Prefix(joinpath(@__DIR__, string(platform))), verbose=true)

