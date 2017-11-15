# Automatically generated using Clang.jl wrap_c, version 0.0.0

using Compat

const SUNDIALS_PACKAGE_VERSION = "2.5.0"
const SUNDIALS_DOUBLE_PRECISION = Cint(1)
const SUNDIALS_BLAS_LAPACK = Cint(0)
const SUNDIALS_DENSE = Cint(1)
const SUNDIALS_BAND = Cint(2)

# Skipping MacroDefinition: DENSE_COL ( A , j ) ( ( A -> cols ) [ j ] )
# Skipping MacroDefinition: DENSE_ELEM ( A , i , j ) ( ( A -> cols ) [ j ] [ i ] )
# Skipping MacroDefinition: BAND_COL ( A , j ) ( ( ( A -> cols ) [ j ] ) + ( A -> s_mu ) )
# Skipping MacroDefinition: BAND_COL_ELEM ( col_j , i , j ) ( col_j [ ( i ) - ( j ) ] )
# Skipping MacroDefinition: BAND_ELEM ( A , i , j ) ( ( A -> cols ) [ j ] [ ( i ) - ( j ) + ( A -> s_mu ) ] )

const realtype = Cdouble

type _DlsMat
    _type::Cint
    M::Clong
    N::Clong
    ldim::Clong
    mu::Clong
    ml::Clong
    s_mu::Clong
    data::Ptr{realtype}
    ldata::Clong
    cols::Ptr{Ptr{realtype}}
end

const DlsMat = Ptr{_DlsMat}

# begin enum ANONYMOUS_1
const ANONYMOUS_1 = UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_1

# begin enum ANONYMOUS_2
const ANONYMOUS_2 = UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_2

const ATimesFn = Ptr{Void}
const PSolveFn = Ptr{Void}

type _generic_N_Vector_Ops
    nvclone::Ptr{Void}
    nvcloneempty::Ptr{Void}
    nvdestroy::Ptr{Void}
    nvspace::Ptr{Void}
    nvgetarraypointer::Ptr{Void}
    nvsetarraypointer::Ptr{Void}
    nvlinearsum::Ptr{Void}
    nvconst::Ptr{Void}
    nvprod::Ptr{Void}
    nvdiv::Ptr{Void}
    nvscale::Ptr{Void}
    nvabs::Ptr{Void}
    nvinv::Ptr{Void}
    nvaddconst::Ptr{Void}
    nvdotprod::Ptr{Void}
    nvmaxnorm::Ptr{Void}
    nvwrmsnorm::Ptr{Void}
    nvwrmsnormmask::Ptr{Void}
    nvmin::Ptr{Void}
    nvwl2norm::Ptr{Void}
    nvl1norm::Ptr{Void}
    nvcompare::Ptr{Void}
    nvinvtest::Ptr{Void}
    nvconstrmask::Ptr{Void}
    nvminquotient::Ptr{Void}
end

const N_Vector_Ops = Ptr{_generic_N_Vector_Ops}

type _generic_N_Vector
    content::Ptr{Void}
    ops::Ptr{_generic_N_Vector_Ops}
end

const N_Vector = Ptr{_generic_N_Vector}
const N_Vector_S = Ptr{N_Vector}

const SPBCG_SUCCESS = Cint(0)
const SPBCG_RES_REDUCED = Cint(1)
const SPBCG_CONV_FAIL = Cint(2)
const SPBCG_PSOLVE_FAIL_REC = Cint(3)
const SPBCG_ATIMES_FAIL_REC = Cint(4)
const SPBCG_PSET_FAIL_REC = Cint(5)
const SPBCG_MEM_NULL = Cint(-1)
const SPBCG_ATIMES_FAIL_UNREC = Cint(-2)
const SPBCG_PSOLVE_FAIL_UNREC = Cint(-3)
const SPBCG_PSET_FAIL_UNREC = Cint(-4)

# Skipping MacroDefinition: SPBCG_VTEMP ( mem ) ( mem -> r )

type SpbcgMemRec
    l_max::Cint
    r_star::N_Vector
    r::N_Vector
    p::N_Vector
    q::N_Vector
    u::N_Vector
    Ap::N_Vector
    vtemp::N_Vector
end

const SpbcgMem = Ptr{Void}

