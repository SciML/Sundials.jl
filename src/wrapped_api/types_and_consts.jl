# Automatically generated using Clang.jl wrap_c, version 0.0.0

const SUNDIALS_VERSION = "3.1.0"
const SUNDIALS_VERSION_MAJOR = Cint(3)
const SUNDIALS_VERSION_MINOR = Cint(1)
const SUNDIALS_VERSION_PATCH = Cint(0)
const SUNDIALS_VERSION_LABEL = ""
const SUNDIALS_DOUBLE_PRECISION = Cint(1)
const SUNDIALS_INT64_T = Cint(1)
const SUNDIALS_DENSE = Cint(1)
const SUNDIALS_BAND = Cint(2)

# Skipping MacroDefinition: DENSE_COL ( A , j ) ( ( A -> cols ) [ j ] ) #
# Skipping MacroDefinition: DENSE_ELEM ( A , i , j ) ( ( A -> cols ) [ j ] [ i ] ) /*
# * -----------------------------------------------------------------
# * BAND_COL, BAND_COL_ELEM, and BAND_ELEM
# * -----------------------------------------------------------------
# *
# * BAND_COL(A,j) references the diagonal element of the jth column
# * of the N by N band matrix A, 0 <= j <= N-1. The type of the
# * expression BAND_COL(A,j) is realtype *. The pointer returned by
# * the call BAND_COL(A,j) can be treated as an array which is
# * indexed from -(A->mu) to (A->ml).
# *
# * BAND_COL_ELEM references the (i,j)th entry of the band matrix A
# * when used in conjunction with BAND_COL. The index (i,j) should
# * satisfy j-(A->mu) <= i <= j+(A->ml).
# *
# * BAND_ELEM(A,i,j) references the (i,j)th element of the M-by-N
# * band matrix A, where 0 <= i,j <= N-1. The location (i,j) should
# * further satisfy j-(A->mu) <= i <= j+(A->ml).
# *
# * -----------------------------------------------------------------
# */
# Skipping MacroDefinition: BAND_COL ( A , j ) ( ( ( A -> cols ) [ j ] ) + ( A -> s_mu ) ) #
# Skipping MacroDefinition: BAND_COL_ELEM ( col_j , i , j ) ( col_j [ ( i ) - ( j ) ] ) #
# Skipping MacroDefinition: BAND_ELEM ( A , i , j ) ( ( A -> cols ) [ j ] [ ( i ) - ( j ) + ( A -> s_mu ) ] ) /*
# * ==================================================================
# * Exported function prototypes (functions working on dlsMat)
# * ==================================================================
# */

@static if Int == Int64
    const sunindextype = Int64
else
    const sunindextype = Int32
end

const realtype = Cdouble

mutable struct _DlsMat
    _type::Cint
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

const ATimesFn = Ptr{Cvoid}
const PSetupFn = Ptr{Cvoid}
const PSolveFn = Ptr{Cvoid}
const SUNLS_SUCCESS = Cint(0)
const SUNLS_MEM_NULL = Cint(-1)
const SUNLS_ILL_INPUT = Cint(-2)
const SUNLS_MEM_FAIL = Cint(-3)
const SUNLS_ATIMES_FAIL_UNREC = Cint(-4)
const SUNLS_PSET_FAIL_UNREC = Cint(-5)
const SUNLS_PSOLVE_FAIL_UNREC = Cint(-6)
const SUNLS_PACKAGE_FAIL_UNREC = Cint(-7)
const SUNLS_GS_FAIL = Cint(-8)
const SUNLS_QRSOL_FAIL = Cint(-9)
const SUNLS_RES_REDUCED = Cint(1)
const SUNLS_CONV_FAIL = Cint(2)
const SUNLS_ATIMES_FAIL_REC = Cint(3)
const SUNLS_PSET_FAIL_REC = Cint(4)
const SUNLS_PSOLVE_FAIL_REC = Cint(5)
const SUNLS_PACKAGE_FAIL_REC = Cint(6)
const SUNLS_QRFACT_FAIL = Cint(7)
const SUNLS_LUFACT_FAIL = Cint(8)

# begin enum ANONYMOUS_3
const ANONYMOUS_3 = UInt32
const SUNLINEARSOLVER_DIRECT = (UInt32)(0)
const SUNLINEARSOLVER_ITERATIVE = (UInt32)(1)
const SUNLINEARSOLVER_CUSTOM = (UInt32)(2)
# end enum ANONYMOUS_3

# begin enum SUNLinearSolver_Type
const SUNLinearSolver_Type = UInt32
const SUNLINEARSOLVER_DIRECT = (UInt32)(0)
const SUNLINEARSOLVER_ITERATIVE = (UInt32)(1)
const SUNLINEARSOLVER_CUSTOM = (UInt32)(2)
# end enum SUNLinearSolver_Type

mutable struct _generic_SUNLinearSolver_Ops
    gettype::Ptr{Cvoid}
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

mutable struct _generic_SUNLinearSolver
    content::Ptr{Cvoid}
    ops::Ptr{_generic_SUNLinearSolver_Ops}
end

const SUNLinearSolver = Ptr{_generic_SUNLinearSolver}

