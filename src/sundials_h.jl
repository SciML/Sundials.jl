# Automatically generated using Clang.jl wrap_c, version 0.0.0

using Compat

const OBJC_NEW_PROPERTIES = 1
const SUNDIALS_PACKAGE_VERSION = "2.5.0"
const SUNDIALS_DOUBLE_PRECISION = 1
const SUNDIALS_BLAS_LAPACK = 0
# const FLT_EVAL_METHOD = __FLT_EVAL_METHOD__

# Skipping MacroDefinition: FLT_ROUNDS ( __builtin_flt_rounds ( ) )

# const FLT_RADIX = __FLT_RADIX__
# const FLT_MANT_DIG = __FLT_MANT_DIG__
# const DBL_MANT_DIG = __DBL_MANT_DIG__
# const LDBL_MANT_DIG = __LDBL_MANT_DIG__
# const DECIMAL_DIG = __DECIMAL_DIG__
# const FLT_DIG = __FLT_DIG__
# const DBL_DIG = __DBL_DIG__
# const LDBL_DIG = __LDBL_DIG__
# const FLT_MIN_EXP = __FLT_MIN_EXP__
# const DBL_MIN_EXP = __DBL_MIN_EXP__
# const LDBL_MIN_EXP = __LDBL_MIN_EXP__
# const FLT_MIN_10_EXP = __FLT_MIN_10_EXP__
# const DBL_MIN_10_EXP = __DBL_MIN_10_EXP__
# const LDBL_MIN_10_EXP = __LDBL_MIN_10_EXP__
# const FLT_MAX_EXP = __FLT_MAX_EXP__
# const DBL_MAX_EXP = __DBL_MAX_EXP__
# const LDBL_MAX_EXP = __LDBL_MAX_EXP__
# const FLT_MAX_10_EXP = __FLT_MAX_10_EXP__
# const DBL_MAX_10_EXP = __DBL_MAX_10_EXP__
# const LDBL_MAX_10_EXP = __LDBL_MAX_10_EXP__
# const FLT_MAX = __FLT_MAX__
# const DBL_MAX = __DBL_MAX__
# const LDBL_MAX = __LDBL_MAX__
# const FLT_EPSILON = __FLT_EPSILON__
# const DBL_EPSILON = __DBL_EPSILON__
# const LDBL_EPSILON = __LDBL_EPSILON__
# const FLT_MIN = __FLT_MIN__
# const DBL_MIN = __DBL_MIN__
# const LDBL_MIN = __LDBL_MIN__
# const FLT_TRUE_MIN = __FLT_DENORM_MIN__
# const DBL_TRUE_MIN = __DBL_DENORM_MIN__
# const LDBL_TRUE_MIN = __LDBL_DENORM_MIN__

# Skipping MacroDefinition: RCONST ( x ) x

# const BIG_REAL = DBL_MAX
# const SMALL_REAL = DBL_MIN
# const UNIT_ROUNDOFF = DBL_EPSILON
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

typealias N_Vector_Ops Ptr{_generic_N_Vector_Ops}

type _generic_N_Vector
    content::Ptr{Void}
    ops::Ptr{_generic_N_Vector_Ops}
end

typealias N_Vector Ptr{_generic_N_Vector}
typealias N_Vector_S Ptr{N_Vector}

# begin enum ANONYMOUS_1
typealias ANONYMOUS_1 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_1

# begin enum ANONYMOUS_47
typealias ANONYMOUS_47 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_47

# begin enum ANONYMOUS_2
typealias ANONYMOUS_2 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_2

# begin enum ANONYMOUS_48
typealias ANONYMOUS_48 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_48

typealias ATimesFn Ptr{Void}
typealias PSolveFn Ptr{Void}

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

# begin enum ANONYMOUS_3
typealias ANONYMOUS_3 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_3

# begin enum ANONYMOUS_4
typealias ANONYMOUS_4 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_4

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

# begin enum ANONYMOUS_5
typealias ANONYMOUS_5 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_5

# begin enum ANONYMOUS_6
typealias ANONYMOUS_6 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_6

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

