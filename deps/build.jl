using BinDeps

@BinDeps.setup

enable_sensitivities = true

if enable_sensitivities
    cvodes = library_dependency("libsundials_cvodes")
    idas = library_dependency("libsundials_idas")
else
    cvode = library_dependency("libsundials_cvode")
    ida = library_dependency("libsundials_ida")
end
kinsol = library_dependency("libsundials_kinsol")
arkode = library_dependency("libsundials_arkode")
nvecserial = library_dependency("libsundials_nvecserial")
sundialslibs = enable_sensitivities ? [cvodes, idas, arkode, kinsol, nvecserial] : [cvode, ida, arkode, kinsol, nvecserial]

sundialsver = "sundials-2.7.0"
provides(Sources, URI("http://computation.llnl.gov/projects/sundials/download/$sundialsver.tar.gz"), sundialslibs)

provides(Binaries, URI("https://cache.julialang.org/https://bintray.com/artifact/download/tkelman/generic/$sundialsver.7z"),
    sundialslibs, unpacked_dir="usr$WORD_SIZE/bin", os = :Windows)

prefix = joinpath(BinDeps.depsdir(sundialslibs[1]),"usr")
srcdir = joinpath(BinDeps.depsdir(sundialslibs[1]),"src",sundialsver)
builddir = joinpath(BinDeps.depsdir(sundialslibs[1]),"src",string(sundialsver,"-build"))

provides(SimpleBuild,
    (@build_steps begin
        GetSources(sundialslibs[1])
        `mkdir -p $builddir`
        @build_steps begin
            ChangeDirectory(builddir)
            `cmake -DCMAKE_INSTALL_PREFIX=$prefix -DBUILD_SHARED_LIBS=ON $srcdir`
            `make`
            `make install`
        end
    end), sundialslibs)

if enable_sensitivities
@BinDeps.install Dict(:libsundials_cvodes => :libsundials_cvodes,
                  :libsundials_idas => :libsundials_idas,
                  :libsundials_arkode => :libsundials_arkode,
                  :libsundials_kinsol => :libsundials_kinsol,
                  :libsundials_nvecserial => :libsundials_nvecserial)
else
@BinDeps.install Dict(:libsundials_cvode => :libsundials_cvode,
                  :libsundials_ida => :libsundials_ida,
                  :libsundials_arkode => :libsundials_arkode,
                  :libsundials_kinsol => :libsundials_kinsol,
                  :libsundials_nvecserial => :libsundials_nvecserial)
end