# begin enum ANONYMOUS_4
const ANONYMOUS_4 = UInt32
const SUNMATRIX_DENSE = (UInt32)(0)
const SUNMATRIX_BAND = (UInt32)(1)
const SUNMATRIX_SPARSE = (UInt32)(2)
const SUNMATRIX_CUSTOM = (UInt32)(3)
# end enum ANONYMOUS_4

# begin enum SUNMatrix_ID
const SUNMatrix_ID = UInt32
const SUNMATRIX_DENSE = (UInt32)(0)
const SUNMATRIX_BAND = (UInt32)(1)
const SUNMATRIX_SPARSE = (UInt32)(2)
const SUNMATRIX_CUSTOM = (UInt32)(3)
# end enum SUNMatrix_ID

mutable struct _generic_SUNMatrix_Ops
    getid::Ptr{Cvoid}
    clone::Ptr{Cvoid}
    destroy::Ptr{Cvoid}
    zero::Ptr{Cvoid}
    copy::Ptr{Cvoid}
    scaleadd::Ptr{Cvoid}
    scaleaddi::Ptr{Cvoid}
    matvec::Ptr{Cvoid}
    space::Ptr{Cvoid}
end

const SUNMatrix_Ops = Ptr{_generic_SUNMatrix_Ops}

mutable struct _generic_SUNMatrix
    content::Ptr{Cvoid}
    ops::Ptr{_generic_SUNMatrix_Ops}
end

const SUNMatrix = Ptr{_generic_SUNMatrix}

# begin enum ANONYMOUS_5
const ANONYMOUS_5 = UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUDA = (UInt32)(6)
const SUNDIALS_NVEC_RAJA = (UInt32)(7)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(8)
# end enum ANONYMOUS_5

# begin enum N_Vector_ID
const N_Vector_ID = UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUDA = (UInt32)(6)
const SUNDIALS_NVEC_RAJA = (UInt32)(7)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(8)
# end enum N_Vector_ID

mutable struct _generic_N_Vector_Ops
    nvgetvectorid::Ptr{Cvoid}
    nvclone::Ptr{Cvoid}
    nvcloneempty::Ptr{Cvoid}
    nvdestroy::Ptr{Cvoid}
    nvspace::Ptr{Cvoid}
    nvgetarraypointer::Ptr{Cvoid}
    nvsetarraypointer::Ptr{Cvoid}
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
end

const N_Vector_Ops = Ptr{_generic_N_Vector_Ops}

mutable struct _generic_N_Vector
    content::Ptr{Cvoid}
    ops::Ptr{_generic_N_Vector_Ops}
end

const N_Vector = Ptr{_generic_N_Vector}
const N_Vector_S = Ptr{N_Vector}
const PCG_SUCCESS = Cint(0)
const PCG_RES_REDUCED = Cint(1)
const PCG_CONV_FAIL = Cint(2)
const PCG_PSOLVE_FAIL_REC = Cint(3)
const PCG_ATIMES_FAIL_REC = Cint(4)
const PCG_PSET_FAIL_REC = Cint(5)
const PCG_MEM_NULL = Cint(-1)
const PCG_ATIMES_FAIL_UNREC = Cint(-2)
const PCG_PSOLVE_FAIL_UNREC = Cint(-3)
const PCG_PSET_FAIL_UNREC = Cint(-4)

mutable struct PcgMemRec
    l_max::Cint
    r::N_Vector
    p::N_Vector
    z::N_Vector
    Ap::N_Vector
end

const PcgMem = Ptr{Cvoid}
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

# Skipping MacroDefinition: SPBCG_VTEMP ( mem ) ( mem -> r ) #

mutable struct SpbcgMemRec
    l_max::Cint
    r_star::N_Vector
    r::N_Vector
    p::N_Vector
    q::N_Vector
    u::N_Vector
    Ap::N_Vector
    vtemp::N_Vector
end

const SpbcgMem = Ptr{Cvoid}
const SPFGMR_SUCCESS = Cint(0)
const SPFGMR_RES_REDUCED = Cint(1)
const SPFGMR_CONV_FAIL = Cint(2)
const SPFGMR_QRFACT_FAIL = Cint(3)
const SPFGMR_PSOLVE_FAIL_REC = Cint(4)
const SPFGMR_ATIMES_FAIL_REC = Cint(5)
const SPFGMR_PSET_FAIL_REC = Cint(6)
const SPFGMR_MEM_NULL = Cint(-1)
const SPFGMR_ATIMES_FAIL_UNREC = Cint(-2)
const SPFGMR_PSOLVE_FAIL_UNREC = Cint(-3)
const SPFGMR_GS_FAIL = Cint(-4)
const SPFGMR_QRSOL_FAIL = Cint(-5)
const SPFGMR_PSET_FAIL_UNREC = Cint(-6)

# Skipping MacroDefinition: SPFGMR_VTEMP ( mem ) ( mem -> vtemp ) #

mutable struct _SpfgmrMemRec
    l_max::Cint
    V::Ptr{N_Vector}
    Z::Ptr{N_Vector}
    Hes::Ptr{Ptr{realtype}}
    givens::Ptr{realtype}
    xcor::N_Vector
    yg::Ptr{realtype}
    vtemp::N_Vector
end

