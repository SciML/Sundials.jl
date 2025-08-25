# SUNContext support for SUNDIALS 6.0+
const SUNContext = Ptr{Cvoid}

# SUNContext functions
function SUNContext_Create(comm::Ptr{Cvoid}, ctx::Ptr{SUNContext})
    ccall((:SUNContext_Create, libsundials_cvode), Cint, (Ptr{Cvoid}, Ptr{SUNContext}), comm, ctx)
end

function SUNContext_Free(ctx::SUNContext)
    ctx_ptr = Ref(ctx)
    ccall((:SUNContext_Free, libsundials_cvode), Cint, (Ptr{SUNContext},), ctx_ptr)
end

struct klu_l_symbolic
    symmetry::Cdouble
    est_flops::Cdouble
    lnz::Cdouble
    unz::Cdouble
    Lnz::Ptr{Cdouble}
    n::Clong
    nz::Clong
    P::Ptr{Clong}
    Q::Ptr{Clong}
    R::Ptr{Clong}
    nzoff::Clong
    nblocks::Clong
    maxblock::Clong
    ordering::Clong
    do_btf::Clong
    structural_rank::Clong
end

struct klu_l_numeric
    n::Clong
    nblocks::Clong
    lnz::Clong
    unz::Clong
    max_lnz_block::Clong
    max_unz_block::Clong
    Pnum::Ptr{Clong}
    Pinv::Ptr{Clong}
    Lip::Ptr{Clong}
    Uip::Ptr{Clong}
    Llen::Ptr{Clong}
    Ulen::Ptr{Clong}
    LUbx::Ptr{Ptr{Cvoid}}
    LUsize::Ptr{Csize_t}
    Udiag::Ptr{Cvoid}
    Rs::Ptr{Cdouble}
    worksize::Csize_t
    Work::Ptr{Cvoid}
    Xwork::Ptr{Cvoid}
    Iwork::Ptr{Clong}
    Offp::Ptr{Clong}
    Offi::Ptr{Clong}
    Offx::Ptr{Cvoid}
    nzoff::Clong
end

struct klu_l_common_struct
    tol::Cdouble
    memgrow::Cdouble
    initmem_amd::Cdouble
    initmem::Cdouble
    maxwork::Cdouble
    btf::Clong
    ordering::Clong
    scale::Clong
    user_order::Ptr{Cvoid}
    user_data::Ptr{Cvoid}
    halt_if_singular::Clong
    status::Clong
    nrealloc::Clong
    structural_rank::Clong
    numerical_rank::Clong
    singular_col::Clong
    noffdiag::Clong
    flops::Cdouble
    rcond::Cdouble
    condest::Cdouble
    rgrowth::Cdouble
    work::Cdouble
    memusage::Csize_t
    mempeak::Csize_t
end

const klu_l_common = klu_l_common_struct

# typedef int ( * ARKRhsFn ) ( realtype t , N_Vector y , N_Vector ydot , void * user_data )
const ARKRhsFn = Ptr{Cvoid}

# typedef int ( * ARKRootFn ) ( realtype t , N_Vector y , realtype * gout , void * user_data )
const ARKRootFn = Ptr{Cvoid}

# typedef int ( * ARKEwtFn ) ( N_Vector y , N_Vector ewt , void * user_data )
const ARKEwtFn = Ptr{Cvoid}

# typedef int ( * ARKRwtFn ) ( N_Vector y , N_Vector rwt , void * user_data )
const ARKRwtFn = Ptr{Cvoid}

# typedef void ( * ARKErrHandlerFn ) ( int error_code , const char * module , const char * function , char * msg , void * user_data )
const ARKErrHandlerFn = Ptr{Cvoid}

# typedef int ( * ARKAdaptFn ) ( N_Vector y , realtype t , realtype h1 , realtype h2 , realtype h3 , realtype e1 , realtype e2 , realtype e3 , int q , int p , realtype * hnew , void * user_data )
const ARKAdaptFn = Ptr{Cvoid}

# typedef int ( * ARKExpStabFn ) ( N_Vector y , realtype t , realtype * hstab , void * user_data )
const ARKExpStabFn = Ptr{Cvoid}

# typedef int ( * ARKVecResizeFn ) ( N_Vector y , N_Vector ytemplate , void * user_data )
const ARKVecResizeFn = Ptr{Cvoid}

# typedef int ( * ARKPostProcessFn ) ( realtype t , N_Vector y , void * user_data )
const ARKPostProcessFn = Ptr{Cvoid}

# typedef int ( * ARKPostProcessStepFn ) ( realtype t , N_Vector y , void * user_data )
const ARKPostProcessStepFn = Ptr{Cvoid}

# typedef int ( * ARKStepStagePredictFn ) ( realtype t , N_Vector zpred , void * user_data )
const ARKStepStagePredictFn = Ptr{Cvoid}

const realtype = Cdouble

struct _generic_N_Vector_Ops
    nvgetvectorid::Ptr{Cvoid}
    nvclone::Ptr{Cvoid}
    nvcloneempty::Ptr{Cvoid}
    nvdestroy::Ptr{Cvoid}
    nvspace::Ptr{Cvoid}
    nvgetarraypointer::Ptr{Cvoid}
    nvsetarraypointer::Ptr{Cvoid}
    nvgetcommunicator::Ptr{Cvoid}
    nvgetlength::Ptr{Cvoid}
    nvlinearsum::Ptr{Cvoid}
    nvconst::Ptr{Cvoid}
    nvprod::Ptr{Cvoid}
    nvdiv::Ptr{Cvoid}
    nvscale::Ptr{Cvoid}
    nvabs::Ptr{Cvoid}
    nvinv::Ptr{Cvoid}
    nvaddconst::Ptr{Cvoid}
    nvdotprod::Ptr{Cvoid}
    nvmaxnorm::Ptr{Cvoid}
    nvwrmsnorm::Ptr{Cvoid}
    nvwrmsnormmask::Ptr{Cvoid}
    nvmin::Ptr{Cvoid}
    nvwl2norm::Ptr{Cvoid}
    nvl1norm::Ptr{Cvoid}
    nvcompare::Ptr{Cvoid}
    nvinvtest::Ptr{Cvoid}
    nvconstrmask::Ptr{Cvoid}
    nvminquotient::Ptr{Cvoid}
    nvlinearcombination::Ptr{Cvoid}
    nvscaleaddmulti::Ptr{Cvoid}
    nvdotprodmulti::Ptr{Cvoid}
    nvlinearsumvectorarray::Ptr{Cvoid}
    nvscalevectorarray::Ptr{Cvoid}
    nvconstvectorarray::Ptr{Cvoid}
    nvwrmsnormvectorarray::Ptr{Cvoid}
    nvwrmsnormmaskvectorarray::Ptr{Cvoid}
    nvscaleaddmultivectorarray::Ptr{Cvoid}
    nvlinearcombinationvectorarray::Ptr{Cvoid}
    nvdotprodlocal::Ptr{Cvoid}
    nvmaxnormlocal::Ptr{Cvoid}
    nvminlocal::Ptr{Cvoid}
    nvl1normlocal::Ptr{Cvoid}
    nvinvtestlocal::Ptr{Cvoid}
    nvconstrmasklocal::Ptr{Cvoid}
    nvminquotientlocal::Ptr{Cvoid}
    nvwsqrsumlocal::Ptr{Cvoid}
    nvwsqrsummasklocal::Ptr{Cvoid}
end

const N_Vector_Ops = Ptr{_generic_N_Vector_Ops}

struct _generic_N_Vector
    content::Ptr{Cvoid}
    ops::N_Vector_Ops
end

const N_Vector = Ptr{_generic_N_Vector}

struct _generic_SUNLinearSolver_Ops
    gettype::Ptr{Cvoid}
    getid::Ptr{Cvoid}
    setatimes::Ptr{Cvoid}
    setpreconditioner::Ptr{Cvoid}
    setscalingvectors::Ptr{Cvoid}
    initialize::Ptr{Cvoid}
    setup::Ptr{Cvoid}
    solve::Ptr{Cvoid}
    numiters::Ptr{Cvoid}
    resnorm::Ptr{Cvoid}
    lastflag::Ptr{Cvoid}
    space::Ptr{Cvoid}
    resid::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

const SUNLinearSolver_Ops = Ptr{_generic_SUNLinearSolver_Ops}

struct _generic_SUNLinearSolver
    content::Ptr{Cvoid}
    ops::SUNLinearSolver_Ops
end

const SUNLinearSolver = Ptr{_generic_SUNLinearSolver}

struct _generic_SUNMatrix_Ops
    getid::Ptr{Cvoid}
    clone::Ptr{Cvoid}
    destroy::Ptr{Cvoid}
    zero::Ptr{Cvoid}
    copy::Ptr{Cvoid}
    scaleadd::Ptr{Cvoid}
    scaleaddi::Ptr{Cvoid}
    matvecsetup::Ptr{Cvoid}
    matvec::Ptr{Cvoid}
    space::Ptr{Cvoid}
