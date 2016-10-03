# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function renameat(arg1::Cint,arg2,arg3::Cint,arg4)
    ccall((:renameat,stdio),Cint,(Cint,Cstring,Cint,Cstring),arg1,arg2,arg3,arg4)
end

function clearerr(arg1)
    ccall((:clearerr,stdio),Void,(Ptr{FILE},),arg1)
end

function fclose(arg1)
    ccall((:fclose,stdio),Cint,(Ptr{FILE},),arg1)
end

function feof(arg1)
    ccall((:feof,stdio),Cint,(Ptr{FILE},),arg1)
end

function ferror(arg1)
    ccall((:ferror,stdio),Cint,(Ptr{FILE},),arg1)
end

function fflush(arg1)
    ccall((:fflush,stdio),Cint,(Ptr{FILE},),arg1)
end

function fgetc(arg1)
    ccall((:fgetc,stdio),Cint,(Ptr{FILE},),arg1)
end

function fgetpos(arg1,arg2)
    ccall((:fgetpos,stdio),Cint,(Ptr{FILE},Ptr{fpos_t}),arg1,arg2)
end

function fgets(arg1,arg2::Cint,arg3)
    ccall((:fgets,stdio),Cstring,(Cstring,Cint,Ptr{FILE}),arg1,arg2,arg3)
end

function fopen(arg1,arg2)
    ccall((:fopen,stdio),Ptr{FILE},(Cstring,Cstring),arg1,arg2)
end