# begin enum ANONYMOUS_7
typealias ANONYMOUS_7 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_7

# begin enum ANONYMOUS_8
typealias ANONYMOUS_8 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_8

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

# const NULL = __DARWIN_NULL
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
# const stdin = __stdinp
# const stdout = __stdoutp
# const stderr = __stderrp
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

immutable Array_56_UInt8
    d1::UInt8
    d2::UInt8
    d3::UInt8
    d4::UInt8
    d5::UInt8
    d6::UInt8
    d7::UInt8
    d8::UInt8
    d9::UInt8
    d10::UInt8
    d11::UInt8
    d12::UInt8
    d13::UInt8
    d14::UInt8
    d15::UInt8
    d16::UInt8
    d17::UInt8
    d18::UInt8
    d19::UInt8
    d20::UInt8
    d21::UInt8
    d22::UInt8
    d23::UInt8
    d24::UInt8
    d25::UInt8
    d26::UInt8
    d27::UInt8
    d28::UInt8
    d29::UInt8
    d30::UInt8
    d31::UInt8
    d32::UInt8
    d33::UInt8
    d34::UInt8
    d35::UInt8
    d36::UInt8
    d37::UInt8
    d38::UInt8
    d39::UInt8
    d40::UInt8
    d41::UInt8
    d42::UInt8
    d43::UInt8
    d44::UInt8
    d45::UInt8
    d46::UInt8
    d47::UInt8
    d48::UInt8
    d49::UInt8
    d50::UInt8
    d51::UInt8
    d52::UInt8
    d53::UInt8
    d54::UInt8
    d55::UInt8
    d56::UInt8
end