end

const SUNMatrix_Ops = Ptr{_generic_SUNMatrix_Ops}

struct _generic_SUNMatrix
    content::Ptr{Cvoid}
    ops::SUNMatrix_Ops
end

const SUNMatrix = Ptr{_generic_SUNMatrix}

struct _generic_SUNNonlinearSolver_Ops
    gettype::Ptr{Cvoid}
    initialize::Ptr{Cvoid}
    setup::Ptr{Cvoid}
    solve::Ptr{Cvoid}
    free::Ptr{Cvoid}
    setsysfn::Ptr{Cvoid}
    setlsetupfn::Ptr{Cvoid}
    setlsolvefn::Ptr{Cvoid}
    setctestfn::Ptr{Cvoid}
    setmaxiters::Ptr{Cvoid}
    getnumiters::Ptr{Cvoid}
    getcuriter::Ptr{Cvoid}
    getnumconvfails::Ptr{Cvoid}
end

const SUNNonlinearSolver_Ops = Ptr{_generic_SUNNonlinearSolver_Ops}

struct _generic_SUNNonlinearSolver
    content::Ptr{Cvoid}
    ops::SUNNonlinearSolver_Ops
end

const SUNNonlinearSolver = Ptr{_generic_SUNNonlinearSolver}

struct ARKodeButcherTableMem
    q::Cint
    p::Cint
    stages::Cint
    A::Ptr{Ptr{realtype}}
    c::Ptr{realtype}
    b::Ptr{realtype}
    d::Ptr{realtype}
end

const ARKodeButcherTable = Ptr{ARKodeButcherTableMem}

# typedef int ( * ARKLsJacFn ) ( realtype t , N_Vector y , N_Vector fy , SUNMatrix Jac , void * user_data , N_Vector tmp1 , N_Vector tmp2 , N_Vector tmp3 )
const ARKLsJacFn = Ptr{Cvoid}

# typedef int ( * ARKLsMassFn ) ( realtype t , SUNMatrix M , void * user_data , N_Vector tmp1 , N_Vector tmp2 , N_Vector tmp3 )
const ARKLsMassFn = Ptr{Cvoid}

# typedef int ( * ARKLsPrecSetupFn ) ( realtype t , N_Vector y , N_Vector fy , booleantype jok , booleantype * jcurPtr , realtype gamma , void * user_data )
const ARKLsPrecSetupFn = Ptr{Cvoid}

# typedef int ( * ARKLsPrecSolveFn ) ( realtype t , N_Vector y , N_Vector fy , N_Vector r , N_Vector z , realtype gamma , realtype delta , int lr , void * user_data )
const ARKLsPrecSolveFn = Ptr{Cvoid}

# typedef int ( * ARKLsMassPrecSetupFn ) ( realtype t , void * user_data )
const ARKLsMassPrecSetupFn = Ptr{Cvoid}

# typedef int ( * ARKLsMassPrecSolveFn ) ( realtype t , N_Vector r , N_Vector z , realtype delta , int lr , void * user_data )
const ARKLsMassPrecSolveFn = Ptr{Cvoid}

# typedef int ( * ARKLsJacTimesSetupFn ) ( realtype t , N_Vector y , N_Vector fy , void * user_data )
const ARKLsJacTimesSetupFn = Ptr{Cvoid}

# typedef int ( * ARKLsJacTimesVecFn ) ( N_Vector v , N_Vector Jv , realtype t , N_Vector y , N_Vector fy , void * user_data , N_Vector tmp )
const ARKLsJacTimesVecFn = Ptr{Cvoid}

# typedef int ( * ARKLsMassTimesSetupFn ) ( realtype t , void * mtimes_data )
const ARKLsMassTimesSetupFn = Ptr{Cvoid}

# typedef int ( * ARKLsMassTimesVecFn ) ( N_Vector v , N_Vector Mv , realtype t , void * mtimes_data )
const ARKLsMassTimesVecFn = Ptr{Cvoid}

# typedef int ( * ARKLsLinSysFn ) ( realtype t , N_Vector y , N_Vector fy , SUNMatrix A , SUNMatrix M , booleantype jok , booleantype * jcur , realtype gamma , void * user_data , N_Vector tmp1 , N_Vector tmp2 , N_Vector tmp3 )
const ARKLsLinSysFn = Ptr{Cvoid}

const sunindextype = Int64

# typedef int ( * ARKLocalFn ) ( sunindextype Nlocal , realtype t , N_Vector y , N_Vector g , void * user_data )
const ARKLocalFn = Ptr{Cvoid}

# typedef int ( * ARKCommFn ) ( sunindextype Nlocal , realtype t , N_Vector y , void * user_data )
const ARKCommFn = Ptr{Cvoid}

@cenum MRISTEP_ID::UInt32 begin
    MRISTEP_ARKSTEP = 0
end

# typedef int ( * MRIStepPreInnerFn ) ( realtype t , N_Vector * f , int nvecs , void * user_data )
const MRIStepPreInnerFn = Ptr{Cvoid}

# typedef int ( * MRIStepPostInnerFn ) ( realtype t , N_Vector y , void * user_data )
const MRIStepPostInnerFn = Ptr{Cvoid}

# typedef int ( * CVRhsFn ) ( realtype t , N_Vector y , N_Vector ydot , void * user_data )
const CVRhsFn = Ptr{Cvoid}

# typedef int ( * CVRootFn ) ( realtype t , N_Vector y , realtype * gout , void * user_data )
const CVRootFn = Ptr{Cvoid}

# typedef int ( * CVEwtFn ) ( N_Vector y , N_Vector ewt , void * user_data )
const CVEwtFn = Ptr{Cvoid}

# typedef void ( * CVErrHandlerFn ) ( int error_code , const char * module , const char * function , char * msg , void * user_data )
const CVErrHandlerFn = Ptr{Cvoid}

# typedef int ( * CVLocalFn ) ( sunindextype Nlocal , realtype t , N_Vector y , N_Vector g , void * user_data )
const CVLocalFn = Ptr{Cvoid}

# typedef int ( * CVCommFn ) ( sunindextype Nlocal , realtype t , N_Vector y , void * user_data )
const CVCommFn = Ptr{Cvoid}

# typedef int ( * CVLsJacFn ) ( realtype t , N_Vector y , N_Vector fy , SUNMatrix Jac , void * user_data , N_Vector tmp1 , N_Vector tmp2 , N_Vector tmp3 )
const CVLsJacFn = Ptr{Cvoid}

const CVDlsJacFn = CVLsJacFn

# typedef int ( * CVLsPrecSetupFn ) ( realtype t , N_Vector y , N_Vector fy , booleantype jok , booleantype * jcurPtr , realtype gamma , void * user_data )
const CVLsPrecSetupFn = Ptr{Cvoid}

# typedef int ( * CVLsPrecSolveFn ) ( realtype t , N_Vector y , N_Vector fy , N_Vector r , N_Vector z , realtype gamma , realtype delta , int lr , void * user_data )
const CVLsPrecSolveFn = Ptr{Cvoid}

# typedef int ( * CVLsJacTimesSetupFn ) ( realtype t , N_Vector y , N_Vector fy , void * user_data )
const CVLsJacTimesSetupFn = Ptr{Cvoid}

# typedef int ( * CVLsJacTimesVecFn ) ( N_Vector v , N_Vector Jv , realtype t , N_Vector y , N_Vector fy , void * user_data , N_Vector tmp )
const CVLsJacTimesVecFn = Ptr{Cvoid}

# typedef int ( * CVLsLinSysFn ) ( realtype t , N_Vector y , N_Vector fy , SUNMatrix A , booleantype jok , booleantype * jcur , realtype gamma , void * user_data , N_Vector tmp1 , N_Vector tmp2 , N_Vector tmp3 )
const CVLsLinSysFn = Ptr{Cvoid}

const CVSpilsPrecSetupFn = CVLsPrecSetupFn

const CVSpilsPrecSolveFn = CVLsPrecSolveFn

const CVSpilsJacTimesSetupFn = CVLsJacTimesSetupFn

const CVSpilsJacTimesVecFn = CVLsJacTimesVecFn

# typedef int ( * CVQuadRhsFn ) ( realtype t , N_Vector y , N_Vector yQdot , void * user_data )
const CVQuadRhsFn = Ptr{Cvoid}

# typedef int ( * CVSensRhsFn ) ( int Ns , realtype t , N_Vector y , N_Vector ydot , N_Vector * yS , N_Vector * ySdot , void * user_data , N_Vector tmp1 , N_Vector tmp2 )
const CVSensRhsFn = Ptr{Cvoid}

# typedef int ( * CVSensRhs1Fn ) ( int Ns , realtype t , N_Vector y , N_Vector ydot , int iS , N_Vector yS , N_Vector ySdot , void * user_data , N_Vector tmp1 , N_Vector tmp2 )
const CVSensRhs1Fn = Ptr{Cvoid}

