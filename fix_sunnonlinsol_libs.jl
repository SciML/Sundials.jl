#!/usr/bin/env julia

# Script to fix libsundials_sunnonlinsol references in generated API files

# Read the file
api_file = "src/lib/libsundials_api_rewrite.jl"
content = read(api_file, String)

# Define nonlinsol library mapping
nonlinsol_mappings = [
    # Fixed point nonlinear solver
    (r"(:SUNNonlinSol_FixedPoint[^,]*,\s*)libsundials_sunnonlinsol", s"\1libsundials_sunnonlinsolfixedpoint"),
    
    # Newton nonlinear solver
    (r"(:SUNNonlinSol_Newton[^,]*,\s*)libsundials_sunnonlinsol", s"\1libsundials_sunnonlinsolnewton"),
    
    # Generic SUNNonlinSol functions (keep with base library)
    # These are kept as-is since they're part of the base sunnonlinsol library
]

# Apply all replacements
for (pattern, replacement) in nonlinsol_mappings
    global content = replace(content, pattern => replacement)
end

# Write back
write(api_file, content)

println("Fixed libsundials_sunnonlinsol references in $api_file")