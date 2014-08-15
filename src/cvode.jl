
recurs_sym_type(ex::Any) =
  (ex==None || typeof(ex)==Symbol || length(ex.args)==1) ? eval(ex) : Expr(ex.head, ex.args[1], recurs_sym_type(ex.args[2]))
macro c(ret_type, func, arg_types, lib)
  local _arg_types = Expr(:tuple, [recurs_sym_type(a) for a in arg_types.args]...)
  local _ret_type = recurs_sym_type(ret_type)
  local _args_in = Any[ symbol(string('a',x)) for x in 1:length(_arg_types.args) ]
  local _lib = eval(lib)
  quote
    $(esc(func))($(_args_in...)) = ccall( ($(string(func)), $(Expr(:quote, _lib)) ), $_ret_type, $_arg_types, $(_args_in...) )
  end
end

macro ctypedef(fake_t,real_t)
  real_t = recurs_sym_type(real_t)
  quote
    typealias $fake_t $real_t
  end
end

type CVODE_struct; end # dummy type to give us a typed pointer
typealias CVODE_ptr Ptr{CVODE_struct}


# header: /usr/local/include/cvode/cvode_band.h
@ctypedef CVDlsDenseJacFn Ptr{:Void}
@ctypedef CVDlsBandJacFn Ptr{:Void}
@c Int32 CVDlsSetDenseJacFn (:CVODE_ptr,:CVDlsDenseJacFn) shlib
@c Int32 CVDlsSetBandJacFn (:CVODE_ptr,:CVDlsBandJacFn) shlib
@c Int32 CVDlsGetWorkSpace (:CVODE_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVDlsGetNumJacEvals (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVDlsGetNumRhsEvals (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVDlsGetLastFlag (:CVODE_ptr,Ptr{:Clong}) shlib
@c Ptr{:Uint8} CVDlsGetReturnFlagName (:Clong,) shlib
@c Int32 CVBand (:CVODE_ptr,:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/cvode/cvode_bandpre.h
@c Int32 CVBandPrecInit (:CVODE_ptr,:Clong,:Clong,:Clong) shlib
@c Int32 CVBandPrecGetWorkSpace (:CVODE_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVBandPrecGetNumRhsEvals (:CVODE_ptr,Ptr{:Clong}) shlib

# header: /usr/local/include/cvode/cvode_bbdpre.h
@ctypedef CVLocalFn Ptr{:Void}
@ctypedef CVCommFn Ptr{:Void}
@c Int32 CVBBDPrecInit (:CVODE_ptr,:Clong,:Clong,:Clong,:Clong,:Clong,:realtype,:CVLocalFn,:CVCommFn) shlib
@c Int32 CVBBDPrecReInit (:CVODE_ptr,:Clong,:Clong,:realtype) shlib
@c Int32 CVBBDPrecGetWorkSpace (:CVODE_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVBBDPrecGetNumGfnEvals (:CVODE_ptr,Ptr{:Clong}) shlib

# header: /usr/local/include/cvode/cvode_dense.h
@c Int32 CVDense (:CVODE_ptr,:Clong) shlib

# header: /usr/local/include/cvode/cvode_diag.h
@c Int32 CVDiag (:CVODE_ptr,) shlib
@c Int32 CVDiagGetWorkSpace (:CVODE_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVDiagGetNumRhsEvals (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVDiagGetLastFlag (:CVODE_ptr,Ptr{:Clong}) shlib
@c Ptr{:Uint8} CVDiagGetReturnFlagName (:Clong,) shlib

# header: /usr/local/include/cvode/cvode_direct.h

# header: /usr/local/include/cvode/cvode.h
@ctypedef ptrdiff_t Void
@ctypedef size_t Void
@ctypedef wchar_t Int32
@ctypedef __u_char Uint8
@ctypedef __u_short Uint16
@ctypedef __u_int Uint32
@ctypedef __u_long Culong
@ctypedef __int8_t Uint8
@ctypedef __uint8_t Uint8
@ctypedef __int16_t Int16
@ctypedef __uint16_t Uint16
@ctypedef __int32_t Int32
@ctypedef __uint32_t Uint32
@ctypedef __int64_t Int64
@ctypedef __uint64_t Uint64
@ctypedef __quad_t Int64
@ctypedef __u_quad_t Uint64
@ctypedef __dev_t Uint64
@ctypedef __uid_t Uint32
@ctypedef __gid_t Uint32
@ctypedef __ino_t Uint64
@ctypedef __ino64_t Uint64
@ctypedef __mode_t Uint32
@ctypedef __nlink_t Uint64
@ctypedef __off_t Int64
@ctypedef __off64_t Int64
@ctypedef __pid_t Int32
@ctypedef __fsid_t Void
@ctypedef __clock_t Int64
@ctypedef __rlim_t Uint64
@ctypedef __rlim64_t Uint64
@ctypedef __id_t Uint32
@ctypedef __time_t Int64
@ctypedef __useconds_t Uint32
@ctypedef __suseconds_t Int64
@ctypedef __daddr_t Int32
@ctypedef __swblk_t Int64
@ctypedef __key_t Int32
@ctypedef __clockid_t Int32
@ctypedef __timer_t Ptr{:None}
@ctypedef __blksize_t Int64
@ctypedef __blkcnt_t Int64
@ctypedef __blkcnt64_t Int64
@ctypedef __fsblkcnt_t Uint64
@ctypedef __fsblkcnt64_t Uint64
@ctypedef __fsfilcnt_t Uint64
@ctypedef __fsfilcnt64_t Uint64
@ctypedef __ssize_t Int64
@ctypedef __loff_t __off64_t
@ctypedef __qaddr_t Ptr{:__quad_t}
@ctypedef __caddr_t Ptr{:Uint8}
@ctypedef __intptr_t Int64
@ctypedef __socklen_t Uint32
@ctypedef FILE Void
@ctypedef __FILE Void
@ctypedef __mbstate_t Void
@ctypedef _G_fpos_t Void
@ctypedef _G_fpos64_t Void
@ctypedef _G_int16_t Int16
@ctypedef _G_int32_t Int32
@ctypedef _G_uint16_t Uint16
@ctypedef _G_uint32_t Uint32
@ctypedef va_list __builtin_va_list
@ctypedef __gnuc_va_list __builtin_va_list
@ctypedef _IO_lock_t None
# enum __codecvt_result
@ctypedef __codecvt_result Uint32
const __codecvt_ok = 0
const __codecvt_partial = 1
const __codecvt_error = 2
const __codecvt_noconv = 3
# end
@ctypedef _IO_FILE Void
@ctypedef __io_read_fn Void
@ctypedef __io_write_fn Void
@ctypedef __io_seek_fn Void
@ctypedef __io_close_fn Void
@c Int32 __underflow (Ptr{:_IO_FILE},) shlib
@c Int32 __uflow (Ptr{:_IO_FILE},) shlib
@c Int32 __overflow (Ptr{:_IO_FILE},:Int32) shlib
@c Int32 _IO_getc (Ptr{:_IO_FILE},) shlib
@c Int32 _IO_putc (:Int32,Ptr{:_IO_FILE}) shlib
@c Int32 _IO_feof (Ptr{:_IO_FILE},) shlib
@c Int32 _IO_ferror (Ptr{:_IO_FILE},) shlib
@c Int32 _IO_peekc_locked (Ptr{:_IO_FILE},) shlib
@c None _IO_flockfile (Ptr{:_IO_FILE},) shlib
@c None _IO_funlockfile (Ptr{:_IO_FILE},) shlib
@c Int32 _IO_ftrylockfile (Ptr{:_IO_FILE},) shlib
@c Int32 _IO_vfscanf (Ptr{:_IO_FILE},Ptr{:Uint8},Ptr{:__va_list_tag},Ptr{:Int32}) shlib
@c Int32 _IO_vfprintf (Ptr{:_IO_FILE},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c __ssize_t _IO_padn (Ptr{:_IO_FILE},:Int32,:__ssize_t) shlib
@c size_t _IO_sgetn (Ptr{:_IO_FILE},Ptr{:None},:size_t) shlib
@c __off64_t _IO_seekoff (Ptr{:_IO_FILE},:__off64_t,:Int32,:Int32) shlib
@c __off64_t _IO_seekpos (Ptr{:_IO_FILE},:__off64_t,:Int32) shlib
@c None _IO_free_backup_area (Ptr{:_IO_FILE},) shlib
@ctypedef off_t __off_t
@ctypedef ssize_t __ssize_t
@ctypedef fpos_t _G_fpos_t
@c Int32 remove (Ptr{:Uint8},) shlib
@c Int32 rename (Ptr{:Uint8},Ptr{:Uint8}) shlib
@c Int32 renameat (:Int32,Ptr{:Uint8},:Int32,Ptr{:Uint8}) shlib
@c Ptr{:FILE} tmpfile () shlib
@c Ptr{:Uint8} tmpnam (Ptr{:Uint8},) shlib
@c Ptr{:Uint8} tmpnam_r (Ptr{:Uint8},) shlib
@c Ptr{:Uint8} tempnam (Ptr{:Uint8},Ptr{:Uint8}) shlib
@c Int32 fclose (Ptr{:FILE},) shlib
@c Int32 fflush (Ptr{:FILE},) shlib
@c Int32 fflush_unlocked (Ptr{:FILE},) shlib
@c Ptr{:FILE} fopen (Ptr{:Uint8},Ptr{:Uint8}) shlib
@c Ptr{:FILE} freopen (Ptr{:Uint8},Ptr{:Uint8},Ptr{:FILE}) shlib
@c Ptr{:FILE} fdopen (:Int32,Ptr{:Uint8}) shlib
@c Ptr{:FILE} fmemopen (Ptr{:None},:size_t,Ptr{:Uint8}) shlib
@c Ptr{:FILE} open_memstream (Ptr{Ptr{:Uint8}},Ptr{:size_t}) shlib
@c None setbuf (Ptr{:FILE},Ptr{:Uint8}) shlib
@c Int32 setvbuf (Ptr{:FILE},Ptr{:Uint8},:Int32,:size_t) shlib
@c None setbuffer (Ptr{:FILE},Ptr{:Uint8},:size_t) shlib
@c None setlinebuf (Ptr{:FILE},) shlib
@c Int32 fprintf (Ptr{:FILE},Ptr{:Uint8}) shlib
@c Int32 printf (Ptr{:Uint8},) shlib
@c Int32 sprintf (Ptr{:Uint8},Ptr{:Uint8}) shlib
@c Int32 vfprintf (Ptr{:FILE},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 vprintf (Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 vsprintf (Ptr{:Uint8},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 snprintf (Ptr{:Uint8},:size_t,Ptr{:Uint8}) shlib
@c Int32 vsnprintf (Ptr{:Uint8},:size_t,Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 vdprintf (:Int32,Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 dprintf (:Int32,Ptr{:Uint8}) shlib
@c Int32 fscanf (Ptr{:FILE},Ptr{:Uint8}) shlib
@c Int32 scanf (Ptr{:Uint8},) shlib
@c Int32 sscanf (Ptr{:Uint8},Ptr{:Uint8}) shlib
@c Int32 vfscanf (Ptr{:FILE},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 vscanf (Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 vsscanf (Ptr{:Uint8},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 fgetc (Ptr{:FILE},) shlib
@c Int32 getc (Ptr{:FILE},) shlib
@c Int32 getchar () shlib
@c Int32 getc_unlocked (Ptr{:FILE},) shlib
@c Int32 getchar_unlocked () shlib
@c Int32 fgetc_unlocked (Ptr{:FILE},) shlib
@c Int32 fputc (:Int32,Ptr{:FILE}) shlib
@c Int32 putc (:Int32,Ptr{:FILE}) shlib
@c Int32 putchar (:Int32,) shlib
@c Int32 fputc_unlocked (:Int32,Ptr{:FILE}) shlib
@c Int32 putc_unlocked (:Int32,Ptr{:FILE}) shlib
@c Int32 putchar_unlocked (:Int32,) shlib
@c Int32 getw (Ptr{:FILE},) shlib
@c Int32 putw (:Int32,Ptr{:FILE}) shlib
@c Ptr{:Uint8} fgets (Ptr{:Uint8},:Int32,Ptr{:FILE}) shlib
@c Ptr{:Uint8} gets (Ptr{:Uint8},) shlib
@c __ssize_t __getdelim (Ptr{Ptr{:Uint8}},Ptr{:size_t},:Int32,Ptr{:FILE}) shlib
@c __ssize_t getdelim (Ptr{Ptr{:Uint8}},Ptr{:size_t},:Int32,Ptr{:FILE}) shlib
@c __ssize_t getline (Ptr{Ptr{:Uint8}},Ptr{:size_t},Ptr{:FILE}) shlib
@c Int32 fputs (Ptr{:Uint8},Ptr{:FILE}) shlib
@c Int32 puts (Ptr{:Uint8},) shlib
@c Int32 ungetc (:Int32,Ptr{:FILE}) shlib
@c size_t fread (Ptr{:None},:size_t,:size_t,Ptr{:FILE}) shlib
@c size_t fwrite (Ptr{:None},:size_t,:size_t,Ptr{:FILE}) shlib
@c size_t fread_unlocked (Ptr{:None},:size_t,:size_t,Ptr{:FILE}) shlib
@c size_t fwrite_unlocked (Ptr{:None},:size_t,:size_t,Ptr{:FILE}) shlib
@c Int32 fseek (Ptr{:FILE},:Clong,:Int32) shlib
@c Clong ftell (Ptr{:FILE},) shlib
@c None rewind (Ptr{:FILE},) shlib
@c Int32 fseeko (Ptr{:FILE},:__off_t,:Int32) shlib
@c __off_t ftello (Ptr{:FILE},) shlib
@c Int32 fgetpos (Ptr{:FILE},Ptr{:fpos_t}) shlib
@c Int32 fsetpos (Ptr{:FILE},Ptr{:fpos_t}) shlib
@c None clearerr (Ptr{:FILE},) shlib
@c Int32 feof (Ptr{:FILE},) shlib
@c Int32 ferror (Ptr{:FILE},) shlib
@c None clearerr_unlocked (Ptr{:FILE},) shlib
@c Int32 feof_unlocked (Ptr{:FILE},) shlib
@c Int32 ferror_unlocked (Ptr{:FILE},) shlib
@c None perror (Ptr{:Uint8},) shlib
@c Int32 fileno (Ptr{:FILE},) shlib
@c Int32 fileno_unlocked (Ptr{:FILE},) shlib
@c Ptr{:FILE} popen (Ptr{:Uint8},Ptr{:Uint8}) shlib
@c Int32 pclose (Ptr{:FILE},) shlib
@c Ptr{:Uint8} ctermid (Ptr{:Uint8},) shlib
@c None flockfile (Ptr{:FILE},) shlib
@c Int32 ftrylockfile (Ptr{:FILE},) shlib
@c None funlockfile (Ptr{:FILE},) shlib
@ctypedef CVRhsFn Ptr{:Void}
@ctypedef CVRootFn Ptr{:Void}
@ctypedef CVEwtFn Ptr{:Void}
@ctypedef CVErrHandlerFn Ptr{:Void}
@c CVODE_ptr CVodeCreate (:Int32,:Int32) shlib
@c Int32 CVodeSetErrHandlerFn (:CVODE_ptr,:CVErrHandlerFn,Ptr{:None}) shlib
@c Int32 CVodeSetErrFile (:CVODE_ptr,Ptr{:FILE}) shlib
@c Int32 CVodeSetUserData (:CVODE_ptr,Ptr{:None}) shlib
@c Int32 CVodeSetMaxOrd (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetMaxNumSteps (:CVODE_ptr,:Clong) shlib
@c Int32 CVodeSetMaxHnilWarns (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetStabLimDet (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetInitStep (:CVODE_ptr,:realtype) shlib
@c Int32 CVodeSetMinStep (:CVODE_ptr,:realtype) shlib
@c Int32 CVodeSetMaxStep (:CVODE_ptr,:realtype) shlib
@c Int32 CVodeSetStopTime (:CVODE_ptr,:realtype) shlib
@c Int32 CVodeSetMaxErrTestFails (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetMaxNonlinIters (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetMaxConvFails (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetNonlinConvCoef (:CVODE_ptr,:realtype) shlib
@c Int32 CVodeSetIterType (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetRootDirection (:CVODE_ptr,Ptr{:Int32}) shlib
@c Int32 CVodeSetNoInactiveRootWarn (:CVODE_ptr,) shlib
@c Int32 CVodeInit (:CVODE_ptr,:CVRhsFn,:realtype,:N_Vector) shlib
@c Int32 CVodeReInit (:CVODE_ptr,:realtype,:N_Vector) shlib
@c Int32 CVodeSStolerances (:CVODE_ptr,:realtype,:realtype) shlib
@c Int32 CVodeSVtolerances (:CVODE_ptr,:realtype,:N_Vector) shlib
@c Int32 CVodeWFtolerances (:CVODE_ptr,:CVEwtFn) shlib
@c Int32 CVodeRootInit (:CVODE_ptr,:Int32,:CVRootFn) shlib
@c Int32 CVode (:CVODE_ptr,:realtype,:N_Vector,Ptr{:realtype},:Int32) shlib
@c Int32 CVodeGetDky (:CVODE_ptr,:realtype,:Int32,:N_Vector) shlib
@c Int32 CVodeGetWorkSpace (:CVODE_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVodeGetNumSteps (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVodeGetNumRhsEvals (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVodeGetNumLinSolvSetups (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVodeGetNumErrTestFails (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVodeGetLastOrder (:CVODE_ptr,Ptr{:Int32}) shlib
@c Int32 CVodeGetCurrentOrder (:CVODE_ptr,Ptr{:Int32}) shlib
@c Int32 CVodeGetNumStabLimOrderReds (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVodeGetActualInitStep (:CVODE_ptr,Ptr{:realtype}) shlib
@c Int32 CVodeGetLastStep (:CVODE_ptr,Ptr{:realtype}) shlib
@c Int32 CVodeGetCurrentStep (:CVODE_ptr,Ptr{:realtype}) shlib
@c Int32 CVodeGetCurrentTime (:CVODE_ptr,Ptr{:realtype}) shlib
@c Int32 CVodeGetTolScaleFactor (:CVODE_ptr,Ptr{:realtype}) shlib
@c Int32 CVodeGetErrWeights (:CVODE_ptr,:N_Vector) shlib
@c Int32 CVodeGetEstLocalErrors (:CVODE_ptr,:N_Vector) shlib
@c Int32 CVodeGetNumGEvals (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVodeGetRootInfo (:CVODE_ptr,Ptr{:Int32}) shlib
@c Int32 CVodeGetIntegratorStats (:CVODE_ptr,Ptr{:Clong},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong},Ptr{:Int32},Ptr{:Int32},Ptr{:realtype},Ptr{:realtype},Ptr{:realtype},Ptr{:realtype}) shlib
@c Int32 CVodeGetNumNonlinSolvIters (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVodeGetNumNonlinSolvConvFails (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVodeGetNonlinSolvStats (:CVODE_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Ptr{:Uint8} CVodeGetReturnFlagName (:Clong,) shlib
@c None CVodeFree (Ptr{:CVODE_ptr},) shlib

# header: /usr/local/include/cvode/cvode_impl.h
@ctypedef CVodeMem Ptr{:Void}
@c Int32 CVEwtSet (:N_Vector,:N_Vector,Ptr{:None}) shlib
@c None CVProcessError (:CVodeMem,:Int32,Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8}) shlib
@c None CVErrHandler (:Int32,Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8},Ptr{:None}) shlib

# header: /usr/local/include/cvode/cvode_spbcgs.h
@ctypedef CVSpilsPrecSetupFn Ptr{:Void}
@ctypedef CVSpilsPrecSolveFn Ptr{:Void}
@ctypedef CVSpilsJacTimesVecFn Ptr{:Void}
@c Int32 CVSpilsSetPrecType (:CVODE_ptr,:Int32) shlib
@c Int32 CVSpilsSetGSType (:CVODE_ptr,:Int32) shlib
@c Int32 CVSpilsSetMaxl (:CVODE_ptr,:Int32) shlib
@c Int32 CVSpilsSetEpsLin (:CVODE_ptr,:realtype) shlib
@c Int32 CVSpilsSetPreconditioner (:CVODE_ptr,:CVSpilsPrecSetupFn,:CVSpilsPrecSolveFn) shlib
@c Int32 CVSpilsSetJacTimesVecFn (:CVODE_ptr,:CVSpilsJacTimesVecFn) shlib
@c Int32 CVSpilsGetWorkSpace (:CVODE_ptr,Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVSpilsGetNumPrecEvals (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVSpilsGetNumPrecSolves (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVSpilsGetNumLinIters (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVSpilsGetNumConvFails (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVSpilsGetNumJtimesEvals (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVSpilsGetNumRhsEvals (:CVODE_ptr,Ptr{:Clong}) shlib
@c Int32 CVSpilsGetLastFlag (:CVODE_ptr,Ptr{:Clong}) shlib
@c Ptr{:Uint8} CVSpilsGetReturnFlagName (:Clong,) shlib
@c Int32 CVSpbcg (:CVODE_ptr,:Int32,:Int32) shlib

# header: /usr/local/include/cvode/cvode_spgmr.h
@c Int32 CVSpgmr (:CVODE_ptr,:Int32,:Int32) shlib

# header: /usr/local/include/cvode/cvode_spils.h

# header: /usr/local/include/cvode/cvode_sptfqmr.h
@c Int32 CVSptfqmr (:CVODE_ptr,:Int32,:Int32) shlib
