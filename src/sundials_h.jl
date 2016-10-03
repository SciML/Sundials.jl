# Automatically generated using Clang.jl wrap_c, version 0.0.0

using Compat
typealias FILE Libc.RawFD
const OBJC_NEW_PROPERTIES = 1
const SUNDIALS_PACKAGE_VERSION = "2.7.0"
const SUNDIALS_DOUBLE_PRECISION = 1
#=const FLT_EVAL_METHOD = __FLT_EVAL_METHOD__

# Skipping MacroDefinition: FLT_ROUNDS ( __builtin_flt_rounds ( ) )

const FLT_RADIX = __FLT_RADIX__
const FLT_MANT_DIG = __FLT_MANT_DIG__
const DBL_MANT_DIG = __DBL_MANT_DIG__
const LDBL_MANT_DIG = __LDBL_MANT_DIG__
const DECIMAL_DIG = __DECIMAL_DIG__
const FLT_DIG = __FLT_DIG__
const DBL_DIG = __DBL_DIG__
const LDBL_DIG = __LDBL_DIG__
const FLT_MIN_EXP = __FLT_MIN_EXP__
const DBL_MIN_EXP = __DBL_MIN_EXP__
const LDBL_MIN_EXP = __LDBL_MIN_EXP__
const FLT_MIN_10_EXP = __FLT_MIN_10_EXP__
const DBL_MIN_10_EXP = __DBL_MIN_10_EXP__
const LDBL_MIN_10_EXP = __LDBL_MIN_10_EXP__
const FLT_MAX_EXP = __FLT_MAX_EXP__
const DBL_MAX_EXP = __DBL_MAX_EXP__
const LDBL_MAX_EXP = __LDBL_MAX_EXP__
const FLT_MAX_10_EXP = __FLT_MAX_10_EXP__
const DBL_MAX_10_EXP = __DBL_MAX_10_EXP__
const LDBL_MAX_10_EXP = __LDBL_MAX_10_EXP__
const FLT_MAX = __FLT_MAX__
const DBL_MAX = __DBL_MAX__
const LDBL_MAX = __LDBL_MAX__
const FLT_EPSILON = __FLT_EPSILON__
const DBL_EPSILON = __DBL_EPSILON__
const LDBL_EPSILON = __LDBL_EPSILON__
const FLT_MIN = __FLT_MIN__
const DBL_MIN = __DBL_MIN__
const LDBL_MIN = __LDBL_MIN__
const FLT_TRUE_MIN = __FLT_DENORM_MIN__
const DBL_TRUE_MIN = __DBL_DENORM_MIN__
const LDBL_TRUE_MIN = __LDBL_DENORM_MIN__

# Skipping MacroDefinition: RCONST ( x ) x

const BIG_REAL = DBL_MAX
const SMALL_REAL = DBL_MIN
const UNIT_ROUNDOFF = DBL_EPSILON
=#
const FALSE = 0
const TRUE = 1
const SUNDIALS_DENSE = 1
const SUNDIALS_BAND = 2

# Skipping MacroDefinition: DENSE_COL ( A , j ) ( ( A -> cols ) [ j ] )
# Skipping MacroDefinition: DENSE_ELEM ( A , i , j ) ( ( A -> cols ) [ j ] [ i ] )
# Skipping MacroDefinition: BAND_COL ( A , j ) ( ( ( A -> cols ) [ j ] ) + ( A -> s_mu ) )
# Skipping MacroDefinition: BAND_COL_ELEM ( col_j , i , j ) ( col_j [ ( i ) - ( j ) ] )
# Skipping MacroDefinition: BAND_ELEM ( A , i , j ) ( ( A -> cols ) [ j ] [ ( i ) - ( j ) + ( A -> s_mu ) ] )

typealias realtype Cdouble

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

typealias DlsMat Ptr{_DlsMat}

# begin enum ANONYMOUS_1
typealias ANONYMOUS_1 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_1

# begin enum N_Vector_ID
typealias N_Vector_ID UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum N_Vector_ID

type _generic_N_Vector_Ops
    nvgetvectorid::Ptr{Void}
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

typealias N_Vector_Ops Ptr{_generic_N_Vector_Ops}

type _generic_N_Vector
    content::Ptr{Void}
    ops::Ptr{_generic_N_Vector_Ops}
end

typealias N_Vector Ptr{_generic_N_Vector}
typealias N_Vector_S Ptr{N_Vector}

# begin enum ANONYMOUS_2
typealias ANONYMOUS_2 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_2

# begin enum ANONYMOUS_147
typealias ANONYMOUS_147 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_147

# begin enum ANONYMOUS_3
typealias ANONYMOUS_3 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_3

# begin enum ANONYMOUS_148
typealias ANONYMOUS_148 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_148

typealias ATimesFn Ptr{Void}
typealias PSolveFn Ptr{Void}

# begin enum ANONYMOUS_4
typealias ANONYMOUS_4 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_4

const PCG_SUCCESS = 0
const PCG_RES_REDUCED = 1
const PCG_CONV_FAIL = 2
const PCG_PSOLVE_FAIL_REC = 3
const PCG_ATIMES_FAIL_REC = 4
const PCG_PSET_FAIL_REC = 5
const PCG_MEM_NULL = -1
const PCG_ATIMES_FAIL_UNREC = -2
const PCG_PSOLVE_FAIL_UNREC = -3
const PCG_PSET_FAIL_UNREC = -4

# begin enum ANONYMOUS_5
typealias ANONYMOUS_5 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_5

# begin enum ANONYMOUS_6
typealias ANONYMOUS_6 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_6

# begin enum ANONYMOUS_7
typealias ANONYMOUS_7 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_7

type PcgMemRec
    l_max::Cint
    r::N_Vector
    p::N_Vector
    z::N_Vector
    Ap::N_Vector
end

typealias PcgMem Ptr{Void}

#const NULL = Void#__DARWIN_NULL
const BUFSIZ = 1024
const EOF = -1
const FOPEN_MAX = 20
const FILENAME_MAX = 1024
const P_tmpdir = "/var/tmp/"
const L_tmpnam = 1024
const TMP_MAX = 308915776
const SEEK_SET = 0
const SEEK_CUR = 1
const SEEK_END = 2
#const stdin = __stdinp
#const stdout = __stdoutp
#const stderr = __stderrp
const L_ctermid = 1024

# Skipping MacroDefinition: getc_unlocked ( fp ) __sgetc ( fp )
# Skipping MacroDefinition: putc_unlocked ( x , fp ) __sputc ( x , fp )
# Skipping MacroDefinition: getchar_unlocked ( ) getc_unlocked ( stdin )
# Skipping MacroDefinition: putchar_unlocked ( x ) putc_unlocked ( x , stdout )
# Skipping MacroDefinition: fropen ( cookie , fn ) funopen ( cookie , fn , 0 , 0 , 0 )
# Skipping MacroDefinition: fwopen ( cookie , fn ) funopen ( cookie , 0 , fn , 0 , 0 )
# Skipping MacroDefinition: feof_unlocked ( p ) __sfeof ( p )
# Skipping MacroDefinition: ferror_unlocked ( p ) __sferror ( p )
# Skipping MacroDefinition: clearerr_unlocked ( p ) __sclearerr ( p )
# Skipping MacroDefinition: fileno_unlocked ( p ) __sfileno ( p )
# Skipping MacroDefinition: sprintf ( str , ... ) __builtin___sprintf_chk ( str , 0 , __darwin_obsz ( str ) , __VA_ARGS__ )
# Skipping MacroDefinition: snprintf ( str , len , ... ) __builtin___snprintf_chk ( str , len , 0 , __darwin_obsz ( str ) , __VA_ARGS__ )
# Skipping MacroDefinition: vsprintf ( str , format , ap ) __builtin___vsprintf_chk ( str , 0 , __darwin_obsz ( str ) , format , ap )
# Skipping MacroDefinition: vsnprintf ( str , len , format , ap ) __builtin___vsnprintf_chk ( str , len , 0 , __darwin_obsz ( str ) , format , ap )

const CSC_MAT = 0
const CSR_MAT = 1

type _opaque_pthread_attr_t
    __sig::Clong
    __opaque::NTuple{56,UInt8}
end

type _opaque_pthread_cond_t
    __sig::Clong
    __opaque::NTuple{40,UInt8}
end

type _opaque_pthread_condattr_t
    __sig::Clong
    __opaque::NTuple{8,UInt8}
end

type _opaque_pthread_mutex_t
    __sig::Clong
    __opaque::NTuple{56,UInt8}
end

type _opaque_pthread_mutexattr_t
    __sig::Clong
    __opaque::NTuple{8,UInt8}
end

type _opaque_pthread_once_t
    __sig::Clong
    __opaque::NTuple{8,UInt8}
end

type _opaque_pthread_rwlock_t
    __sig::Clong
    __opaque::NTuple{192,UInt8}
end

type _opaque_pthread_rwlockattr_t
    __sig::Clong
    __opaque::NTuple{16,UInt8}
end

#type _opaque_pthread_t
#    __sig::Clong
#    __cleanup_stack::Ptr{__darwin_pthread_handler_rec}
#    __opaque::NTuple{8176,UInt8}
#end

#typealias va_list __darwin_va_list
typealias va_list Ptr{Void}
typealias __builtin_va_list Ptr{Void}
#typealias size_t __darwin_size_t
#typealias fpos_t __darwin_off_t

#=type FILE
    _p::Ptr{Cuchar}
    _r::Cint
    _w::Cint
    _flags::Int16
    _file::Int16
    _bf::__sbuf
    _lbfsize::Cint
    _cookie::Ptr{Void}
    _close::Ptr{Void}
    _read::Ptr{Void}
    _seek::Ptr{Void}
    _write::Ptr{Void}
    _ub::__sbuf
    _extra::Ptr{__sFILEX}
    _ur::Cint
    _ubuf::NTuple{3,Cuchar}
    _nbuf::NTuple{1,Cuchar}
    _lb::__sbuf
    _blksize::Cint
    _offset::fpos_t
end

typealias off_t __darwin_off_t
typealias ssize_t __darwin_ssize_t
=#
type _SlsMat
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

typealias SlsMat Ptr{_SlsMat}

const SPBCG_SUCCESS = 0
const SPBCG_RES_REDUCED = 1
const SPBCG_CONV_FAIL = 2
const SPBCG_PSOLVE_FAIL_REC = 3
const SPBCG_ATIMES_FAIL_REC = 4
const SPBCG_PSET_FAIL_REC = 5
const SPBCG_MEM_NULL = -1
const SPBCG_ATIMES_FAIL_UNREC = -2
const SPBCG_PSOLVE_FAIL_UNREC = -3
const SPBCG_PSET_FAIL_UNREC = -4

# Skipping MacroDefinition: SPBCG_VTEMP ( mem ) ( mem -> r )

# begin enum ANONYMOUS_8
typealias ANONYMOUS_8 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_8

# begin enum ANONYMOUS_9
typealias ANONYMOUS_9 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_9

# begin enum ANONYMOUS_10
typealias ANONYMOUS_10 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_10

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

typealias SpbcgMem Ptr{Void}

const SPFGMR_SUCCESS = 0
const SPFGMR_RES_REDUCED = 1
const SPFGMR_CONV_FAIL = 2
const SPFGMR_QRFACT_FAIL = 3
const SPFGMR_PSOLVE_FAIL_REC = 4
const SPFGMR_ATIMES_FAIL_REC = 5
const SPFGMR_PSET_FAIL_REC = 6
const SPFGMR_MEM_NULL = -1
const SPFGMR_ATIMES_FAIL_UNREC = -2
const SPFGMR_PSOLVE_FAIL_UNREC = -3
const SPFGMR_GS_FAIL = -4
const SPFGMR_QRSOL_FAIL = -5
const SPFGMR_PSET_FAIL_UNREC = -6

# Skipping MacroDefinition: SPFGMR_VTEMP ( mem ) ( mem -> vtemp )

# begin enum ANONYMOUS_11
typealias ANONYMOUS_11 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_11

# begin enum ANONYMOUS_12
typealias ANONYMOUS_12 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_12

# begin enum ANONYMOUS_13
typealias ANONYMOUS_13 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_13

type _SpfgmrMemRec
    l_max::Cint
    V::Ptr{N_Vector}
    Z::Ptr{N_Vector}
    Hes::Ptr{Ptr{realtype}}
    givens::Ptr{realtype}
    xcor::N_Vector
    yg::Ptr{realtype}
    vtemp::N_Vector
end

type SpfgmrMemRec
    l_max::Cint
    V::Ptr{N_Vector}
    Z::Ptr{N_Vector}
    Hes::Ptr{Ptr{realtype}}
    givens::Ptr{realtype}
    xcor::N_Vector
    yg::Ptr{realtype}
    vtemp::N_Vector
end

typealias SpfgmrMem Ptr{_SpfgmrMemRec}

const SPGMR_SUCCESS = 0
const SPGMR_RES_REDUCED = 1
const SPGMR_CONV_FAIL = 2
const SPGMR_QRFACT_FAIL = 3
const SPGMR_PSOLVE_FAIL_REC = 4
const SPGMR_ATIMES_FAIL_REC = 5
const SPGMR_PSET_FAIL_REC = 6
const SPGMR_MEM_NULL = -1
const SPGMR_ATIMES_FAIL_UNREC = -2
const SPGMR_PSOLVE_FAIL_UNREC = -3
const SPGMR_GS_FAIL = -4
const SPGMR_QRSOL_FAIL = -5
const SPGMR_PSET_FAIL_UNREC = -6

# Skipping MacroDefinition: SPGMR_VTEMP ( mem ) ( mem -> vtemp )

# begin enum ANONYMOUS_14
typealias ANONYMOUS_14 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_14

# begin enum ANONYMOUS_15
typealias ANONYMOUS_15 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_15

# begin enum ANONYMOUS_16
typealias ANONYMOUS_16 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_16

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

typealias SpgmrMem Ptr{_SpgmrMemRec}