const SPGMR_SUCCESS = Cint(0)
const SPGMR_RES_REDUCED = Cint(1)
const SPGMR_CONV_FAIL = Cint(2)
const SPGMR_QRFACT_FAIL = Cint(3)
const SPGMR_PSOLVE_FAIL_REC = Cint(4)
const SPGMR_ATIMES_FAIL_REC = Cint(5)
const SPGMR_PSET_FAIL_REC = Cint(6)
const SPGMR_MEM_NULL = Cint(-1)
const SPGMR_ATIMES_FAIL_UNREC = Cint(-2)
const SPGMR_PSOLVE_FAIL_UNREC = Cint(-3)
const SPGMR_GS_FAIL = Cint(-4)
const SPGMR_QRSOL_FAIL = Cint(-5)
const SPGMR_PSET_FAIL_UNREC = Cint(-6)

# Skipping MacroDefinition: SPGMR_VTEMP ( mem ) ( mem -> vtemp )

type _SpgmrMemRec
    l_max::Cint
    V::Ptr{N_Vector}
    Hes::Ptr{Ptr{realtype}}
    givens::Ptr{realtype}
    xcor::N_Vector
    yg::Ptr{realtype}
    vtemp::N_Vector
end

type SpgmrMemRec
    l_max::Cint
    V::Ptr{N_Vector}
    Hes::Ptr{Ptr{realtype}}
    givens::Ptr{realtype}
    xcor::N_Vector
    yg::Ptr{realtype}
    vtemp::N_Vector
end

const SpgmrMem = Ptr{_SpgmrMemRec}

const SPTFQMR_SUCCESS = Cint(0)
const SPTFQMR_RES_REDUCED = Cint(1)
const SPTFQMR_CONV_FAIL = Cint(2)
const SPTFQMR_PSOLVE_FAIL_REC = Cint(3)
const SPTFQMR_ATIMES_FAIL_REC = Cint(4)
const SPTFQMR_PSET_FAIL_REC = Cint(5)
const SPTFQMR_MEM_NULL = Cint(-1)
const SPTFQMR_ATIMES_FAIL_UNREC = Cint(-2)
const SPTFQMR_PSOLVE_FAIL_UNREC = Cint(-3)
const SPTFQMR_PSET_FAIL_UNREC = Cint(-4)

# Skipping MacroDefinition: SPTFQMR_VTEMP ( mem ) ( mem -> vtemp1 )

type SptfqmrMemRec
    l_max::Cint
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

const SptfqmrMem = Ptr{Void}

# Skipping MacroDefinition: RCONST ( x ) x

const BIG_REAL = DBL_MAX
const SMALL_REAL = DBL_MIN
const UNIT_ROUNDOFF = DBL_EPSILON
const FALSE = Cint(0)
const TRUE = Cint(1)
const CV_ADAMS = Cint(1)
const CV_BDF = Cint(2)
const CV_FUNCTIONAL = Cint(1)
const CV_NEWTON = Cint(2)
const CV_NORMAL = Cint(1)
const CV_ONE_STEP = Cint(2)
const CV_SUCCESS = Cint(0)
const CV_TSTOP_RETURN = Cint(1)
const CV_ROOT_RETURN = Cint(2)
const CV_WARNING = Cint(99)
const CV_TOO_MUCH_WORK = Cint(-1)
const CV_TOO_MUCH_ACC = Cint(-2)
const CV_ERR_FAILURE = Cint(-3)
const CV_CONV_FAILURE = Cint(-4)
const CV_LINIT_FAIL = Cint(-5)
const CV_LSETUP_FAIL = Cint(-6)
const CV_LSOLVE_FAIL = Cint(-7)
const CV_RHSFUNC_FAIL = Cint(-8)
const CV_FIRST_RHSFUNC_ERR = Cint(-9)
const CV_REPTD_RHSFUNC_ERR = Cint(-10)
const CV_UNREC_RHSFUNC_ERR = Cint(-11)
const CV_RTFUNC_FAIL = Cint(-12)
const CV_MEM_FAIL = Cint(-20)
const CV_MEM_NULL = Cint(-21)
const CV_ILL_INPUT = Cint(-22)
const CV_NO_MALLOC = Cint(-23)
const CV_BAD_K = Cint(-24)
const CV_BAD_T = Cint(-25)
const CV_BAD_DKY = Cint(-26)
const CV_TOO_CLOSE = Cint(-27)

