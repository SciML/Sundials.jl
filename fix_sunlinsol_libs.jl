#!/usr/bin/env julia

# Script to fix libsundials_sunlinsol references in generated API files

# Read the file
api_file = "src/lib/libsundials_api_rewrite.jl"
content = read(api_file, String)

# Define linsol library mapping
linsol_mappings = [
    # Dense linear solvers
    (r"(:SUNLinSol_Dense[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsoldense"),
    
    # Band linear solvers
    (r"(:SUNLinSol_Band[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolband"),
    
    # LAPACK band linear solvers
    (r"(:SUNLinSol_LapackBand[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsollapackband"),
    
    # LAPACK dense linear solvers
    (r"(:SUNLinSol_LapackDense[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsollapackdense"),
    
    # KLU linear solvers
    (r"(:SUNLinSol_KLU[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolklu"),
    
    # PCG linear solvers
    (r"(:SUNLinSol_PCG[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolpcg"),
    (r"(:SUNLinSolSetInfoFile_PCG[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolpcg"),
    (r"(:SUNLinSolSetPrintLevel_PCG[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolpcg"),
    
    # SPBCGS linear solvers
    (r"(:SUNLinSol_SPBCGS[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolspbcgs"),
    (r"(:SUNLinSolSetInfoFile_SPBCGS[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolspbcgs"),
    (r"(:SUNLinSolSetPrintLevel_SPBCGS[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolspbcgs"),
    
    # SPFGMR linear solvers
    (r"(:SUNLinSol_SPFGMR[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolspfgmr"),
    (r"(:SUNLinSolSetInfoFile_SPFGMR[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolspfgmr"),
    (r"(:SUNLinSolSetPrintLevel_SPFGMR[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolspfgmr"),
    
    # SPGMR linear solvers
    (r"(:SUNLinSol_SPGMR[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolspgmr"),
    (r"(:SUNLinSolSetInfoFile_SPGMR[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolspgmr"),
    (r"(:SUNLinSolSetPrintLevel_SPGMR[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolspgmr"),
    
    # SPTFQMR linear solvers
    (r"(:SUNLinSol_SPTFQMR[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolsptfqmr"),
    (r"(:SUNLinSolSetInfoFile_SPTFQMR[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolsptfqmr"),
    (r"(:SUNLinSolSetPrintLevel_SPTFQMR[^,]*,\s*)libsundials_sunlinsol", s"\1libsundials_sunlinsolsptfqmr"),
]

# Apply all replacements
for (pattern, replacement) in linsol_mappings
    global content = replace(content, pattern => replacement)
end

# Write back
write(api_file, content)

println("Fixed libsundials_sunlinsol references in $api_file")