try 
    Pkg.clone("https://github.com/staticfloat/BinDeps2.jl.git")
end


using BinDeps2

const platform = BinDeps2.platform_suffix()

const prefix = "https://github.com/tshort/Sundials.jl.build/releases/download/v0.0.1"
lib_downloads = Dict(
    :win64 =>   ("$prefix/libsundials_win64.tar.gz",
                 "ef9518d54d55b056f33e64789a14713fa71b88c94dcf7ab0959c311c89c48b8c"),
    :mac64 =>   ("$prefix/libsundials_mac64.tar.gz",
                 "a01813d9f98faf6eb6194c0cbe3a15054f10ab49e4d70e5ac9cf0b7afdd8cb48"),
    :linux64 => ("$prefix/libsundials_linux64.tar.gz",
                 "1a0b9c951bd43bc61bc12a90d1be7bd72151f9dea0ded5d716f17edf6ed5545d"),
    :linuxaarch64 => ("$prefix/libsundials_linuxaarch64.tar.gz",
                 "a746e1856e3b77ddfbfd66e59d6b95f273cce8c0ed13d9c62feb1110ee59d9c1"),
    :linuxppc64le => ("$prefix/libsundials_linuxppc64le.tar.gz",
                 "79f57072ed8749c7b231be97b72386a41b168fea3e9ed24f36f4cd7ec9a010d9"),
    :linuxarmv7l => ("$prefix/libsundials_linuxarmv7l.tar.gz",
                 "ccdd29115129bde85961c60729bd54749fd1e49a7ff79ab71e22cb6cfa177453"),
)

url, hash = lib_downloads[platform]
BinDeps2.install(url, hash; prefix=BinDeps2.Prefix(joinpath(@__DIR__, string(platform))), verbose=true)