const SPTFQMR_SUCCESS = 0
const SPTFQMR_RES_REDUCED = 1
const SPTFQMR_CONV_FAIL = 2
const SPTFQMR_PSOLVE_FAIL_REC = 3
const SPTFQMR_ATIMES_FAIL_REC = 4
const SPTFQMR_PSET_FAIL_REC = 5
const SPTFQMR_MEM_NULL = -1
const SPTFQMR_ATIMES_FAIL_UNREC = -2
const SPTFQMR_PSOLVE_FAIL_UNREC = -3
const SPTFQMR_PSET_FAIL_UNREC = -4

# Skipping MacroDefinition: SPTFQMR_VTEMP ( mem ) ( mem -> vtemp1 )

# begin enum ANONYMOUS_17
typealias ANONYMOUS_17 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_17

# begin enum ANONYMOUS_18
typealias ANONYMOUS_18 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_18

# begin enum ANONYMOUS_19
typealias ANONYMOUS_19 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_19

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

typealias SptfqmrMem Ptr{Void}

const CV_ADAMS = 1
const CV_BDF = 2
const CV_FUNCTIONAL = 1
const CV_NEWTON = 2
const CV_NORMAL = 1
const CV_ONE_STEP = 2
const CV_SUCCESS = 0
const CV_TSTOP_RETURN = 1
const CV_ROOT_RETURN = 2
const CV_WARNING = 99
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
const CV_MEM_FAIL = -20
const CV_MEM_NULL = -21
const CV_ILL_INPUT = -22
const CV_NO_MALLOC = -23
const CV_BAD_K = -24
const CV_BAD_T = -25
const CV_BAD_DKY = -26
const CV_TOO_CLOSE = -27

# begin enum ANONYMOUS_20
typealias ANONYMOUS_20 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_20

typealias CVRhsFn Ptr{Void}
typealias CVRootFn Ptr{Void}
typealias CVEwtFn Ptr{Void}
typealias CVErrHandlerFn Ptr{Void}

const CVDLS_SUCCESS = 0
const CVDLS_MEM_NULL = -1
const CVDLS_LMEM_NULL = -2
const CVDLS_ILL_INPUT = -3
const CVDLS_MEM_FAIL = -4
const CVDLS_JACFUNC_UNRECVR = -5
const CVDLS_JACFUNC_RECVR = -6

# begin enum ANONYMOUS_21
typealias ANONYMOUS_21 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_21

typealias CVDlsDenseJacFn Ptr{Void}
typealias CVDlsBandJacFn Ptr{Void}

const CVSPILS_SUCCESS = 0
const CVSPILS_MEM_NULL = -1
const CVSPILS_LMEM_NULL = -2
const CVSPILS_ILL_INPUT = -3
const CVSPILS_MEM_FAIL = -4
const CVSPILS_PMEM_NULL = -5
const CVSPILS_MAXL = 5
const CVSPILS_MSBPRE = 50

# Skipping MacroDefinition: CVSPILS_DGMAX RCONST ( 0.2 )
# Skipping MacroDefinition: CVSPILS_EPLIN RCONST ( 0.05 )

# begin enum ANONYMOUS_22
typealias ANONYMOUS_22 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_22

# begin enum ANONYMOUS_23
typealias ANONYMOUS_23 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_23

# begin enum ANONYMOUS_24
typealias ANONYMOUS_24 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_24

typealias CVSpilsPrecSetupFn Ptr{Void}
typealias CVSpilsPrecSolveFn Ptr{Void}
typealias CVSpilsJacTimesVecFn Ptr{Void}

const CV_SIMULTANEOUS = 1
const CV_STAGGERED = 2
const CV_STAGGERED1 = 3
const CV_CENTERED = 1
const CV_FORWARD = 2
const CV_HERMITE = 1
const CV_POLYNOMIAL = 2
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

# begin enum ANONYMOUS_25
typealias ANONYMOUS_25 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_25

typealias CVQuadRhsFn Ptr{Void}
typealias CVSensRhsFn Ptr{Void}
typealias CVSensRhs1Fn Ptr{Void}
typealias CVQuadSensRhsFn Ptr{Void}
typealias CVRhsFnB Ptr{Void}
typealias CVRhsFnBS Ptr{Void}
typealias CVQuadRhsFnB Ptr{Void}
typealias CVQuadRhsFnBS Ptr{Void}

type CVadjCheckPointRec
    my_addr::Ptr{Void}
    next_addr::Ptr{Void}
    t0::realtype
    t1::realtype
    nstep::Clong
    order::Cint
    step::realtype
end

const CVDLS_NO_ADJ = -101
const CVDLS_LMEMB_NULL = -102

# begin enum ANONYMOUS_26
typealias ANONYMOUS_26 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_26

typealias CVDlsDenseJacFnB Ptr{Void}
typealias CVDlsDenseJacFnBS Ptr{Void}
typealias CVDlsBandJacFnB Ptr{Void}
typealias CVDlsBandJacFnBS Ptr{Void}

const CVSPILS_NO_ADJ = -101
const CVSPILS_LMEMB_NULL = -102

# begin enum ANONYMOUS_27
typealias ANONYMOUS_27 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_27

# begin enum ANONYMOUS_28
typealias ANONYMOUS_28 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_28

# begin enum ANONYMOUS_29
typealias ANONYMOUS_29 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_29

typealias CVSpilsPrecSetupFnB Ptr{Void}
typealias CVSpilsPrecSetupFnBS Ptr{Void}
typealias CVSpilsPrecSolveFnB Ptr{Void}
typealias CVSpilsPrecSolveFnBS Ptr{Void}
typealias CVSpilsJacTimesVecFnB Ptr{Void}
typealias CVSpilsJacTimesVecFnBS Ptr{Void}

const IDA_NORMAL = 1
const IDA_ONE_STEP = 2
const IDA_YA_YDP_INIT = 1
const IDA_Y_INIT = 2
const IDA_SUCCESS = 0
const IDA_TSTOP_RETURN = 1
const IDA_ROOT_RETURN = 2
const IDA_WARNING = 99
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
const IDA_MEM_NULL = -20
const IDA_MEM_FAIL = -21
const IDA_ILL_INPUT = -22
const IDA_NO_MALLOC = -23
const IDA_BAD_EWT = -24
const IDA_BAD_K = -25
const IDA_BAD_T = -26
const IDA_BAD_DKY = -27
const IDA_UNRECOGNISED_ERROR = -99

# begin enum ANONYMOUS_30
typealias ANONYMOUS_30 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_30

typealias IDAResFn Ptr{Void}
typealias IDARootFn Ptr{Void}
typealias IDAEwtFn Ptr{Void}
typealias IDAErrHandlerFn Ptr{Void}

const IDADLS_SUCCESS = 0
const IDADLS_MEM_NULL = -1
const IDADLS_LMEM_NULL = -2
const IDADLS_ILL_INPUT = -3
const IDADLS_MEM_FAIL = -4
const IDADLS_JACFUNC_UNRECVR = -5
const IDADLS_JACFUNC_RECVR = -6

# begin enum ANONYMOUS_31
typealias ANONYMOUS_31 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_31

typealias IDADlsDenseJacFn Ptr{Void}
typealias IDADlsBandJacFn Ptr{Void}

const IDASPILS_SUCCESS = 0
const IDASPILS_MEM_NULL = -1
const IDASPILS_LMEM_NULL = -2
const IDASPILS_ILL_INPUT = -3
const IDASPILS_MEM_FAIL = -4
const IDASPILS_PMEM_NULL = -5

# begin enum ANONYMOUS_32
typealias ANONYMOUS_32 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_32

# begin enum ANONYMOUS_33
typealias ANONYMOUS_33 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_33

# begin enum ANONYMOUS_34
typealias ANONYMOUS_34 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_34

typealias IDASpilsPrecSetupFn Ptr{Void}
typealias IDASpilsPrecSolveFn Ptr{Void}
typealias IDASpilsJacTimesVecFn Ptr{Void}

const IDA_SIMULTANEOUS = 1
const IDA_STAGGERED = 2
const IDA_CENTERED = 1
const IDA_FORWARD = 2
const IDA_HERMITE = 1
const IDA_POLYNOMIAL = 2
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
const IDA_UNRECONGISED_ERROR = -99
const IDA_NO_ADJ = -101
const IDA_NO_FWD = -102
const IDA_NO_BCK = -103
const IDA_BAD_TB0 = -104
const IDA_REIFWD_FAIL = -105
const IDA_FWD_FAIL = -106
const IDA_GETY_BADT = -107

# begin enum ANONYMOUS_35
typealias ANONYMOUS_35 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_35

typealias IDAQuadRhsFn Ptr{Void}
typealias IDASensResFn Ptr{Void}
typealias IDAQuadSensRhsFn Ptr{Void}
typealias IDAResFnB Ptr{Void}
typealias IDAResFnBS Ptr{Void}
typealias IDAQuadRhsFnB Ptr{Void}
typealias IDAQuadRhsFnBS Ptr{Void}

type IDAadjCheckPointRec
    my_addr::Ptr{Void}
    next_addr::Ptr{Void}
    t0::realtype
    t1::realtype
    nstep::Clong
    order::Cint
    step::realtype
end

const IDADLS_NO_ADJ = -101
const IDADLS_LMEMB_NULL = -102

# begin enum ANONYMOUS_36
typealias ANONYMOUS_36 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_36

typealias IDADlsDenseJacFnB Ptr{Void}
typealias IDADlsDenseJacFnBS Ptr{Void}
typealias IDADlsBandJacFnB Ptr{Void}
typealias IDADlsBandJacFnBS Ptr{Void}

const IDASPILS_NO_ADJ = -101
const IDASPILS_LMEMB_NULL = -102

# begin enum ANONYMOUS_37
typealias ANONYMOUS_37 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_37

# begin enum ANONYMOUS_38
typealias ANONYMOUS_38 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_38

# begin enum ANONYMOUS_39
typealias ANONYMOUS_39 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_39

typealias IDASpilsPrecSetupFnB Ptr{Void}
typealias IDASpilsPrecSetupFnBS Ptr{Void}
typealias IDASpilsPrecSolveFnB Ptr{Void}
typealias IDASpilsPrecSolveFnBS Ptr{Void}
typealias IDASpilsJacTimesVecFnB Ptr{Void}
typealias IDASpilsJacTimesVecFnBS Ptr{Void}

const KIN_SUCCESS = 0
const KIN_INITIAL_GUESS_OK = 1
const KIN_STEP_LT_STPTOL = 2
const KIN_WARNING = 99
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
const KIN_ETACHOICE1 = 1
const KIN_ETACHOICE2 = 2
const KIN_ETACONSTANT = 3
const KIN_NONE = 0
const KIN_LINESEARCH = 1
const KIN_PICARD = 2
const KIN_FP = 3

# begin enum ANONYMOUS_40
typealias ANONYMOUS_40 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_40

typealias KINSysFn Ptr{Void}
typealias KINErrHandlerFn Ptr{Void}
typealias KINInfoHandlerFn Ptr{Void}

const KINDLS_SUCCESS = 0
const KINDLS_MEM_NULL = -1
const KINDLS_LMEM_NULL = -2
const KINDLS_ILL_INPUT = -3
const KINDLS_MEM_FAIL = -4
const KINDLS_JACFUNC_UNRECVR = -5
const KINDLS_JACFUNC_RECVR = -6

# begin enum ANONYMOUS_41
typealias ANONYMOUS_41 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_41

typealias KINDlsDenseJacFn Ptr{Void}
typealias KINDlsBandJacFn Ptr{Void}

const KINSPILS_SUCCESS = 0
const KINSPILS_MEM_NULL = -1
const KINSPILS_LMEM_NULL = -2
const KINSPILS_ILL_INPUT = -3
const KINSPILS_MEM_FAIL = -4
const KINSPILS_PMEM_NULL = -5
const KINSPILS_MAXL = 10

# begin enum ANONYMOUS_42
typealias ANONYMOUS_42 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_42

# begin enum ANONYMOUS_43
typealias ANONYMOUS_43 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_43

# begin enum ANONYMOUS_44
typealias ANONYMOUS_44 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_44

typealias KINSpilsPrecSetupFn Ptr{Void}
typealias KINSpilsPrecSolveFn Ptr{Void}
typealias KINSpilsJacTimesVecFn Ptr{Void}

const ARK_S_MAX = 15

# Skipping MacroDefinition: ARK_A ( A , i , j ) ( A [ i * ARK_S_MAX + j ] )

const ARK_NORMAL = 1
const ARK_ONE_STEP = 2
const HEUN_EULER_2_1_2 = 0
const BOGACKI_SHAMPINE_4_2_3 = 1
const ARK324L2SA_ERK_4_2_3 = 2
const ZONNEVELD_5_3_4 = 3
const ARK436L2SA_ERK_6_3_4 = 4
const SAYFY_ABURUB_6_3_4 = 5
const CASH_KARP_6_4_5 = 6
const FEHLBERG_6_4_5 = 7
const DORMAND_PRINCE_7_4_5 = 8
const ARK548L2SA_ERK_8_4_5 = 9
const VERNER_8_5_6 = 10
const FEHLBERG_13_7_8 = 11
const DEFAULT_ERK_2 = HEUN_EULER_2_1_2
const DEFAULT_ERK_3 = BOGACKI_SHAMPINE_4_2_3
const DEFAULT_ERK_4 = ZONNEVELD_5_3_4
const DEFAULT_ERK_5 = CASH_KARP_6_4_5
const DEFAULT_ERK_6 = VERNER_8_5_6
const DEFAULT_ERK_8 = FEHLBERG_13_7_8
const MIN_ERK_NUM = 0
const MAX_ERK_NUM = 11
const SDIRK_2_1_2 = 12
const BILLINGTON_3_3_2 = 13
const TRBDF2_3_3_2 = 14
const KVAERNO_4_2_3 = 15
const ARK324L2SA_DIRK_4_2_3 = 16
const CASH_5_2_4 = 17
const CASH_5_3_4 = 18
const SDIRK_5_3_4 = 19
const KVAERNO_5_3_4 = 20
const ARK436L2SA_DIRK_6_3_4 = 21
const KVAERNO_7_4_5 = 22
const ARK548L2SA_DIRK_8_4_5 = 23
const DEFAULT_DIRK_2 = SDIRK_2_1_2
const DEFAULT_DIRK_3 = ARK324L2SA_DIRK_4_2_3
const DEFAULT_DIRK_4 = SDIRK_5_3_4
const DEFAULT_DIRK_5 = ARK548L2SA_DIRK_8_4_5
const MIN_DIRK_NUM = 12
const MAX_DIRK_NUM = 23
const DEFAULT_ARK_ETABLE_3 = ARK324L2SA_ERK_4_2_3
const DEFAULT_ARK_ETABLE_4 = ARK436L2SA_ERK_6_3_4
const DEFAULT_ARK_ETABLE_5 = ARK548L2SA_ERK_8_4_5
const DEFAULT_ARK_ITABLE_3 = ARK324L2SA_DIRK_4_2_3
const DEFAULT_ARK_ITABLE_4 = ARK436L2SA_DIRK_6_3_4
const DEFAULT_ARK_ITABLE_5 = ARK548L2SA_DIRK_8_4_5
const ARK_SUCCESS = 0
const ARK_TSTOP_RETURN = 1
const ARK_ROOT_RETURN = 2
const ARK_WARNING = 99
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
const ARK_MEM_FAIL = -20
const ARK_MEM_NULL = -21
const ARK_ILL_INPUT = -22
const ARK_NO_MALLOC = -23
const ARK_BAD_K = -24
const ARK_BAD_T = -25
const ARK_BAD_DKY = -26
const ARK_TOO_CLOSE = -27
const ARK_POSTPROCESS_FAIL = -28

