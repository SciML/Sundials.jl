using BinDeps

@BinDeps.setup

cvode = library_dependency("libsundials_cvode")
cvodes = library_dependency("libsundials_cvodes")
ida = library_dependency("libsundials_ida")
idas = library_dependency("libsundials_idas")
kinsol = library_dependency("libsundials_kinsol")
nvecserial = library_dependency("libsundials_nvecserial")
sundialslibs = [cvode, cvodes, ida, idas, kinsol, nvecserial]

sundialsver = "sundials-2.5.0"
provides(Sources, URI("http://computation.llnl.gov/casc/sundials/download/code/$sundialsver.tar.gz"), sundialslibs)

provides(Binaries, URI("http://sourceforge.net/projects/juliadeps-win/files/$sundialsver-$(Sys.MACHINE).7z"),
    sundialslibs, os = :Windows)

prefix = joinpath(BinDeps.depsdir(cvode),"usr")
srcdir = joinpath(BinDeps.depsdir(cvode),"src",sundialsver) 

provides(SimpleBuild,
    (@build_steps begin
        GetSources(cvode)
        @build_steps begin
            ChangeDirectory(srcdir)
            `./configure --prefix=$prefix --enable-shared`
            `make install`
        end
    end), sundialslibs)

@BinDeps.install [:libsundials_cvode => :libsundials_cvode,
                  :libsundials_cvodes => :libsundials_cvodes,
                  :libsundials_ida => :libsundials_ida,
                  :libsundials_idas => :libsundials_idas,
                  :libsundials_kinsol => :libsundials_kinsol,
                  :libsundials_nvecserial => :libsundials_nvecserial]
