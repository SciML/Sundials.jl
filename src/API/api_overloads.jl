for ff in names(@__MODULE__; all=true)
    fname = string(ff)
    if occursin("SetLinearSolver", fname) &&
        !occursin("#", fname) && # filter out compiler generated names
        !occursin("Dls", fname) && !occursin("Spils", fname) # filter out old names
        @eval $ff(mem, LS::SUNLinearSolver, A::Ptr, args...) = $ff(mem, LS, convert(SUNMatrix, A), args...)
    end
end
