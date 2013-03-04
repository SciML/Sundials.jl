
module Sundials

typealias __builtin_va_list Ptr{:Void}

shlib = :libsundials_nvecserial
include("nvector.jl")
shlib = :libsundials_cvode
include("sundials.jl")
include("cvode.jl")
shlib = :libsundials_cvodes
include("cvodes.jl")
shlib = :libsundials_ida
include("ida.jl")
shlib = :libsundials_idas
include("idas.jl")
shlib = :libsundials_kinsol
include("kinsol.jl")

nvlength(x::N_Vector) = unsafe_ref(unsafe_ref(convert(Ptr{Ptr{Int64}}, x)))
asarray(x::N_Vector) = pointer_to_array(N_VGetArrayPointer_Serial(x), (nvlength(x),))
asarray(x::Vector{realtype}) = x
asarray(x::Ptr{realtype}, dims::Tuple) = pointer_to_array(x, dims)
asarray(x::N_Vector, dims::Tuple) = reinterpret(realtype, asarray(x), dims)
nvector(x::Vector{realtype}) = N_VMake_Serial(length(x), x)
nvector(x::N_Vector) = x

KINInit(mem, sysfn::Function, y) =
    KINInit(mem, cfunction(sysfn, Int32, (N_Vector, N_Vector, Ptr{Void})), nvector(y))
KINSetConstraints(mem, constraints::Vector{realtype}) =
    KINSetConstraints(mem, nvector(constraints))
KINSol(mem, u::Vector{realtype}, strategy, u_scale::Vector{realtype}, f_scale::Vector{realtype}) =
    KINSol(mem, nvector(u), strategy, nvector(u_scale), nvector(f_scale))

IDAInit(mem, res::Function, t0, yy0, yp0) =
    IDAInit(mem, cfunction(res, Int32, (realtype, N_Vector, N_Vector, N_Vector, Ptr{Void})), t0, nvector(yy0), nvector(yp0))
IDARootInit(mem, nrtfn, g::Function) =
    IDARootInit(mem, nrtfn, cfunction(g, Int32, (realtype, N_Vector, N_Vector, Ptr{realtype}, Ptr{Void})))
IDASVtolerances(mem, reltol, abstol::Vector{realtype}) =
    IDASVtolerances(mem, reltol, nvector(abstol))
IDADlsSetDenseJacFn(mem, jac::Function) =
    IDADlsSetDenseJacFn(mem, cfunction(jac, Int32, (Int32, realtype, realtype, N_Vector, N_Vector, N_Vector, DlsMat, Ptr{Void}, N_Vector, N_Vector, N_Vector)))
IDASetId(mem, id::Vector{realtype}) =
    IDASetId(mem, nvector(id))
IDASetConstraints(mem, constraints::Vector{realtype}) =
    IDASetConstraints(mem, nvector(constraints))
IDASolve(mem, tout, tret, yret::Vector{realtype}, ypret::Vector{realtype}, itask) =
    IDASolve(mem, tout, tret, nvector(yret), nvector(ypret), itask)

CVodeInit(mem, f::Function, t0, y0) =
    CVodeInit(mem, cfunction(f, Int32, (realtype, N_Vector, N_Vector, Ptr{Void})), t0, nvector(y0))
CVodeReInit(mem, f::Function, t0, y0::Vector{realtype}) =
    CVodeReInit(mem, cfunction(f, Int32, (realtype, N_Vector, N_Vector, Ptr{Void})), t0, nvector(y0))
CVodeSVtolerances(mem, reltol, abstol::Vector{realtype}) =
    CVodeSVtolerances(mem, reltol, nvector(abstol))
CVodeGetDky(mem, t, k, dky::Vector{realtype}) =
    CVodeGetDky(mem, t, k, nvector(dky))
CVodeGetErrWeights(mem, eweight::Vector{realtype}) =
    CVodeGetErrWeights(mem, nvector(eweight))
CVodeGetEstLocalErrors(mem, ele::Vector{realtype}) =
    CVodeGetEstLocalErrors(mem, nvector(ele))