# typedef int ( * CVQuadSensRhsFn ) ( int Ns , realtype t , N_Vector y , N_Vector * yS , N_Vector yQdot , N_Vector * yQSdot , void * user_data , N_Vector tmp , N_Vector tmpQ )
const CVQuadSensRhsFn = Ptr{Cvoid}

# typedef int ( * CVRhsFnB ) ( realtype t , N_Vector y , N_Vector yB , N_Vector yBdot , void * user_dataB )
const CVRhsFnB = Ptr{Cvoid}

# typedef int ( * CVRhsFnBS ) ( realtype t , N_Vector y , N_Vector * yS , N_Vector yB , N_Vector yBdot , void * user_dataB )
const CVRhsFnBS = Ptr{Cvoid}

# typedef int ( * CVQuadRhsFnB ) ( realtype t , N_Vector y , N_Vector yB , N_Vector qBdot , void * user_dataB )
const CVQuadRhsFnB = Ptr{Cvoid}

# typedef int ( * CVQuadRhsFnBS ) ( realtype t , N_Vector y , N_Vector * yS , N_Vector yB , N_Vector qBdot , void * user_dataB )
const CVQuadRhsFnBS = Ptr{Cvoid}

struct CVadjCheckPointRec
    my_addr::Ptr{Cvoid}
    next_addr::Ptr{Cvoid}
    t0::realtype
    t1::realtype
    nstep::Clong
    order::Cint
    step::realtype
end

# typedef int ( * CVLocalFnB ) ( sunindextype NlocalB , realtype t , N_Vector y , N_Vector yB , N_Vector gB , void * user_dataB )
const CVLocalFnB = Ptr{Cvoid}

# typedef int ( * CVCommFnB ) ( sunindextype NlocalB , realtype t , N_Vector y , N_Vector yB , void * user_dataB )
const CVCommFnB = Ptr{Cvoid}

# typedef int ( * CVLsJacFnB ) ( realtype t , N_Vector y , N_Vector yB , N_Vector fyB , SUNMatrix JB , void * user_dataB , N_Vector tmp1B , N_Vector tmp2B , N_Vector tmp3B )
const CVLsJacFnB = Ptr{Cvoid}

const CVDlsJacFnB = CVLsJacFnB

# typedef int ( * CVLsJacFnBS ) ( realtype t , N_Vector y , N_Vector * yS , N_Vector yB , N_Vector fyB , SUNMatrix JB , void * user_dataB , N_Vector tmp1B , N_Vector tmp2B , N_Vector tmp3B )
const CVLsJacFnBS = Ptr{Cvoid}

const CVDlsJacFnBS = CVLsJacFnBS

# typedef int ( * CVLsPrecSetupFnB ) ( realtype t , N_Vector y , N_Vector yB , N_Vector fyB , booleantype jokB , booleantype * jcurPtrB , realtype gammaB , void * user_dataB )
const CVLsPrecSetupFnB = Ptr{Cvoid}

# typedef int ( * CVLsPrecSetupFnBS ) ( realtype t , N_Vector y , N_Vector * yS , N_Vector yB , N_Vector fyB , booleantype jokB , booleantype * jcurPtrB , realtype gammaB , void * user_dataB )
const CVLsPrecSetupFnBS = Ptr{Cvoid}

# typedef int ( * CVLsPrecSolveFnB ) ( realtype t , N_Vector y , N_Vector yB , N_Vector fyB , N_Vector rB , N_Vector zB , realtype gammaB , realtype deltaB , int lrB , void * user_dataB )
const CVLsPrecSolveFnB = Ptr{Cvoid}

# typedef int ( * CVLsPrecSolveFnBS ) ( realtype t , N_Vector y , N_Vector * yS , N_Vector yB , N_Vector fyB , N_Vector rB , N_Vector zB , realtype gammaB , realtype deltaB , int lrB , void * user_dataB )
const CVLsPrecSolveFnBS = Ptr{Cvoid}

# typedef int ( * CVLsJacTimesSetupFnB ) ( realtype t , N_Vector y , N_Vector yB , N_Vector fyB , void * jac_dataB )
const CVLsJacTimesSetupFnB = Ptr{Cvoid}

# typedef int ( * CVLsJacTimesSetupFnBS ) ( realtype t , N_Vector y , N_Vector * yS , N_Vector yB , N_Vector fyB , void * jac_dataB )
const CVLsJacTimesSetupFnBS = Ptr{Cvoid}

# typedef int ( * CVLsJacTimesVecFnB ) ( N_Vector vB , N_Vector JvB , realtype t , N_Vector y , N_Vector yB , N_Vector fyB , void * jac_dataB , N_Vector tmpB )
const CVLsJacTimesVecFnB = Ptr{Cvoid}

# typedef int ( * CVLsJacTimesVecFnBS ) ( N_Vector vB , N_Vector JvB , realtype t , N_Vector y , N_Vector * yS , N_Vector yB , N_Vector fyB , void * jac_dataB , N_Vector tmpB )
const CVLsJacTimesVecFnBS = Ptr{Cvoid}

# typedef int ( * CVLsLinSysFnB ) ( realtype t , N_Vector y , N_Vector yB , N_Vector fyB , SUNMatrix AB , booleantype jokB , booleantype * jcurB , realtype gammaB , void * user_dataB , N_Vector tmp1B , N_Vector tmp2B , N_Vector tmp3B )
const CVLsLinSysFnB = Ptr{Cvoid}

# typedef int ( * CVLsLinSysFnBS ) ( realtype t , N_Vector y , N_Vector * yS , N_Vector yB , N_Vector fyB , SUNMatrix AB , booleantype jokB , booleantype * jcurB , realtype gammaB , void * user_dataB , N_Vector tmp1B , N_Vector tmp2B , N_Vector tmp3B )
const CVLsLinSysFnBS = Ptr{Cvoid}

const CVSpilsPrecSetupFnB = CVLsPrecSetupFnB

const CVSpilsPrecSetupFnBS = CVLsPrecSetupFnBS

const CVSpilsPrecSolveFnB = CVLsPrecSolveFnB

const CVSpilsPrecSolveFnBS = CVLsPrecSolveFnBS

const CVSpilsJacTimesSetupFnB = CVLsJacTimesSetupFnB

const CVSpilsJacTimesSetupFnBS = CVLsJacTimesSetupFnBS

const CVSpilsJacTimesVecFnB = CVLsJacTimesVecFnB

const CVSpilsJacTimesVecFnBS = CVLsJacTimesVecFnBS

# typedef int ( * IDAResFn ) ( realtype tt , N_Vector yy , N_Vector yp , N_Vector rr , void * user_data )
const IDAResFn = Ptr{Cvoid}

# typedef int ( * IDARootFn ) ( realtype t , N_Vector y , N_Vector yp , realtype * gout , void * user_data )
const IDARootFn = Ptr{Cvoid}

# typedef int ( * IDAEwtFn ) ( N_Vector y , N_Vector ewt , void * user_data )
const IDAEwtFn = Ptr{Cvoid}

# typedef void ( * IDAErrHandlerFn ) ( int error_code , const char * module , const char * function , char * msg , void * user_data )
const IDAErrHandlerFn = Ptr{Cvoid}

# typedef int ( * IDABBDLocalFn ) ( sunindextype Nlocal , realtype tt , N_Vector yy , N_Vector yp , N_Vector gval , void * user_data )
const IDABBDLocalFn = Ptr{Cvoid}

# typedef int ( * IDABBDCommFn ) ( sunindextype Nlocal , realtype tt , N_Vector yy , N_Vector yp , void * user_data )
const IDABBDCommFn = Ptr{Cvoid}

# typedef int ( * IDALsJacFn ) ( realtype t , realtype c_j , N_Vector y , N_Vector yp , N_Vector r , SUNMatrix Jac , void * user_data , N_Vector tmp1 , N_Vector tmp2 , N_Vector tmp3 )
const IDALsJacFn = Ptr{Cvoid}

const IDADlsJacFn = IDALsJacFn

# typedef int ( * IDALsPrecSetupFn ) ( realtype tt , N_Vector yy , N_Vector yp , N_Vector rr , realtype c_j , void * user_data )
const IDALsPrecSetupFn = Ptr{Cvoid}

# typedef int ( * IDALsPrecSolveFn ) ( realtype tt , N_Vector yy , N_Vector yp , N_Vector rr , N_Vector rvec , N_Vector zvec , realtype c_j , realtype delta , void * user_data )
const IDALsPrecSolveFn = Ptr{Cvoid}

# typedef int ( * IDALsJacTimesSetupFn ) ( realtype tt , N_Vector yy , N_Vector yp , N_Vector rr , realtype c_j , void * user_data )
const IDALsJacTimesSetupFn = Ptr{Cvoid}

# typedef int ( * IDALsJacTimesVecFn ) ( realtype tt , N_Vector yy , N_Vector yp , N_Vector rr , N_Vector v , N_Vector Jv , realtype c_j , void * user_data , N_Vector tmp1 , N_Vector tmp2 )
const IDALsJacTimesVecFn = Ptr{Cvoid}