mutable struct SpfgmrMemRec
    l_max::Cint
    V::Ptr{N_Vector}
    Z::Ptr{N_Vector}
    Hes::Ptr{Ptr{realtype}}
    givens::Ptr{realtype}
    xcor::N_Vector
    yg::Ptr{realtype}
    vtemp::N_Vector
end

const SpfgmrMem = Ptr{_SpfgmrMemRec}
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

# Skipping MacroDefinition: SPGMR_VTEMP ( mem ) ( mem -> vtemp ) #

mutable struct _SpgmrMemRec
    l_max::Cint
    V::Ptr{N_Vector}
    Hes::Ptr{Ptr{realtype}}
    givens::Ptr{realtype}
    xcor::N_Vector
    yg::Ptr{realtype}
    vtemp::N_Vector
end

mutable struct SpgmrMemRec
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

# Skipping MacroDefinition: SPTFQMR_VTEMP ( mem ) ( mem -> vtemp1 ) #

mutable struct SptfqmrMemRec
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

const SptfqmrMem = Ptr{Cvoid}

# Skipping MacroDefinition: RCONST ( x ) x #

const BIG_REAL = DBL_MAX
const SMALL_REAL = DBL_MIN
const UNIT_ROUNDOFF = DBL_EPSILON

# Skipping MacroDefinition: booleantype int #

const SUNFALSE = Cint(0)
const SUNTRUE = Cint(1)
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
const CVRhsFn = Ptr{Cvoid}
const CVRootFn = Ptr{Cvoid}
const CVEwtFn = Ptr{Cvoid}
const CVErrHandlerFn = Ptr{Cvoid}
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
const CVQuadRhsFn = Ptr{Cvoid}
const CVSensRhsFn = Ptr{Cvoid}
const CVSensRhs1Fn = Ptr{Cvoid}
const CVQuadSensRhsFn = Ptr{Cvoid}
const CVRhsFnB = Ptr{Cvoid}
const CVRhsFnBS = Ptr{Cvoid}
const CVQuadRhsFnB = Ptr{Cvoid}
const CVQuadRhsFnBS = Ptr{Cvoid}

mutable struct CVadjCheckPointRec
    my_addr::Ptr{Cvoid}
    next_addr::Ptr{Cvoid}
    t0::realtype
    t1::realtype
    nstep::Clong
    order::Cint
    step::realtype
end

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
const IDA_UNRECOGNISED_ERROR = Cint(-99)
const IDAResFn = Ptr{Cvoid}
const IDARootFn = Ptr{Cvoid}
const IDAEwtFn = Ptr{Cvoid}
const IDAErrHandlerFn = Ptr{Cvoid}
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
const IDA_UNRECONGISED_ERROR = Cint(-99)
const IDA_NO_ADJ = Cint(-101)
const IDA_NO_FWD = Cint(-102)
const IDA_NO_BCK = Cint(-103)
const IDA_BAD_TB0 = Cint(-104)
const IDA_REIFWD_FAIL = Cint(-105)
const IDA_FWD_FAIL = Cint(-106)
const IDA_GETY_BADT = Cint(-107)
const IDAQuadRhsFn = Ptr{Cvoid}
const IDASensResFn = Ptr{Cvoid}
const IDAQuadSensRhsFn = Ptr{Cvoid}
const IDAResFnB = Ptr{Cvoid}
const IDAResFnBS = Ptr{Cvoid}
const IDAQuadRhsFnB = Ptr{Cvoid}
const IDAQuadRhsFnBS = Ptr{Cvoid}

mutable struct IDAadjCheckPointRec
    my_addr::Ptr{Cvoid}
    next_addr::Ptr{Cvoid}
    t0::realtype
    t1::realtype
    nstep::Clong
    order::Cint
    step::realtype
end

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
const KIN_PICARD = Cint(2)
const KIN_FP = Cint(3)
const KINSysFn = Ptr{Cvoid}
const KINErrHandlerFn = Ptr{Cvoid}
const KINInfoHandlerFn = Ptr{Cvoid}
const ARK_S_MAX = Cint(15)

# Skipping MacroDefinition: ARK_A ( A , i , j ) ( A [ i * ARK_S_MAX + j ] ) /* itask */