CVodeRootInit(mem, nrtfn, g::Function) =
    CVodeRootInit(mem, nrtfn, cfunction(g, Int32, (realtype, N_Vector, Ptr{realtype}, Ptr{Void})))
CVDlsSetDenseJacFn(mem, jac::Function) =
    CVDlsSetDenseJacFn(mem, cfunction(jac, Int32, (Int32, realtype, N_Vector, N_Vector, DlsMat, Ptr{Void}, N_Vector, N_Vector, N_Vector)))
CVode(mem, tout, yout::Vector{realtype}, tret, itask) =
    CVode(mem, tout, nvector(yout), tret, itask)

# CVODES
CVodeQuadInit(mem, fQ::Function, yQ0) =
    CVodeQuadInit(mem, cfunction(fQ, Int32, (realtype, N_Vector, N_Vector, Ptr{Void})), nvector(yQ0))
CVodeQuadReInit(mem, yQ0::Vector{realtype}) =
    CVodeQuadReInit(mem, nvector(yQ0))
CVodeQuadSVtolerances(mem, reltolQ, abstolQ::Vector{realtype}) =
    CVodeQuadSVtolerances(mem, reltolQ, nvector(abstolQ))
CVodeSensInit(mem, Ns, ism, fS::Function, yS0) = 
    CVodeSensInit(mem, Ns, ism, cfunction(fS, Int32, (int32, realtype, N_Vector, N_Vector, N_Vector, N_Vector, Ptr{Void}, N_Vector, N_Vector)), nvector(yS0))
CVodeSensInit1(mem, Ns, ism, fS1::Function, yS0) = 
    CVodeSensInit1(mem, Ns, ism, cfunction(fS1, Int32, (int32, realtype, N_Vector, N_Vector, int32, N_Vector, N_Vector, Ptr{Void}, N_Vector, N_Vector)), nvector(yS0))
CVodeSensReInit(mem, ism, yS0::Vector{realtype}) = 
    CVodeSensReInit(mem, ism, nvector(yS0))
CVodeSensSVtolerances(mem, reltolS, abstolS::Vector{realtype}) =
    CVodeSensSVtolerances(mem, reltolS, nvector(abstolS))
CVodeQuadSensInit(mem, fQS::Function, yQS0) = 
    CVodeQuadSensInit(mem, cfunction(fQS, Int32, (int32, realtype, N_Vector, N_Vector, N_Vector, N_Vector, Ptr{Void}, N_Vector, N_Vector)), nvector(yQS0))
CVodeQuadSensReInit(mem, yQS0::Vector{realtype}) = 
    CVodeQuadSensReInit(mem, nvector(yQS0))
CVodeQuadSensSVtolerances(mem, reltolQS, abstolQS::Vector{realtype}) =
    CVodeQuadSensSVtolerances(mem, reltolQS, nvector(abstolQS))
CVodeGetQuad(mem, tret, yQout::Vector{realtype}) =
    CVodeGetQuad(mem, tret, nvector(yQout))
CVodeGetQuadDky(mem, t, k, dky::Vector{realtype}) =
    CVodeGetQuadDky(mem, t, k, nvector(dky))
CVodeGetSens(mem, tret, ySout::Vector{realtype}) =
    CVodeGetSens(mem, tret, nvector(ySout))
CVodeGetSens1(mem, tret, is, ySout::Vector{realtype}) =
    CVodeGetSens1(mem, tret, is, nvector(ySout))
CVodeGetSensDky(mem, t, k, dkyA::Vector{realtype}) =
    CVodeGetSensDky(mem, t, k, nvector(dkyA))
CVodeGetSensDky1(mem, t, k, is, dky::Vector{realtype}) =
    CVodeGetSensDky1(mem, t, k, is, nvector(dky))
CVodeGetQuadSens(mem, tret, yQSout::Vector{realtype}) =
    CVodeGetQuadSens(mem, tret, nvector(yQSout))
CVodeGetQuadSens1(mem, tret, is, yQSout::Vector{realtype}) =
    CVodeGetQuadSens1(mem, tret, is, nvector(yQSout))