# begin enum ANONYMOUS_45
typealias ANONYMOUS_45 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_45

typealias ARKRhsFn Ptr{Void}
typealias ARKRootFn Ptr{Void}
typealias ARKEwtFn Ptr{Void}
typealias ARKRwtFn Ptr{Void}
typealias ARKErrHandlerFn Ptr{Void}
typealias ARKAdaptFn Ptr{Void}
typealias ARKExpStabFn Ptr{Void}
typealias ARKVecResizeFn Ptr{Void}
typealias ARKPostProcessStepFn Ptr{Void}

const ARKDLS_SUCCESS = 0
const ARKDLS_MEM_NULL = -1
const ARKDLS_LMEM_NULL = -2
const ARKDLS_ILL_INPUT = -3
const ARKDLS_MEM_FAIL = -4
const ARKDLS_MASSMEM_NULL = -5
const ARKDLS_JACFUNC_UNRECVR = -6
const ARKDLS_JACFUNC_RECVR = -7
const ARKDLS_MASSFUNC_UNRECVR = -8
const ARKDLS_MASSFUNC_RECVR = -9

# begin enum ANONYMOUS_46
typealias ANONYMOUS_46 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_46

typealias ARKDlsDenseJacFn Ptr{Void}
typealias ARKDlsDenseMassFn Ptr{Void}
typealias ARKDlsBandJacFn Ptr{Void}
typealias ARKDlsBandMassFn Ptr{Void}

const ARKSPILS_SUCCESS = 0
const ARKSPILS_MEM_NULL = -1
const ARKSPILS_LMEM_NULL = -2
const ARKSPILS_ILL_INPUT = -3
const ARKSPILS_MEM_FAIL = -4
const ARKSPILS_PMEM_NULL = -5
const ARKSPILS_MASSMEM_NULL = -6
const ARKSPILS_MAXL = 5
const ARKSPILS_MSBPRE = 50

# Skipping MacroDefinition: ARKSPILS_DGMAX RCONST ( 0.2 )
# Skipping MacroDefinition: ARKSPILS_EPLIN RCONST ( 0.05 )

# begin enum ANONYMOUS_47
typealias ANONYMOUS_47 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_47

# begin enum ANONYMOUS_48
typealias ANONYMOUS_48 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_48

# begin enum ANONYMOUS_49
typealias ANONYMOUS_49 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_49

typealias ARKSpilsPrecSetupFn Ptr{Void}
typealias ARKSpilsPrecSolveFn Ptr{Void}
typealias ARKSpilsJacTimesVecFn Ptr{Void}
typealias ARKSpilsMassTimesVecFn Ptr{Void}
typealias ARKSpilsMassPrecSetupFn Ptr{Void}
typealias ARKSpilsMassPrecSolveFn Ptr{Void}

# Skipping MacroDefinition: NV_CONTENT_S ( v ) ( ( N_VectorContent_Serial ) ( v -> content ) )
# Skipping MacroDefinition: NV_LENGTH_S ( v ) ( NV_CONTENT_S ( v ) -> length )
# Skipping MacroDefinition: NV_OWN_DATA_S ( v ) ( NV_CONTENT_S ( v ) -> own_data )
# Skipping MacroDefinition: NV_DATA_S ( v ) ( NV_CONTENT_S ( v ) -> data )
# Skipping MacroDefinition: NV_Ith_S ( v , i ) ( NV_DATA_S ( v ) [ i ] )

# begin enum ANONYMOUS_50
typealias ANONYMOUS_50 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_50

type _N_VectorContent_Serial
    length::Clong
    own_data::Cint
    data::Ptr{realtype}
end

typealias N_VectorContent_Serial Ptr{_N_VectorContent_Serial}

const FCMIX_CVODE = 1
const FCMIX_IDA = 2
const FCMIX_KINSOL = 3
const FCMIX_ARKODE = 4

# Skipping MacroDefinition: SUNMIN ( A , B ) ( ( A ) < ( B ) ? ( A ) : ( B ) )
# Skipping MacroDefinition: SUNMAX ( A , B ) ( ( A ) > ( B ) ? ( A ) : ( B ) )
# Skipping MacroDefinition: SUNSQR ( A ) ( ( A ) * ( A ) )

# begin enum ANONYMOUS_51
typealias ANONYMOUS_51 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_51

# begin enum ANONYMOUS_52
typealias ANONYMOUS_52 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_52

# begin enum ANONYMOUS_53
typealias ANONYMOUS_53 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_53

typealias CVLocalFn Ptr{Void}
typealias CVCommFn Ptr{Void}

# begin enum ANONYMOUS_54
typealias ANONYMOUS_54 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_54

const CVDIAG_SUCCESS = 0
const CVDIAG_MEM_NULL = -1
const CVDIAG_LMEM_NULL = -2
const CVDIAG_ILL_INPUT = -3
const CVDIAG_MEM_FAIL = -4
const CVDIAG_INV_FAIL = -5
const CVDIAG_RHSFUNC_UNRECVR = -6
const CVDIAG_RHSFUNC_RECVR = -7

# begin enum ANONYMOUS_55
typealias ANONYMOUS_55 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_55

# Skipping MacroDefinition: va_start ( ap , param ) __builtin_va_start ( ap , param )
# Skipping MacroDefinition: va_end ( ap ) __builtin_va_end ( ap )
# Skipping MacroDefinition: va_arg ( ap , type ) __builtin_va_arg ( ap , type )
# Skipping MacroDefinition: va_copy ( dest , src ) __builtin_va_copy ( dest , src )

const ADAMS_Q_MAX = 12
const BDF_Q_MAX = 5
const Q_MAX = ADAMS_Q_MAX
const L_MAX = Q_MAX + 1
const NUM_TESTS = 5

# Skipping MacroDefinition: HMIN_DEFAULT RCONST ( 0.0 )
# Skipping MacroDefinition: HMAX_INV_DEFAULT RCONST ( 0.0 )

const MXHNIL_DEFAULT = 10
const MXSTEP_DEFAULT = 500
const CV_NO_FAILURES = 0
const CV_FAIL_BAD_J = 1
const CV_FAIL_OTHER = 2
const MSG_TIME = "t = %lg"
const MSG_TIME_H = "t = %lg and h = %lg"
const MSG_TIME_INT = "t = %lg is not between tcur - hold = %lg and tcur = %lg."
const MSG_TIME_TOUT = "tout = %lg"
const MSG_TIME_TSTOP = "tstop = %lg"
const MSGCV_NO_MEM = "cvode_mem = NULL illegal."
const MSGCV_CVMEM_FAIL = "Allocation of cvode_mem failed."
const MSGCV_MEM_FAIL = "A memory request failed."
const MSGCV_BAD_LMM = "Illegal value for lmm. The legal values are CV_ADAMS and CV_BDF."
const MSGCV_BAD_ITER = "Illegal value for iter. The legal values are CV_FUNCTIONAL and CV_NEWTON."
const MSGCV_NO_MALLOC = "Attempt to call before CVodeInit."
const MSGCV_NEG_MAXORD = "maxord <= 0 illegal."
const MSGCV_BAD_MAXORD = "Illegal attempt to increase maximum method order."
const MSGCV_SET_SLDET = "Attempt to use stability limit detection with the CV_ADAMS method illegal."
const MSGCV_NEG_HMIN = "hmin < 0 illegal."
const MSGCV_NEG_HMAX = "hmax < 0 illegal."
const MSGCV_BAD_HMIN_HMAX = "Inconsistent step size limits: hmin > hmax."
const MSGCV_BAD_RELTOL = "reltol < 0 illegal."
const MSGCV_BAD_ABSTOL = "abstol has negative component(s) (illegal)."
const MSGCV_NULL_ABSTOL = "abstol = NULL illegal."
const MSGCV_NULL_Y0 = "y0 = NULL illegal."
const MSGCV_NULL_F = "f = NULL illegal."
const MSGCV_NULL_G = "g = NULL illegal."
const MSGCV_BAD_NVECTOR = "A required vector operation is not implemented."
const MSGCV_BAD_K = "Illegal value for k."
const MSGCV_NULL_DKY = "dky = NULL illegal."
const MSGCV_BAD_T = "Illegal value for t."
const MSGCV_NO_ROOT = "Rootfinding was not initialized."
const MSGCV_NO_TOLS = "No integration tolerances for sensitivity variables have been specified."
const MSGCV_LSOLVE_NULL = "The linear solver's solve routine is NULL."
const MSGCV_YOUT_NULL = "yout = NULL illegal."
const MSGCV_TRET_NULL = "tret = NULL illegal."
const MSGCV_BAD_EWT = "Initial ewt has component(s) equal to zero (illegal)."

# Skipping MacroDefinition: MSGCV_EWT_NOW_BAD "At " MSG_TIME ", a component of ewt has become <= 0."

const MSGCV_BAD_ITASK = "Illegal value for itask."
const MSGCV_BAD_H0 = "h0 and tout - t0 inconsistent."

# Skipping MacroDefinition: MSGCV_BAD_TOUT "Trouble interpolating at " MSG_TIME_TOUT ". tout too far back in direction of integration"

const MSGCV_EWT_FAIL = "The user-provide EwtSet function failed."

# Skipping MacroDefinition: MSGCV_EWT_NOW_FAIL "At " MSG_TIME ", the user-provide EwtSet function failed."

const MSGCV_LINIT_FAIL = "The linear solver's init routine failed."
const MSGCV_HNIL_DONE = "The above warning has been issued mxhnil times and will not be issued again for this problem."
const MSGCV_TOO_CLOSE = "tout too close to t0 to start integration."

# Skipping MacroDefinition: MSGCV_MAX_STEPS "At " MSG_TIME ", mxstep steps taken before reaching tout."
# Skipping MacroDefinition: MSGCV_TOO_MUCH_ACC "At " MSG_TIME ", too much accuracy requested."
# Skipping MacroDefinition: MSGCV_HNIL "Internal " MSG_TIME_H " are such that t + h = t on the next step. The solver will continue anyway."
# Skipping MacroDefinition: MSGCV_ERR_FAILS "At " MSG_TIME_H ", the error test failed repeatedly or with |h| = hmin."
# Skipping MacroDefinition: MSGCV_CONV_FAILS "At " MSG_TIME_H ", the corrector convergence test failed repeatedly or with |h| = hmin."
# Skipping MacroDefinition: MSGCV_SETUP_FAILED "At " MSG_TIME ", the setup routine failed in an unrecoverable manner."
# Skipping MacroDefinition: MSGCV_SOLVE_FAILED "At " MSG_TIME ", the solve routine failed in an unrecoverable manner."
# Skipping MacroDefinition: MSGCV_RHSFUNC_FAILED "At " MSG_TIME ", the right-hand side routine failed in an unrecoverable manner."
# Skipping MacroDefinition: MSGCV_RHSFUNC_UNREC "At " MSG_TIME ", the right-hand side failed in a recoverable manner, but no recovery is possible."
# Skipping MacroDefinition: MSGCV_RHSFUNC_REPTD "At " MSG_TIME " repeated recoverable right-hand side function errors."

const MSGCV_RHSFUNC_FIRST = "The right-hand side routine failed at the first call."

# Skipping MacroDefinition: MSGCV_RTFUNC_FAILED "At " MSG_TIME ", the rootfinding routine failed in an unrecoverable manner."
# Skipping MacroDefinition: MSGCV_CLOSE_ROOTS "Root found at and very near " MSG_TIME "."
# Skipping MacroDefinition: MSGCV_BAD_TSTOP "The value " MSG_TIME_TSTOP " is behind current " MSG_TIME " in the direction of integration."

const MSGCV_INACTIVE_ROOTS = "At the end of the first step, there are still some root functions identically 0. This warning will not be issued again."

# begin enum ANONYMOUS_56
typealias ANONYMOUS_56 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_56