const CVRhsFn = Ptr{Void}

CVRhsFn_wrapper(fp::CVRhsFn) = fp
CVRhsFn_wrapper(f) = cfunction(f,Cint,(realtype,N_Vector,N_Vector,Ptr{Void}))

const CVRootFn = Ptr{Void}

CVRootFn_wrapper(fp::CVRootFn) = fp
CVRootFn_wrapper(f) = cfunction(f,Cint,(realtype,N_Vector,Ptr{realtype},Ptr{Void}))

const CVEwtFn = Ptr{Void}
const CVErrHandlerFn = Ptr{Void}

const CVDLS_SUCCESS = Cint(0)
const CVDLS_MEM_NULL = Cint(-1)
const CVDLS_LMEM_NULL = Cint(-2)
const CVDLS_ILL_INPUT = Cint(-3)
const CVDLS_MEM_FAIL = Cint(-4)
const CVDLS_JACFUNC_UNRECVR = Cint(-5)
const CVDLS_JACFUNC_RECVR = Cint(-6)

const CVDlsDenseJacFn = Ptr{Void}
const CVDlsBandJacFn = Ptr{Void}

const CVSPILS_SUCCESS = Cint(0)
const CVSPILS_MEM_NULL = Cint(-1)
const CVSPILS_LMEM_NULL = Cint(-2)
const CVSPILS_ILL_INPUT = Cint(-3)
const CVSPILS_MEM_FAIL = Cint(-4)
const CVSPILS_PMEM_NULL = Cint(-5)
const CVSPILS_MAXL = Cint(5)
const CVSPILS_MSBPRE = Cint(50)

# Skipping MacroDefinition: CVSPILS_DGMAX RCONST ( 0.2 )
# Skipping MacroDefinition: CVSPILS_EPLIN RCONST ( 0.05 )

const CVSpilsPrecSetupFn = Ptr{Void}
const CVSpilsPrecSolveFn = Ptr{Void}
const CVSpilsJacTimesVecFn = Ptr{Void}

const CV_SIMULTANEOUS = Cint(1)
const CV_STAGGERED = Cint(2)
const CV_STAGGERED1 = Cint(3)
const CV_CENTERED = Cint(1)
const CV_FORWARD = Cint(2)
const CV_HERMITE = Cint(1)
const CV_POLYNOMIAL = Cint(2)
const CV_NO_QUAD = Cint(-30)
const CV_QRHSFUNC_FAIL = Cint(-31)
const CV_FIRST_QRHSFUNC_ERR = Cint(-32)
const CV_REPTD_QRHSFUNC_ERR = Cint(-33)
const CV_UNREC_QRHSFUNC_ERR = Cint(-34)
const CV_NO_SENS = Cint(-40)
const CV_SRHSFUNC_FAIL = Cint(-41)
const CV_FIRST_SRHSFUNC_ERR = Cint(-42)
const CV_REPTD_SRHSFUNC_ERR = Cint(-43)
const CV_UNREC_SRHSFUNC_ERR = Cint(-44)
const CV_BAD_IS = Cint(-45)
const CV_NO_QUADSENS = Cint(-50)
const CV_QSRHSFUNC_FAIL = Cint(-51)
const CV_FIRST_QSRHSFUNC_ERR = Cint(-52)
const CV_REPTD_QSRHSFUNC_ERR = Cint(-53)
const CV_UNREC_QSRHSFUNC_ERR = Cint(-54)
const CV_NO_ADJ = Cint(-101)
const CV_NO_FWD = Cint(-102)
const CV_NO_BCK = Cint(-103)
const CV_BAD_TB0 = Cint(-104)
const CV_REIFWD_FAIL = Cint(-105)
const CV_FWD_FAIL = Cint(-106)
const CV_GETY_BADT = Cint(-107)

const CVQuadRhsFn = Ptr{Void}

CVQuadRhsFn_wrapper(fp::CVQuadRhsFn) = fp
CVQuadRhsFn_wrapper(f) = cfunction(f,Cint,(realtype,N_Vector,N_Vector,Ptr{Void}))