const ARK_NORMAL = Cint(1)
const ARK_ONE_STEP = Cint(2)
const HEUN_EULER_2_1_2 = Cint(0)
const BOGACKI_SHAMPINE_4_2_3 = Cint(1)
const ARK324L2SA_ERK_4_2_3 = Cint(2)
const ZONNEVELD_5_3_4 = Cint(3)
const ARK436L2SA_ERK_6_3_4 = Cint(4)
const SAYFY_ABURUB_6_3_4 = Cint(5)
const CASH_KARP_6_4_5 = Cint(6)
const FEHLBERG_6_4_5 = Cint(7)
const DORMAND_PRINCE_7_4_5 = Cint(8)
const ARK548L2SA_ERK_8_4_5 = Cint(9)
const VERNER_8_5_6 = Cint(10)
const FEHLBERG_13_7_8 = Cint(11)
const DEFAULT_ERK_2 = HEUN_EULER_2_1_2
const DEFAULT_ERK_3 = BOGACKI_SHAMPINE_4_2_3
const DEFAULT_ERK_4 = ZONNEVELD_5_3_4
const DEFAULT_ERK_5 = CASH_KARP_6_4_5
const DEFAULT_ERK_6 = VERNER_8_5_6
const DEFAULT_ERK_8 = FEHLBERG_13_7_8
const MIN_ERK_NUM = Cint(0)
const MAX_ERK_NUM = Cint(11)
const SDIRK_2_1_2 = Cint(12)
const BILLINGTON_3_3_2 = Cint(13)
const TRBDF2_3_3_2 = Cint(14)
const KVAERNO_4_2_3 = Cint(15)
const ARK324L2SA_DIRK_4_2_3 = Cint(16)
const CASH_5_2_4 = Cint(17)
const CASH_5_3_4 = Cint(18)
const SDIRK_5_3_4 = Cint(19)
const KVAERNO_5_3_4 = Cint(20)
const ARK436L2SA_DIRK_6_3_4 = Cint(21)
const KVAERNO_7_4_5 = Cint(22)
const ARK548L2SA_DIRK_8_4_5 = Cint(23)
const DEFAULT_DIRK_2 = SDIRK_2_1_2
const DEFAULT_DIRK_3 = ARK324L2SA_DIRK_4_2_3
const DEFAULT_DIRK_4 = SDIRK_5_3_4
const DEFAULT_DIRK_5 = ARK548L2SA_DIRK_8_4_5
const MIN_DIRK_NUM = Cint(12)
const MAX_DIRK_NUM = Cint(23)
const DEFAULT_ARK_ETABLE_3 = ARK324L2SA_ERK_4_2_3
const DEFAULT_ARK_ETABLE_4 = ARK436L2SA_ERK_6_3_4
const DEFAULT_ARK_ETABLE_5 = ARK548L2SA_ERK_8_4_5
const DEFAULT_ARK_ITABLE_3 = ARK324L2SA_DIRK_4_2_3
const DEFAULT_ARK_ITABLE_4 = ARK436L2SA_DIRK_6_3_4
const DEFAULT_ARK_ITABLE_5 = ARK548L2SA_DIRK_8_4_5
const ARK_SUCCESS = Cint(0)
const ARK_TSTOP_RETURN = Cint(1)
const ARK_ROOT_RETURN = Cint(2)
const ARK_WARNING = Cint(99)
const ARK_TOO_MUCH_WORK = Cint(-1)
const ARK_TOO_MUCH_ACC = Cint(-2)
const ARK_ERR_FAILURE = Cint(-3)
const ARK_CONV_FAILURE = Cint(-4)
const ARK_LINIT_FAIL = Cint(-5)
const ARK_LSETUP_FAIL = Cint(-6)
const ARK_LSOLVE_FAIL = Cint(-7)
const ARK_RHSFUNC_FAIL = Cint(-8)
const ARK_FIRST_RHSFUNC_ERR = Cint(-9)
const ARK_REPTD_RHSFUNC_ERR = Cint(-10)
const ARK_UNREC_RHSFUNC_ERR = Cint(-11)
const ARK_RTFUNC_FAIL = Cint(-12)
const ARK_LFREE_FAIL = Cint(-13)
const ARK_MASSINIT_FAIL = Cint(-14)
const ARK_MASSSETUP_FAIL = Cint(-15)
const ARK_MASSSOLVE_FAIL = Cint(-16)
const ARK_MASSFREE_FAIL = Cint(-17)
const ARK_MASSMULT_FAIL = Cint(-18)
const ARK_MEM_FAIL = Cint(-20)
const ARK_MEM_NULL = Cint(-21)
const ARK_ILL_INPUT = Cint(-22)
const ARK_NO_MALLOC = Cint(-23)
const ARK_BAD_K = Cint(-24)
const ARK_BAD_T = Cint(-25)
const ARK_BAD_DKY = Cint(-26)
const ARK_TOO_CLOSE = Cint(-27)
const ARK_POSTPROCESS_FAIL = Cint(-28)
const ARKRhsFn = Ptr{Cvoid}
const ARKRootFn = Ptr{Cvoid}
const ARKEwtFn = Ptr{Cvoid}
const ARKRwtFn = Ptr{Cvoid}
const ARKErrHandlerFn = Ptr{Cvoid}
const ARKAdaptFn = Ptr{Cvoid}
const ARKExpStabFn = Ptr{Cvoid}
const ARKVecResizeFn = Ptr{Cvoid}
const ARKPostProcessStepFn = Ptr{Cvoid}
const ARKSPILS_SUCCESS = Cint(0)
const ARKSPILS_MEM_NULL = Cint(-1)
const ARKSPILS_LMEM_NULL = Cint(-2)
const ARKSPILS_ILL_INPUT = Cint(-3)
const ARKSPILS_MEM_FAIL = Cint(-4)
const ARKSPILS_PMEM_NULL = Cint(-5)
const ARKSPILS_MASSMEM_NULL = Cint(-6)
const ARKSPILS_SUNLS_FAIL = Cint(-10)
const ARKSPILS_MSBPRE = Cint(50)

# Skipping MacroDefinition: ARKSPILS_DGMAX RCONST ( 0.2 ) /* -- TURN INTO A PARAMETER, MAKE THIS THE DEFAULT */
# Skipping MacroDefinition: ARKSPILS_EPLIN RCONST ( 0.05 ) /*===============================================================#
# ARKSPILS user-supplied function prototypes#
# ===============================================================*/