type CVodeMemRec
    cv_uround::realtype
    cv_f::CVRhsFn
    cv_user_data::Ptr{Void}
    cv_lmm::Cint
    cv_iter::Cint
    cv_itol::Cint
    cv_reltol::realtype
    cv_Sabstol::realtype
    cv_Vabstol::N_Vector
    cv_user_efun::Cint
    cv_efun::CVEwtFn
    cv_e_data::Ptr{Void}
    cv_zn::NTuple{13,N_Vector}
    cv_ewt::N_Vector
    cv_y::N_Vector
    cv_acor::N_Vector
    cv_tempv::N_Vector
    cv_ftemp::N_Vector
    cv_tstopset::Cint
    cv_tstop::realtype
    cv_q::Cint
    cv_qprime::Cint
    cv_next_q::Cint
    cv_qwait::Cint
    cv_L::Cint
    cv_hin::realtype
    cv_h::realtype
    cv_hprime::realtype
    cv_next_h::realtype
    cv_eta::realtype
    cv_hscale::realtype
    cv_tn::realtype
    cv_tretlast::realtype
    cv_tau::NTuple{14,realtype}
    cv_tq::NTuple{6,realtype}
    cv_l::NTuple{13,realtype}
    cv_rl1::realtype
    cv_gamma::realtype
    cv_gammap::realtype
    cv_gamrat::realtype
    cv_crate::realtype
    cv_acnrm::realtype
    cv_nlscoef::realtype
    cv_mnewt::Cint
    cv_qmax::Cint
    cv_mxstep::Clong
    cv_maxcor::Cint
    cv_mxhnil::Cint
    cv_maxnef::Cint
    cv_maxncf::Cint
    cv_hmin::realtype
    cv_hmax_inv::realtype
    cv_etamax::realtype
    cv_nst::Clong
    cv_nfe::Clong
    cv_ncfn::Clong
    cv_netf::Clong
    cv_nni::Clong
    cv_nsetups::Clong
    cv_nhnil::Cint
    cv_etaqm1::realtype
    cv_etaq::realtype
    cv_etaqp1::realtype
    cv_lrw1::Clong
    cv_liw1::Clong
    cv_lrw::Clong
    cv_liw::Clong
    cv_linit::Ptr{Void}
    cv_lsetup::Ptr{Void}
    cv_lsolve::Ptr{Void}
    cv_lfree::Ptr{Void}
    cv_lmem::Ptr{Void}
    cv_qu::Cint
    cv_nstlp::Clong
    cv_h0u::realtype
    cv_hu::realtype
    cv_saved_tq5::realtype
    cv_jcur::Cint
    cv_tolsf::realtype
    cv_qmax_alloc::Cint
    cv_indx_acor::Cint
    cv_setupNonNull::Cint
    cv_VabstolMallocDone::Cint
    cv_MallocDone::Cint
    cv_ehfun::CVErrHandlerFn
    cv_eh_data::Ptr{Void}
    cv_errfp::Ptr{FILE}
    cv_sldeton::Cint
    cv_ssdat::NTuple{6,NTuple{4,realtype}}
    cv_nscon::Cint
    cv_nor::Clong
    cv_gfun::CVRootFn
    cv_nrtfn::Cint
    cv_iroots::Ptr{Cint}
    cv_rootdir::Ptr{Cint}
    cv_tlo::realtype
    cv_thi::realtype
    cv_trout::realtype
    cv_glo::Ptr{realtype}
    cv_ghi::Ptr{realtype}
    cv_grout::Ptr{realtype}
    cv_toutc::realtype
    cv_ttol::realtype
    cv_taskc::Cint
    cv_irfnd::Cint
    cv_nge::Clong
    cv_gactive::Ptr{Cint}
    cv_mxgnull::Cint
end

typealias CVodeMem Ptr{CVodeMemRec}

const CVSLS_SUCCESS = 0
const CVSLS_MEM_NULL = -1
const CVSLS_LMEM_NULL = -2
const CVSLS_ILL_INPUT = -3
const CVSLS_MEM_FAIL = -4
const CVSLS_JAC_NOSET = -5
const CVSLS_PACKAGE_FAIL = -6
const CVSLS_JACFUNC_UNRECVR = -7
const CVSLS_JACFUNC_RECVR = -8
const CVSLS_NO_ADJ = -101
const CVSLS_LMEMB_NULL = -102

# begin enum ANONYMOUS_57
typealias ANONYMOUS_57 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_57

typealias CVSlsSparseJacFn Ptr{Void}

# begin enum ANONYMOUS_58
typealias ANONYMOUS_58 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_58

# begin enum ANONYMOUS_59
typealias ANONYMOUS_59 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_59

# begin enum ANONYMOUS_60
typealias ANONYMOUS_60 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_60

# begin enum ANONYMOUS_61
typealias ANONYMOUS_61 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_61

# begin enum ANONYMOUS_62
typealias ANONYMOUS_62 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_62

# begin enum ANONYMOUS_63
typealias ANONYMOUS_63 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_63

# begin enum ANONYMOUS_64
typealias ANONYMOUS_64 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_64

# begin enum ANONYMOUS_65
typealias ANONYMOUS_65 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_65

# begin enum ANONYMOUS_66
typealias ANONYMOUS_66 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_66

# begin enum ANONYMOUS_67
typealias ANONYMOUS_67 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_67

# begin enum ANONYMOUS_68
typealias ANONYMOUS_68 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_68

# begin enum ANONYMOUS_69
typealias ANONYMOUS_69 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_69

typealias CVLocalFnB Ptr{Void}
typealias CVCommFnB Ptr{Void}

# begin enum ANONYMOUS_70
typealias ANONYMOUS_70 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_70

const CVDIAG_NO_ADJ = -101

# begin enum ANONYMOUS_71
typealias ANONYMOUS_71 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_71

const MSGCV_NO_QUAD = "Quadrature integration not activated."
const MSGCV_BAD_ITOLQ = "Illegal value for itolQ. The legal values are CV_SS and CV_SV."
const MSGCV_NULL_ABSTOLQ = "abstolQ = NULL illegal."
const MSGCV_BAD_RELTOLQ = "reltolQ < 0 illegal."
const MSGCV_BAD_ABSTOLQ = "abstolQ has negative component(s) (illegal)."
const MSGCV_SENSINIT_2 = "Sensitivity analysis already initialized."
const MSGCV_NO_SENSI = "Forward sensitivity analysis not activated."
const MSGCV_BAD_ITOLS = "Illegal value for itolS. The legal values are CV_SS, CV_SV, and CV_EE."
const MSGCV_NULL_ABSTOLS = "abstolS = NULL illegal."
const MSGCV_BAD_RELTOLS = "reltolS < 0 illegal."
const MSGCV_BAD_ABSTOLS = "abstolS has negative component(s) (illegal)."
const MSGCV_BAD_PBAR = "pbar has zero component(s) (illegal)."
const MSGCV_BAD_PLIST = "plist has negative component(s) (illegal)."
const MSGCV_BAD_NS = "NS <= 0 illegal."
const MSGCV_NULL_YS0 = "yS0 = NULL illegal."
const MSGCV_BAD_ISM = "Illegal value for ism. Legal values are: CV_SIMULTANEOUS, CV_STAGGERED and CV_STAGGERED1."
const MSGCV_BAD_IFS = "Illegal value for ifS. Legal values are: CV_ALLSENS and CV_ONESENS."
const MSGCV_BAD_ISM_IFS = "Illegal ism = CV_STAGGERED1 for CVodeSensInit."
const MSGCV_BAD_IS = "Illegal value for is."
const MSGCV_NULL_DKYA = "dkyA = NULL illegal."
const MSGCV_BAD_DQTYPE = "Illegal value for DQtype. Legal values are: CV_CENTERED and CV_FORWARD."
const MSGCV_BAD_DQRHO = "DQrhomax < 0 illegal."
const MSGCV_BAD_ITOLQS = "Illegal value for itolQS. The legal values are CV_SS, CV_SV, and CV_EE."
const MSGCV_NULL_ABSTOLQS = "abstolQS = NULL illegal."
const MSGCV_BAD_RELTOLQS = "reltolQS < 0 illegal."
const MSGCV_BAD_ABSTOLQS = "abstolQS has negative component(s) (illegal)."
const MSGCV_NO_QUADSENSI = "Forward sensitivity analysis for quadrature variables not activated."
const MSGCV_NULL_YQS0 = "yQS0 = NULL illegal."
const MSGCV_NO_TOL = "No integration tolerances have been specified."
const MSGCV_NO_TOLQ = "No integration tolerances for quadrature variables have been specified."
const MSGCV_BAD_EWTQ = "Initial ewtQ has component(s) equal to zero (illegal)."

# Skipping MacroDefinition: MSGCV_EWTQ_NOW_BAD "At " MSG_TIME ", a component of ewtQ has become <= 0."
# Skipping MacroDefinition: MSGCV_QRHSFUNC_FAILED "At " MSG_TIME ", the quadrature right-hand side routine failed in an unrecoverable manner."
# Skipping MacroDefinition: MSGCV_QRHSFUNC_UNREC "At " MSG_TIME ", the quadrature right-hand side failed in a recoverable manner, but no recovery is possible."
# Skipping MacroDefinition: MSGCV_QRHSFUNC_REPTD "At " MSG_TIME " repeated recoverable quadrature right-hand side function errors."

const MSGCV_QRHSFUNC_FIRST = "The quadrature right-hand side routine failed at the first call."
const MSGCV_NULL_P = "p = NULL when using internal DQ for sensitivity RHS illegal."
const MSGCV_BAD_EWTS = "Initial ewtS has component(s) equal to zero (illegal)."

# Skipping MacroDefinition: MSGCV_EWTS_NOW_BAD "At " MSG_TIME ", a component of ewtS has become <= 0."
# Skipping MacroDefinition: MSGCV_SRHSFUNC_FAILED "At " MSG_TIME ", the sensitivity right-hand side routine failed in an unrecoverable manner."
# Skipping MacroDefinition: MSGCV_SRHSFUNC_UNREC "At " MSG_TIME ", the sensitivity right-hand side failed in a recoverable manner, but no recovery is possible."
# Skipping MacroDefinition: MSGCV_SRHSFUNC_REPTD "At " MSG_TIME " repeated recoverable sensitivity right-hand side function errors."

const MSGCV_SRHSFUNC_FIRST = "The sensitivity right-hand side routine failed at the first call."
const MSGCV_NULL_FQ = "CVODES is expected to use DQ to evaluate the RHS of quad. sensi., but quadratures were not initialized."
const MSGCV_NO_TOLQS = "No integration tolerances for quadrature sensitivity variables have been specified."
const MSGCV_BAD_EWTQS = "Initial ewtQS has component(s) equal to zero (illegal)."

# Skipping MacroDefinition: MSGCV_EWTQS_NOW_BAD "At " MSG_TIME ", a component of ewtQS has become <= 0."
# Skipping MacroDefinition: MSGCV_QSRHSFUNC_FAILED "At " MSG_TIME ", the quadrature sensitivity right-hand side routine failed in an unrecoverable manner."
# Skipping MacroDefinition: MSGCV_QSRHSFUNC_UNREC "At " MSG_TIME ", the quadrature sensitivity right-hand side failed in a recoverable manner, but no recovery is possible."
# Skipping MacroDefinition: MSGCV_QSRHSFUNC_REPTD "At " MSG_TIME " repeated recoverable quadrature sensitivity right-hand side function errors."

const MSGCV_QSRHSFUNC_FIRST = "The quadrature sensitivity right-hand side routine failed at the first call."
const MSGCV_NO_ADJ = "Illegal attempt to call before calling CVodeAdjMalloc."
const MSGCV_BAD_STEPS = "Steps nonpositive illegal."
const MSGCV_BAD_INTERP = "Illegal value for interp."
const MSGCV_BAD_WHICH = "Illegal value for which."
const MSGCV_NO_BCK = "No backward problems have been defined yet."
const MSGCV_NO_FWD = "Illegal attempt to call before calling CVodeF."
const MSGCV_BAD_TB0 = "The initial time tB0 for problem %d is outside the interval over which the forward problem was solved."
const MSGCV_BAD_SENSI = "At least one backward problem requires sensitivities, but they were not stored for interpolation."
const MSGCV_BAD_ITASKB = "Illegal value for itaskB. Legal values are CV_NORMAL and CV_ONE_STEP."
const MSGCV_BAD_TBOUT = "The final time tBout is outside the interval over which the forward problem was solved."
const MSGCV_BACK_ERROR = "Error occured while integrating backward problem # %d"
const MSGCV_BAD_TINTERP = "Bad t = %g for interpolation."
const MSGCV_WRONG_INTERP = "This function cannot be called for the specified interp type."

# begin enum ANONYMOUS_72
typealias ANONYMOUS_72 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_72

type CVodeBMemRec
    cv_index::Cint
    cv_t0::realtype
    cv_mem::CVodeMem
    cv_f_withSensi::Cint
    cv_fQ_withSensi::Cint
    cv_f::CVRhsFnB
    cv_fs::CVRhsFnBS
    cv_fQ::CVQuadRhsFnB
    cv_fQs::CVQuadRhsFnBS
    cv_user_data::Ptr{Void}
    cv_lmem::Ptr{Void}
    cv_lfree::Ptr{Void}
    cv_pmem::Ptr{Void}
    cv_pfree::Ptr{Void}
    cv_tout::realtype
    cv_y::N_Vector
    cv_next::Ptr{CVodeBMemRec}
end

type CkpntMemRec
    ck_t0::realtype
    ck_t1::realtype
    ck_zn::NTuple{13,N_Vector}
    ck_quadr::Cint
    ck_znQ::NTuple{13,N_Vector}
    ck_sensi::Cint
    ck_Ns::Cint
    ck_znS::NTuple{13,Ptr{N_Vector}}
    ck_quadr_sensi::Cint
    ck_znQS::NTuple{13,Ptr{N_Vector}}
    ck_zqm::Cint
    ck_nst::Clong
    ck_tretlast::realtype
    ck_q::Cint
    ck_qprime::Cint
    ck_qwait::Cint
    ck_L::Cint
    ck_gammap::realtype
    ck_h::realtype
    ck_hprime::realtype
    ck_hscale::realtype
    ck_eta::realtype
    ck_etamax::realtype
    ck_tau::NTuple{14,realtype}
    ck_tq::NTuple{6,realtype}
    ck_l::NTuple{13,realtype}
    ck_saved_tq5::realtype
    ck_next::Ptr{CkpntMemRec}
end

type DtpntMemRec
    t::realtype
    content::Ptr{Void}
end

