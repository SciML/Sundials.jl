
recurs_sym_type(ex::Any) = 
  (ex==Union{} || typeof(ex)==Symbol || length(ex.args)==1) ? eval(ex) : Expr(ex.head, ex.args[1], recurs_sym_type(ex.args[2]))
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

# header: /usr/local/include/cvode/cvode_band.h
@ctypedef CVDlsDenseJacFn Ptr{:Void}
@ctypedef CVDlsBandJacFn Ptr{:Void}
@c Int32 CVDlsSetDenseJacFn (Ptr{:Void},:CVDlsDenseJacFn) shlib
@c Int32 CVDlsSetBandJacFn (Ptr{:Void},:CVDlsBandJacFn) shlib
@c Int32 CVDlsGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVDlsGetNumJacEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVDlsGetNumRhsEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVDlsGetLastFlag (Ptr{:Void},Ptr{:Clong}) shlib
@c Ptr{:UInt8} CVDlsGetReturnFlagName (:Clong,) shlib
@c Int32 CVBand (Ptr{:Void},:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/cvode/cvode_bandpre.h
@c Int32 CVBandPrecInit (Ptr{:Void},:Clong,:Clong,:Clong) shlib
@c Int32 CVBandPrecGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVBandPrecGetNumRhsEvals (Ptr{:Void},Ptr{:Clong}) shlib

# header: /usr/local/include/cvode/cvode_bbdpre.h
@ctypedef CVLocalFn Ptr{:Void}
@ctypedef CVCommFn Ptr{:Void}
@c Int32 CVBBDPrecInit (Ptr{:Void},:Clong,:Clong,:Clong,:Clong,:Clong,:realtype,:CVLocalFn,:CVCommFn) shlib
@c Int32 CVBBDPrecReInit (Ptr{:Void},:Clong,:Clong,:realtype) shlib
@c Int32 CVBBDPrecGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVBBDPrecGetNumGfnEvals (Ptr{:Void},Ptr{:Clong}) shlib

# header: /usr/local/include/cvode/cvode_dense.h
@c Int32 CVDense (Ptr{:Void},:Clong) shlib

# header: /usr/local/include/cvode/cvode_diag.h
@c Int32 CVDiag (Ptr{:Void},) shlib
@c Int32 CVDiagGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVDiagGetNumRhsEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVDiagGetLastFlag (Ptr{:Void},Ptr{:Clong}) shlib
@c Ptr{:UInt8} CVDiagGetReturnFlagName (:Clong,) shlib

# header: /usr/local/include/cvode/cvode_direct.h

# header: /usr/local/include/cvode/cvode.h
@ctypedef ptrdiff_t Void
@ctypedef size_t Void
@ctypedef wchar_t Int32
@ctypedef __u_char UInt8
@ctypedef __u_short UInt16
@ctypedef __u_int UInt32
@ctypedef __u_long Culong
@ctypedef __int8_t UInt8
@ctypedef __uint8_t UInt8
@ctypedef __int16_t Int16
@ctypedef __uint16_t UInt16
@ctypedef __int32_t Int32
@ctypedef __uint32_t UInt32
@ctypedef __int64_t Int64
@ctypedef __uint64_t UInt64
@ctypedef __quad_t Int64
@ctypedef __u_quad_t UInt64
@ctypedef __dev_t UInt64
@ctypedef __uid_t UInt32
@ctypedef __gid_t UInt32
@ctypedef __ino_t UInt64
@ctypedef __ino64_t UInt64
@ctypedef __mode_t UInt32
@ctypedef __nlink_t UInt64
@ctypedef __off_t Int64
@ctypedef __off64_t Int64
@ctypedef __pid_t Int32
@ctypedef __fsid_t Void
@ctypedef __clock_t Int64
@ctypedef __rlim_t UInt64
@ctypedef __rlim64_t UInt64
@ctypedef __id_t UInt32
@ctypedef __time_t Int64
@ctypedef __useconds_t UInt32
@ctypedef __suseconds_t Int64
@ctypedef __daddr_t Int32
@ctypedef __swblk_t Int64
@ctypedef __key_t Int32
@ctypedef __clockid_t Int32
@ctypedef __timer_t Ptr{:Void}
@ctypedef __blksize_t Int64
@ctypedef __blkcnt_t Int64
@ctypedef __blkcnt64_t Int64
@ctypedef __fsblkcnt_t UInt64
@ctypedef __fsblkcnt64_t UInt64
@ctypedef __fsfilcnt_t UInt64
@ctypedef __fsfilcnt64_t UInt64
@ctypedef __ssize_t Int64
@ctypedef __loff_t __off64_t
@ctypedef __qaddr_t Ptr{:__quad_t}
@ctypedef __caddr_t Ptr{:UInt8}
@ctypedef __intptr_t Int64
@ctypedef __socklen_t UInt32
@ctypedef FILE Void
@ctypedef __FILE Void
@ctypedef __mbstate_t Void
@ctypedef _G_fpos_t Void
@ctypedef _G_fpos64_t Void
@ctypedef _G_int16_t Int16
@ctypedef _G_int32_t Int32
@ctypedef _G_uint16_t UInt16
@ctypedef _G_uint32_t UInt32
@ctypedef va_list __builtin_va_list
@ctypedef __gnuc_va_list __builtin_va_list
@ctypedef _IO_lock_t Union{}
# enum __codecvt_result
@ctypedef __codecvt_result UInt32
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
@c Union{} _IO_flockfile (Ptr{:_IO_FILE},) shlib
@c Union{} _IO_funlockfile (Ptr{:_IO_FILE},) shlib
@c Int32 _IO_ftrylockfile (Ptr{:_IO_FILE},) shlib
@c Int32 _IO_vfscanf (Ptr{:_IO_FILE},Ptr{:UInt8},Ptr{:__va_list_tag},Ptr{:Int32}) shlib
@c Int32 _IO_vfprintf (Ptr{:_IO_FILE},Ptr{:UInt8},Ptr{:__va_list_tag}) shlib
@c __ssize_t _IO_padn (Ptr{:_IO_FILE},:Int32,:__ssize_t) shlib
@c size_t _IO_sgetn (Ptr{:_IO_FILE},Ptr{:Void},:size_t) shlib
@c __off64_t _IO_seekoff (Ptr{:_IO_FILE},:__off64_t,:Int32,:Int32) shlib
@c __off64_t _IO_seekpos (Ptr{:_IO_FILE},:__off64_t,:Int32) shlib
@c Union{} _IO_free_backup_area (Ptr{:_IO_FILE},) shlib
@ctypedef off_t __off_t
@ctypedef ssize_t __ssize_t
@ctypedef fpos_t _G_fpos_t
@c Int32 remove (Ptr{:UInt8},) shlib
@c Int32 rename (Ptr{:UInt8},Ptr{:UInt8}) shlib
@c Int32 renameat (:Int32,Ptr{:UInt8},:Int32,Ptr{:UInt8}) shlib
@c Ptr{:FILE} tmpfile () shlib
@c Ptr{:UInt8} tmpnam (Ptr{:UInt8},) shlib
@c Ptr{:UInt8} tmpnam_r (Ptr{:UInt8},) shlib
@c Ptr{:UInt8} tempnam (Ptr{:UInt8},Ptr{:UInt8}) shlib
@c Int32 fclose (Ptr{:FILE},) shlib
@c Int32 fflush (Ptr{:FILE},) shlib
@c Int32 fflush_unlocked (Ptr{:FILE},) shlib
@c Ptr{:FILE} fopen (Ptr{:UInt8},Ptr{:UInt8}) shlib
@c Ptr{:FILE} freopen (Ptr{:UInt8},Ptr{:UInt8},Ptr{:FILE}) shlib
@c Ptr{:FILE} fdopen (:Int32,Ptr{:UInt8}) shlib
@c Ptr{:FILE} fmemopen (Ptr{:Void},:size_t,Ptr{:UInt8}) shlib
@c Ptr{:FILE} open_memstream (Ptr{Ptr{:UInt8}},Ptr{:size_t}) shlib
@c Union{} setbuf (Ptr{:FILE},Ptr{:UInt8}) shlib
@c Int32 setvbuf (Ptr{:FILE},Ptr{:UInt8},:Int32,:size_t) shlib
@c Union{} setbuffer (Ptr{:FILE},Ptr{:UInt8},:size_t) shlib
@c Union{} setlinebuf (Ptr{:FILE},) shlib
@c Int32 fprintf (Ptr{:FILE},Ptr{:UInt8}) shlib
@c Int32 printf (Ptr{:UInt8},) shlib
@c Int32 sprintf (Ptr{:UInt8},Ptr{:UInt8}) shlib
@c Int32 vfprintf (Ptr{:FILE},Ptr{:UInt8},Ptr{:__va_list_tag}) shlib
@c Int32 vprintf (Ptr{:UInt8},Ptr{:__va_list_tag}) shlib
@c Int32 vsprintf (Ptr{:UInt8},Ptr{:UInt8},Ptr{:__va_list_tag}) shlib
@c Int32 snprintf (Ptr{:UInt8},:size_t,Ptr{:UInt8}) shlib
@c Int32 vsnprintf (Ptr{:UInt8},:size_t,Ptr{:UInt8},Ptr{:__va_list_tag}) shlib
@c Int32 vdprintf (:Int32,Ptr{:UInt8},Ptr{:__va_list_tag}) shlib
@c Int32 dprintf (:Int32,Ptr{:UInt8}) shlib
@c Int32 fscanf (Ptr{:FILE},Ptr{:UInt8}) shlib
@c Int32 scanf (Ptr{:UInt8},) shlib
@c Int32 sscanf (Ptr{:UInt8},Ptr{:UInt8}) shlib
@c Int32 vfscanf (Ptr{:FILE},Ptr{:UInt8},Ptr{:__va_list_tag}) shlib
@c Int32 vscanf (Ptr{:UInt8},Ptr{:__va_list_tag}) shlib
@c Int32 vsscanf (Ptr{:UInt8},Ptr{:UInt8},Ptr{:__va_list_tag}) shlib
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
@c Ptr{:UInt8} fgets (Ptr{:UInt8},:Int32,Ptr{:FILE}) shlib
@c Ptr{:UInt8} gets (Ptr{:UInt8},) shlib
@c __ssize_t __getdelim (Ptr{Ptr{:UInt8}},Ptr{:size_t},:Int32,Ptr{:FILE}) shlib
@c __ssize_t getdelim (Ptr{Ptr{:UInt8}},Ptr{:size_t},:Int32,Ptr{:FILE}) shlib
@c __ssize_t getline (Ptr{Ptr{:UInt8}},Ptr{:size_t},Ptr{:FILE}) shlib
@c Int32 fputs (Ptr{:UInt8},Ptr{:FILE}) shlib
@c Int32 puts (Ptr{:UInt8},) shlib
@c Int32 ungetc (:Int32,Ptr{:FILE}) shlib
@c size_t fread (Ptr{:Void},:size_t,:size_t,Ptr{:FILE}) shlib
@c size_t fwrite (Ptr{:Void},:size_t,:size_t,Ptr{:FILE}) shlib
@c size_t fread_unlocked (Ptr{:Void},:size_t,:size_t,Ptr{:FILE}) shlib
@c size_t fwrite_unlocked (Ptr{:Void},:size_t,:size_t,Ptr{:FILE}) shlib
@c Int32 fseek (Ptr{:FILE},:Clong,:Int32) shlib
@c Clong ftell (Ptr{:FILE},) shlib
@c Union{} rewind (Ptr{:FILE},) shlib
@c Int32 fseeko (Ptr{:FILE},:__off_t,:Int32) shlib
@c __off_t ftello (Ptr{:FILE},) shlib
@c Int32 fgetpos (Ptr{:FILE},Ptr{:fpos_t}) shlib
@c Int32 fsetpos (Ptr{:FILE},Ptr{:fpos_t}) shlib
@c Union{} clearerr (Ptr{:FILE},) shlib
@c Int32 feof (Ptr{:FILE},) shlib
@c Int32 ferror (Ptr{:FILE},) shlib
@c Union{} clearerr_unlocked (Ptr{:FILE},) shlib
@c Int32 feof_unlocked (Ptr{:FILE},) shlib
@c Int32 ferror_unlocked (Ptr{:FILE},) shlib
@c Union{} perror (Ptr{:UInt8},) shlib
@c Int32 fileno (Ptr{:FILE},) shlib
@c Int32 fileno_unlocked (Ptr{:FILE},) shlib
@c Ptr{:FILE} popen (Ptr{:UInt8},Ptr{:UInt8}) shlib
@c Int32 pclose (Ptr{:FILE},) shlib
@c Ptr{:UInt8} ctermid (Ptr{:UInt8},) shlib
@c Union{} flockfile (Ptr{:FILE},) shlib
@c Int32 ftrylockfile (Ptr{:FILE},) shlib
@c Union{} funlockfile (Ptr{:FILE},) shlib
@ctypedef CVRhsFn Ptr{:Void}
@ctypedef CVRootFn Ptr{:Void}
@ctypedef CVEwtFn Ptr{:Void}
@ctypedef CVErrHandlerFn Ptr{:Void}
@c Ptr{:Void} CVodeCreate (:Int32,:Int32) shlib
@c Int32 CVodeSetErrHandlerFn (Ptr{:Void},:CVErrHandlerFn,Ptr{:Void}) shlib
@c Int32 CVodeSetErrFile (Ptr{:Void},Ptr{:FILE}) shlib
@c Int32 CVodeSetUserData (Ptr{:Void},Ptr{:Void}) shlib
@c Int32 CVodeSetMaxOrd (Ptr{:Void},:Int32) shlib
@c Int32 CVodeSetMaxNumSteps (Ptr{:Void},:Clong) shlib
@c Int32 CVodeSetMaxHnilWarns (Ptr{:Void},:Int32) shlib
@c Int32 CVodeSetStabLimDet (Ptr{:Void},:Int32) shlib
@c Int32 CVodeSetInitStep (Ptr{:Void},:realtype) shlib
@c Int32 CVodeSetMinStep (Ptr{:Void},:realtype) shlib
@c Int32 CVodeSetMaxStep (Ptr{:Void},:realtype) shlib
@c Int32 CVodeSetStopTime (Ptr{:Void},:realtype) shlib
@c Int32 CVodeSetMaxErrTestFails (Ptr{:Void},:Int32) shlib
@c Int32 CVodeSetMaxNonlinIters (Ptr{:Void},:Int32) shlib
@c Int32 CVodeSetMaxConvFails (Ptr{:Void},:Int32) shlib
@c Int32 CVodeSetNonlinConvCoef (Ptr{:Void},:realtype) shlib
@c Int32 CVodeSetIterType (Ptr{:Void},:Int32) shlib
@c Int32 CVodeSetRootDirection (Ptr{:Void},Ptr{:Int32}) shlib
@c Int32 CVodeSetNoInactiveRootWarn (Ptr{:Void},) shlib
@c Int32 CVodeInit (Ptr{:Void},:CVRhsFn,:realtype,:N_Vector) shlib
@c Int32 CVodeReInit (Ptr{:Void},:realtype,:N_Vector) shlib
@c Int32 CVodeSStolerances (Ptr{:Void},:realtype,:realtype) shlib
@c Int32 CVodeSVtolerances (Ptr{:Void},:realtype,:N_Vector) shlib
@c Int32 CVodeWFtolerances (Ptr{:Void},:CVEwtFn) shlib
@c Int32 CVodeRootInit (Ptr{:Void},:Int32,:CVRootFn) shlib
@c Int32 CVode (Ptr{:Void},:realtype,:N_Vector,Ptr{:realtype},:Int32) shlib
@c Int32 CVodeGetDky (Ptr{:Void},:realtype,:Int32,:N_Vector) shlib
@c Int32 CVodeGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVodeGetNumSteps (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetNumRhsEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetNumLinSolvSetups (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetNumErrTestFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetLastOrder (Ptr{:Void},Ptr{:Int32}) shlib
@c Int32 CVodeGetCurrentOrder (Ptr{:Void},Ptr{:Int32}) shlib
@c Int32 CVodeGetNumStabLimOrderReds (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetActualInitStep (Ptr{:Void},Ptr{:realtype}) shlib
@c Int32 CVodeGetLastStep (Ptr{:Void},Ptr{:realtype}) shlib
@c Int32 CVodeGetCurrentStep (Ptr{:Void},Ptr{:realtype}) shlib
@c Int32 CVodeGetCurrentTime (Ptr{:Void},Ptr{:realtype}) shlib
@c Int32 CVodeGetTolScaleFactor (Ptr{:Void},Ptr{:realtype}) shlib
@c Int32 CVodeGetErrWeights (Ptr{:Void},:N_Vector) shlib
@c Int32 CVodeGetEstLocalErrors (Ptr{:Void},:N_Vector) shlib
@c Int32 CVodeGetNumGEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetRootInfo (Ptr{:Void},Ptr{:Int32}) shlib
@c Int32 CVodeGetIntegratorStats (Ptr{:Void},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong},Ptr{:Clong},Ptr{:Int32},Ptr{:Int32},Ptr{:realtype},Ptr{:realtype},Ptr{:realtype},Ptr{:realtype}) shlib
@c Int32 CVodeGetNumNonlinSolvIters (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetNumNonlinSolvConvFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVodeGetNonlinSolvStats (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Ptr{:UInt8} CVodeGetReturnFlagName (:Clong,) shlib
@c Union{} CVodeFree (Ptr{Ptr{:Void}},) shlib

# header: /usr/local/include/cvode/cvode_impl.h
@ctypedef CVodeMem Ptr{:Void}
@c Int32 CVEwtSet (:N_Vector,:N_Vector,Ptr{:Void}) shlib
@c Union{} CVProcessError (:CVodeMem,:Int32,Ptr{:UInt8},Ptr{:UInt8},Ptr{:UInt8}) shlib
@c Union{} CVErrHandler (:Int32,Ptr{:UInt8},Ptr{:UInt8},Ptr{:UInt8},Ptr{:Void}) shlib

# header: /usr/local/include/cvode/cvode_spbcgs.h
@ctypedef CVSpilsPrecSetupFn Ptr{:Void}
@ctypedef CVSpilsPrecSolveFn Ptr{:Void}
@ctypedef CVSpilsJacTimesVecFn Ptr{:Void}
@c Int32 CVSpilsSetPrecType (Ptr{:Void},:Int32) shlib
@c Int32 CVSpilsSetGSType (Ptr{:Void},:Int32) shlib
@c Int32 CVSpilsSetMaxl (Ptr{:Void},:Int32) shlib
@c Int32 CVSpilsSetEpsLin (Ptr{:Void},:realtype) shlib
@c Int32 CVSpilsSetPreconditioner (Ptr{:Void},:CVSpilsPrecSetupFn,:CVSpilsPrecSolveFn) shlib
@c Int32 CVSpilsSetJacTimesVecFn (Ptr{:Void},:CVSpilsJacTimesVecFn) shlib
@c Int32 CVSpilsGetWorkSpace (Ptr{:Void},Ptr{:Clong},Ptr{:Clong}) shlib
@c Int32 CVSpilsGetNumPrecEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVSpilsGetNumPrecSolves (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVSpilsGetNumLinIters (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVSpilsGetNumConvFails (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVSpilsGetNumJtimesEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVSpilsGetNumRhsEvals (Ptr{:Void},Ptr{:Clong}) shlib
@c Int32 CVSpilsGetLastFlag (Ptr{:Void},Ptr{:Clong}) shlib
@c Ptr{:UInt8} CVSpilsGetReturnFlagName (:Clong,) shlib
@c Int32 CVSpbcg (Ptr{:Void},:Int32,:Int32) shlib

# header: /usr/local/include/cvode/cvode_spgmr.h
@c Int32 CVSpgmr (Ptr{:Void},:Int32,:Int32) shlib

# header: /usr/local/include/cvode/cvode_spils.h

# header: /usr/local/include/cvode/cvode_sptfqmr.h
@c Int32 CVSptfqmr (Ptr{:Void},:Int32,:Int32) shlib