const IDASpilsPrecSetupFn = IDALsPrecSetupFn

const IDASpilsPrecSolveFn = IDALsPrecSolveFn

const IDASpilsJacTimesSetupFn = IDALsJacTimesSetupFn

const IDASpilsJacTimesVecFn = IDALsJacTimesVecFn

# typedef int ( * IDAQuadRhsFn ) ( realtype tres , N_Vector yy , N_Vector yp , N_Vector rrQ , void * user_data )
const IDAQuadRhsFn = Ptr{Cvoid}

# typedef int ( * IDASensResFn ) ( int Ns , realtype t , N_Vector yy , N_Vector yp , N_Vector resval , N_Vector * yyS , N_Vector * ypS , N_Vector * resvalS , void * user_data , N_Vector tmp1 , N_Vector tmp2 , N_Vector tmp3 )
const IDASensResFn = Ptr{Cvoid}

# typedef int ( * IDAQuadSensRhsFn ) ( int Ns , realtype t , N_Vector yy , N_Vector yp , N_Vector * yyS , N_Vector * ypS , N_Vector rrQ , N_Vector * rhsvalQS , void * user_data , N_Vector yytmp , N_Vector yptmp , N_Vector tmpQS )
const IDAQuadSensRhsFn = Ptr{Cvoid}

# typedef int ( * IDAResFnB ) ( realtype tt , N_Vector yy , N_Vector yp , N_Vector yyB , N_Vector ypB , N_Vector rrB , void * user_dataB )
const IDAResFnB = Ptr{Cvoid}

# typedef int ( * IDAResFnBS ) ( realtype t , N_Vector yy , N_Vector yp , N_Vector * yyS , N_Vector * ypS , N_Vector yyB , N_Vector ypB , N_Vector rrBS , void * user_dataB )
const IDAResFnBS = Ptr{Cvoid}

# typedef int ( * IDAQuadRhsFnB ) ( realtype tt , N_Vector yy , N_Vector yp , N_Vector yyB , N_Vector ypB , N_Vector rhsvalBQ , void * user_dataB )
const IDAQuadRhsFnB = Ptr{Cvoid}

# typedef int ( * IDAQuadRhsFnBS ) ( realtype t , N_Vector yy , N_Vector yp , N_Vector * yyS , N_Vector * ypS , N_Vector yyB , N_Vector ypB , N_Vector rhsvalBQS , void * user_dataB )
const IDAQuadRhsFnBS = Ptr{Cvoid}

const N_Vector_S = Ptr{N_Vector}

struct IDAadjCheckPointRec
    my_addr::Ptr{Cvoid}
    next_addr::Ptr{Cvoid}
    t0::realtype
    t1::realtype
    nstep::Clong
    order::Cint
    step::realtype
end

# typedef int ( * IDABBDLocalFnB ) ( sunindextype NlocalB , realtype tt , N_Vector yy , N_Vector yp , N_Vector yyB , N_Vector ypB , N_Vector gvalB , void * user_dataB )
const IDABBDLocalFnB = Ptr{Cvoid}

# typedef int ( * IDABBDCommFnB ) ( sunindextype NlocalB , realtype tt , N_Vector yy , N_Vector yp , N_Vector yyB , N_Vector ypB , void * user_dataB )
const IDABBDCommFnB = Ptr{Cvoid}

# typedef int ( * IDALsJacFnB ) ( realtype tt , realtype c_jB , N_Vector yy , N_Vector yp , N_Vector yyB , N_Vector ypB , N_Vector rrB , SUNMatrix JacB , void * user_dataB , N_Vector tmp1B , N_Vector tmp2B , N_Vector tmp3B )
const IDALsJacFnB = Ptr{Cvoid}

const IDADlsJacFnB = IDALsJacFnB

# typedef int ( * IDALsJacFnBS ) ( realtype tt , realtype c_jB , N_Vector yy , N_Vector yp , N_Vector * yS , N_Vector * ypS , N_Vector yyB , N_Vector ypB , N_Vector rrB , SUNMatrix JacB , void * user_dataB , N_Vector tmp1B , N_Vector tmp2B , N_Vector tmp3B )
const IDALsJacFnBS = Ptr{Cvoid}

const IDADlsJacFnBS = IDALsJacFnBS

# typedef int ( * IDALsPrecSetupFnB ) ( realtype tt , N_Vector yy , N_Vector yp , N_Vector yyB , N_Vector ypB , N_Vector rrB , realtype c_jB , void * user_dataB )
const IDALsPrecSetupFnB = Ptr{Cvoid}

# typedef int ( * IDALsPrecSetupFnBS ) ( realtype tt , N_Vector yy , N_Vector yp , N_Vector * yyS , N_Vector * ypS , N_Vector yyB , N_Vector ypB , N_Vector rrB , realtype c_jB , void * user_dataB )
const IDALsPrecSetupFnBS = Ptr{Cvoid}

# typedef int ( * IDALsPrecSolveFnB ) ( realtype tt , N_Vector yy , N_Vector yp , N_Vector yyB , N_Vector ypB , N_Vector rrB , N_Vector rvecB , N_Vector zvecB , realtype c_jB , realtype deltaB , void * user_dataB )
const IDALsPrecSolveFnB = Ptr{Cvoid}

# typedef int ( * IDALsPrecSolveFnBS ) ( realtype tt , N_Vector yy , N_Vector yp , N_Vector * yyS , N_Vector * ypS , N_Vector yyB , N_Vector ypB , N_Vector rrB , N_Vector rvecB , N_Vector zvecB , realtype c_jB , realtype deltaB , void * user_dataB )
const IDALsPrecSolveFnBS = Ptr{Cvoid}

# typedef int ( * IDALsJacTimesSetupFnB ) ( realtype t , N_Vector yy , N_Vector yp , N_Vector yyB , N_Vector ypB , N_Vector rrB , realtype c_jB , void * user_dataB )
const IDALsJacTimesSetupFnB = Ptr{Cvoid}

# typedef int ( * IDALsJacTimesSetupFnBS ) ( realtype t , N_Vector yy , N_Vector yp , N_Vector * yyS , N_Vector * ypS , N_Vector yyB , N_Vector ypB , N_Vector rrB , realtype c_jB , void * user_dataB )
const IDALsJacTimesSetupFnBS = Ptr{Cvoid}

# typedef int ( * IDALsJacTimesVecFnB ) ( realtype t , N_Vector yy , N_Vector yp , N_Vector yyB , N_Vector ypB , N_Vector rrB , N_Vector vB , N_Vector JvB , realtype c_jB , void * user_dataB , N_Vector tmp1B , N_Vector tmp2B )
const IDALsJacTimesVecFnB = Ptr{Cvoid}

# typedef int ( * IDALsJacTimesVecFnBS ) ( realtype t , N_Vector yy , N_Vector yp , N_Vector * yyS , N_Vector * ypS , N_Vector yyB , N_Vector ypB , N_Vector rrB , N_Vector vB , N_Vector JvB , realtype c_jB , void * user_dataB , N_Vector tmp1B , N_Vector tmp2B )
const IDALsJacTimesVecFnBS = Ptr{Cvoid}

const IDASpilsPrecSetupFnB = IDALsPrecSetupFnB

const IDASpilsPrecSetupFnBS = IDALsPrecSetupFnBS

const IDASpilsPrecSolveFnB = IDALsPrecSolveFnB

const IDASpilsPrecSolveFnBS = IDALsPrecSolveFnBS

const IDASpilsJacTimesSetupFnB = IDALsJacTimesSetupFnB

const IDASpilsJacTimesSetupFnBS = IDALsJacTimesSetupFnBS

const IDASpilsJacTimesVecFnB = IDALsJacTimesVecFnB

const IDASpilsJacTimesVecFnBS = IDALsJacTimesVecFnBS

# typedef int ( * KINSysFn ) ( N_Vector uu , N_Vector fval , void * user_data )
const KINSysFn = Ptr{Cvoid}

# typedef void ( * KINErrHandlerFn ) ( int error_code , const char * module , const char * function , char * msg , void * user_data )
const KINErrHandlerFn = Ptr{Cvoid}

# typedef void ( * KINInfoHandlerFn ) ( const char * module , const char * function , char * msg , void * user_data )
const KINInfoHandlerFn = Ptr{Cvoid}

# typedef int ( * KINBBDCommFn ) ( sunindextype Nlocal , N_Vector u , void * user_data )
const KINBBDCommFn = Ptr{Cvoid}

# typedef int ( * KINBBDLocalFn ) ( sunindextype Nlocal , N_Vector uu , N_Vector gval , void * user_data )
const KINBBDLocalFn = Ptr{Cvoid}

# typedef int ( * KINLsJacFn ) ( N_Vector u , N_Vector fu , SUNMatrix J , void * user_data , N_Vector tmp1 , N_Vector tmp2 )
const KINLsJacFn = Ptr{Cvoid}