function fputc(arg1::Cint,arg2)
    ccall((:fputc,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function fputs(arg1,arg2)
    ccall((:fputs,stdio),Cint,(Cstring,Ptr{FILE}),arg1,arg2)
end

function fread(arg1,arg2::Csize_t,arg3::Csize_t,arg4)
    ccall((:fread,stdio),Csize_t,(Ptr{Void},Csize_t,Csize_t,Ptr{FILE}),arg1,arg2,arg3,arg4)
end

function freopen(arg1,arg2,arg3)
    ccall((:freopen,stdio),Ptr{FILE},(Cstring,Cstring,Ptr{FILE}),arg1,arg2,arg3)
end

function fseek(arg1,arg2::Clong,arg3::Cint)
    ccall((:fseek,stdio),Cint,(Ptr{FILE},Clong,Cint),arg1,arg2,arg3)
end

function fsetpos(arg1,arg2)
    ccall((:fsetpos,stdio),Cint,(Ptr{FILE},Ptr{fpos_t}),arg1,arg2)
end

function ftell(arg1)
    ccall((:ftell,stdio),Clong,(Ptr{FILE},),arg1)
end

function fwrite(arg1,arg2::Csize_t,arg3::Csize_t,arg4)
    ccall((:fwrite,stdio),Csize_t,(Ptr{Void},Csize_t,Csize_t,Ptr{FILE}),arg1,arg2,arg3,arg4)
end

function getc(arg1)
    ccall((:getc,stdio),Cint,(Ptr{FILE},),arg1)
end

function getchar()
    ccall((:getchar,stdio),Cint,())
end

function gets(arg1)
    ccall((:gets,stdio),Cstring,(Cstring,),arg1)
end

function perror(arg1)
    ccall((:perror,stdio),Void,(Cstring,),arg1)
end

function putc(arg1::Cint,arg2)
    ccall((:putc,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function putchar(arg1::Cint)
    ccall((:putchar,stdio),Cint,(Cint,),arg1)
end

function puts(arg1)
    ccall((:puts,stdio),Cint,(Cstring,),arg1)
end

function remove(arg1)
    ccall((:remove,stdio),Cint,(Cstring,),arg1)
end

function rename(arg1,arg2)
    ccall((:rename,stdio),Cint,(Cstring,Cstring),arg1,arg2)
end

function rewind(arg1)
    ccall((:rewind,stdio),Void,(Ptr{FILE},),arg1)
end

function setbuf(arg1,arg2)
    ccall((:setbuf,stdio),Void,(Ptr{FILE},Cstring),arg1,arg2)
end

function setvbuf(arg1,arg2,arg3::Cint,arg4::Csize_t)
    ccall((:setvbuf,stdio),Cint,(Ptr{FILE},Cstring,Cint,Csize_t),arg1,arg2,arg3,arg4)
end

function tmpfile()
    ccall((:tmpfile,stdio),Ptr{FILE},())
end

function tmpnam(arg1)
    ccall((:tmpnam,stdio),Cstring,(Cstring,),arg1)
end

function ungetc(arg1::Cint,arg2)
    ccall((:ungetc,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function vfprintf(arg1,arg2,arg3::va_list)
    ccall((:vfprintf,stdio),Cint,(Ptr{FILE},Cstring,va_list),arg1,arg2,arg3)
end

function vprintf(arg1,arg2)
    ccall((:vprintf,stdio),Cint,(Cstring,Ptr{__va_list_tag}),arg1,arg2)
end

function vsprintf(arg1,arg2,arg3)
    ccall((:vsprintf,stdio),Cint,(Cstring,Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3)
end

function ctermid(arg1)
    ccall((:ctermid,stdio),Cstring,(Cstring,),arg1)
end

function fdopen(arg1::Cint,arg2)
    ccall((:fdopen,stdio),Ptr{FILE},(Cint,Cstring),arg1,arg2)
end

function fileno(arg1)
    ccall((:fileno,stdio),Cint,(Ptr{FILE},),arg1)
end

function pclose(arg1)
    ccall((:pclose,stdio),Cint,(Ptr{FILE},),arg1)
end

function popen(arg1,arg2)
    ccall((:popen,stdio),Ptr{FILE},(Cstring,Cstring),arg1,arg2)
end

function flockfile(arg1)
    ccall((:flockfile,stdio),Void,(Ptr{FILE},),arg1)
end

function ftrylockfile(arg1)
    ccall((:ftrylockfile,stdio),Cint,(Ptr{FILE},),arg1)
end

function funlockfile(arg1)
    ccall((:funlockfile,stdio),Void,(Ptr{FILE},),arg1)
end

function getc_unlocked(arg1)
    ccall((:getc_unlocked,stdio),Cint,(Ptr{FILE},),arg1)
end

function getchar_unlocked()
    ccall((:getchar_unlocked,stdio),Cint,())
end

function putc_unlocked(arg1::Cint,arg2)
    ccall((:putc_unlocked,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function putchar_unlocked(arg1::Cint)
    ccall((:putchar_unlocked,stdio),Cint,(Cint,),arg1)
end

function getw(arg1)
    ccall((:getw,stdio),Cint,(Ptr{FILE},),arg1)
end

function putw(arg1::Cint,arg2)
    ccall((:putw,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function tempnam(arg1,arg2)
    ccall((:tempnam,stdio),Cstring,(Cstring,Cstring),arg1,arg2)
end

function vfscanf(arg1,arg2,arg3)
    ccall((:vfscanf,stdio),Cint,(Ptr{FILE},Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3)
end

function vscanf(arg1,arg2)
    ccall((:vscanf,stdio),Cint,(Cstring,Ptr{__va_list_tag}),arg1,arg2)
end

function vsnprintf(arg1,arg2::Culong,arg3,arg4)
    ccall((:vsnprintf,stdio),Cint,(Cstring,Culong,Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3,arg4)
end

function vsscanf(arg1,arg2,arg3)
    ccall((:vsscanf,stdio),Cint,(Cstring,Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3)
end

function vdprintf(arg1::Cint,arg2,arg3::va_list)
    ccall((:vdprintf,stdio),Cint,(Cint,Cstring,va_list),arg1,arg2,arg3)
end

function getdelim(arg1,arg2,arg3::Cint,arg4)
    ccall((:getdelim,stdio),ssize_t,(Ptr{Cstring},Ptr{Csize_t},Cint,Ptr{FILE}),arg1,arg2,arg3,arg4)
end

function getline(arg1,arg2,arg3)
    ccall((:getline,stdio),ssize_t,(Ptr{Cstring},Ptr{Csize_t},Ptr{FILE}),arg1,arg2,arg3)
end

function ctermid_r(arg1)
    ccall((:ctermid_r,stdio),Cstring,(Cstring,),arg1)
end

function fgetln(arg1,arg2)
    ccall((:fgetln,stdio),Cstring,(Ptr{FILE},Ptr{Csize_t}),arg1,arg2)
end

function fmtcheck(arg1,arg2)
    ccall((:fmtcheck,stdio),Cstring,(Cstring,Cstring),arg1,arg2)
end

function fpurge(arg1)
    ccall((:fpurge,stdio),Cint,(Ptr{FILE},),arg1)
end

function setbuffer(arg1,arg2,arg3::Cint)
    ccall((:setbuffer,stdio),Void,(Ptr{FILE},Cstring,Cint),arg1,arg2,arg3)
end

function setlinebuf(arg1)
    ccall((:setlinebuf,stdio),Cint,(Ptr{FILE},),arg1)
end

function vasprintf(arg1,arg2,arg3::va_list)
    ccall((:vasprintf,stdio),Cint,(Ptr{Cstring},Cstring,va_list),arg1,arg2,arg3)
end

function zopen(arg1,arg2,arg3::Cint)
    ccall((:zopen,stdio),Ptr{FILE},(Cstring,Cstring,Cint),arg1,arg2,arg3)
end

function funopen(arg1,arg2,arg3,arg4,arg5)
    ccall((:funopen,stdio),Ptr{FILE},(Ptr{Void},Ptr{Void},Ptr{Void},Ptr{Void},Ptr{Void}),arg1,arg2,arg3,arg4,arg5)
end

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,cvode),Ptr{Void},(Cint,Cint),lmm,iter)
end

function CVodeSetErrHandlerFn(cvode_mem,ehfun::CVErrHandlerFn,eh_data)
    ccall((:CVodeSetErrHandlerFn,cvode),Cint,(Ptr{Void},CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem,errfp)
    ccall((:CVodeSetErrFile,cvode),Cint,(Ptr{Void},Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem,user_data)
    ccall((:CVodeSetUserData,cvode),Cint,(Ptr{Void},Ptr{Void}),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem,maxord::Cint)
    ccall((:CVodeSetMaxOrd,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem,mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,cvode),Cint,(Ptr{Void},Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem,mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,cvode),Cint,(Ptr{Void},Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem,stldet::Cint)
    ccall((:CVodeSetStabLimDet,cvode),Cint,(Ptr{Void},Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem,hin::realtype)
    ccall((:CVodeSetInitStep,cvode),Cint,(Ptr{Void},realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem,hmin::realtype)
    ccall((:CVodeSetMinStep,cvode),Cint,(Ptr{Void},realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem,hmax::realtype)
    ccall((:CVodeSetMaxStep,cvode),Cint,(Ptr{Void},realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem,tstop::realtype)
    ccall((:CVodeSetStopTime,cvode),Cint,(Ptr{Void},realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem,maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem,maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem,maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,cvode),Cint,(Ptr{Void},realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem,iter::Cint)
    ccall((:CVodeSetIterType,cvode),Cint,(Ptr{Void},Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem,rootdir)
    ccall((:CVodeSetRootDirection,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem)
    ccall((:CVodeSetNoInactiveRootWarn,cvode),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeInit(cvode_mem,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,cvode),Cint,(Ptr{Void},CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,cvode),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,cvode),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,cvode),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,cvode),Cint,(Ptr{Void},CVEwtFn),cvode_mem,efun)
end

function CVodeRootInit(cvode_mem,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,cvode),Cint,(Ptr{Void},Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVode(cvode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:CVode,cvode),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,cvode),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetWorkSpace(cvode_mem,lenrw,leniw)
    ccall((:CVodeGetWorkSpace,cvode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem,nsteps)
    ccall((:CVodeGetNumSteps,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem,nfevals)
    ccall((:CVodeGetNumRhsEvals,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem,nlinsetups)
    ccall((:CVodeGetNumLinSolvSetups,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem,netfails)
    ccall((:CVodeGetNumErrTestFails,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem,qlast)
    ccall((:CVodeGetLastOrder,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem,qcur)
    ccall((:CVodeGetCurrentOrder,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem,nslred)
    ccall((:CVodeGetNumStabLimOrderReds,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem,hinused)
    ccall((:CVodeGetActualInitStep,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem,hlast)
    ccall((:CVodeGetLastStep,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem,hcur)
    ccall((:CVodeGetCurrentStep,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem,tcur)
    ccall((:CVodeGetCurrentTime,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem,tolsfac)
    ccall((:CVodeGetTolScaleFactor,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,cvode),Cint,(Ptr{Void},N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,cvode),Cint,(Ptr{Void},N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem,ngevals)
    ccall((:CVodeGetNumGEvals,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem,rootsfound)
    ccall((:CVodeGetRootInfo,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    ccall((:CVodeGetIntegratorStats,cvode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem,nniters)
    ccall((:CVodeGetNumNonlinSolvIters,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem,nncfails)
    ccall((:CVodeGetNumNonlinSolvConvFails,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem,nniters,nncfails)
    ccall((:CVodeGetNonlinSolvStats,cvode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,cvode),Cstring,(Clong,),flag)
end

function CVodeFree(cvode_mem)
    ccall((:CVodeFree,cvode),Void,(Ptr{Ptr{Void}},),cvode_mem)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Clong,N::Clong)
    ccall((:NewDenseMat,sundials_direct),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:NewBandMat,sundials_direct),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,sundials_direct),Void,(DlsMat,),A)
end

function NewIntArray(N::Cint)
    ccall((:NewIntArray,sundials_direct),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Clong)
    ccall((:NewLintArray,sundials_direct),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Clong)
    ccall((:NewRealArray,sundials_direct),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p)
    ccall((:DestroyArray,sundials_direct),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,sundials_direct),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,sundials_direct),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,sundials_direct),Void,(DlsMat,),A)
end

function newDenseMat(m::Clong,n::Clong)
    ccall((:newDenseMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Clong,smu::Clong,ml::Clong)
    ccall((:newBandMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a)
    ccall((:destroyMat,sundials_direct),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Cint)
    ccall((:newIntArray,sundials_direct),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Clong)
    ccall((:newLintArray,sundials_direct),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Clong)
    ccall((:newRealArray,sundials_direct),Ptr{realtype},(Clong,),m)
end

function destroyArray(v)
    ccall((:destroyArray,sundials_direct),Void,(Ptr{Void},),v)
end

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function CVDlsSetDenseJacFn(cvode_mem,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,cvode_direct),Cint,(Ptr{Void},CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,cvode_direct),Cint,(Ptr{Void},CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVDlsGetWorkSpace,cvode_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem,njevals)
    ccall((:CVDlsGetNumJacEvals,cvode_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals,cvode_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem,flag)
    ccall((:CVDlsGetLastFlag,cvode_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,cvode_direct),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function CVSpilsSetPrecType(cvode_mem,pretype::Cint)
    ccall((:CVSpilsSetPrecType,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem,gstype::Cint)
    ccall((:CVSpilsSetGSType,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem,maxl::Cint)
    ccall((:CVSpilsSetMaxl,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,cvode_spils),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,cvode_spils),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,cvode_spils),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVSpilsGetWorkSpace,cvode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    ccall((:CVSpilsGetNumPrecEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    ccall((:CVSpilsGetNumPrecSolves,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    ccall((:CVSpilsGetNumLinIters,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    ccall((:CVSpilsGetNumConvFails,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    ccall((:CVSpilsGetNumJtimesEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    ccall((:CVSpilsGetLastFlag,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,cvode_spils),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Clong,N::Clong)
    ccall((:NewDenseMat,sundials_direct),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:NewBandMat,sundials_direct),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,sundials_direct),Void,(DlsMat,),A)
end

function NewIntArray(N::Cint)
    ccall((:NewIntArray,sundials_direct),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Clong)
    ccall((:NewLintArray,sundials_direct),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Clong)
    ccall((:NewRealArray,sundials_direct),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p)
    ccall((:DestroyArray,sundials_direct),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,sundials_direct),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,sundials_direct),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,sundials_direct),Void,(DlsMat,),A)
end

function newDenseMat(m::Clong,n::Clong)
    ccall((:newDenseMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Clong,smu::Clong,ml::Clong)
    ccall((:newBandMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a)
    ccall((:destroyMat,sundials_direct),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Cint)
    ccall((:newIntArray,sundials_direct),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Clong)
    ccall((:newLintArray,sundials_direct),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Clong)
    ccall((:newRealArray,sundials_direct),Ptr{realtype},(Clong,),m)
end

function destroyArray(v)
    ccall((:destroyArray,sundials_direct),Void,(Ptr{Void},),v)
end

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function CVDlsSetDenseJacFn(cvode_mem,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,cvode_direct),Cint,(Ptr{Void},CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,cvode_direct),Cint,(Ptr{Void},CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVDlsGetWorkSpace,cvode_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem,njevals)
    ccall((:CVDlsGetNumJacEvals,cvode_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals,cvode_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem,flag)
    ccall((:CVDlsGetLastFlag,cvode_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,cvode_direct),Cstring,(Clong,),flag)
end

function BandGBTRF(A::DlsMat,p)
    ccall((:BandGBTRF,sundials_band),Clong,(DlsMat,Ptr{Clong}),A,p)
end

function bandGBTRF(a,n::Clong,mu::Clong,ml::Clong,smu::Clong,p)
    ccall((:bandGBTRF,sundials_band),Clong,(Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong,Ptr{Clong}),a,n,mu,ml,smu,p)
end

function BandGBTRS(A::DlsMat,p,b)
    ccall((:BandGBTRS,sundials_band),Void,(DlsMat,Ptr{Clong},Ptr{realtype}),A,p,b)
end

function bandGBTRS(a,n::Clong,smu::Clong,ml::Clong,p,b)
    ccall((:bandGBTRS,sundials_band),Void,(Ptr{Ptr{realtype}},Clong,Clong,Clong,Ptr{Clong},Ptr{realtype}),a,n,smu,ml,p,b)
end

function BandCopy(A::DlsMat,B::DlsMat,copymu::Clong,copyml::Clong)
    ccall((:BandCopy,sundials_band),Void,(DlsMat,DlsMat,Clong,Clong),A,B,copymu,copyml)
end

function bandCopy(a,b,n::Clong,a_smu::Clong,b_smu::Clong,copymu::Clong,copyml::Clong)
    ccall((:bandCopy,sundials_band),Void,(Ptr{Ptr{realtype}},Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong,Clong),a,b,n,a_smu,b_smu,copymu,copyml)
end

function BandScale(c::realtype,A::DlsMat)
    ccall((:BandScale,sundials_band),Void,(realtype,DlsMat),c,A)
end

function bandScale(c::realtype,a,n::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:bandScale,sundials_band),Void,(realtype,Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong),c,a,n,mu,ml,smu)
end

function bandAddIdentity(a,n::Clong,smu::Clong)
    ccall((:bandAddIdentity,sundials_band),Void,(Ptr{Ptr{realtype}},Clong,Clong),a,n,smu)
end

function BandMatvec(A::DlsMat,x,y)
    ccall((:BandMatvec,sundials_band),Void,(DlsMat,Ptr{realtype},Ptr{realtype}),A,x,y)
end

function bandMatvec(a,x,y,n::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:bandMatvec,sundials_band),Void,(Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype},Clong,Clong,Clong,Clong),a,x,y,n,mu,ml,smu)
end

function CVBand(cvode_mem,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:CVBand,cvode_band),Cint,(Ptr{Void},Clong,Clong,Clong),cvode_mem,N,mupper,mlower)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function CVBandPrecInit(cvode_mem,N::Clong,mu::Clong,ml::Clong)
    ccall((:CVBandPrecInit,cvode_bandpre),Cint,(Ptr{Void},Clong,Clong,Clong),cvode_mem,N,mu,ml)
end

function CVBandPrecGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVBandPrecGetWorkSpace,cvode_bandpre),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBandPrecGetNumRhsEvals(cvode_mem,nfevalsBP)
    ccall((:CVBandPrecGetNumRhsEvals,cvode_bandpre),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsBP)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function CVBBDPrecInit(cvode_mem,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,cvode_bbdpre),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function CVBBDPrecReInit(cvode_mem,mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:CVBBDPrecReInit,cvode_bbdpre),Cint,(Ptr{Void},Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVBBDPrecGetWorkSpace,cvode_bbdpre),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem,ngevalsBBDP)
    ccall((:CVBBDPrecGetNumGfnEvals,cvode_bbdpre),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevalsBBDP)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Clong,N::Clong)
    ccall((:NewDenseMat,sundials_direct),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:NewBandMat,sundials_direct),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,sundials_direct),Void,(DlsMat,),A)
end

function NewIntArray(N::Cint)
    ccall((:NewIntArray,sundials_direct),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Clong)
    ccall((:NewLintArray,sundials_direct),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Clong)
    ccall((:NewRealArray,sundials_direct),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p)
    ccall((:DestroyArray,sundials_direct),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,sundials_direct),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,sundials_direct),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,sundials_direct),Void,(DlsMat,),A)
end

function newDenseMat(m::Clong,n::Clong)
    ccall((:newDenseMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Clong,smu::Clong,ml::Clong)
    ccall((:newBandMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a)
    ccall((:destroyMat,sundials_direct),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Cint)
    ccall((:newIntArray,sundials_direct),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Clong)
    ccall((:newLintArray,sundials_direct),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Clong)
    ccall((:newRealArray,sundials_direct),Ptr{realtype},(Clong,),m)
end

function destroyArray(v)
    ccall((:destroyArray,sundials_direct),Void,(Ptr{Void},),v)
end

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function CVDlsSetDenseJacFn(cvode_mem,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,cvode_direct),Cint,(Ptr{Void},CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,cvode_direct),Cint,(Ptr{Void},CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVDlsGetWorkSpace,cvode_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem,njevals)
    ccall((:CVDlsGetNumJacEvals,cvode_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVDlsGetNumRhsEvals,cvode_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem,flag)
    ccall((:CVDlsGetLastFlag,cvode_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,cvode_direct),Cstring,(Clong,),flag)
end

function DenseGETRF(A::DlsMat,p)
    ccall((:DenseGETRF,sundials_dense),Clong,(DlsMat,Ptr{Clong}),A,p)
end

function DenseGETRS(A::DlsMat,p,b)
    ccall((:DenseGETRS,sundials_dense),Void,(DlsMat,Ptr{Clong},Ptr{realtype}),A,p,b)
end

function denseGETRF(a,m::Clong,n::Clong,p)
    ccall((:denseGETRF,sundials_dense),Clong,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{Clong}),a,m,n,p)
end

function denseGETRS(a,n::Clong,p,b)
    ccall((:denseGETRS,sundials_dense),Void,(Ptr{Ptr{realtype}},Clong,Ptr{Clong},Ptr{realtype}),a,n,p,b)
end

function DensePOTRF(A::DlsMat)
    ccall((:DensePOTRF,sundials_dense),Clong,(DlsMat,),A)
end

function DensePOTRS(A::DlsMat,b)
    ccall((:DensePOTRS,sundials_dense),Void,(DlsMat,Ptr{realtype}),A,b)
end

function densePOTRF(a,m::Clong)
    ccall((:densePOTRF,sundials_dense),Clong,(Ptr{Ptr{realtype}},Clong),a,m)
end

function densePOTRS(a,m::Clong,b)
    ccall((:densePOTRS,sundials_dense),Void,(Ptr{Ptr{realtype}},Clong,Ptr{realtype}),a,m,b)
end

function DenseGEQRF(A::DlsMat,beta,wrk)
    ccall((:DenseGEQRF,sundials_dense),Cint,(DlsMat,Ptr{realtype},Ptr{realtype}),A,beta,wrk)
end

function DenseORMQR(A::DlsMat,beta,vn,vm,wrk)
    ccall((:DenseORMQR,sundials_dense),Cint,(DlsMat,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),A,beta,vn,vm,wrk)
end

function denseGEQRF(a,m::Clong,n::Clong,beta,wrk)
    ccall((:denseGEQRF,sundials_dense),Cint,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{realtype},Ptr{realtype}),a,m,n,beta,wrk)
end

function denseORMQR(a,m::Clong,n::Clong,beta,v,w,wrk)
    ccall((:denseORMQR,sundials_dense),Cint,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),a,m,n,beta,v,w,wrk)
end

function DenseCopy(A::DlsMat,B::DlsMat)
    ccall((:DenseCopy,sundials_dense),Void,(DlsMat,DlsMat),A,B)
end

function denseCopy(a,b,m::Clong,n::Clong)
    ccall((:denseCopy,sundials_dense),Void,(Ptr{Ptr{realtype}},Ptr{Ptr{realtype}},Clong,Clong),a,b,m,n)
end

function DenseScale(c::realtype,A::DlsMat)
    ccall((:DenseScale,sundials_dense),Void,(realtype,DlsMat),c,A)
end

function denseScale(c::realtype,a,m::Clong,n::Clong)
    ccall((:denseScale,sundials_dense),Void,(realtype,Ptr{Ptr{realtype}},Clong,Clong),c,a,m,n)
end

function denseAddIdentity(a,n::Clong)
    ccall((:denseAddIdentity,sundials_dense),Void,(Ptr{Ptr{realtype}},Clong),a,n)
end

function DenseMatvec(A::DlsMat,x,y)
    ccall((:DenseMatvec,sundials_dense),Void,(DlsMat,Ptr{realtype},Ptr{realtype}),A,x,y)
end

function denseMatvec(a,x,y,m::Clong,n::Clong)
    ccall((:denseMatvec,sundials_dense),Void,(Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype},Clong,Clong),a,x,y,m,n)
end

function CVDense(cvode_mem,N::Clong)
    ccall((:CVDense,cvode_dense),Cint,(Ptr{Void},Clong),cvode_mem,N)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_diag.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function CVDiag(cvode_mem)
    ccall((:CVDiag,cvode_diag),Cint,(Ptr{Void},),cvode_mem)
end

function CVDiagGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVDiagGetWorkSpace,cvode_diag),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDiagGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVDiagGetNumRhsEvals,cvode_diag),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDiagGetLastFlag(cvode_mem,flag)
    ccall((:CVDiagGetLastFlag,cvode_diag),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName,cvode_diag),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function renameat(arg1::Cint,arg2,arg3::Cint,arg4)
    ccall((:renameat,stdio),Cint,(Cint,Cstring,Cint,Cstring),arg1,arg2,arg3,arg4)
end

function clearerr(arg1)
    ccall((:clearerr,stdio),Void,(Ptr{FILE},),arg1)
end

function fclose(arg1)
    ccall((:fclose,stdio),Cint,(Ptr{FILE},),arg1)
end

function feof(arg1)
    ccall((:feof,stdio),Cint,(Ptr{FILE},),arg1)
end

function ferror(arg1)
    ccall((:ferror,stdio),Cint,(Ptr{FILE},),arg1)
end

function fflush(arg1)
    ccall((:fflush,stdio),Cint,(Ptr{FILE},),arg1)
end

function fgetc(arg1)
    ccall((:fgetc,stdio),Cint,(Ptr{FILE},),arg1)
end

function fgetpos(arg1,arg2)
    ccall((:fgetpos,stdio),Cint,(Ptr{FILE},Ptr{fpos_t}),arg1,arg2)
end

function fgets(arg1,arg2::Cint,arg3)
    ccall((:fgets,stdio),Cstring,(Cstring,Cint,Ptr{FILE}),arg1,arg2,arg3)
end

function fopen(arg1,arg2)
    ccall((:fopen,stdio),Ptr{FILE},(Cstring,Cstring),arg1,arg2)
end

function fputc(arg1::Cint,arg2)
    ccall((:fputc,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function fputs(arg1,arg2)
    ccall((:fputs,stdio),Cint,(Cstring,Ptr{FILE}),arg1,arg2)
end

function fread(arg1,arg2::Csize_t,arg3::Csize_t,arg4)
    ccall((:fread,stdio),Csize_t,(Ptr{Void},Csize_t,Csize_t,Ptr{FILE}),arg1,arg2,arg3,arg4)
end

function freopen(arg1,arg2,arg3)
    ccall((:freopen,stdio),Ptr{FILE},(Cstring,Cstring,Ptr{FILE}),arg1,arg2,arg3)
end

function fseek(arg1,arg2::Clong,arg3::Cint)
    ccall((:fseek,stdio),Cint,(Ptr{FILE},Clong,Cint),arg1,arg2,arg3)
end

function fsetpos(arg1,arg2)
    ccall((:fsetpos,stdio),Cint,(Ptr{FILE},Ptr{fpos_t}),arg1,arg2)
end

function ftell(arg1)
    ccall((:ftell,stdio),Clong,(Ptr{FILE},),arg1)
end

function fwrite(arg1,arg2::Csize_t,arg3::Csize_t,arg4)
    ccall((:fwrite,stdio),Csize_t,(Ptr{Void},Csize_t,Csize_t,Ptr{FILE}),arg1,arg2,arg3,arg4)
end

function getc(arg1)
    ccall((:getc,stdio),Cint,(Ptr{FILE},),arg1)
end

function getchar()
    ccall((:getchar,stdio),Cint,())
end

function gets(arg1)
    ccall((:gets,stdio),Cstring,(Cstring,),arg1)
end

function perror(arg1)
    ccall((:perror,stdio),Void,(Cstring,),arg1)
end

function putc(arg1::Cint,arg2)
    ccall((:putc,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function putchar(arg1::Cint)
    ccall((:putchar,stdio),Cint,(Cint,),arg1)
end

function puts(arg1)
    ccall((:puts,stdio),Cint,(Cstring,),arg1)
end

function remove(arg1)
    ccall((:remove,stdio),Cint,(Cstring,),arg1)
end

function rename(arg1,arg2)
    ccall((:rename,stdio),Cint,(Cstring,Cstring),arg1,arg2)
end

function rewind(arg1)
    ccall((:rewind,stdio),Void,(Ptr{FILE},),arg1)
end

function setbuf(arg1,arg2)
    ccall((:setbuf,stdio),Void,(Ptr{FILE},Cstring),arg1,arg2)
end

function setvbuf(arg1,arg2,arg3::Cint,arg4::Csize_t)
    ccall((:setvbuf,stdio),Cint,(Ptr{FILE},Cstring,Cint,Csize_t),arg1,arg2,arg3,arg4)
end

function tmpfile()
    ccall((:tmpfile,stdio),Ptr{FILE},())
end

function tmpnam(arg1)
    ccall((:tmpnam,stdio),Cstring,(Cstring,),arg1)
end

function ungetc(arg1::Cint,arg2)
    ccall((:ungetc,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function vfprintf(arg1,arg2,arg3::va_list)
    ccall((:vfprintf,stdio),Cint,(Ptr{FILE},Cstring,va_list),arg1,arg2,arg3)
end

function vprintf(arg1,arg2)
    ccall((:vprintf,stdio),Cint,(Cstring,Ptr{__va_list_tag}),arg1,arg2)
end

function vsprintf(arg1,arg2,arg3)
    ccall((:vsprintf,stdio),Cint,(Cstring,Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3)
end

function ctermid(arg1)
    ccall((:ctermid,stdio),Cstring,(Cstring,),arg1)
end

function fdopen(arg1::Cint,arg2)
    ccall((:fdopen,stdio),Ptr{FILE},(Cint,Cstring),arg1,arg2)
end

function fileno(arg1)
    ccall((:fileno,stdio),Cint,(Ptr{FILE},),arg1)
end

function pclose(arg1)
    ccall((:pclose,stdio),Cint,(Ptr{FILE},),arg1)
end

function popen(arg1,arg2)
    ccall((:popen,stdio),Ptr{FILE},(Cstring,Cstring),arg1,arg2)
end

function flockfile(arg1)
    ccall((:flockfile,stdio),Void,(Ptr{FILE},),arg1)
end

function ftrylockfile(arg1)
    ccall((:ftrylockfile,stdio),Cint,(Ptr{FILE},),arg1)
end

function funlockfile(arg1)
    ccall((:funlockfile,stdio),Void,(Ptr{FILE},),arg1)
end

function getc_unlocked(arg1)
    ccall((:getc_unlocked,stdio),Cint,(Ptr{FILE},),arg1)
end

function getchar_unlocked()
    ccall((:getchar_unlocked,stdio),Cint,())
end

function putc_unlocked(arg1::Cint,arg2)
    ccall((:putc_unlocked,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function putchar_unlocked(arg1::Cint)
    ccall((:putchar_unlocked,stdio),Cint,(Cint,),arg1)
end

function getw(arg1)
    ccall((:getw,stdio),Cint,(Ptr{FILE},),arg1)
end

function putw(arg1::Cint,arg2)
    ccall((:putw,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function tempnam(arg1,arg2)
    ccall((:tempnam,stdio),Cstring,(Cstring,Cstring),arg1,arg2)
end

function vfscanf(arg1,arg2,arg3)
    ccall((:vfscanf,stdio),Cint,(Ptr{FILE},Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3)
end

function vscanf(arg1,arg2)
    ccall((:vscanf,stdio),Cint,(Cstring,Ptr{__va_list_tag}),arg1,arg2)
end

function vsnprintf(arg1,arg2::Culong,arg3,arg4)
    ccall((:vsnprintf,stdio),Cint,(Cstring,Culong,Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3,arg4)
end

function vsscanf(arg1,arg2,arg3)
    ccall((:vsscanf,stdio),Cint,(Cstring,Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3)
end

function vdprintf(arg1::Cint,arg2,arg3::va_list)
    ccall((:vdprintf,stdio),Cint,(Cint,Cstring,va_list),arg1,arg2,arg3)
end

function getdelim(arg1,arg2,arg3::Cint,arg4)
    ccall((:getdelim,stdio),ssize_t,(Ptr{Cstring},Ptr{Csize_t},Cint,Ptr{FILE}),arg1,arg2,arg3,arg4)
end

function getline(arg1,arg2,arg3)
    ccall((:getline,stdio),ssize_t,(Ptr{Cstring},Ptr{Csize_t},Ptr{FILE}),arg1,arg2,arg3)
end

function ctermid_r(arg1)
    ccall((:ctermid_r,stdio),Cstring,(Cstring,),arg1)
end

function fgetln(arg1,arg2)
    ccall((:fgetln,stdio),Cstring,(Ptr{FILE},Ptr{Csize_t}),arg1,arg2)
end

function fmtcheck(arg1,arg2)
    ccall((:fmtcheck,stdio),Cstring,(Cstring,Cstring),arg1,arg2)
end

function fpurge(arg1)
    ccall((:fpurge,stdio),Cint,(Ptr{FILE},),arg1)
end

function setbuffer(arg1,arg2,arg3::Cint)
    ccall((:setbuffer,stdio),Void,(Ptr{FILE},Cstring,Cint),arg1,arg2,arg3)
end

function setlinebuf(arg1)
    ccall((:setlinebuf,stdio),Cint,(Ptr{FILE},),arg1)
end

function vasprintf(arg1,arg2,arg3::va_list)
    ccall((:vasprintf,stdio),Cint,(Ptr{Cstring},Cstring,va_list),arg1,arg2,arg3)
end

function zopen(arg1,arg2,arg3::Cint)
    ccall((:zopen,stdio),Ptr{FILE},(Cstring,Cstring,Cint),arg1,arg2,arg3)
end

function funopen(arg1,arg2,arg3,arg4,arg5)
    ccall((:funopen,stdio),Ptr{FILE},(Ptr{Void},Ptr{Void},Ptr{Void},Ptr{Void},Ptr{Void}),arg1,arg2,arg3,arg4,arg5)
end

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,cvode),Ptr{Void},(Cint,Cint),lmm,iter)
end

function CVodeSetErrHandlerFn(cvode_mem,ehfun::CVErrHandlerFn,eh_data)
    ccall((:CVodeSetErrHandlerFn,cvode),Cint,(Ptr{Void},CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem,errfp)
    ccall((:CVodeSetErrFile,cvode),Cint,(Ptr{Void},Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem,user_data)
    ccall((:CVodeSetUserData,cvode),Cint,(Ptr{Void},Ptr{Void}),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem,maxord::Cint)
    ccall((:CVodeSetMaxOrd,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem,mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,cvode),Cint,(Ptr{Void},Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem,mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,cvode),Cint,(Ptr{Void},Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem,stldet::Cint)
    ccall((:CVodeSetStabLimDet,cvode),Cint,(Ptr{Void},Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem,hin::realtype)
    ccall((:CVodeSetInitStep,cvode),Cint,(Ptr{Void},realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem,hmin::realtype)
    ccall((:CVodeSetMinStep,cvode),Cint,(Ptr{Void},realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem,hmax::realtype)
    ccall((:CVodeSetMaxStep,cvode),Cint,(Ptr{Void},realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem,tstop::realtype)
    ccall((:CVodeSetStopTime,cvode),Cint,(Ptr{Void},realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem,maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem,maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem,maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,cvode),Cint,(Ptr{Void},realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem,iter::Cint)
    ccall((:CVodeSetIterType,cvode),Cint,(Ptr{Void},Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem,rootdir)
    ccall((:CVodeSetRootDirection,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem)
    ccall((:CVodeSetNoInactiveRootWarn,cvode),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeInit(cvode_mem,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,cvode),Cint,(Ptr{Void},CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,cvode),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,cvode),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,cvode),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,cvode),Cint,(Ptr{Void},CVEwtFn),cvode_mem,efun)
end

function CVodeRootInit(cvode_mem,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,cvode),Cint,(Ptr{Void},Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVode(cvode_mem,tout::realtype,yout::N_Vector,tret,itask::Cint)
    ccall((:CVode,cvode),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,cvode),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetWorkSpace(cvode_mem,lenrw,leniw)
    ccall((:CVodeGetWorkSpace,cvode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem,nsteps)
    ccall((:CVodeGetNumSteps,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem,nfevals)
    ccall((:CVodeGetNumRhsEvals,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem,nlinsetups)
    ccall((:CVodeGetNumLinSolvSetups,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem,netfails)
    ccall((:CVodeGetNumErrTestFails,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem,qlast)
    ccall((:CVodeGetLastOrder,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem,qcur)
    ccall((:CVodeGetCurrentOrder,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem,nslred)
    ccall((:CVodeGetNumStabLimOrderReds,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem,hinused)
    ccall((:CVodeGetActualInitStep,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem,hlast)
    ccall((:CVodeGetLastStep,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem,hcur)
    ccall((:CVodeGetCurrentStep,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem,tcur)
    ccall((:CVodeGetCurrentTime,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem,tolsfac)
    ccall((:CVodeGetTolScaleFactor,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,cvode),Cint,(Ptr{Void},N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,cvode),Cint,(Ptr{Void},N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem,ngevals)
    ccall((:CVodeGetNumGEvals,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem,rootsfound)
    ccall((:CVodeGetRootInfo,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    ccall((:CVodeGetIntegratorStats,cvode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem,nniters)
    ccall((:CVodeGetNumNonlinSolvIters,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem,nncfails)
    ccall((:CVodeGetNumNonlinSolvConvFails,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem,nniters,nncfails)
    ccall((:CVodeGetNonlinSolvStats,cvode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,cvode),Cstring,(Clong,),flag)
end

function CVodeFree(cvode_mem)
    ccall((:CVodeFree,cvode),Void,(Ptr{Ptr{Void}},),cvode_mem)
end

function cvEwtSet(ycur::N_Vector,weight::N_Vector,data)
    ccall((:cvEwtSet,cvode_impl),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function cvErrHandler(error_code::Cint,_module,_function,msg,data)
    ccall((:cvErrHandler,cvode_impl),Void,(Cint,Cstring,Cstring,Cstring,Ptr{Void}),error_code,_module,_function,msg,data)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_sparse.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function renameat(arg1::Cint,arg2,arg3::Cint,arg4)
    ccall((:renameat,stdio),Cint,(Cint,Cstring,Cint,Cstring),arg1,arg2,arg3,arg4)
end

function clearerr(arg1)
    ccall((:clearerr,stdio),Void,(Ptr{FILE},),arg1)
end

function fclose(arg1)
    ccall((:fclose,stdio),Cint,(Ptr{FILE},),arg1)
end

function feof(arg1)
    ccall((:feof,stdio),Cint,(Ptr{FILE},),arg1)
end

function ferror(arg1)
    ccall((:ferror,stdio),Cint,(Ptr{FILE},),arg1)
end

function fflush(arg1)
    ccall((:fflush,stdio),Cint,(Ptr{FILE},),arg1)
end

function fgetc(arg1)
    ccall((:fgetc,stdio),Cint,(Ptr{FILE},),arg1)
end

function fgetpos(arg1,arg2)
    ccall((:fgetpos,stdio),Cint,(Ptr{FILE},Ptr{fpos_t}),arg1,arg2)
end

function fgets(arg1,arg2::Cint,arg3)
    ccall((:fgets,stdio),Cstring,(Cstring,Cint,Ptr{FILE}),arg1,arg2,arg3)
end

function fopen(arg1,arg2)
    ccall((:fopen,stdio),Ptr{FILE},(Cstring,Cstring),arg1,arg2)
end

function fputc(arg1::Cint,arg2)
    ccall((:fputc,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function fputs(arg1,arg2)
    ccall((:fputs,stdio),Cint,(Cstring,Ptr{FILE}),arg1,arg2)
end

function fread(arg1,arg2::Csize_t,arg3::Csize_t,arg4)
    ccall((:fread,stdio),Csize_t,(Ptr{Void},Csize_t,Csize_t,Ptr{FILE}),arg1,arg2,arg3,arg4)
end

function freopen(arg1,arg2,arg3)
    ccall((:freopen,stdio),Ptr{FILE},(Cstring,Cstring,Ptr{FILE}),arg1,arg2,arg3)
end

function fseek(arg1,arg2::Clong,arg3::Cint)
    ccall((:fseek,stdio),Cint,(Ptr{FILE},Clong,Cint),arg1,arg2,arg3)
end

function fsetpos(arg1,arg2)
    ccall((:fsetpos,stdio),Cint,(Ptr{FILE},Ptr{fpos_t}),arg1,arg2)
end

function ftell(arg1)
    ccall((:ftell,stdio),Clong,(Ptr{FILE},),arg1)
end

function fwrite(arg1,arg2::Csize_t,arg3::Csize_t,arg4)
    ccall((:fwrite,stdio),Csize_t,(Ptr{Void},Csize_t,Csize_t,Ptr{FILE}),arg1,arg2,arg3,arg4)
end

function getc(arg1)
    ccall((:getc,stdio),Cint,(Ptr{FILE},),arg1)
end

function getchar()
    ccall((:getchar,stdio),Cint,())
end

function gets(arg1)
    ccall((:gets,stdio),Cstring,(Cstring,),arg1)
end

function perror(arg1)
    ccall((:perror,stdio),Void,(Cstring,),arg1)
end

function putc(arg1::Cint,arg2)
    ccall((:putc,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function putchar(arg1::Cint)
    ccall((:putchar,stdio),Cint,(Cint,),arg1)
end

function puts(arg1)
    ccall((:puts,stdio),Cint,(Cstring,),arg1)
end

function remove(arg1)
    ccall((:remove,stdio),Cint,(Cstring,),arg1)
end

function rename(arg1,arg2)
    ccall((:rename,stdio),Cint,(Cstring,Cstring),arg1,arg2)
end

function rewind(arg1)
    ccall((:rewind,stdio),Void,(Ptr{FILE},),arg1)
end

function setbuf(arg1,arg2)
    ccall((:setbuf,stdio),Void,(Ptr{FILE},Cstring),arg1,arg2)
end

function setvbuf(arg1,arg2,arg3::Cint,arg4::Csize_t)
    ccall((:setvbuf,stdio),Cint,(Ptr{FILE},Cstring,Cint,Csize_t),arg1,arg2,arg3,arg4)
end

function tmpfile()
    ccall((:tmpfile,stdio),Ptr{FILE},())
end

function tmpnam(arg1)
    ccall((:tmpnam,stdio),Cstring,(Cstring,),arg1)
end

function ungetc(arg1::Cint,arg2)
    ccall((:ungetc,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function vfprintf(arg1,arg2,arg3::va_list)
    ccall((:vfprintf,stdio),Cint,(Ptr{FILE},Cstring,va_list),arg1,arg2,arg3)
end

function vprintf(arg1,arg2)
    ccall((:vprintf,stdio),Cint,(Cstring,Ptr{__va_list_tag}),arg1,arg2)
end

function vsprintf(arg1,arg2,arg3)
    ccall((:vsprintf,stdio),Cint,(Cstring,Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3)
end

function ctermid(arg1)
    ccall((:ctermid,stdio),Cstring,(Cstring,),arg1)
end

function fdopen(arg1::Cint,arg2)
    ccall((:fdopen,stdio),Ptr{FILE},(Cint,Cstring),arg1,arg2)
end

function fileno(arg1)
    ccall((:fileno,stdio),Cint,(Ptr{FILE},),arg1)
end

function pclose(arg1)
    ccall((:pclose,stdio),Cint,(Ptr{FILE},),arg1)
end

function popen(arg1,arg2)
    ccall((:popen,stdio),Ptr{FILE},(Cstring,Cstring),arg1,arg2)
end

function flockfile(arg1)
    ccall((:flockfile,stdio),Void,(Ptr{FILE},),arg1)
end

function ftrylockfile(arg1)
    ccall((:ftrylockfile,stdio),Cint,(Ptr{FILE},),arg1)
end

function funlockfile(arg1)
    ccall((:funlockfile,stdio),Void,(Ptr{FILE},),arg1)
end

function getc_unlocked(arg1)
    ccall((:getc_unlocked,stdio),Cint,(Ptr{FILE},),arg1)
end

function getchar_unlocked()
    ccall((:getchar_unlocked,stdio),Cint,())
end

function putc_unlocked(arg1::Cint,arg2)
    ccall((:putc_unlocked,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function putchar_unlocked(arg1::Cint)
    ccall((:putchar_unlocked,stdio),Cint,(Cint,),arg1)
end

function getw(arg1)
    ccall((:getw,stdio),Cint,(Ptr{FILE},),arg1)
end

function putw(arg1::Cint,arg2)
    ccall((:putw,stdio),Cint,(Cint,Ptr{FILE}),arg1,arg2)
end

function tempnam(arg1,arg2)
    ccall((:tempnam,stdio),Cstring,(Cstring,Cstring),arg1,arg2)
end

function vfscanf(arg1,arg2,arg3)
    ccall((:vfscanf,stdio),Cint,(Ptr{FILE},Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3)
end

function vscanf(arg1,arg2)
    ccall((:vscanf,stdio),Cint,(Cstring,Ptr{__va_list_tag}),arg1,arg2)
end

function vsnprintf(arg1,arg2::Culong,arg3,arg4)
    ccall((:vsnprintf,stdio),Cint,(Cstring,Culong,Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3,arg4)
end

function vsscanf(arg1,arg2,arg3)
    ccall((:vsscanf,stdio),Cint,(Cstring,Cstring,Ptr{__va_list_tag}),arg1,arg2,arg3)
end

function vdprintf(arg1::Cint,arg2,arg3::va_list)
    ccall((:vdprintf,stdio),Cint,(Cint,Cstring,va_list),arg1,arg2,arg3)
end

function getdelim(arg1,arg2,arg3::Cint,arg4)
    ccall((:getdelim,stdio),ssize_t,(Ptr{Cstring},Ptr{Csize_t},Cint,Ptr{FILE}),arg1,arg2,arg3,arg4)
end

function getline(arg1,arg2,arg3)
    ccall((:getline,stdio),ssize_t,(Ptr{Cstring},Ptr{Csize_t},Ptr{FILE}),arg1,arg2,arg3)
end

function ctermid_r(arg1)
    ccall((:ctermid_r,stdio),Cstring,(Cstring,),arg1)
end

function fgetln(arg1,arg2)
    ccall((:fgetln,stdio),Cstring,(Ptr{FILE},Ptr{Csize_t}),arg1,arg2)
end

function fmtcheck(arg1,arg2)
    ccall((:fmtcheck,stdio),Cstring,(Cstring,Cstring),arg1,arg2)
end

function fpurge(arg1)
    ccall((:fpurge,stdio),Cint,(Ptr{FILE},),arg1)
end

function setbuffer(arg1,arg2,arg3::Cint)
    ccall((:setbuffer,stdio),Void,(Ptr{FILE},Cstring,Cint),arg1,arg2,arg3)
end

function setlinebuf(arg1)
    ccall((:setlinebuf,stdio),Cint,(Ptr{FILE},),arg1)
end

function vasprintf(arg1,arg2,arg3::va_list)
    ccall((:vasprintf,stdio),Cint,(Ptr{Cstring},Cstring,va_list),arg1,arg2,arg3)
end

function zopen(arg1,arg2,arg3::Cint)
    ccall((:zopen,stdio),Ptr{FILE},(Cstring,Cstring,Cint),arg1,arg2,arg3)
end

function funopen(arg1,arg2,arg3,arg4,arg5)
    ccall((:funopen,stdio),Ptr{FILE},(Ptr{Void},Ptr{Void},Ptr{Void},Ptr{Void},Ptr{Void}),arg1,arg2,arg3,arg4,arg5)
end

function NewDenseMat(M::Clong,N::Clong)
    ccall((:NewDenseMat,sundials_direct),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:NewBandMat,sundials_direct),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,sundials_direct),Void,(DlsMat,),A)
end

function NewIntArray(N::Cint)
    ccall((:NewIntArray,sundials_direct),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Clong)
    ccall((:NewLintArray,sundials_direct),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Clong)
    ccall((:NewRealArray,sundials_direct),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p)
    ccall((:DestroyArray,sundials_direct),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,sundials_direct),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,sundials_direct),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,sundials_direct),Void,(DlsMat,),A)
end

function newDenseMat(m::Clong,n::Clong)
    ccall((:newDenseMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Clong,smu::Clong,ml::Clong)
    ccall((:newBandMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a)
    ccall((:destroyMat,sundials_direct),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Cint)
    ccall((:newIntArray,sundials_direct),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Clong)
    ccall((:newLintArray,sundials_direct),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Clong)
    ccall((:newRealArray,sundials_direct),Ptr{realtype},(Clong,),m)
end

function destroyArray(v)
    ccall((:destroyArray,sundials_direct),Void,(Ptr{Void},),v)
end

function SparseNewMat(M::Cint,N::Cint,NNZ::Cint,sparsetype::Cint)
    ccall((:SparseNewMat,sundials_sparse),SlsMat,(Cint,Cint,Cint,Cint),M,N,NNZ,sparsetype)
end

function SparseFromDenseMat(A::DlsMat,sparsetype::Cint)
    ccall((:SparseFromDenseMat,sundials_sparse),SlsMat,(DlsMat,Cint),A,sparsetype)
end

function SparseDestroyMat(A::SlsMat)
    ccall((:SparseDestroyMat,sundials_sparse),Cint,(SlsMat,),A)
end

function SparseSetMatToZero(A::SlsMat)
    ccall((:SparseSetMatToZero,sundials_sparse),Cint,(SlsMat,),A)
end

function SparseCopyMat(A::SlsMat,B::SlsMat)
    ccall((:SparseCopyMat,sundials_sparse),Cint,(SlsMat,SlsMat),A,B)
end

function SparseScaleMat(b::realtype,A::SlsMat)
    ccall((:SparseScaleMat,sundials_sparse),Cint,(realtype,SlsMat),b,A)
end

function SparseAddIdentityMat(A::SlsMat)
    ccall((:SparseAddIdentityMat,sundials_sparse),Cint,(SlsMat,),A)
end

function SparseAddMat(A::SlsMat,B::SlsMat)
    ccall((:SparseAddMat,sundials_sparse),Cint,(SlsMat,SlsMat),A,B)
end

function SparseReallocMat(A::SlsMat)
    ccall((:SparseReallocMat,sundials_sparse),Cint,(SlsMat,),A)
end

function SparseMatvec(A::SlsMat,x,y)
    ccall((:SparseMatvec,sundials_sparse),Cint,(SlsMat,Ptr{realtype},Ptr{realtype}),A,x,y)
end

function SparsePrintMat(A::SlsMat,outfile)
    ccall((:SparsePrintMat,sundials_sparse),Void,(SlsMat,Ptr{FILE}),A,outfile)
end

function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function CVSlsSetSparseJacFn(cvode_mem,jac::CVSlsSparseJacFn)
    ccall((:CVSlsSetSparseJacFn,cvode_sparse),Cint,(Ptr{Void},CVSlsSparseJacFn),cvode_mem,jac)
end

function CVSlsGetNumJacEvals(ida_mem,njevals)
    ccall((:CVSlsGetNumJacEvals,cvode_sparse),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njevals)
end

function CVSlsGetLastFlag(ida_mem,flag)
    ccall((:CVSlsGetLastFlag,cvode_sparse),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function CVSlsGetReturnFlagName(flag::Clong)
    ccall((:CVSlsGetReturnFlagName,cvode_sparse),Cstring,(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function CVSpilsSetPrecType(cvode_mem,pretype::Cint)
    ccall((:CVSpilsSetPrecType,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem,gstype::Cint)
    ccall((:CVSpilsSetGSType,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem,maxl::Cint)
    ccall((:CVSpilsSetMaxl,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,cvode_spils),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,cvode_spils),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,cvode_spils),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVSpilsGetWorkSpace,cvode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    ccall((:CVSpilsGetNumPrecEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    ccall((:CVSpilsGetNumPrecSolves,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    ccall((:CVSpilsGetNumLinIters,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    ccall((:CVSpilsGetNumConvFails,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    ccall((:CVSpilsGetNumJtimesEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    ccall((:CVSpilsGetLastFlag,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,cvode_spils),Cstring,(Clong,),flag)
end

function SpbcgMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpbcgMalloc,sundials_spbcgs),SpbcgMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpbcgSolve(mem::SpbcgMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,delta::realtype,P_data,sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:SpbcgSolve,sundials_spbcgs),Cint,(SpbcgMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SpbcgFree(mem::SpbcgMem)
    ccall((:SpbcgFree,sundials_spbcgs),Void,(SpbcgMem,),mem)
end

function CVSpbcg(cvode_mem,pretype::Cint,maxl::Cint)
    ccall((:CVSpbcg,cvode_spbcgs),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function CVSpilsSetPrecType(cvode_mem,pretype::Cint)
    ccall((:CVSpilsSetPrecType,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem,gstype::Cint)
    ccall((:CVSpilsSetGSType,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem,maxl::Cint)
    ccall((:CVSpilsSetMaxl,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,cvode_spils),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,cvode_spils),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,cvode_spils),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVSpilsGetWorkSpace,cvode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    ccall((:CVSpilsGetNumPrecEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    ccall((:CVSpilsGetNumPrecSolves,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    ccall((:CVSpilsGetNumLinIters,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    ccall((:CVSpilsGetNumConvFails,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    ccall((:CVSpilsGetNumJtimesEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    ccall((:CVSpilsGetLastFlag,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,cvode_spils),Cstring,(Clong,),flag)
end

function SpgmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpgmrMalloc,sundials_spgmr),SpgmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpgmrSolve(mem::SpgmrMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,gstype::Cint,delta::realtype,max_restarts::Cint,P_data,s1::N_Vector,s2::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:SpgmrSolve,sundials_spgmr),Cint,(SpgmrMem,Ptr{Void},N_Vector,N_Vector,Cint,Cint,realtype,Cint,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,gstype,delta,max_restarts,P_data,s1,s2,atimes,psolve,res_norm,nli,nps)
end

function SpgmrFree(mem::SpgmrMem)
    ccall((:SpgmrFree,sundials_spgmr),Void,(SpgmrMem,),mem)
end

function CVSpgmr(cvode_mem,pretype::Cint,maxl::Cint)
    ccall((:CVSpgmr,cvode_spgmr),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/cvode/cvode_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VGetVectorID(w::N_Vector)
    ccall((:N_VGetVectorID,sundials_nvector),N_Vector_ID,(N_Vector,),w)
end

function N_VClone(w::N_Vector)
    ccall((:N_VClone,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,sundials_nvector),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,sundials_nvector),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw,liw)
    ccall((:N_VSpace,sundials_nvector),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,sundials_nvector),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data,v::N_Vector)
    ccall((:N_VSetArrayPointer,sundials_nvector),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,sundials_nvector),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,sundials_nvector),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,sundials_nvector),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,sundials_nvector),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,sundials_nvector),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,sundials_nvector),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,sundials_nvector),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,sundials_nvector),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,sundials_nvector),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,sundials_nvector),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,sundials_nvector),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,sundials_nvector),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,sundials_nvector),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,sundials_nvector),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs,count::Cint)
    ccall((:N_VDestroyVectorArray,sundials_nvector),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v,h,k::Cint,p::Cint,new_vk_norm)
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v,h,k::Cint,p::Cint,new_vk_norm,temp::N_Vector,s)
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h,q,job::Cint)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h,q,b)
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function CVSpilsSetPrecType(cvode_mem,pretype::Cint)
    ccall((:CVSpilsSetPrecType,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem,gstype::Cint)
    ccall((:CVSpilsSetGSType,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem,maxl::Cint)
    ccall((:CVSpilsSetMaxl,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,cvode_spils),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,cvode_spils),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,cvode_spils),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    ccall((:CVSpilsGetWorkSpace,cvode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    ccall((:CVSpilsGetNumPrecEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    ccall((:CVSpilsGetNumPrecSolves,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    ccall((:CVSpilsGetNumLinIters,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    ccall((:CVSpilsGetNumConvFails,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    ccall((:CVSpilsGetNumJtimesEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    ccall((:CVSpilsGetNumRhsEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    ccall((:CVSpilsGetLastFlag,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,cvode_spils),Cstring,(Clong,),flag)
end

function SptfqmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SptfqmrMalloc,sundials_sptfqmr),SptfqmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SptfqmrSolve(mem::SptfqmrMem,A_data,x::N_Vector,b::N_Vector,pretype::Cint,delta::realtype,P_data,sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm,nli,nps)
    ccall((:SptfqmrSolve,sundials_sptfqmr),Cint,(SptfqmrMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SptfqmrFree(mem::SptfqmrMem)
    ccall((:SptfqmrFree,sundials_sptfqmr),Void,(SptfqmrMem,),mem)
end

function CVSptfqmr(cvode_mem,pretype::Cint,maxl::Cint)
    ccall((:CVSptfqmr,cvode_sptfqmr),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end