const ARKSpilsPrecSetupFn = Ptr{Cvoid}
const ARKSpilsPrecSolveFn = Ptr{Cvoid}
const ARKSpilsJacTimesSetupFn = Ptr{Cvoid}
const ARKSpilsJacTimesVecFn = Ptr{Cvoid}
const ARKSpilsMassTimesSetupFn = Ptr{Cvoid}
const ARKSpilsMassTimesVecFn = Ptr{Cvoid}
const ARKSpilsMassPrecSetupFn = Ptr{Cvoid}
const ARKSpilsMassPrecSolveFn = Ptr{Cvoid}

# Skipping MacroDefinition: SM_CONTENT_B ( A ) ( ( SUNMatrixContent_Band ) ( A -> content ) ) #
# Skipping MacroDefinition: SM_ROWS_B ( A ) ( SM_CONTENT_B ( A ) -> M ) #
# Skipping MacroDefinition: SM_COLUMNS_B ( A ) ( SM_CONTENT_B ( A ) -> N ) #
# Skipping MacroDefinition: SM_LDATA_B ( A ) ( SM_CONTENT_B ( A ) -> ldata ) #
# Skipping MacroDefinition: SM_UBAND_B ( A ) ( SM_CONTENT_B ( A ) -> mu ) #
# Skipping MacroDefinition: SM_LBAND_B ( A ) ( SM_CONTENT_B ( A ) -> ml ) #
# Skipping MacroDefinition: SM_SUBAND_B ( A ) ( SM_CONTENT_B ( A ) -> s_mu ) #
# Skipping MacroDefinition: SM_LDIM_B ( A ) ( SM_CONTENT_B ( A ) -> ldim ) #
# Skipping MacroDefinition: SM_DATA_B ( A ) ( SM_CONTENT_B ( A ) -> data ) #
# Skipping MacroDefinition: SM_COLS_B ( A ) ( SM_CONTENT_B ( A ) -> cols ) #
# Skipping MacroDefinition: SM_COLUMN_B ( A , j ) ( ( ( SM_CONTENT_B ( A ) -> cols ) [ j ] ) + SM_SUBAND_B ( A ) ) #
# Skipping MacroDefinition: SM_COLUMN_ELEMENT_B ( col_j , i , j ) ( col_j [ ( i ) - ( j ) ] ) #
# Skipping MacroDefinition: SM_ELEMENT_B ( A , i , j ) ( ( SM_CONTENT_B ( A ) -> cols ) [ j ] [ ( i ) - ( j ) + SM_SUBAND_B ( A ) ] ) /*
# * -----------------------------------------------------------------
# * PART III: functions exported by sunmatrix_band
# *
# * CONSTRUCTORS:
# *    SUNBandMatrix
# * OTHER:
# *    SUNBandMatrix_Print
# *    SUNBandMatrix_Rows
# *    SUNBandMatrix_Columns
# *    SUNBandMatrix_LowerBandwidth
# *    SUNBandMatrix_UpperBandwidth
# *    SUNBandMatrix_StoredUpperBandwidth
# *    SUNBandMatrix_LDim
# *    SUNBandMatrix_Data
# *    SUNBandMatrix_Cols
# *    SUNBandMatrix_Column
# * -----------------------------------------------------------------
# */

mutable struct _SUNMatrixContent_Band
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

# Skipping MacroDefinition: SM_CONTENT_D ( A ) ( ( SUNMatrixContent_Dense ) ( A -> content ) ) #
# Skipping MacroDefinition: SM_ROWS_D ( A ) ( SM_CONTENT_D ( A ) -> M ) #
# Skipping MacroDefinition: SM_COLUMNS_D ( A ) ( SM_CONTENT_D ( A ) -> N ) #
# Skipping MacroDefinition: SM_LDATA_D ( A ) ( SM_CONTENT_D ( A ) -> ldata ) #
# Skipping MacroDefinition: SM_DATA_D ( A ) ( SM_CONTENT_D ( A ) -> data ) #
# Skipping MacroDefinition: SM_COLS_D ( A ) ( SM_CONTENT_D ( A ) -> cols ) #
# Skipping MacroDefinition: SM_COLUMN_D ( A , j ) ( ( SM_CONTENT_D ( A ) -> cols ) [ j ] ) #
# Skipping MacroDefinition: SM_ELEMENT_D ( A , i , j ) ( ( SM_CONTENT_D ( A ) -> cols ) [ j ] [ i ] ) /*
# * -----------------------------------------------------------------
# * PART III: functions exported by sunmatrix_dense
# *
# * CONSTRUCTORS:
# *    SUNDenseMatrix
# * OTHER:
# *    SUNDenseMatrix_Print
# *    SUNDenseMatrix_Rows
# *    SUNDenseMatrix_Columns
# *    SUNDenseMatrix_LData
# *    SUNDenseMatrix_Data
# *    SUNDenseMatrix_Cols
# *    SUNDenseMatrix_Column
# * -----------------------------------------------------------------
# */

