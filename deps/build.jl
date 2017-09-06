try 
    Pkg.clone("https://github.com/staticfloat/BinaryProvider.jl.git")
end

using Compat
using BinaryProvider

# BinaryProvider support
const prefix = Prefix(joinpath(dirname(@__DIR__),"deps","usr"))

libsundials_kinsol     = LibraryResult(joinpath(libdir(prefix), "libsundials_kinsol"))
libsundials_cvodes     = LibraryResult(joinpath(libdir(prefix), "libsundials_cvodes"))
libsundials_idas       = LibraryResult(joinpath(libdir(prefix), "libsundials_idas"))
libsundials_nvecserial = LibraryResult(joinpath(libdir(prefix), "libsundials_nvecserial"))

const bin_prefix = "https://github.com/tshort/Sundials.jl.build/releases/download/v0.0.4"
const download_info = Dict(
    :linuxaarch64 => ("$bin_prefix/libsundials.aarch64-linux-gnu.tar.gz", "df0481f43a870e586fb0e1593a5a731f769de04f0be442ff7bfa15f8c919daa5"),
    :linuxppc64le => ("$bin_prefix/libsundials.powerpc64le-linux-gnu.tar.gz", "2ac0fb80ad46edeab3f7772a99412e3ca478c1be7411cb0a9b571a9740278292"),
    :win32 => ("$bin_prefix/libsundials.i686-w64-mingw32.tar.gz", "33fb0220fc490a79de2af3acdec1f9ca1e26be4917386fb8fceeca90f12fddbd"),
    :linux64 => ("$bin_prefix/libsundials.x86_64-linux-gnu.tar.gz", "3411f2eb673172a71d25e902e47ba9c5d6ef5fff148ca1a4269f552cbcc6abd8"),
    :mac64 => ("$bin_prefix/libsundials.x86_64-apple-darwin14.tar.gz", "aa34448fb845caaa088f19fdc0480aa5aa189da87e76ed22b2690f0b83eabd65"),
    :win64 => ("$bin_prefix/libsundials.x86_64-w64-mingw32.tar.gz", "1615f46f5225dad287426461874e3edb2eadb2090bbd64bd87f6dd1fc9489768"),
    :linuxarmv71 => ("$bin_prefix/libsundials.arm-linux-gnueabihf.tar.gz", "49ca07e76057d2922f55f1f34071b77893e944580baebb90b3f80e281698b2fa"),
    :linux32 => ("$bin_prefix/libsundials.i686-linux-gnu.tar.gz", "9bf5707e99034c5abac67539493b6921880f4c8846cd0cfb173ea381134624d0"),
)
if platform_key() in keys(download_info)
    # First, check to see if we're all satisfied
    if any(!satisfied(p; verbose=true) for 
	   p in [libsundials_kinsol, libsundials_cvodes, libsundials_idas, libsundials_nvecserial])
        # Download and install lib
        url, tarball_hash = download_info[platform_key()]
        install(url, tarball_hash; prefix=prefix, force=true, verbose=true)
    end
    @write_deps_file libsundials_kinsol libsundials_cvodes libsundials_idas libsundials_nvecserial 
else
    error("Your platform $(Sys.MACHINE) is not recognized, we cannot install Sundials")
end