const KINDlsJacFn = KINLsJacFn

# typedef int ( * KINLsPrecSetupFn ) ( N_Vector uu , N_Vector uscale , N_Vector fval , N_Vector fscale , void * user_data )
const KINLsPrecSetupFn = Ptr{Cvoid}

# typedef int ( * KINLsPrecSolveFn ) ( N_Vector uu , N_Vector uscale , N_Vector fval , N_Vector fscale , N_Vector vv , void * user_data )
const KINLsPrecSolveFn = Ptr{Cvoid}

# typedef int ( * KINLsJacTimesVecFn ) ( N_Vector v , N_Vector Jv , N_Vector uu , booleantype * new_uu , void * J_data )
const KINLsJacTimesVecFn = Ptr{Cvoid}

const KINSpilsPrecSetupFn = KINLsPrecSetupFn

const KINSpilsPrecSolveFn = KINLsPrecSolveFn

const KINSpilsJacTimesVecFn = KINLsJacTimesVecFn

struct _N_VectorContent_ManyVector
    num_subvectors::sunindextype
    global_length::sunindextype
    subvec_array::Ptr{N_Vector}
    own_data::Cint
end

const N_VectorContent_ManyVector = Ptr{_N_VectorContent_ManyVector}

@cenum N_Vector_ID::UInt32 begin
    SUNDIALS_NVEC_SERIAL = 0
    SUNDIALS_NVEC_PARALLEL = 1
    SUNDIALS_NVEC_OPENMP = 2
    SUNDIALS_NVEC_PTHREADS = 3
    SUNDIALS_NVEC_PARHYP = 4
    SUNDIALS_NVEC_PETSC = 5
    SUNDIALS_NVEC_CUDA = 6
    SUNDIALS_NVEC_RAJA = 7
    SUNDIALS_NVEC_OPENMPDEV = 8
    SUNDIALS_NVEC_TRILINOS = 9
    SUNDIALS_NVEC_MANYVECTOR = 10
    SUNDIALS_NVEC_MPIMANYVECTOR = 11
    SUNDIALS_NVEC_MPIPLUSX = 12
    SUNDIALS_NVEC_CUSTOM = 13
end

struct _N_VectorContent_Serial
    length::sunindextype
    own_data::Cint
    data::Ptr{realtype}
end

const N_VectorContent_Serial = Ptr{_N_VectorContent_Serial}

struct _DlsMat
    type::Cint
    M::sunindextype
    N::sunindextype
    ldim::sunindextype
    mu::sunindextype
    ml::sunindextype
    s_mu::sunindextype
    data::Ptr{realtype}
    ldata::sunindextype
    cols::Ptr{Ptr{realtype}}
end

const DlsMat = Ptr{_DlsMat}

@cenum __JL_Ctag_173::UInt32 begin
    PREC_NONE = 0
    PREC_LEFT = 1
    PREC_RIGHT = 2
    PREC_BOTH = 3
end

@cenum __JL_Ctag_174::UInt32 begin
    MODIFIED_GS = 1
    CLASSICAL_GS = 2
end

# typedef int ( * ATimesFn ) ( void * A_data , N_Vector v , N_Vector z )
const ATimesFn = Ptr{Cvoid}

# typedef int ( * PSetupFn ) ( void * P_data )
const PSetupFn = Ptr{Cvoid}

# typedef int ( * PSolveFn ) ( void * P_data , N_Vector r , N_Vector z , realtype tol , int lr )
const PSolveFn = Ptr{Cvoid}

@cenum SUNLinearSolver_Type::UInt32 begin
    SUNLINEARSOLVER_DIRECT = 0
    SUNLINEARSOLVER_ITERATIVE = 1
    SUNLINEARSOLVER_MATRIX_ITERATIVE = 2
end

@cenum SUNLinearSolver_ID::UInt32 begin
    SUNLINEARSOLVER_BAND = 0
    SUNLINEARSOLVER_DENSE = 1
    SUNLINEARSOLVER_KLU = 2
    SUNLINEARSOLVER_LAPACKBAND = 3
    SUNLINEARSOLVER_LAPACKDENSE = 4
    SUNLINEARSOLVER_PCG = 5
    SUNLINEARSOLVER_SPBCGS = 6
    SUNLINEARSOLVER_SPFGMR = 7
    SUNLINEARSOLVER_SPGMR = 8
    SUNLINEARSOLVER_SPTFQMR = 9
    SUNLINEARSOLVER_SUPERLUDIST = 10
    SUNLINEARSOLVER_SUPERLUMT = 11
    SUNLINEARSOLVER_CUSOLVERSP_BATCHQR = 12
    SUNLINEARSOLVER_CUSTOM = 13
end

@cenum SUNMatrix_ID::UInt32 begin
    SUNMATRIX_DENSE = 0
    SUNMATRIX_BAND = 1
    SUNMATRIX_SPARSE = 2
    SUNMATRIX_SLUNRLOC = 3
    SUNMATRIX_CUSPARSE = 4
    SUNMATRIX_CUSTOM = 5
end

# typedef int ( * SUNNonlinSolSysFn ) ( N_Vector y , N_Vector F , void * mem )
const SUNNonlinSolSysFn = Ptr{Cvoid}

# typedef int ( * SUNNonlinSolLSetupFn ) ( booleantype jbad , booleantype * jcur , void * mem )
const SUNNonlinSolLSetupFn = Ptr{Cvoid}

# typedef int ( * SUNNonlinSolLSolveFn ) ( N_Vector b , void * mem )
const SUNNonlinSolLSolveFn = Ptr{Cvoid}

# typedef int ( * SUNNonlinSolConvTestFn ) ( SUNNonlinearSolver NLS , N_Vector y , N_Vector del , realtype tol , N_Vector ewt , void * mem )
const SUNNonlinSolConvTestFn = Ptr{Cvoid}

@cenum SUNNonlinearSolver_Type::UInt32 begin
    SUNNONLINEARSOLVER_ROOTFIND = 0
    SUNNONLINEARSOLVER_FIXEDPOINT = 1
end

struct _SUNLinearSolverContent_Band
    N::sunindextype
    pivots::Ptr{sunindextype}
    last_flag::sunindextype
end

const SUNLinearSolverContent_Band = Ptr{_SUNLinearSolverContent_Band}

struct _SUNLinearSolverContent_Dense
    N::sunindextype
    pivots::Ptr{sunindextype}
    last_flag::sunindextype
end

const SUNLinearSolverContent_Dense = Ptr{_SUNLinearSolverContent_Dense}

# typedef sunindextype ( * KLUSolveFn ) ( sun_klu_symbolic * , sun_klu_numeric * , sunindextype , sunindextype , double * , sun_klu_common * )
const KLUSolveFn = Ptr{Cvoid}

struct _SUNLinearSolverContent_KLU
    last_flag::Cint
    first_factorize::Cint
    symbolic::Ptr{klu_l_symbolic}
    numeric::Ptr{klu_l_numeric}
    common::klu_l_common
    klu_solver::KLUSolveFn
end

const SUNLinearSolverContent_KLU = Ptr{_SUNLinearSolverContent_KLU}

struct _SUNLinearSolverContent_LapackBand
    N::sunindextype
    pivots::Ptr{sunindextype}
    last_flag::sunindextype
end

const SUNLinearSolverContent_LapackBand = Ptr{_SUNLinearSolverContent_LapackBand}

struct _SUNLinearSolverContent_LapackDense
    N::sunindextype
    pivots::Ptr{sunindextype}
    last_flag::sunindextype
end

const SUNLinearSolverContent_LapackDense = Ptr{_SUNLinearSolverContent_LapackDense}

struct _SUNLinearSolverContent_PCG
    maxl::Cint
    pretype::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Cint
    ATimes::ATimesFn
    ATData::Ptr{Cvoid}
    Psetup::PSetupFn
    Psolve::PSolveFn
    PData::Ptr{Cvoid}
    s::N_Vector
    r::N_Vector
    p::N_Vector
    z::N_Vector
    Ap::N_Vector
end

const SUNLinearSolverContent_PCG = Ptr{_SUNLinearSolverContent_PCG}

struct _SUNLinearSolverContent_SPBCGS
    maxl::Cint
    pretype::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Cint
    ATimes::ATimesFn
    ATData::Ptr{Cvoid}
    Psetup::PSetupFn
    Psolve::PSolveFn
    PData::Ptr{Cvoid}
    s1::N_Vector
    s2::N_Vector
    r::N_Vector
    r_star::N_Vector
    p::N_Vector
    q::N_Vector
    u::N_Vector
    Ap::N_Vector
    vtemp::N_Vector
end

const SUNLinearSolverContent_SPBCGS = Ptr{_SUNLinearSolverContent_SPBCGS}

