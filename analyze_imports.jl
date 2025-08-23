using ExplicitImports
using Sundials

# Print the names we are using from each module
println("=== Analyzing what is used from each module ===")
print_explicit_imports(Sundials)

# Try to get implicit imports without throwing
println("\n=== Implicit imports list ===")
try
    check_no_implicit_imports(Sundials)
catch e
    if isa(e, ExplicitImports.ImplicitImportsException)
        println(e.msg)
    else
        rethrow(e)
    end
end

# Try to get stale imports
println("\n=== Stale imports list ===")
try
    check_no_stale_explicit_imports(Sundials)
    println("No stale explicit imports found")
catch e
    if isa(e, ExplicitImports.StaleImportsException) 
        println(e.msg)
    else
        println("No stale explicit imports found")
    end
end