const CVSensRhsFn = Ptr{Void}
const CVSensRhs1Fn = Ptr{Void}
const CVQuadSensRhsFn = Ptr{Void}
const CVRhsFnB = Ptr{Void}
const CVRhsFnBS = Ptr{Void}
const CVQuadRhsFnB = Ptr{Void}
const CVQuadRhsFnBS = Ptr{Void}

type CVadjCheckPointRec
    my_addr::Ptr{Void}
    next_addr::Ptr{Void}
    t0::realtype
    t1::realtype
    nstep::Clong
    order::Cint
    step::realtype
end

const CVDLS_NO_ADJ = Cint(-101)
const CVDLS_LMEMB_NULL = Cint(-102)

const CVDlsDenseJacFnB = Ptr{Void}
const CVDlsBandJacFnB = Ptr{Void}

const CVSPILS_NO_ADJ = Cint(-101)
const CVSPILS_LMEMB_NULL = Cint(-102)

const CVSpilsPrecSetupFnB = Ptr{Void}
const CVSpilsPrecSolveFnB = Ptr{Void}
const CVSpilsJacTimesVecFnB = Ptr{Void}

const IDA_NORMAL = Cint(1)
const IDA_ONE_STEP = Cint(2)
const IDA_YA_YDP_INIT = Cint(1)
const IDA_Y_INIT = Cint(2)
const IDA_SUCCESS = Cint(0)
const IDA_TSTOP_RETURN = Cint(1)
const IDA_ROOT_RETURN = Cint(2)
const IDA_WARNING = Cint(99)
const IDA_TOO_MUCH_WORK = Cint(-1)
const IDA_TOO_MUCH_ACC = Cint(-2)
const IDA_ERR_FAIL = Cint(-3)
const IDA_CONV_FAIL = Cint(-4)
const IDA_LINIT_FAIL = Cint(-5)
const IDA_LSETUP_FAIL = Cint(-6)
const IDA_LSOLVE_FAIL = Cint(-7)
const IDA_RES_FAIL = Cint(-8)
const IDA_REP_RES_ERR = Cint(-9)
const IDA_RTFUNC_FAIL = Cint(-10)
const IDA_CONSTR_FAIL = Cint(-11)
const IDA_FIRST_RES_FAIL = Cint(-12)
const IDA_LINESEARCH_FAIL = Cint(-13)
const IDA_NO_RECOVERY = Cint(-14)
const IDA_MEM_NULL = Cint(-20)
const IDA_MEM_FAIL = Cint(-21)
const IDA_ILL_INPUT = Cint(-22)
const IDA_NO_MALLOC = Cint(-23)
const IDA_BAD_EWT = Cint(-24)
const IDA_BAD_K = Cint(-25)
const IDA_BAD_T = Cint(-26)
const IDA_BAD_DKY = Cint(-27)

const IDAResFn = Ptr{Void}

IDAResFn_wrapper(fp::IDAResFn) = fp
IDAResFn_wrapper(f) = cfunction(f,Cint,(realtype,N_Vector,N_Vector,N_Vector,Ptr{Void}))

const IDARootFn = Ptr{Void}

IDARootFn_wrapper(fp::IDARootFn) = fp
IDARootFn_wrapper(f) = cfunction(f,Cint,(realtype,N_Vector,N_Vector,Ptr{realtype},Ptr{Void}))

const IDAEwtFn = Ptr{Void}
const IDAErrHandlerFn = Ptr{Void}

const IDADLS_SUCCESS = Cint(0)
const IDADLS_MEM_NULL = Cint(-1)
const IDADLS_LMEM_NULL = Cint(-2)
const IDADLS_ILL_INPUT = Cint(-3)
const IDADLS_MEM_FAIL = Cint(-4)
const IDADLS_JACFUNC_UNRECVR = Cint(-5)
const IDADLS_JACFUNC_RECVR = Cint(-6)

const IDADlsDenseJacFn = Ptr{Void}
const IDADlsBandJacFn = Ptr{Void}