CVodeGetQuadSensDky(mem, t, k, kdyQS_all::Vector{realtype}) =
    CVodeGetQuadSensDky(mem, t, k, nvector(kdyQS_all))
CVodeGetQuadSensDky1(mem, t, k, is, kdyQS::Vector{realtype}) =
    CVodeGetQuadSensDky1(mem, t, k, is, nvector(kdyQS))
CVodeGetQuadErrWeights(mem, eQweight::Vector{realtype}) =
    CVodeGetQuadErrWeights(mem, nvector(eQweight))
CVodeGetSensErrWeights(mem, eSweight::Vector{realtype}) =
    CVodeGetSensErrWeights(mem, nvector(eSweight))
CVodeGetQuadSensErrWeights(mem, eQSweight::Vector{realtype}) =
    CVodeGetQuadSensErrWeights(mem, nvector(eQSweight))
CVodeInitB(mem, which, fB::Function, tB0, yB0) =
    CVodeInitB(mem, which, cfunction(fB, Int32, (realtype, N_Vector, N_Vector, N_Vector, Ptr{Void})), tB0, nvector(yB0))
CVodeInitBS(mem, which, fBs::Function, tB0, yB0) =
    CVodeInitBS(mem, which, cfunction(fBs, Int32, (realtype, N_Vector, N_Vector, N_Vector, Ptr{Void})), tB0, nvector(yB0))
CVodeReInitB(mem, which, tB0, yB0::Vector{realtype}) =
    CVodeReInitB(mem, which, tB0, nvector(yB0))
CVodeSVtolerancesB(mem, which, reltolB, abstolB::Vector{realtype}) =
    CVodeSVtolerancesB(mem, which, reltolB, nvector(abstolB))
CVodeQuadInitB(mem, which, fQB::Function, yQB0) =
    CVodeQuadInitB(mem, which, cfunction(fQB, Int32, (realtype, N_Vector, N_Vector, N_Vector, Ptr{Void})), nvector(yQB0))
CVodeQuadInitBS(mem, which, fQBs::Function, yQB0) =
    CVodeQuadInitBS(mem, which, cfunction(fQBs, Int32, (realtype, N_Vector, N_Vector, N_Vector, N_Vector, Ptr{Void})), nvector(yQB0))
CVodeQuadReInitB(mem, which, yQB0::Vector{realtype}) =
    CVodeQuadReInitB(mem, which, nvector(yQB0))
CVodeQuadSVtolerancesB(mem, which, reltolQB, abstolQB::Vector{realtype}) =
    CVodeQuadSVtolerancesB(mem, which, reltolQB, nvector(abstolQB))
CVodeF(mem, tout, yout::Vector{realtype}, tret, itask, ncheckPtr) =
    CVodeF(mem, tout, nvector(yout), tret, itask, ncheckPtr)
CVodeGetB(mem, which, tBret, yB::Vector{realtype}) =
    CVodeGetB(mem, which, tBret, nvector(yB))
CVodeGetQuadB(mem, which, tBret, qB::Vector{realtype}) =
    CVodeGetQuadB(mem, which, tBret, nvector(qB))
CVodeGetAdjY(mem, which, t, y::Vector{realtype}) =
    CVodeGetAdjY(mem, which, t, nvector(y))
CVodeGetAdjDataPointHermite(mem, which, t, y::Vector{realtype}, yd::Vector{realtype}) =
    CVodeGetAdjDataPointHermite(mem, which, t, nvector(y), nvector(yd))
CVodeGetAdjDataPointPolynomial(mem, which, t, y::Vector{realtype}) =
    CVodeGetAdjDataPointPolynomial(mem, which, t, nvector(y))
CVodeWFtolerances(mem, efun::Function) =
    CVodeWFtolerances(mem, cfunction(efun, Int32, (N_Vector, N_Vector, Ptr{Void})))
CVodeSetErrHandlerFn(mem, ehfun::Function, eh_data) =
    CVodeSetErrHandlerFn(mem, cfunction(ehfun, Void, (Int32, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Void})), eh_data)


end # module 
