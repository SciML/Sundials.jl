try 
    Pkg.clone("https://github.com/staticfloat/BinaryProvider.jl.git")
end

using Compat
using BinaryProvider

const platform = platform_triplet(platform_key())

const prefix = "https://github.com/tshort/Sundials.jl.build/releases/download/v0.0.4"
lib_downloads = Dict(
    "aarch64-linux-gnu" => ("$prefix/libsundials.aarch64-linux-gnu.tar.gz", "df0481f43a870e586fb0e1593a5a731f769de04f0be442ff7bfa15f8c919daa5"),
    "powerpc64le-linux-gnu" => ("$prefix/libsundials.powerpc64le-linux-gnu.tar.gz", "2ac0fb80ad46edeab3f7772a99412e3ca478c1be7411cb0a9b571a9740278292"),
    "i686-w64-mingw32" => ("$prefix/libsundials.i686-w64-mingw32.tar.gz", "33fb0220fc490a79de2af3acdec1f9ca1e26be4917386fb8fceeca90f12fddbd"),
    "x86_64-linux-gnu" => ("$prefix/libsundials.x86_64-linux-gnu.tar.gz", "3411f2eb673172a71d25e902e47ba9c5d6ef5fff148ca1a4269f552cbcc6abd8"),
    "x86_64-apple-darwin14" => ("$prefix/libsundials.x86_64-apple-darwin14.tar.gz", "aa34448fb845caaa088f19fdc0480aa5aa189da87e76ed22b2690f0b83eabd65"),
    "x86_64-w64-mingw32" => ("$prefix/libsundials.x86_64-w64-mingw32.tar.gz", "1615f46f5225dad287426461874e3edb2eadb2090bbd64bd87f6dd1fc9489768"),
    "arm-linux-gnueabihf" => ("$prefix/libsundials.arm-linux-gnueabihf.tar.gz", "49ca07e76057d2922f55f1f34071b77893e944580baebb90b3f80e281698b2fa"),
    "i686-linux-gnu" => ("$prefix/libsundials.i686-linux-gnu.tar.gz", "9bf5707e99034c5abac67539493b6921880f4c8846cd0cfb173ea381134624d0"),
)

url, hash = lib_downloads[platform]
install(url, hash; prefix=BinaryProvider.Prefix(joinpath(@__DIR__, string(platform))), verbose=true)