zero(::Type{Array_56_UInt8}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_56_UInt8(fill(zero(UInt8),56)...)
    end

type _opaque_pthread_attr_t
    __sig::Clong
    __opaque::Array_56_UInt8
end

immutable Array_40_UInt8
    d1::UInt8
    d2::UInt8
    d3::UInt8
    d4::UInt8
    d5::UInt8
    d6::UInt8
    d7::UInt8
    d8::UInt8
    d9::UInt8
    d10::UInt8
    d11::UInt8
    d12::UInt8
    d13::UInt8
    d14::UInt8
    d15::UInt8
    d16::UInt8
    d17::UInt8
    d18::UInt8
    d19::UInt8
    d20::UInt8
    d21::UInt8
    d22::UInt8
    d23::UInt8
    d24::UInt8
    d25::UInt8
    d26::UInt8
    d27::UInt8
    d28::UInt8
    d29::UInt8
    d30::UInt8
    d31::UInt8
    d32::UInt8
    d33::UInt8
    d34::UInt8
    d35::UInt8
    d36::UInt8
    d37::UInt8
    d38::UInt8
    d39::UInt8
    d40::UInt8
end

zero(::Type{Array_40_UInt8}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_40_UInt8(fill(zero(UInt8),40)...)
    end

type _opaque_pthread_cond_t
    __sig::Clong
    __opaque::Array_40_UInt8
end

immutable Array_8_UInt8
    d1::UInt8
    d2::UInt8
    d3::UInt8
    d4::UInt8
    d5::UInt8
    d6::UInt8
    d7::UInt8
    d8::UInt8
end

zero(::Type{Array_8_UInt8}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_8_UInt8(fill(zero(UInt8),8)...)
    end

type _opaque_pthread_condattr_t
    __sig::Clong
    __opaque::Array_8_UInt8
end

type _opaque_pthread_mutex_t
    __sig::Clong
    __opaque::Array_56_UInt8
end

type _opaque_pthread_mutexattr_t
    __sig::Clong
    __opaque::Array_8_UInt8
end

type _opaque_pthread_once_t
    __sig::Clong
    __opaque::Array_8_UInt8
end

immutable Array_192_UInt8
    d1::UInt8
    d2::UInt8
    d3::UInt8
    d4::UInt8
    d5::UInt8
    d6::UInt8
    d7::UInt8
    d8::UInt8
    d9::UInt8
    d10::UInt8
    d11::UInt8
    d12::UInt8
    d13::UInt8
    d14::UInt8
    d15::UInt8
    d16::UInt8
    d17::UInt8
    d18::UInt8
    d19::UInt8
    d20::UInt8
    d21::UInt8
    d22::UInt8
    d23::UInt8
    d24::UInt8
    d25::UInt8
    d26::UInt8
    d27::UInt8
    d28::UInt8
    d29::UInt8
    d30::UInt8
    d31::UInt8
    d32::UInt8
    d33::UInt8
    d34::UInt8
    d35::UInt8
    d36::UInt8
    d37::UInt8
    d38::UInt8
    d39::UInt8
    d40::UInt8
    d41::UInt8
    d42::UInt8
    d43::UInt8
    d44::UInt8
    d45::UInt8
    d46::UInt8
    d47::UInt8
    d48::UInt8
    d49::UInt8
    d50::UInt8
    d51::UInt8
    d52::UInt8
    d53::UInt8
    d54::UInt8
    d55::UInt8
    d56::UInt8
    d57::UInt8
    d58::UInt8
    d59::UInt8
    d60::UInt8
    d61::UInt8
    d62::UInt8
    d63::UInt8
    d64::UInt8
    d65::UInt8
    d66::UInt8
    d67::UInt8
    d68::UInt8
    d69::UInt8
    d70::UInt8
    d71::UInt8
    d72::UInt8
    d73::UInt8
    d74::UInt8
    d75::UInt8
    d76::UInt8
    d77::UInt8
    d78::UInt8
    d79::UInt8
    d80::UInt8
    d81::UInt8
    d82::UInt8
    d83::UInt8
    d84::UInt8
    d85::UInt8
    d86::UInt8
    d87::UInt8
    d88::UInt8
    d89::UInt8
    d90::UInt8
    d91::UInt8
    d92::UInt8
    d93::UInt8
    d94::UInt8
    d95::UInt8
    d96::UInt8
    d97::UInt8
    d98::UInt8
    d99::UInt8
    d100::UInt8
    d101::UInt8
    d102::UInt8
    d103::UInt8
    d104::UInt8
    d105::UInt8
    d106::UInt8
    d107::UInt8
    d108::UInt8
    d109::UInt8
    d110::UInt8
    d111::UInt8
    d112::UInt8
    d113::UInt8
    d114::UInt8
    d115::UInt8
    d116::UInt8
    d117::UInt8
    d118::UInt8
    d119::UInt8
    d120::UInt8
    d121::UInt8
    d122::UInt8
    d123::UInt8
    d124::UInt8
    d125::UInt8
    d126::UInt8
    d127::UInt8
    d128::UInt8
    d129::UInt8
    d130::UInt8
    d131::UInt8
    d132::UInt8
    d133::UInt8
    d134::UInt8
    d135::UInt8
    d136::UInt8
    d137::UInt8
    d138::UInt8
    d139::UInt8
    d140::UInt8
    d141::UInt8
    d142::UInt8
    d143::UInt8
    d144::UInt8
    d145::UInt8
    d146::UInt8
    d147::UInt8
    d148::UInt8
    d149::UInt8
    d150::UInt8
    d151::UInt8
    d152::UInt8
    d153::UInt8
    d154::UInt8
    d155::UInt8
    d156::UInt8
    d157::UInt8
    d158::UInt8
    d159::UInt8
    d160::UInt8
    d161::UInt8
    d162::UInt8
    d163::UInt8
    d164::UInt8
    d165::UInt8
    d166::UInt8
    d167::UInt8
    d168::UInt8
    d169::UInt8
    d170::UInt8
    d171::UInt8
    d172::UInt8
    d173::UInt8
    d174::UInt8
    d175::UInt8
    d176::UInt8
    d177::UInt8
    d178::UInt8
    d179::UInt8
    d180::UInt8
    d181::UInt8
    d182::UInt8
    d183::UInt8
    d184::UInt8
    d185::UInt8
    d186::UInt8
    d187::UInt8
    d188::UInt8
    d189::UInt8
    d190::UInt8
    d191::UInt8
    d192::UInt8
end

zero(::Type{Array_192_UInt8}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_192_UInt8(fill(zero(UInt8),192)...)
    end

type _opaque_pthread_rwlock_t
    __sig::Clong
    __opaque::Array_192_UInt8
end

immutable Array_16_UInt8
    d1::UInt8
    d2::UInt8
    d3::UInt8
    d4::UInt8
    d5::UInt8
    d6::UInt8
    d7::UInt8
    d8::UInt8
    d9::UInt8
    d10::UInt8
    d11::UInt8
    d12::UInt8
    d13::UInt8
    d14::UInt8
    d15::UInt8
    d16::UInt8
end

zero(::Type{Array_16_UInt8}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_16_UInt8(fill(zero(UInt8),16)...)
    end

immutable Array_3_Cuchar
    d1::Cuchar
    d2::Cuchar
    d3::Cuchar
end

zero(::Type{Array_3_Cuchar}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_3_Cuchar(fill(zero(Cuchar),3)...)
    end

immutable Array_1_Cuchar
    d1::Cuchar
end

zero(::Type{Array_1_Cuchar}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_1_Cuchar(fill(zero(Cuchar),1)...)
    end

# type FILE
#     _p::Ptr{Cuchar}
#     _r::Cint
#     _w::Cint
#     _flags::Int16
#     _file::Int16
#     _bf::__sbuf
#     _lbfsize::Cint
#     _cookie::Ptr{Void}
#     _close::Ptr{Void}
#     _read::Ptr{Void}
#     _seek::Ptr{Void}
#     _write::Ptr{Void}
#     _ub::__sbuf
#     _extra::Ptr{__sFILEX}
#     _ur::Cint
#     _ubuf::Array_3_Cuchar
#     _nbuf::Array_1_Cuchar
#     _lb::__sbuf
#     _blksize::Cint
#     _offset::fpos_t
# end
# 
# typealias off_t __darwin_off_t
# typealias ssize_t __darwin_ssize_t
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

typealias CVDlsDenseJacFnB Ptr{Void}
typealias CVDlsBandJacFnB Ptr{Void}

const CVSPILS_NO_ADJ = -101
const CVSPILS_LMEMB_NULL = -102

# begin enum ANONYMOUS_11
typealias ANONYMOUS_11 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_11

# begin enum ANONYMOUS_12
typealias ANONYMOUS_12 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_12

typealias CVSpilsPrecSetupFnB Ptr{Void}
typealias CVSpilsPrecSolveFnB Ptr{Void}
typealias CVSpilsJacTimesVecFnB Ptr{Void}

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

typealias IDADlsDenseJacFn Ptr{Void}
typealias IDADlsBandJacFn Ptr{Void}

const IDASPILS_SUCCESS = 0
const IDASPILS_MEM_NULL = -1
const IDASPILS_LMEM_NULL = -2
const IDASPILS_ILL_INPUT = -3
const IDASPILS_MEM_FAIL = -4
const IDASPILS_PMEM_NULL = -5

# begin enum ANONYMOUS_13
typealias ANONYMOUS_13 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_13

# begin enum ANONYMOUS_14
typealias ANONYMOUS_14 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_14

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
const IDA_NO_ADJ = -101
const IDA_NO_FWD = -102
const IDA_NO_BCK = -103
const IDA_BAD_TB0 = -104
const IDA_REIFWD_FAIL = -105
const IDA_FWD_FAIL = -106
const IDA_GETY_BADT = -107

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

typealias IDADlsDenseJacFnB Ptr{Void}
typealias IDADlsBandJacFnB Ptr{Void}

const IDASPILS_NO_ADJ = -101
const IDASPILS_LMEMB_NULL = -102

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

typealias IDASpilsPrecSetupFnB Ptr{Void}
typealias IDASpilsPrecSolveFnB Ptr{Void}
typealias IDASpilsJacTimesVecFnB Ptr{Void}

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

typealias KINDlsDenseJacFn Ptr{Void}
typealias KINDlsBandJacFn Ptr{Void}

const KINSPILS_SUCCESS = 0
const KINSPILS_MEM_NULL = -1
const KINSPILS_LMEM_NULL = -2
const KINSPILS_ILL_INPUT = -3
const KINSPILS_MEM_FAIL = -4
const KINSPILS_PMEM_NULL = -5
const KINSPILS_MAXL = 10

# begin enum ANONYMOUS_17
typealias ANONYMOUS_17 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_17

# begin enum ANONYMOUS_18
typealias ANONYMOUS_18 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_18

typealias KINSpilsPrecSetupFn Ptr{Void}
typealias KINSpilsPrecSolveFn Ptr{Void}
typealias KINSpilsJacTimesVecFn Ptr{Void}

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

typealias N_VectorContent_Serial Ptr{_N_VectorContent_Serial}

const FCMIX_CVODE = 1
const FCMIX_IDA = 2
const FCMIX_KINSOL = 3

# Skipping MacroDefinition: MIN ( A , B ) ( ( A ) < ( B ) ? ( A ) : ( B ) )
# Skipping MacroDefinition: MAX ( A , B ) ( ( A ) > ( B ) ? ( A ) : ( B ) )
# Skipping MacroDefinition: SQR ( A ) ( ( A ) * ( A ) )

# const ABS = RAbs
# const SQRT = RSqrt
# const EXP = RExp

typealias CVLocalFn Ptr{Void}
typealias CVCommFn Ptr{Void}

const CVDIAG_SUCCESS = 0
const CVDIAG_MEM_NULL = -1
const CVDIAG_LMEM_NULL = -2
const CVDIAG_ILL_INPUT = -3
const CVDIAG_MEM_FAIL = -4
const CVDIAG_INV_FAIL = -5
const CVDIAG_RHSFUNC_UNRECVR = -6
const CVDIAG_RHSFUNC_RECVR = -7

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
const MSG_TIME = "t = %lg, "
const MSG_TIME_H = "t = %lg and h = %lg, "
const MSG_TIME_INT = "t = %lg is not between tcur - hu = %lg and tcur = %lg."
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

immutable Array_13_N_Vector
    d1::N_Vector
    d2::N_Vector
    d3::N_Vector
    d4::N_Vector
    d5::N_Vector
    d6::N_Vector
    d7::N_Vector
    d8::N_Vector
    d9::N_Vector
    d10::N_Vector
    d11::N_Vector
    d12::N_Vector
    d13::N_Vector
end

zero(::Type{Array_13_N_Vector}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_13_N_Vector(fill(zero(N_Vector),13)...)
    end

immutable Array_14_realtype
    d1::realtype
    d2::realtype
    d3::realtype
    d4::realtype
    d5::realtype
    d6::realtype
    d7::realtype
    d8::realtype
    d9::realtype
    d10::realtype
    d11::realtype
    d12::realtype
    d13::realtype
    d14::realtype
end

zero(::Type{Array_14_realtype}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_14_realtype(fill(zero(realtype),14)...)
    end

immutable Array_6_realtype
    d1::realtype
    d2::realtype
    d3::realtype
    d4::realtype
    d5::realtype
    d6::realtype
end

zero(::Type{Array_6_realtype}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_6_realtype(fill(zero(realtype),6)...)
    end

immutable Array_13_realtype
    d1::realtype
    d2::realtype
    d3::realtype
    d4::realtype
    d5::realtype
    d6::realtype
    d7::realtype
    d8::realtype
    d9::realtype
    d10::realtype
    d11::realtype
    d12::realtype
    d13::realtype
end

zero(::Type{Array_13_realtype}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_13_realtype(fill(zero(realtype),13)...)
    end

immutable Array_4_realtype
    d1::realtype
    d2::realtype
    d3::realtype
    d4::realtype
end

zero(::Type{Array_4_realtype}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_4_realtype(fill(zero(realtype),4)...)
    end

immutable Array_6_Array_4_realtype
    d1::Array_4_realtype
    d2::Array_4_realtype
    d3::Array_4_realtype
    d4::Array_4_realtype
    d5::Array_4_realtype
    d6::Array_4_realtype
end

zero(::Type{Array_6_Array_4_realtype}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_6_Array_4_realtype(fill(zero(Array_4_realtype),6)...)
    end

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
    cv_zn::Array_13_N_Vector
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
    cv_tau::Array_14_realtype
    cv_tq::Array_6_realtype
    cv_l::Array_13_realtype
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
    # cv_errfp::Ptr{Void}
    cv_errfp::Ptr{Void}
    cv_sldeton::Cint
    cv_ssdat::Array_6_Array_4_realtype
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

# begin enum ANONYMOUS_19
typealias ANONYMOUS_19 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_19

# begin enum ANONYMOUS_20
typealias ANONYMOUS_20 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_20

# begin enum ANONYMOUS_21
typealias ANONYMOUS_21 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_21

# begin enum ANONYMOUS_22
typealias ANONYMOUS_22 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
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

typealias CVLocalFnB Ptr{Void}
typealias CVCommFnB Ptr{Void}

const CVDIAG_NO_ADJ = -101
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

immutable Array_13_Ptr
    d1::Ptr{N_Vector}
    d2::Ptr{N_Vector}
    d3::Ptr{N_Vector}
    d4::Ptr{N_Vector}
    d5::Ptr{N_Vector}
    d6::Ptr{N_Vector}
    d7::Ptr{N_Vector}
    d8::Ptr{N_Vector}
    d9::Ptr{N_Vector}
    d10::Ptr{N_Vector}
    d11::Ptr{N_Vector}
    d12::Ptr{N_Vector}
    d13::Ptr{N_Vector}
end

zero(::Type{Array_13_Ptr}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_13_Ptr(fill(zero(Ptr{N_Vector}),13)...)
    end

type CkpntMemRec
    ck_t0::realtype
    ck_t1::realtype
    ck_zn::Array_13_N_Vector
    ck_quadr::Cint
    ck_znQ::Array_13_N_Vector
    ck_sensi::Cint
    ck_Ns::Cint
    ck_znS::Array_13_Ptr
    ck_quadr_sensi::Cint
    ck_znQS::Array_13_Ptr
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
    ck_tau::Array_14_realtype
    ck_tq::Array_6_realtype
    ck_l::Array_13_realtype
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
    ca_Y::Array_13_N_Vector
    ca_YS::Array_13_Ptr
    ca_T::Array_13_realtype
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

# begin enum ANONYMOUS_25
typealias ANONYMOUS_25 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_25

# begin enum ANONYMOUS_26
typealias ANONYMOUS_26 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_26

# begin enum ANONYMOUS_27
typealias ANONYMOUS_27 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_27

# begin enum ANONYMOUS_28
typealias ANONYMOUS_28 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_28

# begin enum ANONYMOUS_29
typealias ANONYMOUS_29 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_29

# begin enum ANONYMOUS_30
typealias ANONYMOUS_30 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_30

typealias IDABBDLocalFn Ptr{Void}
typealias IDABBDCommFn Ptr{Void}

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
const MSG_IC_FAILED_LINS = "The linesearch algorithm failed with too small a step."
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

immutable Array_6_N_Vector
    d1::N_Vector
    d2::N_Vector
    d3::N_Vector
    d4::N_Vector
    d5::N_Vector
    d6::N_Vector
end

zero(::Type{Array_6_N_Vector}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_6_N_Vector(fill(zero(N_Vector),6)...)
    end

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
    ida_phi::Array_6_N_Vector
    ida_psi::Array_6_realtype
    ida_alpha::Array_6_realtype
    ida_beta::Array_6_realtype
    ida_sigma::Array_6_realtype
    ida_gamma::Array_6_realtype
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
    # ida_errfp::Ptr{Void}
    ida_errfp::Ptr{Void}
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

# begin enum ANONYMOUS_31
typealias ANONYMOUS_31 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_31

# begin enum ANONYMOUS_32
typealias ANONYMOUS_32 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
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

# begin enum ANONYMOUS_35
typealias ANONYMOUS_35 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_35

# begin enum ANONYMOUS_36
typealias ANONYMOUS_36 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_36

typealias IDABBDLocalFnB Ptr{Void}
typealias IDABBDCommFnB Ptr{Void}

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

immutable Array_6_Ptr
    d1::Ptr{N_Vector}
    d2::Ptr{N_Vector}
    d3::Ptr{N_Vector}
    d4::Ptr{N_Vector}
    d5::Ptr{N_Vector}
    d6::Ptr{N_Vector}
end

zero(::Type{Array_6_Ptr}) = begin  # /Users/jgoldfar/.julia/v0.4/Clang/src/wrap_c.jl, line 266:
        Array_6_Ptr(fill(zero(Ptr{N_Vector}),6)...)
    end

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
    ia_Y::Array_6_N_Vector
    ia_YS::Array_6_Ptr
    ia_T::Array_6_realtype
    ia_yyTmp::N_Vector
    ia_ypTmp::N_Vector
    ia_yySTmp::Ptr{N_Vector}
    ia_ypSTmp::Ptr{N_Vector}
end

typealias IDAadjMem Ptr{IDAadjMemRec}
typealias IDABMem Ptr{IDABMemRec}

# begin enum ANONYMOUS_37
typealias ANONYMOUS_37 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_37

# begin enum ANONYMOUS_38
typealias ANONYMOUS_38 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_38

# begin enum ANONYMOUS_39
typealias ANONYMOUS_39 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_39

# begin enum ANONYMOUS_40
typealias ANONYMOUS_40 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_40

# begin enum ANONYMOUS_41
typealias ANONYMOUS_41 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_41

# begin enum ANONYMOUS_42
typealias ANONYMOUS_42 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_42

const KINBBDPRE_SUCCESS = 0
const KINBBDPRE_PDATA_NULL = -11
const KINBBDPRE_FUNC_UNRECVR = -12

typealias KINCommFn Ptr{Void}
typealias KINLocalFn Ptr{Void}

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
const MSG_LSOLV_NO_MEM = "The linear solver memory pointer is NULL."
const MSG_UU_NULL = "uu = NULL illegal."
const MSG_BAD_GLSTRAT = "Illegal value for global strategy."
const MSG_BAD_USCALE = "uscale = NULL illegal."
const MSG_USCALE_NONPOSITIVE = "uscale has nonpositive elements."
const MSG_BAD_FSCALE = "fscale = NULL illegal."
const MSG_FSCALE_NONPOSITIVE = "fscale has nonpositive elements."
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
    kin_uscale::N_Vector
    kin_fscale::N_Vector
    kin_pp::N_Vector
    kin_constraints::N_Vector
    kin_vtemp1::N_Vector
    kin_vtemp2::N_Vector
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
    kin_res_norm::realtype
    kin_sfdotJp::realtype
    kin_sJpnorm::realtype
    kin_fnorm_sub::realtype
    kin_eval_omega::Cint
    kin_omega::realtype
    kin_omega_min::realtype
    kin_omega_max::realtype
    kin_MallocDone::Cint
    kin_ehfun::KINErrHandlerFn
    kin_eh_data::Ptr{Void}
    # kin_errfp::Ptr{Void}
    kin_errfp::Ptr{Void}
    kin_ihfun::KINInfoHandlerFn
    kin_ih_data::Ptr{Void}
    # kin_infofp::Ptr{Void}
    kin_infofp::Ptr{Void}
end

typealias KINMem Ptr{KINMemRec}

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

# begin enum ANONYMOUS_45
typealias ANONYMOUS_45 UInt32
const PREC_NONE = (UInt32)(0)
const PREC_LEFT = (UInt32)(1)
const PREC_RIGHT = (UInt32)(2)
const PREC_BOTH = (UInt32)(3)
# end enum ANONYMOUS_45

# begin enum ANONYMOUS_46
typealias ANONYMOUS_46 UInt32
const MODIFIED_GS = (UInt32)(1)
const CLASSICAL_GS = (UInt32)(2)
# end enum ANONYMOUS_46
