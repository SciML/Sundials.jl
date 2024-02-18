using Sundials, Aqua
@testset "Aqua" begin
    Aqua.find_persistent_tasks_deps(Sundials)
    Aqua.test_ambiguities(Sundials, recursive = false)
    Aqua.test_deps_compat(Sundials)
    Aqua.test_piracies(Sundials)
    Aqua.test_project_extras(Sundials)
    Aqua.test_stale_deps(Sundials)
    Aqua.test_unbound_args(Sundials)
    Aqua.test_undefined_exports(Sundials)
end