const IDASPILS_SUCCESS = Cint(0)
const IDASPILS_MEM_NULL = Cint(-1)
const IDASPILS_LMEM_NULL = Cint(-2)
const IDASPILS_ILL_INPUT = Cint(-3)
const IDASPILS_MEM_FAIL = Cint(-4)
const IDASPILS_PMEM_NULL = Cint(-5)

const IDASpilsPrecSetupFn = Ptr{Void}
const IDASpilsPrecSolveFn = Ptr{Void}
const IDASpilsJacTimesVecFn = Ptr{Void}

const IDA_SIMULTANEOUS = Cint(1)
const IDA_STAGGERED = Cint(2)
const IDA_CENTERED = Cint(1)
const IDA_FORWARD = Cint(2)
const IDA_HERMITE = Cint(1)
const IDA_POLYNOMIAL = Cint(2)
const IDA_NO_QUAD = Cint(-30)
const IDA_QRHS_FAIL = Cint(-31)
const IDA_FIRST_QRHS_ERR = Cint(-32)
const IDA_REP_QRHS_ERR = Cint(-33)
const IDA_NO_SENS = Cint(-40)
const IDA_SRES_FAIL = Cint(-41)
const IDA_REP_SRES_ERR = Cint(-42)
const IDA_BAD_IS = Cint(-43)
const IDA_NO_QUADSENS = Cint(-50)
const IDA_QSRHS_FAIL = Cint(-51)
const IDA_FIRST_QSRHS_ERR = Cint(-52)
const IDA_REP_QSRHS_ERR = Cint(-53)
const IDA_NO_ADJ = Cint(-101)
const IDA_NO_FWD = Cint(-102)
const IDA_NO_BCK = Cint(-103)
const IDA_BAD_TB0 = Cint(-104)
const IDA_REIFWD_FAIL = Cint(-105)
const IDA_FWD_FAIL = Cint(-106)
const IDA_GETY_BADT = Cint(-107)

const IDAQuadRhsFn = Ptr{Void}
const IDASensResFn = Ptr{Void}
const IDAQuadSensRhsFn = Ptr{Void}
const IDAResFnB = Ptr{Void}
const IDAResFnBS = Ptr{Void}
const IDAQuadRhsFnB = Ptr{Void}
const IDAQuadRhsFnBS = Ptr{Void}

type IDAadjCheckPointRec
    my_addr::Ptr{Void}
    next_addr::Ptr{Void}
    t0::realtype
    t1::realtype
    nstep::Clong
    order::Cint
    step::realtype
end

const IDADLS_NO_ADJ = Cint(-101)
const IDADLS_LMEMB_NULL = Cint(-102)

const IDADlsDenseJacFnB = Ptr{Void}
const IDADlsBandJacFnB = Ptr{Void}

const IDASPILS_NO_ADJ = Cint(-101)
const IDASPILS_LMEMB_NULL = Cint(-102)

const IDASpilsPrecSetupFnB = Ptr{Void}
const IDASpilsPrecSolveFnB = Ptr{Void}
const IDASpilsJacTimesVecFnB = Ptr{Void}

const KIN_SUCCESS = Cint(0)
const KIN_INITIAL_GUESS_OK = Cint(1)
const KIN_STEP_LT_STPTOL = Cint(2)
const KIN_WARNING = Cint(99)
const KIN_MEM_NULL = Cint(-1)
const KIN_ILL_INPUT = Cint(-2)
const KIN_NO_MALLOC = Cint(-3)
const KIN_MEM_FAIL = Cint(-4)
const KIN_LINESEARCH_NONCONV = Cint(-5)
const KIN_MAXITER_REACHED = Cint(-6)
const KIN_MXNEWT_5X_EXCEEDED = Cint(-7)
const KIN_LINESEARCH_BCFAIL = Cint(-8)
const KIN_LINSOLV_NO_RECOVERY = Cint(-9)
const KIN_LINIT_FAIL = Cint(-10)
const KIN_LSETUP_FAIL = Cint(-11)
const KIN_LSOLVE_FAIL = Cint(-12)
const KIN_SYSFUNC_FAIL = Cint(-13)
const KIN_FIRST_SYSFUNC_ERR = Cint(-14)
const KIN_REPTD_SYSFUNC_ERR = Cint(-15)
const KIN_ETACHOICE1 = Cint(1)
const KIN_ETACHOICE2 = Cint(2)
const KIN_ETACONSTANT = Cint(3)
const KIN_NONE = Cint(0)
const KIN_LINESEARCH = Cint(1)