struct _SUNLinearSolverContent_SPFGMR
    maxl::Cint
    pretype::Cint
    gstype::Cint
    max_restarts::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Cint
    ATimes::ATimesFn
    ATData::Ptr{Cvoid}
    Psetup::PSetupFn
    Psolve::PSolveFn
    PData::Ptr{Cvoid}
    s1::N_Vector
    s2::N_Vector
    V::Ptr{N_Vector}
    Z::Ptr{N_Vector}
    Hes::Ptr{Ptr{realtype}}
    givens::Ptr{realtype}
    xcor::N_Vector
    yg::Ptr{realtype}
    vtemp::N_Vector
    cv::Ptr{realtype}
    Xv::Ptr{N_Vector}
end

const SUNLinearSolverContent_SPFGMR = Ptr{_SUNLinearSolverContent_SPFGMR}

struct _SUNLinearSolverContent_SPGMR
    maxl::Cint
    pretype::Cint
    gstype::Cint
    max_restarts::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Cint
    ATimes::ATimesFn
    ATData::Ptr{Cvoid}
    Psetup::PSetupFn
    Psolve::PSolveFn
    PData::Ptr{Cvoid}
    s1::N_Vector
    s2::N_Vector
    V::Ptr{N_Vector}
    Hes::Ptr{Ptr{realtype}}
    givens::Ptr{realtype}
    xcor::N_Vector
    yg::Ptr{realtype}
    vtemp::N_Vector
    cv::Ptr{realtype}
    Xv::Ptr{N_Vector}
end

const SUNLinearSolverContent_SPGMR = Ptr{_SUNLinearSolverContent_SPGMR}

struct _SUNLinearSolverContent_SPTFQMR
    maxl::Cint
    pretype::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Cint
    ATimes::ATimesFn
    ATData::Ptr{Cvoid}
    Psetup::PSetupFn
    Psolve::PSolveFn
    PData::Ptr{Cvoid}
    s1::N_Vector
    s2::N_Vector
    r_star::N_Vector
    q::N_Vector
    d::N_Vector
    v::N_Vector
    p::N_Vector
    r::Ptr{N_Vector}
    u::N_Vector
    vtemp1::N_Vector
    vtemp2::N_Vector
    vtemp3::N_Vector
end

const SUNLinearSolverContent_SPTFQMR = Ptr{_SUNLinearSolverContent_SPTFQMR}

struct _SUNMatrixContent_Band
    M::sunindextype
    N::sunindextype
    ldim::sunindextype
    mu::sunindextype
    ml::sunindextype
    s_mu::sunindextype
    data::Ptr{realtype}
    ldata::sunindextype
    cols::Ptr{Ptr{realtype}}
end

const SUNMatrixContent_Band = Ptr{_SUNMatrixContent_Band}

struct _SUNMatrixContent_Dense
    M::sunindextype
    N::sunindextype
    data::Ptr{realtype}
    ldata::sunindextype
    cols::Ptr{Ptr{realtype}}
end

const SUNMatrixContent_Dense = Ptr{_SUNMatrixContent_Dense}

struct _SUNMatrixContent_Sparse
    M::sunindextype
    N::sunindextype
    NNZ::sunindextype
    NP::sunindextype
    data::Ptr{realtype}
    sparsetype::Cint
    indexvals::Ptr{sunindextype}
    indexptrs::Ptr{sunindextype}
    rowvals::Ptr{Ptr{sunindextype}}
    colptrs::Ptr{Ptr{sunindextype}}
    colvals::Ptr{Ptr{sunindextype}}
    rowptrs::Ptr{Ptr{sunindextype}}
end

const SUNMatrixContent_Sparse = Ptr{_SUNMatrixContent_Sparse}

struct _SUNNonlinearSolverContent_FixedPoint
    Sys::SUNNonlinSolSysFn
    CTest::SUNNonlinSolConvTestFn
    m::Cint
    imap::Ptr{Cint}
    damping::Cint
    beta::realtype
    R::Ptr{realtype}
    gamma::Ptr{realtype}
    cvals::Ptr{realtype}
    df::Ptr{N_Vector}
    dg::Ptr{N_Vector}
    q::Ptr{N_Vector}
    Xvecs::Ptr{N_Vector}
    yprev::N_Vector
    gy::N_Vector
    fold::N_Vector
    gold::N_Vector
    delta::N_Vector
    curiter::Cint
    maxiters::Cint
    niters::Clong
    nconvfails::Clong
    ctest_data::Ptr{Cvoid}
end

const SUNNonlinearSolverContent_FixedPoint = Ptr{_SUNNonlinearSolverContent_FixedPoint}

struct _SUNNonlinearSolverContent_Newton
    Sys::SUNNonlinSolSysFn
    LSetup::SUNNonlinSolLSetupFn
    LSolve::SUNNonlinSolLSolveFn
    CTest::SUNNonlinSolConvTestFn
    delta::N_Vector
    jcur::Cint
    curiter::Cint
    maxiters::Cint
    niters::Clong
    nconvfails::Clong
    ctest_data::Ptr{Cvoid}
end

const SUNNonlinearSolverContent_Newton = Ptr{_SUNNonlinearSolverContent_Newton}

const ARK_NORMAL = Cint(1)

const ARK_ONE_STEP = Cint(2)

const ARK_INTERP_MAX_DEGREE = Cint(5)

const ARK_INTERP_HERMITE = Cint(0)

const ARK_INTERP_LAGRANGE = Cint(1)

const ARK_SUCCESS = Cint(0)

const ARK_TSTOP_RETURN = Cint(1)

const ARK_ROOT_RETURN = Cint(2)

const ARK_WARNING = Cint(99)

const ARK_TOO_MUCH_WORK = -1

const ARK_TOO_MUCH_ACC = -2

const ARK_ERR_FAILURE = -3

const ARK_CONV_FAILURE = -4

const ARK_LINIT_FAIL = -5

const ARK_LSETUP_FAIL = -6

const ARK_LSOLVE_FAIL = -7

const ARK_RHSFUNC_FAIL = -8

const ARK_FIRST_RHSFUNC_ERR = -9

const ARK_REPTD_RHSFUNC_ERR = -10

const ARK_UNREC_RHSFUNC_ERR = -11

const ARK_RTFUNC_FAIL = -12

const ARK_LFREE_FAIL = -13

const ARK_MASSINIT_FAIL = -14

const ARK_MASSSETUP_FAIL = -15

const ARK_MASSSOLVE_FAIL = -16

const ARK_MASSFREE_FAIL = -17

const ARK_MASSMULT_FAIL = -18

const ARK_CONSTR_FAIL = -19

const ARK_MEM_FAIL = -20

const ARK_MEM_NULL = -21

const ARK_ILL_INPUT = -22

const ARK_NO_MALLOC = -23

const ARK_BAD_K = -24

const ARK_BAD_T = -25

const ARK_BAD_DKY = -26

const ARK_TOO_CLOSE = -27

const ARK_VECTOROP_ERR = -28

const ARK_NLS_INIT_FAIL = -29

const ARK_NLS_SETUP_FAIL = -30

const ARK_NLS_SETUP_RECVR = -31

const ARK_NLS_OP_ERR = -32

const ARK_INNERSTEP_ATTACH_ERR = -33

const ARK_INNERSTEP_FAIL = -34

const ARK_OUTERTOINNER_FAIL = -35

const ARK_INNERTOOUTER_FAIL = -36

const ARK_POSTPROCESS_FAIL = -37

const ARK_POSTPROCESS_STEP_FAIL = -37

const ARK_POSTPROCESS_STAGE_FAIL = -38

const ARK_USER_PREDICT_FAIL = -39

const ARK_INTERP_FAIL = -40

const ARK_UNRECOGNIZED_ERROR = -99

const HEUN_EULER_2_1_2 = Cint(0)

const DEFAULT_ERK_2 = HEUN_EULER_2_1_2

const BOGACKI_SHAMPINE_4_2_3 = Cint(1)

const DEFAULT_ERK_3 = BOGACKI_SHAMPINE_4_2_3

const ZONNEVELD_5_3_4 = Cint(3)

const DEFAULT_ERK_4 = ZONNEVELD_5_3_4

const CASH_KARP_6_4_5 = Cint(6)

const DEFAULT_ERK_5 = CASH_KARP_6_4_5

const VERNER_8_5_6 = Cint(10)

const DEFAULT_ERK_6 = VERNER_8_5_6

const FEHLBERG_13_7_8 = Cint(11)

const DEFAULT_ERK_8 = FEHLBERG_13_7_8

const SDIRK_2_1_2 = Cint(100)

const DEFAULT_DIRK_2 = SDIRK_2_1_2

const ARK324L2SA_DIRK_4_2_3 = Cint(104)

const DEFAULT_DIRK_3 = ARK324L2SA_DIRK_4_2_3

const SDIRK_5_3_4 = Cint(107)

const DEFAULT_DIRK_4 = SDIRK_5_3_4

const ARK548L2SA_DIRK_8_4_5 = Cint(111)

const DEFAULT_DIRK_5 = ARK548L2SA_DIRK_8_4_5

const ARK324L2SA_ERK_4_2_3 = Cint(2)