typealias cvaIMMallocFn Ptr{Void}
typealias cvaIMFreeFn Ptr{Void}
typealias cvaIMStorePntFn Ptr{Void}
typealias cvaIMGetYFn Ptr{Void}

type CVadjMemRec
    ca_tinitial::realtype
    ca_tfinal::realtype
    ca_firstCVodeFcall::Cint
    ca_tstopCVodeFcall::Cint
    ca_tstopCVodeF::realtype
    cvB_mem::Ptr{CVodeBMemRec}
    ca_nbckpbs::Cint
    ca_bckpbCrt::Ptr{CVodeBMemRec}
    ca_firstCVodeBcall::Cint
    ck_mem::Ptr{CkpntMemRec}
    ca_nckpnts::Cint
    ca_ckpntData::Ptr{CkpntMemRec}
    ca_nsteps::Clong
    dt_mem::Ptr{Ptr{DtpntMemRec}}
    ca_np::Clong
    ca_IMtype::Cint
    ca_IMmalloc::cvaIMMallocFn
    ca_IMfree::cvaIMFreeFn
    ca_IMstore::cvaIMStorePntFn
    ca_IMget::cvaIMGetYFn
    ca_IMmallocDone::Cint
    ca_IMnewData::Cint
    ca_IMstoreSensi::Cint
    ca_IMinterpSensi::Cint
    ca_Y::NTuple{13,N_Vector}
    ca_YS::NTuple{13,Ptr{N_Vector}}
    ca_T::NTuple{13,realtype}
    ca_ytmp::N_Vector
    ca_yStmp::Ptr{N_Vector}
end

typealias CVadjMem Ptr{CVadjMemRec}
typealias CkpntMem Ptr{CkpntMemRec}
typealias DtpntMem Ptr{DtpntMemRec}
typealias CVodeBMem Ptr{CVodeBMemRec}

type HermiteDataMemRec
    y::N_Vector
    yd::N_Vector
    yS::Ptr{N_Vector}
    ySd::Ptr{N_Vector}
end

typealias HermiteDataMem Ptr{HermiteDataMemRec}

type PolynomialDataMemRec
    y::N_Vector
    yS::Ptr{N_Vector}
    order::Cint
end

typealias PolynomialDataMem Ptr{PolynomialDataMemRec}

# begin enum ANONYMOUS_73
typealias ANONYMOUS_73 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_73

typealias CVSlsSparseJacFnB Ptr{Void}
typealias CVSlsSparseJacFnBS Ptr{Void}

# begin enum ANONYMOUS_74
typealias ANONYMOUS_74 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_74

# begin enum ANONYMOUS_75
typealias ANONYMOUS_75 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_75

# begin enum ANONYMOUS_76
typealias ANONYMOUS_76 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_76

# begin enum ANONYMOUS_77
typealias ANONYMOUS_77 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_77

# begin enum ANONYMOUS_78
typealias ANONYMOUS_78 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_78

# begin enum ANONYMOUS_79
typealias ANONYMOUS_79 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_79

# begin enum ANONYMOUS_80
typealias ANONYMOUS_80 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_80

# begin enum ANONYMOUS_81
typealias ANONYMOUS_81 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_81

# begin enum ANONYMOUS_82
typealias ANONYMOUS_82 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_82

# begin enum ANONYMOUS_83
typealias ANONYMOUS_83 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_83

# begin enum ANONYMOUS_84
typealias ANONYMOUS_84 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_84

typealias IDABBDLocalFn Ptr{Void}
typealias IDABBDCommFn Ptr{Void}

# begin enum ANONYMOUS_85
typealias ANONYMOUS_85 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_85

const MAXORD_DEFAULT = 5
const MXORDP1 = 6
const MSG_MEM_FAIL = "A memory request failed."
const MSG_NO_MEM = "kinsol_mem = NULL illegal."
const MSG_NO_MALLOC = "Attempt to call before KINMalloc illegal."
const MSG_BAD_NVECTOR = "A required vector operation is not implemented."
const MSG_Y0_NULL = "y0 = NULL illegal."
const MSG_YP0_NULL = "yp0 = NULL illegal."
const MSG_BAD_ITOL = "Illegal value for itol. The legal values are IDA_SS, IDA_SV, and IDA_WF."
const MSG_RES_NULL = "res = NULL illegal."
const MSG_BAD_RTOL = "rtol < 0 illegal."
const MSG_ATOL_NULL = "atol = NULL illegal."
const MSG_BAD_ATOL = "Some atol component < 0.0 illegal."
const MSG_ROOT_FUNC_NULL = "g = NULL illegal."
const MSG_MISSING_ID = "id = NULL but suppressalg option on."
const MSG_NO_TOLS = "No integration tolerances have been specified."
const MSG_FAIL_EWT = "The user-provide EwtSet function failed."
const MSG_BAD_EWT = "Some initial ewt component = 0.0 illegal."
const MSG_Y0_FAIL_CONSTR = "y0 fails to satisfy constraints."
const MSG_LSOLVE_NULL = "The linear solver's solve routine is NULL."
const MSG_LINIT_FAIL = "The linear solver's init routine failed."
const MSG_IC_BAD_ICOPT = "icopt has an illegal value."
const MSG_IC_BAD_MAXBACKS = "maxbacks <= 0 illegal."
const MSG_IC_MISSING_ID = "id = NULL conflicts with icopt."
const MSG_IC_TOO_CLOSE = "tout1 too close to t0 to attempt initial condition calculation."
const MSG_IC_BAD_ID = "id has illegal values."
const MSG_IC_BAD_EWT = "Some initial ewt component = 0.0 illegal."
const MSG_IC_RES_NONREC = "The residual function failed unrecoverably. "
const MSG_IC_RES_FAIL = "The residual function failed at the first call. "
const MSG_IC_SETUP_FAIL = "The linear solver setup failed unrecoverably."
const MSG_IC_SOLVE_FAIL = "The linear solver solve failed unrecoverably."
const MSG_IC_NO_RECOVERY = "The residual routine or the linear setup or solve routine had a recoverable error, but IDACalcIC was unable to recover."
const MSG_IC_FAIL_CONSTR = "Unable to satisfy the inequality constraints."
const MSG_IC_FAILED_LINS = "The linesearch algorithm failed: step too small or too many backtracks."
const MSG_IC_CONV_FAILED = "Newton/Linesearch algorithm failed to converge."
const MSG_YRET_NULL = "yret = NULL illegal."
const MSG_YPRET_NULL = "ypret = NULL illegal."
const MSG_TRET_NULL = "tret = NULL illegal."
const MSG_BAD_ITASK = "itask has an illegal value."
const MSG_TOO_CLOSE = "tout too close to t0 to start integration."
const MSG_BAD_HINIT = "Initial step is not towards tout."

# Skipping MacroDefinition: MSG_BAD_TSTOP "The value " MSG_TIME_TSTOP " is behind current " MSG_TIME "in the direction of integration."
# Skipping MacroDefinition: MSG_CLOSE_ROOTS "Root found at and very near " MSG_TIME "."
# Skipping MacroDefinition: MSG_MAX_STEPS "At " MSG_TIME ", mxstep steps taken before reaching tout."
# Skipping MacroDefinition: MSG_EWT_NOW_FAIL "At " MSG_TIME "the user-provide EwtSet function failed."
# Skipping MacroDefinition: MSG_EWT_NOW_BAD "At " MSG_TIME "some ewt component has become <= 0.0."
# Skipping MacroDefinition: MSG_TOO_MUCH_ACC "At " MSG_TIME "too much accuracy requested."

const MSG_BAD_K = "Illegal value for k."
const MSG_NULL_DKY = "dky = NULL illegal."
const MSG_BAD_T = "Illegal value for t. "

# Skipping MacroDefinition: MSG_BAD_TOUT "Trouble interpolating at " MSG_TIME_TOUT ". tout too far back in direction of integration."
# Skipping MacroDefinition: MSG_ERR_FAILS "At " MSG_TIME_H "the error test failed repeatedly or with |h| = hmin."
# Skipping MacroDefinition: MSG_CONV_FAILS "At " MSG_TIME_H "the corrector convergence failed repeatedly or with |h| = hmin."
# Skipping MacroDefinition: MSG_SETUP_FAILED "At " MSG_TIME "the linear solver setup failed unrecoverably."
# Skipping MacroDefinition: MSG_SOLVE_FAILED "At " MSG_TIME "the linear solver solve failed unrecoverably."
# Skipping MacroDefinition: MSG_REP_RES_ERR "At " MSG_TIME "repeated recoverable residual errors."
# Skipping MacroDefinition: MSG_RES_NONRECOV "At " MSG_TIME "the residual function failed unrecoverably."
# Skipping MacroDefinition: MSG_FAILED_CONSTR "At " MSG_TIME "unable to satisfy inequality constraints."
# Skipping MacroDefinition: MSG_RTFUNC_FAILED "At " MSG_TIME ", the rootfinding routine failed in an unrecoverable manner."

const MSG_NO_ROOT = "Rootfinding was not initialized."
const MSG_INACTIVE_ROOTS = "At the end of the first step, there are still some root functions identically 0. This warning will not be issued again."
const MSG_NEG_MAXORD = "maxord<=0 illegal."
const MSG_BAD_MAXORD = "Illegal attempt to increase maximum order."
const MSG_NEG_HMAX = "hmax < 0 illegal."
const MSG_NEG_EPCON = "epcon <= 0.0 illegal."
const MSG_BAD_CONSTR = "Illegal values in constraints vector."
const MSG_BAD_EPICCON = "epiccon <= 0.0 illegal."
const MSG_BAD_MAXNH = "maxnh <= 0 illegal."
const MSG_BAD_MAXNJ = "maxnj <= 0 illegal."
const MSG_BAD_MAXNIT = "maxnit <= 0 illegal."
const MSG_BAD_STEPTOL = "steptol <= 0.0 illegal."
const MSG_TOO_LATE = "IDAGetConsistentIC can only be called before IDASolve."

# begin enum ANONYMOUS_86
typealias ANONYMOUS_86 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_86

type IDAMemRec
    ida_uround::realtype
    ida_res::IDAResFn
    ida_user_data::Ptr{Void}
    ida_itol::Cint
    ida_rtol::realtype
    ida_Satol::realtype
    ida_Vatol::N_Vector
    ida_user_efun::Cint
    ida_efun::IDAEwtFn
    ida_edata::Ptr{Void}
    ida_setupNonNull::Cint
    ida_constraintsSet::Cint
    ida_suppressalg::Cint
    ida_phi::NTuple{6,N_Vector}
    ida_psi::NTuple{6,realtype}
    ida_alpha::NTuple{6,realtype}
    ida_beta::NTuple{6,realtype}
    ida_sigma::NTuple{6,realtype}
    ida_gamma::NTuple{6,realtype}
    ida_ewt::N_Vector
    ida_yy::N_Vector
    ida_yp::N_Vector
    ida_delta::N_Vector
    ida_id::N_Vector
    ida_constraints::N_Vector
    ida_savres::N_Vector
    ida_ee::N_Vector
    ida_mm::N_Vector
    ida_tempv1::N_Vector
    ida_tempv2::N_Vector
    ida_ynew::N_Vector
    ida_ypnew::N_Vector
    ida_delnew::N_Vector
    ida_dtemp::N_Vector
    ida_t0::realtype
    ida_yy0::N_Vector
    ida_yp0::N_Vector
    ida_icopt::Cint
    ida_lsoff::Cint
    ida_maxnh::Cint
    ida_maxnj::Cint
    ida_maxnit::Cint
    ida_nbacktr::Cint
    ida_sysindex::Cint
    ida_maxbacks::Cint
    ida_epiccon::realtype
    ida_steptol::realtype
    ida_tscale::realtype
    ida_tstopset::Cint
    ida_tstop::realtype
    ida_kk::Cint
    ida_kused::Cint
    ida_knew::Cint
    ida_phase::Cint
    ida_ns::Cint
    ida_hin::realtype
    ida_h0u::realtype
    ida_hh::realtype
    ida_hused::realtype
    ida_rr::realtype
    ida_tn::realtype
    ida_tretlast::realtype
    ida_cj::realtype
    ida_cjlast::realtype
    ida_cjold::realtype
    ida_cjratio::realtype
    ida_ss::realtype
    ida_epsNewt::realtype
    ida_epcon::realtype
    ida_toldel::realtype
    ida_maxncf::Cint
    ida_maxcor::Cint
    ida_maxnef::Cint
    ida_maxord::Cint
    ida_maxord_alloc::Cint
    ida_mxstep::Clong
    ida_hmax_inv::realtype
    ida_nst::Clong
    ida_nre::Clong
    ida_ncfn::Clong
    ida_netf::Clong
    ida_nni::Clong
    ida_nsetups::Clong
    ida_lrw1::Clong
    ida_liw1::Clong
    ida_lrw::Clong
    ida_liw::Clong
    ida_tolsf::realtype
    ida_ehfun::IDAErrHandlerFn
    ida_eh_data::Ptr{Void}
    ida_errfp::Ptr{FILE}
    ida_SetupDone::Cint
    ida_VatolMallocDone::Cint
    ida_constraintsMallocDone::Cint
    ida_idMallocDone::Cint
    ida_MallocDone::Cint
    ida_linit::Ptr{Void}
    ida_lsetup::Ptr{Void}
    ida_lsolve::Ptr{Void}
    ida_lperf::Ptr{Void}
    ida_lfree::Ptr{Void}
    ida_lmem::Ptr{Void}
    ida_linitOK::Cint
    ida_gfun::IDARootFn
    ida_nrtfn::Cint
    ida_iroots::Ptr{Cint}
    ida_rootdir::Ptr{Cint}
    ida_tlo::realtype
    ida_thi::realtype
    ida_trout::realtype
    ida_glo::Ptr{realtype}
    ida_ghi::Ptr{realtype}
    ida_grout::Ptr{realtype}
    ida_toutc::realtype
    ida_ttol::realtype
    ida_taskc::Cint
    ida_irfnd::Cint
    ida_nge::Clong
    ida_gactive::Ptr{Cint}
    ida_mxgnull::Cint
end