mutable struct _SUNMatrixContent_Dense
    M::sunindextype
    N::sunindextype
    data::Ptr{realtype}
    ldata::sunindextype
    cols::Ptr{Ptr{realtype}}
end

const SUNMatrixContent_Dense = Ptr{_SUNMatrixContent_Dense}

# Skipping MacroDefinition: NV_CONTENT_S ( v ) ( ( N_VectorContent_Serial ) ( v -> content ) ) #
# Skipping MacroDefinition: NV_LENGTH_S ( v ) ( NV_CONTENT_S ( v ) -> length ) #
# Skipping MacroDefinition: NV_OWN_DATA_S ( v ) ( NV_CONTENT_S ( v ) -> own_data ) #
# Skipping MacroDefinition: NV_DATA_S ( v ) ( NV_CONTENT_S ( v ) -> data ) #
# Skipping MacroDefinition: NV_Ith_S ( v , i ) ( NV_DATA_S ( v ) [ i ] ) /*
# * -----------------------------------------------------------------
# * PART III: functions exported by nvector_serial
# *
# * CONSTRUCTORS:
# *    N_VNew_Serial
# *    N_VNewEmpty_Serial
# *    N_VMake_Serial
# *    N_VCloneVectorArray_Serial
# *    N_VCloneVectorArrayEmpty_Serial
# * DESTRUCTORS:
# *    N_VDestroy_Serial
# *    N_VDestroyVectorArray_Serial
# * OTHER:
# *    N_VGetLength_Serial
# *    N_VPrint_Serial
# *    N_VPrintFile_Serial
# * -----------------------------------------------------------------
# */

mutable struct _N_VectorContent_Serial
    length::sunindextype
    own_data::Cint
    data::Ptr{realtype}
end

const N_VectorContent_Serial = Ptr{_N_VectorContent_Serial}
const FCMIX_CVODE = Cint(1)
const FCMIX_IDA = Cint(2)
const FCMIX_KINSOL = Cint(3)
const FCMIX_ARKODE = Cint(4)

# Skipping MacroDefinition: SUNMIN ( A , B ) ( ( A ) < ( B ) ? ( A ) : ( B ) ) #
# Skipping MacroDefinition: SUNMAX ( A , B ) ( ( A ) > ( B ) ? ( A ) : ( B ) ) #
# Skipping MacroDefinition: SUNSQR ( A ) ( ( A ) * ( A ) ) #

const CSC_MAT = Cint(0)
const CSR_MAT = Cint(1)

mutable struct _SlsMat
    M::Cint
    N::Cint
    NNZ::Cint
    NP::Cint
    data::Ptr{realtype}
    sparsetype::Cint
    indexvals::Ptr{Cint}
    indexptrs::Ptr{Cint}
    rowvals::Ptr{Ptr{Cint}}
    colptrs::Ptr{Ptr{Cint}}
    colvals::Ptr{Ptr{Cint}}
    rowptrs::Ptr{Ptr{Cint}}
end

const SlsMat = Ptr{_SlsMat}
const CVLocalFn = Ptr{Cvoid}
const CVCommFn = Ptr{Cvoid}
const CVDIAG_SUCCESS = Cint(0)
const CVDIAG_MEM_NULL = Cint(-1)
const CVDIAG_LMEM_NULL = Cint(-2)
const CVDIAG_ILL_INPUT = Cint(-3)
const CVDIAG_MEM_FAIL = Cint(-4)
const CVDIAG_INV_FAIL = Cint(-5)
const CVDIAG_RHSFUNC_UNRECVR = Cint(-6)
const CVDIAG_RHSFUNC_RECVR = Cint(-7)
const CVDLS_SUCCESS = Cint(0)
const CVDLS_MEM_NULL = Cint(-1)
const CVDLS_LMEM_NULL = Cint(-2)
const CVDLS_ILL_INPUT = Cint(-3)
const CVDLS_MEM_FAIL = Cint(-4)
const CVDLS_JACFUNC_UNRECVR = Cint(-5)
const CVDLS_JACFUNC_RECVR = Cint(-6)
const CVDLS_SUNMAT_FAIL = Cint(-7)
const CVDlsJacFn = Ptr{Cvoid}
const CVSPILS_SUCCESS = Cint(0)
const CVSPILS_MEM_NULL = Cint(-1)
const CVSPILS_LMEM_NULL = Cint(-2)
const CVSPILS_ILL_INPUT = Cint(-3)
const CVSPILS_MEM_FAIL = Cint(-4)
const CVSPILS_PMEM_NULL = Cint(-5)
const CVSPILS_SUNLS_FAIL = Cint(-6)
const CVSPILS_MSBPRE = Cint(50)

# Skipping MacroDefinition: CVSPILS_DGMAX RCONST ( 0.2 ) #
# Skipping MacroDefinition: CVSPILS_EPLIN RCONST ( 0.05 ) /*===============================================================#
#  CVSPILS user-supplied function prototypes#
#  ===============================================================*/