const DEFAULT_ARK_ETABLE_3 = ARK324L2SA_ERK_4_2_3

const ARK436L2SA_ERK_6_3_4 = Cint(4)

const DEFAULT_ARK_ETABLE_4 = ARK436L2SA_ERK_6_3_4

const ARK548L2SA_ERK_8_4_5 = Cint(9)

const DEFAULT_ARK_ETABLE_5 = ARK548L2SA_ERK_8_4_5

const DEFAULT_ARK_ITABLE_3 = ARK324L2SA_DIRK_4_2_3

const ARK436L2SA_DIRK_6_3_4 = Cint(109)

const DEFAULT_ARK_ITABLE_4 = ARK436L2SA_DIRK_6_3_4

const DEFAULT_ARK_ITABLE_5 = ARK548L2SA_DIRK_8_4_5

const BILLINGTON_3_3_2 = Cint(101)

const TRBDF2_3_3_2 = Cint(102)

const KVAERNO_4_2_3 = Cint(103)

const CASH_5_2_4 = Cint(105)

const CASH_5_3_4 = Cint(106)

const KVAERNO_5_3_4 = Cint(108)

const KVAERNO_7_4_5 = Cint(110)

const ARK437L2SA_DIRK_7_3_4 = Cint(112)

const ARK548L2SAb_DIRK_8_4_5 = Cint(113)

const MIN_DIRK_NUM = Cint(100)

const MAX_DIRK_NUM = Cint(113)

const SAYFY_ABURUB_6_3_4 = Cint(5)

const FEHLBERG_6_4_5 = Cint(7)

const DORMAND_PRINCE_7_4_5 = Cint(8)

const KNOTH_WOLKE_3_3 = Cint(12)

const ARK437L2SA_ERK_7_3_4 = Cint(13)

const ARK548L2SAb_ERK_8_4_5 = Cint(14)

const MIN_ERK_NUM = Cint(0)

const MAX_ERK_NUM = Cint(14)

const ARKLS_SUCCESS = Cint(0)

const ARKLS_MEM_NULL = -1

const ARKLS_LMEM_NULL = -2

const ARKLS_ILL_INPUT = -3

const ARKLS_MEM_FAIL = -4

const ARKLS_PMEM_NULL = -5

const ARKLS_MASSMEM_NULL = -6

const ARKLS_JACFUNC_UNRECVR = -7

const ARKLS_JACFUNC_RECVR = -8

const ARKLS_MASSFUNC_UNRECVR = -9

const ARKLS_MASSFUNC_RECVR = -10

const ARKLS_SUNMAT_FAIL = -11

const ARKLS_SUNLS_FAIL = -12

const DEFAULT_MRI_TABLE_3 = KNOTH_WOLKE_3_3

const CV_ADAMS = Cint(1)

const CV_BDF = Cint(2)

const CV_NORMAL = Cint(1)

const CV_ONE_STEP = Cint(2)

const CV_SUCCESS = Cint(0)

const CV_TSTOP_RETURN = Cint(1)

const CV_ROOT_RETURN = Cint(2)

const CV_WARNING = Cint(99)

const CV_TOO_MUCH_WORK = -1

const CV_TOO_MUCH_ACC = -2

const CV_ERR_FAILURE = -3

const CV_CONV_FAILURE = -4

const CV_LINIT_FAIL = -5

const CV_LSETUP_FAIL = -6

const CV_LSOLVE_FAIL = -7

const CV_RHSFUNC_FAIL = -8

const CV_FIRST_RHSFUNC_ERR = -9

const CV_REPTD_RHSFUNC_ERR = -10

const CV_UNREC_RHSFUNC_ERR = -11

const CV_RTFUNC_FAIL = -12

const CV_NLS_INIT_FAIL = -13

const CV_NLS_SETUP_FAIL = -14

const CV_CONSTR_FAIL = -15

const CV_NLS_FAIL = -16

const CV_MEM_FAIL = -20

const CV_MEM_NULL = -21

const CV_ILL_INPUT = -22

const CV_NO_MALLOC = -23

const CV_BAD_K = -24

const CV_BAD_T = -25

const CV_BAD_DKY = -26

const CV_TOO_CLOSE = -27

const CV_VECTOROP_ERR = -28

const CV_UNRECOGNIZED_ERR = -99

const CVDIAG_SUCCESS = Cint(0)

const CVDIAG_MEM_NULL = -1

const CVDIAG_LMEM_NULL = -2

const CVDIAG_ILL_INPUT = -3

const CVDIAG_MEM_FAIL = -4

const CVDIAG_INV_FAIL = -5

const CVDIAG_RHSFUNC_UNRECVR = -6

const CVDIAG_RHSFUNC_RECVR = -7

const CVLS_SUCCESS = Cint(0)

const CVLS_MEM_NULL = -1

const CVLS_LMEM_NULL = -2

const CVLS_ILL_INPUT = -3

const CVLS_MEM_FAIL = -4

const CVLS_PMEM_NULL = -5

const CVLS_JACFUNC_UNRECVR = -6

const CVLS_JACFUNC_RECVR = -7

const CVLS_SUNMAT_FAIL = -8

const CVLS_SUNLS_FAIL = -9

const CV_SIMULTANEOUS = Cint(1)

const CV_STAGGERED = Cint(2)

const CV_STAGGERED1 = Cint(3)

const CV_CENTERED = Cint(1)

const CV_FORWARD = Cint(2)

const CV_HERMITE = Cint(1)

const CV_POLYNOMIAL = Cint(2)

const CV_NO_QUAD = -30

const CV_QRHSFUNC_FAIL = -31

const CV_FIRST_QRHSFUNC_ERR = -32

const CV_REPTD_QRHSFUNC_ERR = -33

const CV_UNREC_QRHSFUNC_ERR = -34

const CV_NO_SENS = -40

const CV_SRHSFUNC_FAIL = -41

const CV_FIRST_SRHSFUNC_ERR = -42

const CV_REPTD_SRHSFUNC_ERR = -43

const CV_UNREC_SRHSFUNC_ERR = -44

const CV_BAD_IS = -45

const CV_NO_QUADSENS = -50

const CV_QSRHSFUNC_FAIL = -51

const CV_FIRST_QSRHSFUNC_ERR = -52

const CV_REPTD_QSRHSFUNC_ERR = -53

const CV_UNREC_QSRHSFUNC_ERR = -54

const CV_NO_ADJ = -101

const CV_NO_FWD = -102

const CV_NO_BCK = -103

const CV_BAD_TB0 = -104

const CV_REIFWD_FAIL = -105

const CV_FWD_FAIL = -106

const CV_GETY_BADT = -107

const CVDIAG_NO_ADJ = -101

const CVLS_NO_ADJ = -101

const CVLS_LMEMB_NULL = -102

const IDA_NORMAL = Cint(1)

const IDA_ONE_STEP = Cint(2)

const IDA_YA_YDP_INIT = Cint(1)

const IDA_Y_INIT = Cint(2)

const IDA_SUCCESS = Cint(0)

const IDA_TSTOP_RETURN = Cint(1)

const IDA_ROOT_RETURN = Cint(2)

const IDA_WARNING = Cint(99)

const IDA_TOO_MUCH_WORK = -1

const IDA_TOO_MUCH_ACC = -2

const IDA_ERR_FAIL = -3

const IDA_CONV_FAIL = -4

const IDA_LINIT_FAIL = -5

const IDA_LSETUP_FAIL = -6

const IDA_LSOLVE_FAIL = -7

const IDA_RES_FAIL = -8

const IDA_REP_RES_ERR = -9

const IDA_RTFUNC_FAIL = -10

const IDA_CONSTR_FAIL = -11

const IDA_FIRST_RES_FAIL = -12

const IDA_LINESEARCH_FAIL = -13

const IDA_NO_RECOVERY = -14

const IDA_NLS_INIT_FAIL = -15

const IDA_NLS_SETUP_FAIL = -16

const IDA_NLS_FAIL = -17

const IDA_MEM_NULL = -20

const IDA_MEM_FAIL = -21

const IDA_ILL_INPUT = -22

const IDA_NO_MALLOC = -23

const IDA_BAD_EWT = -24

const IDA_BAD_K = -25

const IDA_BAD_T = -26

const IDA_BAD_DKY = -27

const IDA_VECTOROP_ERR = -28

const IDA_UNRECOGNIZED_ERROR = -99

const IDALS_SUCCESS = Cint(0)

const IDALS_MEM_NULL = -1

const IDALS_LMEM_NULL = -2

const IDALS_ILL_INPUT = -3

const IDALS_MEM_FAIL = -4

const IDALS_PMEM_NULL = -5

const IDALS_JACFUNC_UNRECVR = -6

const IDALS_JACFUNC_RECVR = -7

const IDALS_SUNMAT_FAIL = -8

const IDALS_SUNLS_FAIL = -9

const IDA_SIMULTANEOUS = Cint(1)

const IDA_STAGGERED = Cint(2)

const IDA_CENTERED = Cint(1)