typealias IDAMem Ptr{IDAMemRec}

# begin enum ANONYMOUS_87
typealias ANONYMOUS_87 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_87

# begin enum ANONYMOUS_88
typealias ANONYMOUS_88 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_88

# begin enum ANONYMOUS_89
typealias ANONYMOUS_89 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_89

# begin enum ANONYMOUS_90
typealias ANONYMOUS_90 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_90

# begin enum ANONYMOUS_91
typealias ANONYMOUS_91 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_91

# begin enum ANONYMOUS_92
typealias ANONYMOUS_92 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_92

# begin enum ANONYMOUS_93
typealias ANONYMOUS_93 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_93

# begin enum ANONYMOUS_94
typealias ANONYMOUS_94 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_94

# begin enum ANONYMOUS_95
typealias ANONYMOUS_95 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_95

# begin enum ANONYMOUS_96
typealias ANONYMOUS_96 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_96

# begin enum ANONYMOUS_97
typealias ANONYMOUS_97 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_97

typealias IDABBDLocalFnB Ptr{Void}
typealias IDABBDCommFnB Ptr{Void}

# begin enum ANONYMOUS_98
typealias ANONYMOUS_98 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_98

const IDA_NN = 0
const IDA_SS = 1
const IDA_SV = 2
const IDA_WF = 3
const IDA_EE = 4
const MSG_BAD_ISM_CONSTR = "Constraints can not be enforced while forward sensitivity is used with simultaneous method."
const MSG_NO_QUAD = "Illegal attempt to call before calling IDAQuadInit."
const MSG_BAD_EWTQ = "Initial ewtQ has component(s) equal to zero (illegal)."
const MSG_BAD_ITOLQ = "Illegal value for itolQ. The legal values are IDA_SS and IDA_SV."
const MSG_NO_TOLQ = "No integration tolerances for quadrature variables have been specified."
const MSG_NULL_ATOLQ = "atolQ = NULL illegal."
const MSG_BAD_RTOLQ = "rtolQ < 0 illegal."
const MSG_BAD_ATOLQ = "atolQ has negative component(s) (illegal)."
const MSG_NO_SENSI = "Illegal attempt to call before calling IDASensInit."
const MSG_BAD_EWTS = "Initial ewtS has component(s) equal to zero (illegal)."
const MSG_BAD_ITOLS = "Illegal value for itolS. The legal values are IDA_SS, IDA_SV, and IDA_EE."
const MSG_NULL_ATOLS = "atolS = NULL illegal."
const MSG_BAD_RTOLS = "rtolS < 0 illegal."
const MSG_BAD_ATOLS = "atolS has negative component(s) (illegal)."
const MSG_BAD_PBAR = "pbar has zero component(s) (illegal)."
const MSG_BAD_PLIST = "plist has negative component(s) (illegal)."
const MSG_BAD_NS = "NS <= 0 illegal."
const MSG_NULL_YYS0 = "yyS0 = NULL illegal."
const MSG_NULL_YPS0 = "ypS0 = NULL illegal."
const MSG_BAD_ISM = "Illegal value for ism. Legal values are: IDA_SIMULTANEOUS and IDA_STAGGERED."
const MSG_BAD_IS = "Illegal value for is."
const MSG_NULL_DKYA = "dkyA = NULL illegal."
const MSG_BAD_DQTYPE = "Illegal value for DQtype. Legal values are: IDA_CENTERED and IDA_FORWARD."
const MSG_BAD_DQRHO = "DQrhomax < 0 illegal."
const MSG_NULL_ABSTOLQS = "abstolQS = NULL illegal parameter."
const MSG_BAD_RELTOLQS = "reltolQS < 0 illegal parameter."
const MSG_BAD_ABSTOLQS = "abstolQS has negative component(s) (illegal)."
const MSG_NO_QUADSENSI = "Forward sensitivity analysis for quadrature variables was not activated."
const MSG_NULL_YQS0 = "yQS0 = NULL illegal parameter."
const MSG_NULL_DKYP = "dkyp = NULL illegal."

# Skipping MacroDefinition: MSG_EWTQ_NOW_BAD "At " MSG_TIME ", a component of ewtQ has become <= 0."
# Skipping MacroDefinition: MSG_QRHSFUNC_FAILED "At " MSG_TIME ", the quadrature right-hand side routine failed in an unrecoverable manner."
# Skipping MacroDefinition: MSG_QRHSFUNC_UNREC "At " MSG_TIME ", the quadrature right-hand side failed in a recoverable manner, but no recovery is possible."
# Skipping MacroDefinition: MSG_QRHSFUNC_REPTD "At " MSG_TIME "repeated recoverable quadrature right-hand side function errors."

const MSG_QRHSFUNC_FIRST = "The quadrature right-hand side routine failed at the first call."
const MSG_NULL_P = "p = NULL when using internal DQ for sensitivity residual is illegal."

# Skipping MacroDefinition: MSG_EWTS_NOW_BAD "At " MSG_TIME ", a component of ewtS has become <= 0."
# Skipping MacroDefinition: MSG_SRHSFUNC_FAILED "At " MSG_TIME ", the sensitivity residual routine failed in an unrecoverable manner."
# Skipping MacroDefinition: MSG_SRHSFUNC_UNREC "At " MSG_TIME ", the sensitivity residual failed in a recoverable manner, but no recovery is possible."
# Skipping MacroDefinition: MSG_SRHSFUNC_REPTD "At " MSG_TIME "repeated recoverable sensitivity residual function errors."

const MSG_NO_TOLQS = "No integration tolerances for quadrature sensitivity variables have been specified."
const MSG_NULL_RHSQ = "IDAS is expected to use DQ to evaluate the RHS of quad. sensi., but quadratures were not initialized."
const MSG_BAD_EWTQS = "Initial ewtQS has component(s) equal to zero (illegal)."

# Skipping MacroDefinition: MSG_EWTQS_NOW_BAD "At " MSG_TIME ", a component of ewtQS has become <= 0."
# Skipping MacroDefinition: MSG_QSRHSFUNC_FAILED "At " MSG_TIME ", the sensitivity quadrature right-hand side routine failed in an unrecoverable manner."

const MSG_QSRHSFUNC_FIRST = "The quadrature right-hand side routine failed at the first call."
const MSGAM_NULL_IDAMEM = "ida_mem = NULL illegal."
const MSGAM_NO_ADJ = "Illegal attempt to call before calling IDAadjInit."
const MSGAM_BAD_INTERP = "Illegal value for interp."
const MSGAM_BAD_STEPS = "Steps nonpositive illegal."
const MSGAM_BAD_WHICH = "Illegal value for which."
const MSGAM_NO_BCK = "No backward problems have been defined yet."
const MSGAM_NO_FWD = "Illegal attempt to call before calling IDASolveF."
const MSGAM_BAD_TB0 = "The initial time tB0 is outside the interval over which the forward problem was solved."
const MSGAM_BAD_SENSI = "At least one backward problem requires sensitivities, but they were not stored for interpolation."
const MSGAM_BAD_ITASKB = "Illegal value for itaskB. Legal values are IDA_NORMAL and IDA_ONE_STEP."
const MSGAM_BAD_TBOUT = "The final time tBout is outside the interval over which the forward problem was solved."
const MSGAM_BACK_ERROR = "Error occured while integrating backward problem # %d"
const MSGAM_BAD_TINTERP = "Bad t = %g for interpolation."
const MSGAM_BAD_T = "Bad t for interpolation."
const MSGAM_WRONG_INTERP = "This function cannot be called for the specified interp type."
const MSGAM_MEM_FAIL = "A memory request failed."
const MSGAM_NO_INITBS = "Illegal attempt to call before calling IDAInitBS."

# begin enum ANONYMOUS_99
typealias ANONYMOUS_99 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_99

type IDABMemRec
    ida_index::Cint
    ida_t0::realtype
    IDA_mem::IDAMem
    ida_res_withSensi::Cint
    ida_rhsQ_withSensi::Cint
    ida_res::IDAResFnB
    ida_resS::IDAResFnBS
    ida_rhsQ::IDAQuadRhsFnB
    ida_rhsQS::IDAQuadRhsFnBS
    ida_user_data::Ptr{Void}
    ida_lmem::Ptr{Void}
    ida_lfree::Ptr{Void}
    ida_pmem::Ptr{Void}
    ida_pfree::Ptr{Void}
    ida_tout::realtype
    ida_yy::N_Vector
    ida_yp::N_Vector
    ida_next::Ptr{IDABMemRec}
end

typealias IDAAStorePntFn Ptr{Void}
typealias IDAAGetYFn Ptr{Void}
typealias IDAAMMallocFn Ptr{Void}
typealias IDAAMFreeFn Ptr{Void}

type IDAadjMemRec
    ia_tinitial::realtype
    ia_tfinal::realtype
    ia_firstIDAFcall::Cint
    ia_tstopIDAFcall::Cint
    ia_tstopIDAF::realtype
    IDAB_mem::Ptr{IDABMemRec}
    ia_nbckpbs::Cint
    ia_bckpbCrt::Ptr{IDABMemRec}
    ia_firstIDABcall::Cint
    ck_mem::Ptr{CkpntMemRec}
    ia_ckpntData::Ptr{CkpntMemRec}
    ia_nckpnts::Cint
    ia_nsteps::Clong
    dt_mem::Ptr{Ptr{DtpntMemRec}}
    ia_np::Clong
    ia_interpType::Cint
    ia_storePnt::IDAAStorePntFn
    ia_getY::IDAAGetYFn
    ia_malloc::IDAAMMallocFn
    ia_free::IDAAMFreeFn
    ia_mallocDone::Cint
    ia_newData::Cint
    ia_storeSensi::Cint
    ia_interpSensi::Cint
    ia_noInterp::Cint
    ia_Y::NTuple{6,N_Vector}
    ia_YS::NTuple{6,Ptr{N_Vector}}
    ia_T::NTuple{6,realtype}
    ia_yyTmp::N_Vector
    ia_ypTmp::N_Vector
    ia_yySTmp::Ptr{N_Vector}
    ia_ypSTmp::Ptr{N_Vector}
end

typealias IDAadjMem Ptr{IDAadjMemRec}
typealias IDABMem Ptr{IDABMemRec}

const IDASLS_SUCCESS = 0
const IDASLS_MEM_NULL = -1
const IDASLS_LMEM_NULL = -2
const IDASLS_ILL_INPUT = -3
const IDASLS_MEM_FAIL = -4
const IDASLS_JAC_NOSET = -5
const IDASLS_PACKAGE_FAIL = -6
const IDASLS_JACFUNC_UNRECVR = -7
const IDASLS_JACFUNC_RECVR = -8
const IDASLS_NO_ADJ = -101
const IDASLS_LMEMB_NULL = -102

# begin enum ANONYMOUS_100
typealias ANONYMOUS_100 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_100

typealias IDASlsSparseJacFn Ptr{Void}
typealias IDASlsSparseJacFnB Ptr{Void}
typealias IDASlsSparseJacFnBS Ptr{Void}

# begin enum ANONYMOUS_101
typealias ANONYMOUS_101 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_101

# begin enum ANONYMOUS_102
typealias ANONYMOUS_102 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_102

# begin enum ANONYMOUS_103
typealias ANONYMOUS_103 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_103

# begin enum ANONYMOUS_104
typealias ANONYMOUS_104 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_104

# begin enum ANONYMOUS_105
typealias ANONYMOUS_105 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_105

# begin enum ANONYMOUS_106
typealias ANONYMOUS_106 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_106

# begin enum ANONYMOUS_107
typealias ANONYMOUS_107 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_107

# begin enum ANONYMOUS_108
typealias ANONYMOUS_108 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_108

# begin enum ANONYMOUS_109
typealias ANONYMOUS_109 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_109

# begin enum ANONYMOUS_110
typealias ANONYMOUS_110 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_110

const KINBBDPRE_SUCCESS = 0
const KINBBDPRE_PDATA_NULL = -11
const KINBBDPRE_FUNC_UNRECVR = -12

# begin enum ANONYMOUS_111
typealias ANONYMOUS_111 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_111

typealias KINCommFn Ptr{Void}
typealias KINLocalFn Ptr{Void}

# begin enum ANONYMOUS_112
typealias ANONYMOUS_112 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_112

const PRINTFL_DEFAULT = 0
const MXITER_DEFAULT = 200
const MXNBCF_DEFAULT = 10
const MSBSET_DEFAULT = 10
const MSBSET_SUB_DEFAULT = 5

# Skipping MacroDefinition: OMEGA_MIN RCONST ( 0.00001 )
# Skipping MacroDefinition: OMEGA_MAX RCONST ( 0.9 )

