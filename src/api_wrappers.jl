# Wrapper functions for Sundials API that provide automatic conversions
# These wrappers allow passing Julia types (like NVector) to Sundials C functions

# Create functions that accept NVector and convert appropriately
function ARKStepCreate(fe, fi, t0::realtype, y0::NVector, sunctx::SUNContext)
    ARKStepCreate(fe, fi, t0, y0.n_v, sunctx)
end

function CVodeInit(mem, f, t0::realtype, y0::NVector)
    CVodeInit(mem, f, t0, y0.n_v)
end

function IDAInit(mem, f, t0::realtype, y0::NVector, yp0::NVector)
    IDAInit(mem, f, t0, y0.n_v, yp0.n_v)
end

function KINInit(mem, f, y0::NVector)
    KINInit(mem, f, y0.n_v)
end

# Also provide wrappers for functions that take N_Vector arguments
function CVodeReInit(mem, t0::realtype, y0::NVector)
    CVodeReInit(mem, t0, y0.n_v)
end

function IDAReInit(mem, t0::realtype, y0::NVector, yp0::NVector)
    IDAReInit(mem, t0, y0.n_v, yp0.n_v)
end

function ARKStepReInit(mem, fe, fi, t0::realtype, y0::NVector)
    ARKStepReInit(mem, fe, fi, t0, y0.n_v)
end

# Wrappers for functions with N_Vector tolerances
function CVodeSVtolerances(mem, reltol::realtype, abstol::NVector)
    CVodeSVtolerances(mem, reltol, abstol.n_v)
end

function IDASVtolerances(mem, reltol::realtype, abstol::NVector)
    IDASVtolerances(mem, reltol, abstol.n_v)
end

function ARKStepSVtolerances(mem, reltol::realtype, abstol::NVector)
    ARKStepSVtolerances(mem, reltol, abstol.n_v)
end

# Linear solver wrappers that accept NVector
function SUNLinSol_Dense(y::NVector, A::SUNMatrix)
    SUNLinSol_Dense(y.n_v, A)
end

function SUNLinSol_Band(y::NVector, A::SUNMatrix)
    SUNLinSol_Band(y.n_v, A)
end

function SUNLinSol_LapackDense(y::NVector, A::SUNMatrix)
    SUNLinSol_LapackDense(y.n_v, A)
end

function SUNLinSol_LapackBand(y::NVector, A::SUNMatrix)
    SUNLinSol_LapackBand(y.n_v, A)
end

function SUNLinSol_KLU(y::NVector, A::SUNMatrix)
    SUNLinSol_KLU(y.n_v, A)
end

function SUNLinSol_SPGMR(y::NVector, prec_type::Cint, maxl::Cint)
    SUNLinSol_SPGMR(y.n_v, prec_type, maxl)
end

function SUNLinSol_SPFGMR(y::NVector, prec_type::Cint, maxl::Cint)
    SUNLinSol_SPFGMR(y.n_v, prec_type, maxl)
end

function SUNLinSol_SPBCGS(y::NVector, prec_type::Cint, maxl::Cint)
    SUNLinSol_SPBCGS(y.n_v, prec_type, maxl)
end

function SUNLinSol_PCG(y::NVector, prec_type::Cint, maxl::Cint)
    SUNLinSol_PCG(y.n_v, prec_type, maxl)
end

function SUNLinSol_SPTFQMR(y::NVector, prec_type::Cint, maxl::Cint)
    SUNLinSol_SPTFQMR(y.n_v, prec_type, maxl)
end