const KINSysFn = Ptr{Void}

KINSysFn_wrapper(fp::KINSysFn) = fp
KINSysFn_wrapper(f) = cfunction(f,Cint,(N_Vector,N_Vector,Ptr{Void}))

const KINErrHandlerFn = Ptr{Void}
const KINInfoHandlerFn = Ptr{Void}

const KINDLS_SUCCESS = Cint(0)
const KINDLS_MEM_NULL = Cint(-1)
const KINDLS_LMEM_NULL = Cint(-2)
const KINDLS_ILL_INPUT = Cint(-3)
const KINDLS_MEM_FAIL = Cint(-4)
const KINDLS_JACFUNC_UNRECVR = Cint(-5)
const KINDLS_JACFUNC_RECVR = Cint(-6)

const KINDlsDenseJacFn = Ptr{Void}
const KINDlsBandJacFn = Ptr{Void}

const KINSPILS_SUCCESS = Cint(0)
const KINSPILS_MEM_NULL = Cint(-1)
const KINSPILS_LMEM_NULL = Cint(-2)
const KINSPILS_ILL_INPUT = Cint(-3)
const KINSPILS_MEM_FAIL = Cint(-4)
const KINSPILS_PMEM_NULL = Cint(-5)
const KINSPILS_MAXL = Cint(10)

const KINSpilsPrecSetupFn = Ptr{Void}
const KINSpilsPrecSolveFn = Ptr{Void}
const KINSpilsJacTimesVecFn = Ptr{Void}

# Skipping MacroDefinition: NV_CONTENT_S ( v ) ( ( N_VectorContent_Serial ) ( v -> content ) )
# Skipping MacroDefinition: NV_LENGTH_S ( v ) ( NV_CONTENT_S ( v ) -> length )
# Skipping MacroDefinition: NV_OWN_DATA_S ( v ) ( NV_CONTENT_S ( v ) -> own_data )
# Skipping MacroDefinition: NV_DATA_S ( v ) ( NV_CONTENT_S ( v ) -> data )
# Skipping MacroDefinition: NV_Ith_S ( v , i ) ( NV_DATA_S ( v ) [ i ] )

type _N_VectorContent_Serial
    length::Clong
    own_data::Cint
    data::Ptr{realtype}
end

const N_VectorContent_Serial = Ptr{_N_VectorContent_Serial}

const FCMIX_CVODE = Cint(1)
const FCMIX_IDA = Cint(2)
const FCMIX_KINSOL = Cint(3)

# Skipping MacroDefinition: MIN ( A , B ) ( ( A ) < ( B ) ? ( A ) : ( B ) )
# Skipping MacroDefinition: MAX ( A , B ) ( ( A ) > ( B ) ? ( A ) : ( B ) )
# Skipping MacroDefinition: SQR ( A ) ( ( A ) * ( A ) )

const CVLocalFn = Ptr{Void}
const CVCommFn = Ptr{Void}

const CVDIAG_SUCCESS = Cint(0)
const CVDIAG_MEM_NULL = Cint(-1)
const CVDIAG_LMEM_NULL = Cint(-2)
const CVDIAG_ILL_INPUT = Cint(-3)
const CVDIAG_MEM_FAIL = Cint(-4)
const CVDIAG_INV_FAIL = Cint(-5)
const CVDIAG_RHSFUNC_UNRECVR = Cint(-6)
const CVDIAG_RHSFUNC_RECVR = Cint(-7)

const CVLocalFnB = Ptr{Void}
const CVCommFnB = Ptr{Void}

const CVDIAG_NO_ADJ = Cint(-101)

const IDABBDLocalFn = Ptr{Void}
const IDABBDCommFn = Ptr{Void}
const IDABBDLocalFnB = Ptr{Void}
const IDABBDCommFnB = Ptr{Void}

const KINBBDPRE_SUCCESS = Cint(0)
const KINBBDPRE_PDATA_NULL = Cint(-11)
const KINBBDPRE_FUNC_UNRECVR = Cint(-12)

const KINCommFn = Ptr{Void}
const KINLocalFn = Ptr{Void}