const MSG_FUNC_NULL = "func = NULL illegal."
const MSG_BAD_PRINTFL = "Illegal value for printfl."
const MSG_BAD_MXITER = "Illegal value for mxiter."
const MSG_BAD_MSBSET = "Illegal msbset < 0."
const MSG_BAD_MSBSETSUB = "Illegal msbsetsub < 0."
const MSG_BAD_ETACHOICE = "Illegal value for etachoice."
const MSG_BAD_ETACONST = "eta out of range."
const MSG_BAD_GAMMA = "gamma out of range."
const MSG_BAD_ALPHA = "alpha out of range."
const MSG_BAD_MXNEWTSTEP = "Illegal mxnewtstep < 0."
const MSG_BAD_RELFUNC = "relfunc < 0 illegal."
const MSG_BAD_FNORMTOL = "fnormtol < 0 illegal."
const MSG_BAD_SCSTEPTOL = "scsteptol < 0 illegal."
const MSG_BAD_MXNBCF = "mxbcf < 0 illegal."
const MSG_BAD_CONSTRAINTS = "Illegal values in constraints vector."
const MSG_BAD_OMEGA = "scalars < 0 illegal."
const MSG_BAD_MAA = "maa < 0 illegal."
const MSG_ZERO_MAA = "maa = 0 illegal."
const MSG_LSOLV_NO_MEM = "The linear solver memory pointer is NULL."
const MSG_UU_NULL = "uu = NULL illegal."
const MSG_BAD_GLSTRAT = "Illegal value for global strategy."
const MSG_BAD_USCALE = "uscale = NULL illegal."
const MSG_USCALE_NONPOSITIVE = "uscale has nonpositive elements."
const MSG_BAD_FSCALE = "fscale = NULL illegal."
const MSG_FSCALE_NONPOSITIVE = "fscale has nonpositive elements."
const MSG_CONSTRAINTS_NOTOK = "Constraints not allowed with fixed point or Picard iterations"
const MSG_INITIAL_CNSTRNT = "Initial guess does NOT meet constraints."
const MSG_SYSFUNC_FAILED = "The system function failed in an unrecoverable manner."
const MSG_SYSFUNC_FIRST = "The system function failed at the first call."
const MSG_LSETUP_FAILED = "The linear solver's setup function failed in an unrecoverable manner."
const MSG_LSOLVE_FAILED = "The linear solver's solve function failed in an unrecoverable manner."
const MSG_LINSOLV_NO_RECOVERY = "The linear solver's solve function failed recoverably, but the Jacobian data is already current."
const MSG_LINESEARCH_NONCONV = "The line search algorithm was unable to find an iterate sufficiently distinct from the current iterate."
const MSG_LINESEARCH_BCFAIL = "The line search algorithm was unable to satisfy the beta-condition for nbcfails iterations."
const MSG_MAXITER_REACHED = "The maximum number of iterations was reached before convergence."
const MSG_MXNEWT_5X_EXCEEDED = "Five consecutive steps have been taken that satisfy a scaled step length test."
const MSG_SYSFUNC_REPTD = "Unable to correct repeated recoverable system function errors."
const MSG_NOL_FAIL = "Unable to find user's Linear Jacobian, which is required for the KIN_PICARD Strategy"
const INFO_RETVAL = "Return value: %d"
const INFO_ADJ = "no. of lambda adjustments = %ld"
const INFO_NNI = "nni = %4ld   nfe = %6ld   fnorm = %26.16lg"
const INFO_TOL = "scsteptol = %12.3lg  fnormtol = %12.3lg"
const INFO_FMAX = "scaled f norm (for stopping) = %12.3lg"
const INFO_PNORM = "pnorm = %12.4le"
const INFO_PNORM1 = "(ivio=1) pnorm = %12.4le"
const INFO_FNORM = "fnorm(L2) = %20.8le"
const INFO_LAM = "min_lam = %11.4le   f1norm = %11.4le   pnorm = %11.4le"
const INFO_ALPHA = "fnorm = %15.8le   f1norm = %15.8le   alpha_cond = %15.8le  lam = %15.8le"
const INFO_BETA = "f1norm = %15.8le   beta_cond = %15.8le   lam = %15.8le"
const INFO_ALPHABETA = "f1norm = %15.8le  alpha_cond = %15.8le  beta_cond = %15.8le  lam = %15.8le"

# begin enum ANONYMOUS_113
typealias ANONYMOUS_113 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_113

type KINMemRec
    kin_uround::realtype
    kin_func::KINSysFn
    kin_user_data::Ptr{Void}
    kin_fnormtol::realtype
    kin_scsteptol::realtype
    kin_globalstrategy::Cint
    kin_printfl::Cint
    kin_mxiter::Clong
    kin_msbset::Clong
    kin_msbset_sub::Clong
    kin_mxnbcf::Clong
    kin_etaflag::Cint
    kin_noMinEps::Cint
    kin_setupNonNull::Cint
    kin_constraintsSet::Cint
    kin_jacCurrent::Cint
    kin_callForcingTerm::Cint
    kin_noResMon::Cint
    kin_retry_nni::Cint
    kin_update_fnorm_sub::Cint
    kin_mxnewtstep::realtype
    kin_mxnstepin::realtype
    kin_sqrt_relfunc::realtype
    kin_stepl::realtype
    kin_stepmul::realtype
    kin_eps::realtype
    kin_eta::realtype
    kin_eta_gamma::realtype
    kin_eta_alpha::realtype
    kin_noInitSetup::Cint
    kin_sthrsh::realtype
    kin_nni::Clong
    kin_nfe::Clong
    kin_nnilset::Clong
    kin_nnilset_sub::Clong
    kin_nbcf::Clong
    kin_nbktrk::Clong
    kin_ncscmx::Clong
    kin_uu::N_Vector
    kin_unew::N_Vector
    kin_fval::N_Vector
    kin_gval::N_Vector
    kin_uscale::N_Vector
    kin_fscale::N_Vector
    kin_pp::N_Vector
    kin_constraints::N_Vector
    kin_vtemp1::N_Vector
    kin_vtemp2::N_Vector
    kin_fold_aa::N_Vector
    kin_gold_aa::N_Vector
    kin_df_aa::Ptr{N_Vector}
    kin_dg_aa::Ptr{N_Vector}
    kin_q_aa::Ptr{N_Vector}
    kin_gamma_aa::Ptr{realtype}
    kin_R_aa::Ptr{realtype}
    kin_ipt_map::Ptr{Cint}
    kin_m_aa::Clong
    kin_aamem_aa::Cint
    kin_setstop_aa::Cint
    kin_lrw1::Clong
    kin_liw1::Clong
    kin_lrw::Clong
    kin_liw::Clong
    kin_linit::Ptr{Void}
    kin_lsetup::Ptr{Void}
    kin_lsolve::Ptr{Void}
    kin_lfree::Ptr{Void}
    kin_inexact_ls::Cint
    kin_lmem::Ptr{Void}
    kin_fnorm::realtype
    kin_f1norm::realtype
    kin_sFdotJp::realtype
    kin_sJpnorm::realtype
    kin_fnorm_sub::realtype
    kin_eval_omega::Cint
    kin_omega::realtype
    kin_omega_min::realtype
    kin_omega_max::realtype
    kin_MallocDone::Cint
    kin_ehfun::KINErrHandlerFn
    kin_eh_data::Ptr{Void}
    kin_errfp::Ptr{FILE}
    kin_ihfun::KINInfoHandlerFn
    kin_ih_data::Ptr{Void}
    kin_infofp::Ptr{FILE}
end

typealias KINMem Ptr{KINMemRec}

# begin enum ANONYMOUS_114
typealias ANONYMOUS_114 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_114

# begin enum ANONYMOUS_115
typealias ANONYMOUS_115 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_115

# begin enum ANONYMOUS_116
typealias ANONYMOUS_116 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_116

# begin enum ANONYMOUS_117
typealias ANONYMOUS_117 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_117

# begin enum ANONYMOUS_118
typealias ANONYMOUS_118 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_118

# begin enum ANONYMOUS_119
typealias ANONYMOUS_119 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_119

# begin enum ANONYMOUS_120
typealias ANONYMOUS_120 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_120

# begin enum ANONYMOUS_121
typealias ANONYMOUS_121 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_121

# begin enum ANONYMOUS_122
typealias ANONYMOUS_122 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_122

# begin enum ANONYMOUS_123
typealias ANONYMOUS_123 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_123

# begin enum ANONYMOUS_124
typealias ANONYMOUS_124 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_124

# begin enum ANONYMOUS_125
typealias ANONYMOUS_125 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_125

# begin enum ANONYMOUS_126
typealias ANONYMOUS_126 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_126

# begin enum ANONYMOUS_127
typealias ANONYMOUS_127 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_127

# begin enum ANONYMOUS_128
typealias ANONYMOUS_128 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_128

typealias ARKLocalFn Ptr{Void}
typealias ARKCommFn Ptr{Void}

# begin enum ANONYMOUS_129
typealias ANONYMOUS_129 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_129

const Q_DEFAULT = 4
const QDENSE_DEF = 3
const MAXNEF = 7
const MAXNCF = 10
const MXHNIL = 10
const MAXCOR = 3
const FP_ACCEL_M = 3

# Skipping MacroDefinition: ZERO RCONST ( 0.0 )
# Skipping MacroDefinition: TINY RCONST ( 1.0e-10 )
# Skipping MacroDefinition: TENTH RCONST ( 0.1 )
# Skipping MacroDefinition: POINT2 RCONST ( 0.2 )
# Skipping MacroDefinition: FOURTH RCONST ( 0.25 )
# Skipping MacroDefinition: HALF RCONST ( 0.5 )
# Skipping MacroDefinition: ONE RCONST ( 1.0 )
# Skipping MacroDefinition: TWO RCONST ( 2.0 )
# Skipping MacroDefinition: THREE RCONST ( 3.0 )
# Skipping MacroDefinition: FOUR RCONST ( 4.0 )
# Skipping MacroDefinition: FIVE RCONST ( 5.0 )
# Skipping MacroDefinition: SIX RCONST ( 6.0 )
# Skipping MacroDefinition: SEVEN RCONST ( 7.0 )
# Skipping MacroDefinition: TWELVE RCONST ( 12.0 )
# Skipping MacroDefinition: HUND RCONST ( 100.0 )
# Skipping MacroDefinition: CFLFAC RCONST ( 0.5 )
# Skipping MacroDefinition: SAFETY RCONST ( 0.96 )
# Skipping MacroDefinition: BIAS RCONST ( 1.5 )
# Skipping MacroDefinition: GROWTH RCONST ( 20.0 )
# Skipping MacroDefinition: HFIXED_LB RCONST ( 1.0 )
# Skipping MacroDefinition: HFIXED_UB RCONST ( 1.5 )
# Skipping MacroDefinition: AD0_K1 RCONST ( 0.58 )
# Skipping MacroDefinition: AD0_K2 RCONST ( 0.21 )
# Skipping MacroDefinition: AD0_K3 RCONST ( 0.1 )
# Skipping MacroDefinition: AD1_K1 RCONST ( 0.8 )
# Skipping MacroDefinition: AD1_K2 RCONST ( 0.31 )
# Skipping MacroDefinition: AD2_K1 RCONST ( 1.0 )
# Skipping MacroDefinition: AD3_K1 RCONST ( 0.367 )
# Skipping MacroDefinition: AD3_K2 RCONST ( 0.268 )
# Skipping MacroDefinition: AD4_K1 RCONST ( 0.98 )
# Skipping MacroDefinition: AD4_K2 RCONST ( 0.95 )
# Skipping MacroDefinition: AD5_K1 RCONST ( 0.367 )
# Skipping MacroDefinition: AD5_K2 RCONST ( 0.268 )
# Skipping MacroDefinition: AD5_K3 RCONST ( 0.95 )
# Skipping MacroDefinition: NLSCOEF RCONST ( 0.1 )

const ARK_SS = 0
const ARK_SV = 1
const ARK_WF = 2
const SOLVE_SUCCESS = 2
const PREDICT_AGAIN = 3
const CONV_FAIL = 4
const TRY_AGAIN = 5
const FIRST_CALL = 6
const PREV_CONV_FAIL = 7
const PREV_ERR_FAIL = 8
const RHSFUNC_RECVR = 9
const RTFOUND = 1
const CLOSERT = 3

# Skipping MacroDefinition: FUZZ_FACTOR RCONST ( 100.0 )
# Skipping MacroDefinition: H0_LBFACTOR RCONST ( 100.0 )
# Skipping MacroDefinition: H0_UBFACTOR RCONST ( 0.1 )

const H0_BIAS = 0.5
const H0_ITERS = 4

# Skipping MacroDefinition: ETAMX1 RCONST ( 10000.0 )
# Skipping MacroDefinition: ETAMXF RCONST ( 0.3 )
# Skipping MacroDefinition: ETAMIN RCONST ( 0.1 )
# Skipping MacroDefinition: ETACF RCONST ( 0.25 )
# Skipping MacroDefinition: ONEPSM RCONST ( 1.000001 )
# Skipping MacroDefinition: ONEMSM RCONST ( 0.999999 )

const SMALL_NEF = 2

# Skipping MacroDefinition: CRDOWN RCONST ( 0.3 )
# Skipping MacroDefinition: DGMAX RCONST ( 0.2 )
# Skipping MacroDefinition: RDIV RCONST ( 2.3 )

const MSBP = 20
const ARK_NO_FAILURES = 0
const ARK_FAIL_BAD_J = 1
const ARK_FAIL_OTHER = 2
const MSGARK_NO_MEM = "arkode_mem = NULL illegal."
const MSGARK_ARKMEM_FAIL = "Allocation of arkode_mem failed."
const MSGARK_MEM_FAIL = "A memory request failed."
const MSGARK_NO_MALLOC = "Attempt to call before ARKodeInit."
const MSGARK_NEG_MAXORD = "maxord <= 0 illegal."
const MSGARK_BAD_MAXORD = "Illegal attempt to increase maximum method order."
const MSGARK_NEG_HMIN = "hmin < 0 illegal."
const MSGARK_NEG_HMAX = "hmax < 0 illegal."
const MSGARK_BAD_HMIN_HMAX = "Inconsistent step size limits: hmin > hmax."
const MSGARK_BAD_RELTOL = "reltol < 0 illegal."
const MSGARK_BAD_ABSTOL = "abstol has negative component(s) (illegal)."
const MSGARK_NULL_ABSTOL = "abstol = NULL illegal."
const MSGARK_BAD_RABSTOL = "rabstol has negative component(s) (illegal)."
const MSGARK_NULL_RABSTOL = "rabstol = NULL illegal."
const MSGARK_NULL_Y0 = "y0 = NULL illegal."
const MSGARK_NULL_F = "Must specify at least one of fe, fi (both NULL)."
const MSGARK_NULL_G = "g = NULL illegal."
const MSGARK_BAD_NVECTOR = "A required vector operation is not implemented."
const MSGARK_BAD_K = "Illegal value for k."
const MSGARK_NULL_DKY = "dky = NULL illegal."
const MSGARK_BAD_T = "Illegal value for t."
const MSGARK_NO_ROOT = "Rootfinding was not initialized."
const MSGARK_LSOLVE_NULL = "The linear solver's solve routine is NULL."
const MSGARK_YOUT_NULL = "yout = NULL illegal."
const MSGARK_TRET_NULL = "tret = NULL illegal."
const MSGARK_BAD_EWT = "Initial ewt has component(s) equal to zero (illegal)."