const CVSpilsPrecSetupFn = Ptr{Cvoid}
const CVSpilsPrecSolveFn = Ptr{Cvoid}
const CVSpilsJacTimesSetupFn = Ptr{Cvoid}
const CVSpilsJacTimesVecFn = Ptr{Cvoid}
const CVLocalFnB = Ptr{Cvoid}
const CVCommFnB = Ptr{Cvoid}
const CVDIAG_NO_ADJ = Cint(-101)
const CVDLS_NO_ADJ = Cint(-101)
const CVDLS_LMEMB_NULL = Cint(-102)
const CVDlsJacFnB = Ptr{Cvoid}
const CVDlsJacFnBS = Ptr{Cvoid}
const CVSPILS_NO_ADJ = Cint(-101)
const CVSPILS_LMEMB_NULL = Cint(-102)

# Skipping MacroDefinition: CVSPILS_EPLIN RCONST ( 0.05 ) /*-----------------------------------------------------------------#
#  PART I - forward problems#
#  -----------------------------------------------------------------*/

const CVSpilsPrecSetupFnB = Ptr{Cvoid}
const CVSpilsPrecSetupFnBS = Ptr{Cvoid}
const CVSpilsPrecSolveFnB = Ptr{Cvoid}
const CVSpilsPrecSolveFnBS = Ptr{Cvoid}
const CVSpilsJacTimesSetupFnB = Ptr{Cvoid}
const CVSpilsJacTimesSetupFnBS = Ptr{Cvoid}
const CVSpilsJacTimesVecFnB = Ptr{Cvoid}
const CVSpilsJacTimesVecFnBS = Ptr{Cvoid}
const IDABBDLocalFn = Ptr{Cvoid}
const IDABBDCommFn = Ptr{Cvoid}
const IDADLS_SUCCESS = Cint(0)
const IDADLS_MEM_NULL = Cint(-1)
const IDADLS_LMEM_NULL = Cint(-2)
const IDADLS_ILL_INPUT = Cint(-3)
const IDADLS_MEM_FAIL = Cint(-4)
const IDADLS_JACFUNC_UNRECVR = Cint(-5)
const IDADLS_JACFUNC_RECVR = Cint(-6)
const IDADLS_SUNMAT_FAIL = Cint(-7)
const IDADlsJacFn = Ptr{Cvoid}
const IDASPILS_SUCCESS = Cint(0)
const IDASPILS_MEM_NULL = Cint(-1)
const IDASPILS_LMEM_NULL = Cint(-2)
const IDASPILS_ILL_INPUT = Cint(-3)
const IDASPILS_MEM_FAIL = Cint(-4)
const IDASPILS_PMEM_NULL = Cint(-5)
const IDASPILS_SUNLS_FAIL = Cint(-6)
const IDASpilsPrecSetupFn = Ptr{Cvoid}
const IDASpilsPrecSolveFn = Ptr{Cvoid}
const IDASpilsJacTimesSetupFn = Ptr{Cvoid}
const IDASpilsJacTimesVecFn = Ptr{Cvoid}
const IDABBDLocalFnB = Ptr{Cvoid}
const IDABBDCommFnB = Ptr{Cvoid}
const IDADLS_NO_ADJ = Cint(-101)
const IDADLS_LMEMB_NULL = Cint(-102)
const IDADlsJacFnB = Ptr{Cvoid}
const IDADlsJacFnBS = Ptr{Cvoid}
const IDASPILS_NO_ADJ = Cint(-101)
const IDASPILS_LMEMB_NULL = Cint(-102)
const IDASpilsPrecSetupFnB = Ptr{Cvoid}
const IDASpilsPrecSetupFnBS = Ptr{Cvoid}
const IDASpilsPrecSolveFnB = Ptr{Cvoid}
const IDASpilsPrecSolveFnBS = Ptr{Cvoid}
const IDASpilsJacTimesSetupFnB = Ptr{Cvoid}
const IDASpilsJacTimesSetupFnBS = Ptr{Cvoid}
const IDASpilsJacTimesVecFnB = Ptr{Cvoid}
const IDASpilsJacTimesVecFnBS = Ptr{Cvoid}
const KINBBDPRE_SUCCESS = Cint(0)
const KINBBDPRE_PDATA_NULL = Cint(-11)
const KINBBDPRE_FUNC_UNRECVR = Cint(-12)
const KINBBDCommFn = Ptr{Cvoid}
const KINBBDLocalFn = Ptr{Cvoid}
const KINDLS_SUCCESS = Cint(0)
const KINDLS_MEM_NULL = Cint(-1)
const KINDLS_LMEM_NULL = Cint(-2)
const KINDLS_ILL_INPUT = Cint(-3)
const KINDLS_MEM_FAIL = Cint(-4)
const KINDLS_JACFUNC_ERR = Cint(-5)
const KINDLS_SUNMAT_FAIL = Cint(-6)
const KINDlsJacFn = Ptr{Cvoid}
const KINSPILS_SUCCESS = Cint(0)
const KINSPILS_MEM_NULL = Cint(-1)
const KINSPILS_LMEM_NULL = Cint(-2)
const KINSPILS_ILL_INPUT = Cint(-3)
const KINSPILS_MEM_FAIL = Cint(-4)
const KINSPILS_PMEM_NULL = Cint(-5)
const KINSPILS_SUNLS_FAIL = Cint(-6)
const KINSpilsPrecSetupFn = Ptr{Cvoid}
const KINSpilsPrecSolveFn = Ptr{Cvoid}
const KINSpilsJacTimesVecFn = Ptr{Cvoid}
const ARKLocalFn = Ptr{Cvoid}
const ARKCommFn = Ptr{Cvoid}
const ARKDLS_SUCCESS = Cint(0)
const ARKDLS_MEM_NULL = Cint(-1)
const ARKDLS_LMEM_NULL = Cint(-2)
const ARKDLS_ILL_INPUT = Cint(-3)
const ARKDLS_MEM_FAIL = Cint(-4)
const ARKDLS_MASSMEM_NULL = Cint(-5)
const ARKDLS_JACFUNC_UNRECVR = Cint(-6)
const ARKDLS_JACFUNC_RECVR = Cint(-7)
const ARKDLS_MASSFUNC_UNRECVR = Cint(-8)
const ARKDLS_MASSFUNC_RECVR = Cint(-9)
const ARKDLS_SUNMAT_FAIL = Cint(-10)
const ARKDlsJacFn = Ptr{Cvoid}
const ARKDlsMassFn = Ptr{Cvoid}