const IDA_FORWARD = Cint(2)

const IDA_HERMITE = Cint(1)

const IDA_POLYNOMIAL = Cint(2)

const IDA_NO_QUAD = -30

const IDA_QRHS_FAIL = -31

const IDA_FIRST_QRHS_ERR = -32

const IDA_REP_QRHS_ERR = -33

const IDA_NO_SENS = -40

const IDA_SRES_FAIL = -41

const IDA_REP_SRES_ERR = -42

const IDA_BAD_IS = -43

const IDA_NO_QUADSENS = -50

const IDA_QSRHS_FAIL = -51

const IDA_FIRST_QSRHS_ERR = -52

const IDA_REP_QSRHS_ERR = -53

const IDA_NO_ADJ = -101

const IDA_NO_FWD = -102

const IDA_NO_BCK = -103

const IDA_BAD_TB0 = -104

const IDA_REIFWD_FAIL = -105

const IDA_FWD_FAIL = -106

const IDA_GETY_BADT = -107

const IDALS_NO_ADJ = -101

const IDALS_LMEMB_NULL = -102

const KIN_SUCCESS = Cint(0)

const KIN_INITIAL_GUESS_OK = Cint(1)

const KIN_STEP_LT_STPTOL = Cint(2)

const KIN_WARNING = Cint(99)

const KIN_MEM_NULL = -1

const KIN_ILL_INPUT = -2

const KIN_NO_MALLOC = -3

const KIN_MEM_FAIL = -4

const KIN_LINESEARCH_NONCONV = -5

const KIN_MAXITER_REACHED = -6

const KIN_MXNEWT_5X_EXCEEDED = -7

const KIN_LINESEARCH_BCFAIL = -8

const KIN_LINSOLV_NO_RECOVERY = -9

const KIN_LINIT_FAIL = -10

const KIN_LSETUP_FAIL = -11

const KIN_LSOLVE_FAIL = -12

const KIN_SYSFUNC_FAIL = -13

const KIN_FIRST_SYSFUNC_ERR = -14

const KIN_REPTD_SYSFUNC_ERR = -15

const KIN_VECTOROP_ERR = -16

const KIN_ETACHOICE1 = Cint(1)

const KIN_ETACHOICE2 = Cint(2)

const KIN_ETACONSTANT = Cint(3)

const KIN_NONE = Cint(0)

const KIN_LINESEARCH = Cint(1)

const KIN_PICARD = Cint(2)

const KIN_FP = Cint(3)

const KINBBDPRE_SUCCESS = Cint(0)

const KINBBDPRE_PDATA_NULL = -11

const KINBBDPRE_FUNC_UNRECVR = -12

const KINLS_SUCCESS = Cint(0)

const KINLS_MEM_NULL = -1

const KINLS_LMEM_NULL = -2

const KINLS_ILL_INPUT = -3

const KINLS_MEM_FAIL = -4

const KINLS_PMEM_NULL = -5

const KINLS_JACFUNC_ERR = -6

const KINLS_SUNMAT_FAIL = -7

const KINLS_SUNLS_FAIL = -8

const SUNDIALS_VERSION = "5.2.0"

const SUNDIALS_VERSION_MAJOR = Cint(5)

const SUNDIALS_VERSION_MINOR = Cint(2)

const SUNDIALS_VERSION_PATCH = Cint(0)

const SUNDIALS_VERSION_LABEL = ""

const SUNDIALS_DOUBLE_PRECISION = Cint(1)

const SUNDIALS_INT64_T = Cint(1)

const SUNDIALS_INDEX_TYPE = int64_t

const SUNDIALS_MPI_COMM_F2C = Cint(0)

const SUNDIALS_DENSE = Cint(1)

const SUNDIALS_BAND = Cint(2)

const FCMIX_CVODE = Cint(1)

const FCMIX_IDA = Cint(2)

const FCMIX_KINSOL = Cint(3)

const FCMIX_ARKODE = Cint(4)

const dcopy_f77 = nothing

const dscal_f77 = nothing

const dgemv_f77 = nothing

const dtrsv_f77 = nothing

const dsyrk_f77 = nothing

const dgbtrf_f77 = nothing

const dgbtrs_f77 = nothing

const dgetrf_f77 = nothing

const dgetrs_f77 = nothing

const dgeqp3_f77 = nothing

const dgeqrf_f77 = nothing

const dormqr_f77 = nothing

const dpotrf_f77 = nothing

const dpotrs_f77 = nothing

const scopy_f77 = nothing

const sscal_f77 = nothing

const sgemv_f77 = nothing

const strsv_f77 = nothing

const ssyrk_f77 = nothing

const sgbtrf_f77 = nothing

const sgbtrs_f77 = nothing

const sgetrf_f77 = nothing

const sgetrs_f77 = nothing

const sgeqp3_f77 = nothing

const sgeqrf_f77 = nothing

const sormqr_f77 = nothing

const spotrf_f77 = nothing

const spotrs_f77 = nothing

const SUNLS_SUCCESS = Cint(0)

const SUNLS_MEM_NULL = -801

const SUNLS_ILL_INPUT = -802

const SUNLS_MEM_FAIL = -803

const SUNLS_ATIMES_FAIL_UNREC = -804

const SUNLS_PSET_FAIL_UNREC = -805

const SUNLS_PSOLVE_FAIL_UNREC = -806

const SUNLS_PACKAGE_FAIL_UNREC = -807

const SUNLS_GS_FAIL = -808

const SUNLS_QRSOL_FAIL = -809

const SUNLS_VECTOROP_ERR = -810

const SUNLS_RES_REDUCED = Cint(801)

const SUNLS_CONV_FAIL = Cint(802)

const SUNLS_ATIMES_FAIL_REC = Cint(803)

const SUNLS_PSET_FAIL_REC = Cint(804)

const SUNLS_PSOLVE_FAIL_REC = Cint(805)

const SUNLS_PACKAGE_FAIL_REC = Cint(806)

const SUNLS_QRFACT_FAIL = Cint(807)

const SUNLS_LUFACT_FAIL = Cint(808)

const SUNMAT_SUCCESS = Cint(0)

const SUNMAT_ILL_INPUT = -701

const SUNMAT_MEM_FAIL = -702

const SUNMAT_OPERATION_FAIL = -703

const SUNMAT_MATVEC_SETUP_REQUIRED = -704

const MPI_SUNREALTYPE = MPI_DOUBLE

const MPI_SUNINDEXTYPE = MPI_INT64_T

const PVEC_REAL_MPI_TYPE = MPI_SUNREALTYPE

const PVEC_INTEGER_MPI_TYPE = MPI_SUNINDEXTYPE

const SUN_NLS_SUCCESS = Cint(0)

const SUN_NLS_CONTINUE = +901

const SUN_NLS_CONV_RECVR = +902

const SUN_NLS_MEM_NULL = -901

const SUN_NLS_MEM_FAIL = -902

const SUN_NLS_ILL_INPUT = -903

const SUN_NLS_VECTOROP_ERR = -904

const SUN_NLS_EXT_FAIL = -905

# Skipping MacroDefinition: _SUNDIALS_STRUCT_ struct

const BIG_REAL = DBL_MAX

const SMALL_REAL = DBL_MIN

const UNIT_ROUNDOFF = DBL_EPSILON

const booleantype = Cint

const SUNFALSE = Cint(0)

const SUNTRUE = Cint(1)

const SUNKLU_ORDERING_DEFAULT = Cint(1)

const SUNKLU_REINIT_FULL = Cint(1)

const SUNKLU_REINIT_PARTIAL = Cint(2)

const sun_klu_symbolic = nothing

const sun_klu_numeric = nothing

const sun_klu_common = nothing

const sun_klu_analyze = nothing

const sun_klu_factor = nothing

const sun_klu_refactor = nothing

const sun_klu_rcond = nothing

const sun_klu_condest = nothing

const sun_klu_defaults = nothing

const sun_klu_free_symbolic = nothing

const sun_klu_free_numeric = nothing

const xgbtrf_f77 = dgbtrf_f77

const xgbtrs_f77 = dgbtrs_f77

const xgetrf_f77 = dgetrf_f77

const xgetrs_f77 = dgetrs_f77

const SUNPCG_MAXL_DEFAULT = Cint(5)

const SUNSPBCGS_MAXL_DEFAULT = Cint(5)

const SUNSPFGMR_MAXL_DEFAULT = Cint(5)

const SUNSPFGMR_MAXRS_DEFAULT = Cint(0)

const SUNSPFGMR_GSTYPE_DEFAULT = MODIFIED_GS

const SUNSPGMR_MAXL_DEFAULT = Cint(5)

const SUNSPGMR_MAXRS_DEFAULT = Cint(0)

const SUNSPGMR_GSTYPE_DEFAULT = MODIFIED_GS

const SUNSPTFQMR_MAXL_DEFAULT = Cint(5)

const CSC_MAT = Cint(0)

const CSR_MAT = Cint(1)