# Skipping MacroDefinition: MSGARK_EWT_NOW_BAD "At " MSG_TIME ", a component of ewt has become <= 0."

const MSGARK_BAD_RWT = "Initial rwt has component(s) equal to zero (illegal)."

# Skipping MacroDefinition: MSGARK_RWT_NOW_BAD "At " MSG_TIME ", a component of rwt has become <= 0."

const MSGARK_BAD_ITASK = "Illegal value for itask."
const MSGARK_BAD_H0 = "h0 and tout - t0 inconsistent."

# Skipping MacroDefinition: MSGARK_BAD_TOUT "Trouble interpolating at " MSG_TIME_TOUT ". tout too far back in direction of integration"

const MSGARK_EWT_FAIL = "The user-provide EwtSet function failed."

# Skipping MacroDefinition: MSGARK_EWT_NOW_FAIL "At " MSG_TIME ", the user-provide EwtSet function failed."

const MSGARK_RWT_FAIL = "The user-provide RwtSet function failed."

# Skipping MacroDefinition: MSGARK_RWT_NOW_FAIL "At " MSG_TIME ", the user-provide RwtSet function failed."

const MSGARK_LINIT_FAIL = "The linear solver's init routine failed."
const MSGARK_LFREE_FAIL = "The linear solver's free routine failed."
const MSGARK_HNIL_DONE = "The above warning has been issued mxhnil times and will not be issued again for this problem."
const MSGARK_TOO_CLOSE = "tout too close to t0 to start integration."

# Skipping MacroDefinition: MSGARK_MAX_STEPS "At " MSG_TIME ", mxstep steps taken before reaching tout."
# Skipping MacroDefinition: MSGARK_TOO_MUCH_ACC "At " MSG_TIME ", too much accuracy requested."
# Skipping MacroDefinition: MSGARK_HNIL "Internal " MSG_TIME_H " are such that t + h = t on the next step. The solver will continue anyway."
# Skipping MacroDefinition: MSGARK_ERR_FAILS "At " MSG_TIME_H ", the error test failed repeatedly or with |h| = hmin."
# Skipping MacroDefinition: MSGARK_CONV_FAILS "At " MSG_TIME_H ", the solver convergence test failed repeatedly or with |h| = hmin."
# Skipping MacroDefinition: MSGARK_SETUP_FAILED "At " MSG_TIME ", the setup routine failed in an unrecoverable manner."
# Skipping MacroDefinition: MSGARK_SOLVE_FAILED "At " MSG_TIME ", the solve routine failed in an unrecoverable manner."
# Skipping MacroDefinition: MSGARK_RHSFUNC_FAILED "At " MSG_TIME ", the right-hand side routine failed in an unrecoverable manner."
# Skipping MacroDefinition: MSGARK_RHSFUNC_UNREC "At " MSG_TIME ", the right-hand side failed in a recoverable manner, but no recovery is possible."
# Skipping MacroDefinition: MSGARK_RHSFUNC_REPTD "At " MSG_TIME " repeated recoverable right-hand side function errors."

const MSGARK_RHSFUNC_FIRST = "The right-hand side routine failed at the first call."

# Skipping MacroDefinition: MSGARK_RTFUNC_FAILED "At " MSG_TIME ", the rootfinding routine failed in an unrecoverable manner."
# Skipping MacroDefinition: MSGARK_CLOSE_ROOTS "Root found at and very near " MSG_TIME "."
# Skipping MacroDefinition: MSGARK_BAD_TSTOP "The value " MSG_TIME_TSTOP " is behind current " MSG_TIME " in the direction of integration."

const MSGARK_INACTIVE_ROOTS = "At the end of the first step, there are still some root functions identically 0. This warning will not be issued again."
const MSGARK_MISSING_FE = "Cannot specify that method is explicit without providing a function pointer to fe(t,y)."
const MSGARK_MISSING_FI = "Cannot specify that method is explicit without providing a function pointer to fe(t,y)."
const MSGARK_MISSING_F = "Cannot specify that method is ImEx without providing function pointers to fi(t,y) and fe(t,y)."
const MSGARK_RESIZE_FAIL = "Error in user-supplied resize() function."
const MSGARK_MASSINIT_FAIL = "The mass matrix solver's init routine failed."
const MSGARK_MASSSETUP_FAIL = "The mass matrix solver's setup routine failed."
const MSGARK_MASSSOLVE_NULL = "The mass matrix solver's solve routine is NULL."
const MSGARK_MASSSOLVE_FAIL = "The mass matrix solver failed."
const MSGARK_MASSFREE_FAIL = "The mass matrixsolver's free routine failed."

# begin enum ANONYMOUS_130
typealias ANONYMOUS_130 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_130

# begin enum ANONYMOUS_131
typealias ANONYMOUS_131 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_131

# begin enum ANONYMOUS_132
typealias ANONYMOUS_132 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_132

type ARKodeMemRec
    ark_uround::realtype
    ark_fe::ARKRhsFn
    ark_fi::ARKRhsFn
    ark_user_data::Ptr{Void}
    ark_expstab::ARKExpStabFn
    ark_estab_data::Ptr{Void}
    ark_itol::Cint
    ark_ritol::Cint
    ark_reltol::realtype
    ark_Sabstol::realtype
    ark_Vabstol::N_Vector
    ark_SRabstol::realtype
    ark_VRabstol::N_Vector
    ark_user_efun::Cint
    ark_efun::ARKEwtFn
    ark_e_data::Ptr{Void}
    ark_user_rfun::Cint
    ark_rfun::ARKRwtFn
    ark_r_data::Ptr{Void}
    ark_linear::Cint
    ark_linear_timedep::Cint
    ark_explicit::Cint
    ark_implicit::Cint
    ark_Fe::NTuple{15,N_Vector}
    ark_Fi::NTuple{15,N_Vector}
    ark_ewt::N_Vector
    ark_rwt::N_Vector
    ark_rwt_is_ewt::Cint
    ark_y::N_Vector
    ark_ycur::N_Vector
    ark_sdata::N_Vector
    ark_tempv::N_Vector
    ark_acor::N_Vector
    ark_ftemp::N_Vector
    ark_fold::N_Vector
    ark_fnew::N_Vector
    ark_yold::N_Vector
    ark_ynew::N_Vector
    ark_tstopset::Cint
    ark_tstop::realtype
    ark_q::Cint
    ark_p::Cint
    ark_istage::Cint
    ark_stages::Cint
    ark_dense_q::Cint
    ark_Ae::NTuple{225,realtype}
    ark_Ai::NTuple{225,realtype}
    ark_ce::NTuple{15,realtype}
    ark_ci::NTuple{15,realtype}
    ark_be::NTuple{15,realtype}
    ark_bi::NTuple{15,realtype}
    ark_b2e::NTuple{15,realtype}
    ark_b2i::NTuple{15,realtype}
    ark_hin::realtype
    ark_h::realtype
    ark_hprime::realtype
    ark_next_h::realtype
    ark_eta::realtype
    ark_tn::realtype
    ark_tretlast::realtype
    ark_gamma::realtype
    ark_gammap::realtype
    ark_gamrat::realtype
    ark_crate::realtype
    ark_eRNrm::realtype
    ark_nlscoef::realtype
    ark_mnewt::Cint
    ark_fixedstep::Cint
    ark_hadapt::ARKAdaptFn
    ark_hadapt_data::Ptr{Void}
    ark_hadapt_ehist::NTuple{3,realtype}
    ark_hadapt_hhist::NTuple{3,realtype}
    ark_hadapt_imethod::Cint
    ark_hadapt_cfl::realtype
    ark_hadapt_safety::realtype
    ark_hadapt_bias::realtype
    ark_hadapt_growth::realtype
    ark_hadapt_lbound::realtype
    ark_hadapt_ubound::realtype
    ark_hadapt_pq::Cint
    ark_hadapt_k1::realtype
    ark_hadapt_k2::realtype
    ark_hadapt_k3::realtype
    ark_mxstep::Clong
    ark_maxcor::Cint
    ark_mxhnil::Cint
    ark_maxnef::Cint
    ark_maxncf::Cint
    ark_hmin::realtype
    ark_hmax_inv::realtype
    ark_etamax::realtype
    ark_etamx1::realtype
    ark_etamxf::realtype
    ark_small_nef::Cint
    ark_etacf::realtype
    ark_crdown::realtype
    ark_rdiv::realtype
    ark_dgmax::realtype
    ark_msbp::Cint
    ark_predictor::Cint
    ark_nst::Clong
    ark_nst_acc::Clong
    ark_nst_exp::Clong
    ark_nst_attempts::Clong
    ark_nfe::Clong
    ark_nfi::Clong
    ark_ncfn::Clong
    ark_nmassfails::Clong
    ark_netf::Clong
    ark_nni::Clong
    ark_nsetups::Clong
    ark_nhnil::Cint
    ark_report::Cint
    ark_diagfp::Ptr{FILE}
    ark_lrw1::Clong
    ark_liw1::Clong
    ark_lrw::Clong
    ark_liw::Clong
    ark_use_fp::Cint
    ark_fp_m::Clong
    ark_fp_imap::Ptr{Clong}
    ark_fp_R::Ptr{realtype}
    ark_fp_gamma::Ptr{realtype}
    ark_fp_df::Ptr{N_Vector}
    ark_fp_dg::Ptr{N_Vector}
    ark_fp_q::Ptr{N_Vector}
    ark_fp_fval::N_Vector
    ark_fp_fold::N_Vector
    ark_fp_gold::N_Vector
    ark_linit::Ptr{Void}
    ark_lsetup::Ptr{Void}
    ark_lsolve::Ptr{Void}
    ark_lfree::Ptr{Void}
    ark_lmem::Ptr{Void}
    ark_lsolve_type::Cint
    ark_mass_matrix::Cint
    ark_mass_solves::Clong
    ark_mass_mult::Clong
    ark_mtimes::ARKSpilsMassTimesVecFn
    ark_mtimes_data::Ptr{Void}
    ark_minit::Ptr{Void}
    ark_msetup::Ptr{Void}
    ark_msolve::Ptr{Void}
    ark_mfree::Ptr{Void}
    ark_mass_mem::Ptr{Void}
    ark_msolve_type::Cint
    ark_nstlp::Clong
    ark_h0u::realtype
    ark_tnew::realtype
    ark_hold::realtype
    ark_jcur::Cint
    ark_tolsf::realtype
    ark_setupNonNull::Cint
    ark_MassSetupNonNull::Cint
    ark_VabstolMallocDone::Cint
    ark_VRabstolMallocDone::Cint
    ark_MallocDone::Cint
    ark_resized::Cint
    ark_firststage::Cint
    ark_ehfun::ARKErrHandlerFn
    ark_eh_data::Ptr{Void}
    ark_errfp::Ptr{FILE}
    ark_gfun::ARKRootFn
    ark_nrtfn::Cint
    ark_iroots::Ptr{Cint}
    ark_rootdir::Ptr{Cint}
    ark_tlo::realtype
    ark_thi::realtype
    ark_trout::realtype
    ark_glo::Ptr{realtype}
    ark_ghi::Ptr{realtype}
    ark_grout::Ptr{realtype}
    ark_toutc::realtype
    ark_ttol::realtype
    ark_taskc::Cint
    ark_irfnd::Cint
    ark_nge::Clong
    ark_gactive::Ptr{Cint}
    ark_mxgnull::Cint
    ark_ProcessStep::ARKPostProcessStepFn
end

typealias ARKodeMem Ptr{ARKodeMemRec}

# begin enum ANONYMOUS_133
typealias ANONYMOUS_133 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_133

# begin enum ANONYMOUS_134
typealias ANONYMOUS_134 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_134

# begin enum ANONYMOUS_135
typealias ANONYMOUS_135 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_135

const ARKSLS_SUCCESS = 0
const ARKSLS_MEM_NULL = -1
const ARKSLS_LMEM_NULL = -2
const ARKSLS_ILL_INPUT = -3
const ARKSLS_MEM_FAIL = -4
const ARKSLS_JAC_NOSET = -5
const ARKSLS_MASS_NOSET = -6
const ARKSLS_PACKAGE_FAIL = -7
const ARKSLS_MASSMEM_NULL = -8
const ARKSLS_JACFUNC_UNRECVR = -9
const ARKSLS_JACFUNC_RECVR = -10
const ARKSLS_MASSFUNC_UNRECVR = -11
const ARKSLS_MASSFUNC_RECVR = -12

# begin enum ANONYMOUS_136
typealias ANONYMOUS_136 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_136

typealias ARKSlsSparseJacFn Ptr{Void}
typealias ARKSlsSparseMassFn Ptr{Void}

# begin enum ANONYMOUS_137
typealias ANONYMOUS_137 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_137

# begin enum ANONYMOUS_138
typealias ANONYMOUS_138 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_138

# begin enum ANONYMOUS_139
typealias ANONYMOUS_139 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_139

# begin enum ANONYMOUS_140
typealias ANONYMOUS_140 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_140

# begin enum ANONYMOUS_141
typealias ANONYMOUS_141 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_141

# begin enum ANONYMOUS_142
typealias ANONYMOUS_142 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_142

# begin enum ANONYMOUS_143
typealias ANONYMOUS_143 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_143

# begin enum ANONYMOUS_144
typealias ANONYMOUS_144 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_144

# begin enum ANONYMOUS_145
typealias ANONYMOUS_145 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_145

# begin enum ANONYMOUS_146
typealias ANONYMOUS_146 UInt32
const SUNDIALS_NVEC_SERIAL = (UInt32)(0)
const SUNDIALS_NVEC_PARALLEL = (UInt32)(1)
const SUNDIALS_NVEC_OPENMP = (UInt32)(2)
const SUNDIALS_NVEC_PTHREADS = (UInt32)(3)
const SUNDIALS_NVEC_PARHYP = (UInt32)(4)
const SUNDIALS_NVEC_PETSC = (UInt32)(5)
const SUNDIALS_NVEC_CUSTOM = (UInt32)(6)
# end enum ANONYMOUS_146