mutable struct _SUNLinearSolverContent_Band
    N::sunindextype
    pivots::Ptr{sunindextype}
    last_flag::Clong
end

const SUNLinearSolverContent_Band = Ptr{_SUNLinearSolverContent_Band}

mutable struct _SUNLinearSolverContent_Dense
    N::sunindextype
    pivots::Ptr{sunindextype}
    last_flag::Clong
end

const SUNLinearSolverContent_Dense = Ptr{_SUNLinearSolverContent_Dense}
const SUNPCG_MAXL_DEFAULT = Cint(5)

mutable struct _SUNLinearSolverContent_PCG
    maxl::Cint
    pretype::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Clong
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
const SUNSPBCGS_MAXL_DEFAULT = Cint(5)

mutable struct _SUNLinearSolverContent_SPBCGS
    maxl::Cint
    pretype::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Clong
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
const SUNSPFGMR_MAXL_DEFAULT = Cint(5)
const SUNSPFGMR_MAXRS_DEFAULT = Cint(0)
const SUNSPFGMR_GSTYPE_DEFAULT = MODIFIED_GS

mutable struct _SUNLinearSolverContent_SPFGMR
    maxl::Cint
    pretype::Cint
    gstype::Cint
    max_restarts::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Clong
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
end

const SUNLinearSolverContent_SPFGMR = Ptr{_SUNLinearSolverContent_SPFGMR}
const SUNSPGMR_MAXL_DEFAULT = Cint(5)
const SUNSPGMR_MAXRS_DEFAULT = Cint(0)
const SUNSPGMR_GSTYPE_DEFAULT = MODIFIED_GS

mutable struct _SUNLinearSolverContent_SPGMR
    maxl::Cint
    pretype::Cint
    gstype::Cint
    max_restarts::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Clong
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
end

const SUNLinearSolverContent_SPGMR = Ptr{_SUNLinearSolverContent_SPGMR}
const SUNSPTFQMR_MAXL_DEFAULT = Cint(5)

mutable struct _SUNLinearSolverContent_SPTFQMR
    maxl::Cint
    pretype::Cint
    numiters::Cint
    resnorm::realtype
    last_flag::Clong
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

# Skipping MacroDefinition: SM_CONTENT_S ( A ) ( ( SUNMatrixContent_Sparse ) ( A -> content ) ) #
# Skipping MacroDefinition: SM_ROWS_S ( A ) ( SM_CONTENT_S ( A ) -> M ) #
# Skipping MacroDefinition: SM_COLUMNS_S ( A ) ( SM_CONTENT_S ( A ) -> N ) #
# Skipping MacroDefinition: SM_NNZ_S ( A ) ( SM_CONTENT_S ( A ) -> NNZ ) #
# Skipping MacroDefinition: SM_NP_S ( A ) ( SM_CONTENT_S ( A ) -> NP ) #
# Skipping MacroDefinition: SM_SPARSETYPE_S ( A ) ( SM_CONTENT_S ( A ) -> sparsetype ) #
# Skipping MacroDefinition: SM_DATA_S ( A ) ( SM_CONTENT_S ( A ) -> data ) #
# Skipping MacroDefinition: SM_INDEXVALS_S ( A ) ( SM_CONTENT_S ( A ) -> indexvals ) #
# Skipping MacroDefinition: SM_INDEXPTRS_S ( A ) ( SM_CONTENT_S ( A ) -> indexptrs ) /*
# * -----------------------------------------------------------------
# * PART III: functions exported by sunmatrix_sparse
# *
# * CONSTRUCTORS:
# *    SUNSparseMatrix
# *    SUNSparseFromDenseMatrix
# *    SUNSparseFromBandMatrix
# * OTHER:
# *    SUNSparseMatrix_Print
# *    SUNSparseMatrix_Realloc
# *    SUNSparseMatrix_Rows
# *    SUNSparseMatrix_Columns
# *    SUNSparseMatrix_NNZ
# *    SUNSparseMatrix_NP
# *    SUNSparseMatrix_SparseType
# *    SUNSparseMatrix_Data
# *    SUNSparseMatrix_IndexValues
# *    SUNSparseMatrix_IndexPointers
# * -----------------------------------------------------------------
# */

mutable struct _SUNMatrixContent_Sparse
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
