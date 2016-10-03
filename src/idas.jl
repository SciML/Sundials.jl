# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/idas/idas.h
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

function IDACreate()
    ccall((:IDACreate,idas),Ptr{Void},())
end

function IDASetErrHandlerFn(ida_mem,ehfun::IDAErrHandlerFn,eh_data)
    ccall((:IDASetErrHandlerFn,idas),Cint,(Ptr{Void},IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

function IDASetErrFile(ida_mem,errfp)
    ccall((:IDASetErrFile,idas),Cint,(Ptr{Void},Ptr{FILE}),ida_mem,errfp)
end

function IDASetUserData(ida_mem,user_data)
    ccall((:IDASetUserData,idas),Cint,(Ptr{Void},Ptr{Void}),ida_mem,user_data)
end

function IDASetMaxOrd(ida_mem,maxord::Cint)
    ccall((:IDASetMaxOrd,idas),Cint,(Ptr{Void},Cint),ida_mem,maxord)
end

function IDASetMaxNumSteps(ida_mem,mxsteps::Clong)
    ccall((:IDASetMaxNumSteps,idas),Cint,(Ptr{Void},Clong),ida_mem,mxsteps)
end

function IDASetInitStep(ida_mem,hin::realtype)
    ccall((:IDASetInitStep,idas),Cint,(Ptr{Void},realtype),ida_mem,hin)
end

function IDASetMaxStep(ida_mem,hmax::realtype)
    ccall((:IDASetMaxStep,idas),Cint,(Ptr{Void},realtype),ida_mem,hmax)
end

function IDASetStopTime(ida_mem,tstop::realtype)
    ccall((:IDASetStopTime,idas),Cint,(Ptr{Void},realtype),ida_mem,tstop)
end

function IDASetNonlinConvCoef(ida_mem,epcon::realtype)
    ccall((:IDASetNonlinConvCoef,idas),Cint,(Ptr{Void},realtype),ida_mem,epcon)
end

function IDASetMaxErrTestFails(ida_mem,maxnef::Cint)
    ccall((:IDASetMaxErrTestFails,idas),Cint,(Ptr{Void},Cint),ida_mem,maxnef)
end

function IDASetMaxNonlinIters(ida_mem,maxcor::Cint)
    ccall((:IDASetMaxNonlinIters,idas),Cint,(Ptr{Void},Cint),ida_mem,maxcor)
end

function IDASetMaxConvFails(ida_mem,maxncf::Cint)
    ccall((:IDASetMaxConvFails,idas),Cint,(Ptr{Void},Cint),ida_mem,maxncf)
end

function IDASetSuppressAlg(ida_mem,suppressalg::Cint)
    ccall((:IDASetSuppressAlg,idas),Cint,(Ptr{Void},Cint),ida_mem,suppressalg)
end

function IDASetId(ida_mem,id::N_Vector)
    ccall((:IDASetId,idas),Cint,(Ptr{Void},N_Vector),ida_mem,id)
end

function IDASetConstraints(ida_mem,constraints::N_Vector)
    ccall((:IDASetConstraints,idas),Cint,(Ptr{Void},N_Vector),ida_mem,constraints)
end

function IDASetRootDirection(ida_mem,rootdir)
    ccall((:IDASetRootDirection,idas),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem)
    ccall((:IDASetNoInactiveRootWarn,idas),Cint,(Ptr{Void},),ida_mem)
end

function IDAInit(ida_mem,res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,idas),Cint,(Ptr{Void},IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

function IDAReInit(ida_mem,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,idas),Cint,(Ptr{Void},realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

function IDASStolerances(ida_mem,reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,idas),Cint,(Ptr{Void},realtype,realtype),ida_mem,reltol,abstol)
end

function IDASVtolerances(ida_mem,reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,idas),Cint,(Ptr{Void},realtype,N_Vector),ida_mem,reltol,abstol)
end

function IDAWFtolerances(ida_mem,efun::IDAEwtFn)
    ccall((:IDAWFtolerances,idas),Cint,(Ptr{Void},IDAEwtFn),ida_mem,efun)
end

function IDASetNonlinConvCoefIC(ida_mem,epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,idas),Cint,(Ptr{Void},realtype),ida_mem,epiccon)
end

function IDASetMaxNumStepsIC(ida_mem,maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC,idas),Cint,(Ptr{Void},Cint),ida_mem,maxnh)
end

function IDASetMaxNumJacsIC(ida_mem,maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC,idas),Cint,(Ptr{Void},Cint),ida_mem,maxnj)
end

function IDASetMaxNumItersIC(ida_mem,maxnit::Cint)
    ccall((:IDASetMaxNumItersIC,idas),Cint,(Ptr{Void},Cint),ida_mem,maxnit)
end

function IDASetLineSearchOffIC(ida_mem,lsoff::Cint)
    ccall((:IDASetLineSearchOffIC,idas),Cint,(Ptr{Void},Cint),ida_mem,lsoff)
end

function IDASetStepToleranceIC(ida_mem,steptol::realtype)
    ccall((:IDASetStepToleranceIC,idas),Cint,(Ptr{Void},realtype),ida_mem,steptol)
end

function IDARootInit(ida_mem,nrtfn::Cint,g::IDARootFn)
    ccall((:IDARootInit,idas),Cint,(Ptr{Void},Cint,IDARootFn),ida_mem,nrtfn,g)
end

function IDASetQuadErrCon(ida_mem,errconQ::Cint)
    ccall((:IDASetQuadErrCon,idas),Cint,(Ptr{Void},Cint),ida_mem,errconQ)
end

function IDAQuadInit(ida_mem,rhsQ::IDAQuadRhsFn,yQ0::N_Vector)
    ccall((:IDAQuadInit,idas),Cint,(Ptr{Void},IDAQuadRhsFn,N_Vector),ida_mem,rhsQ,yQ0)
end

function IDAQuadReInit(ida_mem,yQ0::N_Vector)
    ccall((:IDAQuadReInit,idas),Cint,(Ptr{Void},N_Vector),ida_mem,yQ0)
end

function IDAQuadSStolerances(ida_mem,reltolQ::realtype,abstolQ::realtype)
    ccall((:IDAQuadSStolerances,idas),Cint,(Ptr{Void},realtype,realtype),ida_mem,reltolQ,abstolQ)
end

function IDAQuadSVtolerances(ida_mem,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:IDAQuadSVtolerances,idas),Cint,(Ptr{Void},realtype,N_Vector),ida_mem,reltolQ,abstolQ)
end

function IDASetSensDQMethod(ida_mem,DQtype::Cint,DQrhomax::realtype)
    ccall((:IDASetSensDQMethod,idas),Cint,(Ptr{Void},Cint,realtype),ida_mem,DQtype,DQrhomax)
end

function IDASetSensParams(ida_mem,p,pbar,plist)
    ccall((:IDASetSensParams,idas),Cint,(Ptr{Void},Ptr{realtype},Ptr{realtype},Ptr{Cint}),ida_mem,p,pbar,plist)
end

function IDASetSensErrCon(ida_mem,errconS::Cint)
    ccall((:IDASetSensErrCon,idas),Cint,(Ptr{Void},Cint),ida_mem,errconS)
end

function IDASetSensMaxNonlinIters(ida_mem,maxcorS::Cint)
    ccall((:IDASetSensMaxNonlinIters,idas),Cint,(Ptr{Void},Cint),ida_mem,maxcorS)
end

function IDASensInit(ida_mem,Ns::Cint,ism::Cint,resS::IDASensResFn,yS0,ypS0)
    ccall((:IDASensInit,idas),Cint,(Ptr{Void},Cint,Cint,IDASensResFn,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,Ns,ism,resS,yS0,ypS0)
end

function IDASensReInit(ida_mem,ism::Cint,yS0,ypS0)
    ccall((:IDASensReInit,idas),Cint,(Ptr{Void},Cint,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,ism,yS0,ypS0)
end

function IDASensToggleOff(ida_mem)
    ccall((:IDASensToggleOff,idas),Cint,(Ptr{Void},),ida_mem)
end

function IDASensSStolerances(ida_mem,reltolS::realtype,abstolS)
    ccall((:IDASensSStolerances,idas),Cint,(Ptr{Void},realtype,Ptr{realtype}),ida_mem,reltolS,abstolS)
end

function IDASensSVtolerances(ida_mem,reltolS::realtype,abstolS)
    ccall((:IDASensSVtolerances,idas),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),ida_mem,reltolS,abstolS)
end

function IDASensEEtolerances(ida_mem)
    ccall((:IDASensEEtolerances,idas),Cint,(Ptr{Void},),ida_mem)
end

function IDAQuadSensInit(ida_mem,resQS::IDAQuadSensRhsFn,yQS0)
    ccall((:IDAQuadSensInit,idas),Cint,(Ptr{Void},IDAQuadSensRhsFn,Ptr{N_Vector}),ida_mem,resQS,yQS0)
end

function IDAQuadSensReInit(ida_mem,yQS0)
    ccall((:IDAQuadSensReInit,idas),Cint,(Ptr{Void},Ptr{N_Vector}),ida_mem,yQS0)
end

function IDAQuadSensSStolerances(ida_mem,reltolQS::realtype,abstolQS)
    ccall((:IDAQuadSensSStolerances,idas),Cint,(Ptr{Void},realtype,Ptr{realtype}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensSVtolerances(ida_mem,reltolQS::realtype,abstolQS)
    ccall((:IDAQuadSensSVtolerances,idas),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensEEtolerances(ida_mem)
    ccall((:IDAQuadSensEEtolerances,idas),Cint,(Ptr{Void},),ida_mem)
end

function IDASetQuadSensErrCon(ida_mem,errconQS::Cint)
    ccall((:IDASetQuadSensErrCon,idas),Cint,(Ptr{Void},Cint),ida_mem,errconQS)
end

function IDACalcIC(ida_mem,icopt::Cint,tout1::realtype)
    ccall((:IDACalcIC,idas),Cint,(Ptr{Void},Cint,realtype),ida_mem,icopt,tout1)
end

function IDASolve(ida_mem,tout::realtype,tret,yret::N_Vector,ypret::N_Vector,itask::Cint)
    ccall((:IDASolve,idas),Cint,(Ptr{Void},realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

function IDAGetDky(ida_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetDky,idas),Cint,(Ptr{Void},realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetWorkSpace(ida_mem,lenrw,leniw)
    ccall((:IDAGetWorkSpace,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

function IDAGetNumSteps(ida_mem,nsteps)
    ccall((:IDAGetNumSteps,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nsteps)
end

function IDAGetNumResEvals(ida_mem,nrevals)
    ccall((:IDAGetNumResEvals,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem,nlinsetups)
    ccall((:IDAGetNumLinSolvSetups,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem,netfails)
    ccall((:IDAGetNumErrTestFails,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,netfails)
end

function IDAGetNumBacktrackOps(ida_mem,nbacktr)
    ccall((:IDAGetNumBacktrackOps,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nbacktr)
end

function IDAGetConsistentIC(ida_mem,yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,idas),Cint,(Ptr{Void},N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

function IDAGetLastOrder(ida_mem,klast)
    ccall((:IDAGetLastOrder,idas),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,klast)
end

function IDAGetCurrentOrder(ida_mem,kcur)
    ccall((:IDAGetCurrentOrder,idas),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,kcur)
end

function IDAGetActualInitStep(ida_mem,hinused)
    ccall((:IDAGetActualInitStep,idas),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hinused)
end

function IDAGetLastStep(ida_mem,hlast)
    ccall((:IDAGetLastStep,idas),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hlast)
end

function IDAGetCurrentStep(ida_mem,hcur)
    ccall((:IDAGetCurrentStep,idas),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hcur)
end

function IDAGetCurrentTime(ida_mem,tcur)
    ccall((:IDAGetCurrentTime,idas),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tcur)
end

function IDAGetTolScaleFactor(ida_mem,tolsfact)
    ccall((:IDAGetTolScaleFactor,idas),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tolsfact)
end

function IDAGetErrWeights(ida_mem,eweight::N_Vector)
    ccall((:IDAGetErrWeights,idas),Cint,(Ptr{Void},N_Vector),ida_mem,eweight)
end

function IDAGetEstLocalErrors(ida_mem,ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,idas),Cint,(Ptr{Void},N_Vector),ida_mem,ele)
end

function IDAGetNumGEvals(ida_mem,ngevals)
    ccall((:IDAGetNumGEvals,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,ngevals)
end

function IDAGetRootInfo(ida_mem,rootsfound)
    ccall((:IDAGetRootInfo,idas),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootsfound)
end

function IDAGetIntegratorStats(ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    ccall((:IDAGetIntegratorStats,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem,nniters)
    ccall((:IDAGetNumNonlinSolvIters,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem,nncfails)
    ccall((:IDAGetNumNonlinSolvConvFails,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nncfails)
end

function IDAGetNonlinSolvStats(ida_mem,nniters,nncfails)
    ccall((:IDAGetNonlinSolvStats,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

function IDAGetQuad(ida_mem,t,yQout::N_Vector)
    ccall((:IDAGetQuad,idas),Cint,(Ptr{Void},Ptr{realtype},N_Vector),ida_mem,t,yQout)
end

function IDAGetQuadDky(ida_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetQuadDky,idas),Cint,(Ptr{Void},realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetQuadNumRhsEvals(ida_mem,nrhsQevals)
    ccall((:IDAGetQuadNumRhsEvals,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrhsQevals)
end

function IDAGetQuadNumErrTestFails(ida_mem,nQetfails)
    ccall((:IDAGetQuadNumErrTestFails,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nQetfails)
end

function IDAGetQuadErrWeights(ida_mem,eQweight::N_Vector)
    ccall((:IDAGetQuadErrWeights,idas),Cint,(Ptr{Void},N_Vector),ida_mem,eQweight)
end

function IDAGetQuadStats(ida_mem,nrhsQevals,nQetfails)
    ccall((:IDAGetQuadStats,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQevals,nQetfails)
end

function IDAGetSens(ida_mem,tret,yySout)
    ccall((:IDAGetSens,idas),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yySout)
end

function IDAGetSens1(ida_mem,tret,is::Cint,yySret::N_Vector)
    ccall((:IDAGetSens1,idas),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yySret)
end

function IDAGetSensDky(ida_mem,t::realtype,k::Cint,dkyS)
    ccall((:IDAGetSensDky,idas),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyS)
end

function IDAGetSensDky1(ida_mem,t::realtype,k::Cint,is::Cint,dkyS::N_Vector)
    ccall((:IDAGetSensDky1,idas),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyS)
end

function IDAGetSensConsistentIC(ida_mem,yyS0,ypS0)
    ccall((:IDAGetSensConsistentIC,idas),Cint,(Ptr{Void},Ptr{N_Vector},Ptr{N_Vector}),ida_mem,yyS0,ypS0)
end

function IDAGetSensNumResEvals(ida_mem,nresSevals)
    ccall((:IDAGetSensNumResEvals,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nresSevals)
end

function IDAGetNumResEvalsSens(ida_mem,nresevalsS)
    ccall((:IDAGetNumResEvalsSens,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nresevalsS)
end

function IDAGetSensNumErrTestFails(ida_mem,nSetfails)
    ccall((:IDAGetSensNumErrTestFails,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSetfails)
end

function IDAGetSensNumLinSolvSetups(ida_mem,nlinsetupsS)
    ccall((:IDAGetSensNumLinSolvSetups,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlinsetupsS)
end

function IDAGetSensErrWeights(ida_mem,eSweight::N_Vector_S)
    ccall((:IDAGetSensErrWeights,idas),Cint,(Ptr{Void},N_Vector_S),ida_mem,eSweight)
end

function IDAGetSensStats(ida_mem,nresSevals,nresevalsS,nSetfails,nlinsetupsS)
    ccall((:IDAGetSensStats,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),ida_mem,nresSevals,nresevalsS,nSetfails,nlinsetupsS)
end

function IDAGetSensNumNonlinSolvIters(ida_mem,nSniters)
    ccall((:IDAGetSensNumNonlinSolvIters,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSniters)
end

function IDAGetSensNumNonlinSolvConvFails(ida_mem,nSncfails)
    ccall((:IDAGetSensNumNonlinSolvConvFails,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSncfails)
end

function IDAGetSensNonlinSolvStats(ida_mem,nSniters,nSncfails)
    ccall((:IDAGetSensNonlinSolvStats,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nSniters,nSncfails)
end

function IDAGetQuadSensNumRhsEvals(ida_mem,nrhsQSevals)
    ccall((:IDAGetQuadSensNumRhsEvals,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrhsQSevals)
end

function IDAGetQuadSensNumErrTestFails(ida_mem,nQSetfails)
    ccall((:IDAGetQuadSensNumErrTestFails,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nQSetfails)
end

function IDAGetQuadSensErrWeights(ida_mem,eQSweight)
    ccall((:IDAGetQuadSensErrWeights,idas),Cint,(Ptr{Void},Ptr{N_Vector}),ida_mem,eQSweight)
end

function IDAGetQuadSensStats(ida_mem,nrhsQSevals,nQSetfails)
    ccall((:IDAGetQuadSensStats,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQSevals,nQSetfails)
end

function IDAGetQuadSens(ida_mem,tret,yyQSout)
    ccall((:IDAGetQuadSens,idas),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yyQSout)
end

function IDAGetQuadSens1(ida_mem,tret,is::Cint,yyQSret::N_Vector)
    ccall((:IDAGetQuadSens1,idas),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yyQSret)
end

function IDAGetQuadSensDky(ida_mem,t::realtype,k::Cint,dkyQS)
    ccall((:IDAGetQuadSensDky,idas),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyQS)
end

function IDAGetQuadSensDky1(ida_mem,t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:IDAGetQuadSensDky1,idas),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyQS)
end

function IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,idas),Cstring,(Clong,),flag)
end

function IDAFree(ida_mem)
    ccall((:IDAFree,idas),Void,(Ptr{Ptr{Void}},),ida_mem)
end

function IDAQuadFree(ida_mem)
    ccall((:IDAQuadFree,idas),Void,(Ptr{Void},),ida_mem)
end

function IDASensFree(ida_mem)
    ccall((:IDASensFree,idas),Void,(Ptr{Void},),ida_mem)
end

function IDAQuadSensFree(ida_mem)
    ccall((:IDAQuadSensFree,idas),Void,(Ptr{Void},),ida_mem)
end

function IDAAdjInit(ida_mem,steps::Clong,interp::Cint)
    ccall((:IDAAdjInit,idas),Cint,(Ptr{Void},Clong,Cint),ida_mem,steps,interp)
end

function IDAAdjReInit(ida_mem)
    ccall((:IDAAdjReInit,idas),Cint,(Ptr{Void},),ida_mem)
end

function IDAAdjFree(ida_mem)
    ccall((:IDAAdjFree,idas),Void,(Ptr{Void},),ida_mem)
end

function IDACreateB(ida_mem,which)
    ccall((:IDACreateB,idas),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,which)
end

function IDAInitB(ida_mem,which::Cint,resB::IDAResFnB,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitB,idas),Cint,(Ptr{Void},Cint,IDAResFnB,realtype,N_Vector,N_Vector),ida_mem,which,resB,tB0,yyB0,ypB0)
end

function IDAInitBS(ida_mem,which::Cint,resS::IDAResFnBS,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitBS,idas),Cint,(Ptr{Void},Cint,IDAResFnBS,realtype,N_Vector,N_Vector),ida_mem,which,resS,tB0,yyB0,ypB0)
end

function IDAReInitB(ida_mem,which::Cint,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAReInitB,idas),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector),ida_mem,which,tB0,yyB0,ypB0)
end

function IDASStolerancesB(ida_mem,which::Cint,relTolB::realtype,absTolB::realtype)
    ccall((:IDASStolerancesB,idas),Cint,(Ptr{Void},Cint,realtype,realtype),ida_mem,which,relTolB,absTolB)
end

function IDASVtolerancesB(ida_mem,which::Cint,relTolB::realtype,absTolB::N_Vector)
    ccall((:IDASVtolerancesB,idas),Cint,(Ptr{Void},Cint,realtype,N_Vector),ida_mem,which,relTolB,absTolB)
end

function IDAQuadInitB(ida_mem,which::Cint,rhsQB::IDAQuadRhsFnB,yQB0::N_Vector)
    ccall((:IDAQuadInitB,idas),Cint,(Ptr{Void},Cint,IDAQuadRhsFnB,N_Vector),ida_mem,which,rhsQB,yQB0)
end

function IDAQuadInitBS(ida_mem,which::Cint,rhsQS::IDAQuadRhsFnBS,yQB0::N_Vector)
    ccall((:IDAQuadInitBS,idas),Cint,(Ptr{Void},Cint,IDAQuadRhsFnBS,N_Vector),ida_mem,which,rhsQS,yQB0)
end

function IDAQuadReInitB(ida_mem,which::Cint,yQB0::N_Vector)
    ccall((:IDAQuadReInitB,idas),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,yQB0)
end

function IDAQuadSStolerancesB(ida_mem,which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:IDAQuadSStolerancesB,idas),Cint,(Ptr{Void},Cint,realtype,realtype),ida_mem,which,reltolQB,abstolQB)
end

function IDAQuadSVtolerancesB(ida_mem,which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:IDAQuadSVtolerancesB,idas),Cint,(Ptr{Void},Cint,realtype,N_Vector),ida_mem,which,reltolQB,abstolQB)
end

function IDACalcICB(ida_mem,which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDACalcICB,idas),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector),ida_mem,which,tout1,yy0,yp0)
end

function IDACalcICBS(ida_mem,which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector,yyS0,ypS0)
    ccall((:IDACalcICBS,idas),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,which,tout1,yy0,yp0,yyS0,ypS0)
end

function IDASolveF(ida_mem,tout::realtype,tret,yret::N_Vector,ypret::N_Vector,itask::Cint,ncheckPtr)
    ccall((:IDASolveF,idas),Cint,(Ptr{Void},realtype,Ptr{realtype},N_Vector,N_Vector,Cint,Ptr{Cint}),ida_mem,tout,tret,yret,ypret,itask,ncheckPtr)
end

function IDASolveB(ida_mem,tBout::realtype,itaskB::Cint)
    ccall((:IDASolveB,idas),Cint,(Ptr{Void},realtype,Cint),ida_mem,tBout,itaskB)
end

function IDAAdjSetNoSensi(ida_mem)
    ccall((:IDAAdjSetNoSensi,idas),Cint,(Ptr{Void},),ida_mem)
end

function IDASetUserDataB(ida_mem,which::Cint,user_dataB)
    ccall((:IDASetUserDataB,idas),Cint,(Ptr{Void},Cint,Ptr{Void}),ida_mem,which,user_dataB)
end

function IDASetMaxOrdB(ida_mem,which::Cint,maxordB::Cint)
    ccall((:IDASetMaxOrdB,idas),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxordB)
end

function IDASetMaxNumStepsB(ida_mem,which::Cint,mxstepsB::Clong)
    ccall((:IDASetMaxNumStepsB,idas),Cint,(Ptr{Void},Cint,Clong),ida_mem,which,mxstepsB)
end

function IDASetInitStepB(ida_mem,which::Cint,hinB::realtype)
    ccall((:IDASetInitStepB,idas),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,hinB)
end

function IDASetMaxStepB(ida_mem,which::Cint,hmaxB::realtype)
    ccall((:IDASetMaxStepB,idas),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,hmaxB)
end

function IDASetSuppressAlgB(ida_mem,which::Cint,suppressalgB::Cint)
    ccall((:IDASetSuppressAlgB,idas),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,suppressalgB)
end

function IDASetIdB(ida_mem,which::Cint,idB::N_Vector)
    ccall((:IDASetIdB,idas),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,idB)
end

function IDASetConstraintsB(ida_mem,which::Cint,constraintsB::N_Vector)
    ccall((:IDASetConstraintsB,idas),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,constraintsB)
end

function IDASetQuadErrConB(ida_mem,which::Cint,errconQB::Cint)
    ccall((:IDASetQuadErrConB,idas),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,errconQB)
end

function IDAGetB(ida_mem,which::Cint,tret,yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetB,idas),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,tret,yy,yp)
end

function IDAGetQuadB(ida_mem,which::Cint,tret,qB::N_Vector)
    ccall((:IDAGetQuadB,idas),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),ida_mem,which,tret,qB)
end

function IDAGetAdjIDABmem(ida_mem,which::Cint)
    ccall((:IDAGetAdjIDABmem,idas),Ptr{Void},(Ptr{Void},Cint),ida_mem,which)
end

function IDAGetConsistentICB(ida_mem,which::Cint,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAGetConsistentICB,idas),Cint,(Ptr{Void},Cint,N_Vector,N_Vector),ida_mem,which,yyB0,ypB0)
end

function IDAGetAdjY(ida_mem,t::realtype,yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetAdjY,idas),Cint,(Ptr{Void},realtype,N_Vector,N_Vector),ida_mem,t,yy,yp)
end

function IDAGetAdjCheckPointsInfo(ida_mem,ckpnt)
    ccall((:IDAGetAdjCheckPointsInfo,idas),Cint,(Ptr{Void},Ptr{IDAadjCheckPointRec}),ida_mem,ckpnt)
end

function IDAGetAdjDataPointHermite(ida_mem,which::Cint,t,yy::N_Vector,yd::N_Vector)
    ccall((:IDAGetAdjDataPointHermite,idas),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,t,yy,yd)
end

function IDAGetAdjDataPointPolynomial(ida_mem,which::Cint,t,order,y::N_Vector)
    ccall((:IDAGetAdjDataPointPolynomial,idas),Cint,(Ptr{Void},Cint,Ptr{realtype},Ptr{Cint},N_Vector),ida_mem,which,t,order,y)
end

function IDAGetAdjCurrentCheckPoint(ida_mem,addr)
    ccall((:IDAGetAdjCurrentCheckPoint,idas),Cint,(Ptr{Void},Ptr{Ptr{Void}}),ida_mem,addr)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/idas/idas_direct.h
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

function IDADlsSetDenseJacFn(ida_mem,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,idas_direct),Cint,(Ptr{Void},IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,idas_direct),Cint,(Ptr{Void},IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDADlsGetWorkSpace,idas_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem,njevals)
    ccall((:IDADlsGetNumJacEvals,idas_direct),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem,nfevalsLS)
    ccall((:IDADlsGetNumResEvals,idas_direct),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem,flag)
    ccall((:IDADlsGetLastFlag,idas_direct),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,idas_direct),Cstring,(Clong,),flag)
end

function IDADlsSetDenseJacFnB(ida_mem,which::Cint,jacB::IDADlsDenseJacFnB)
    ccall((:IDADlsSetDenseJacFnB,idas_direct),Cint,(Ptr{Void},Cint,IDADlsDenseJacFnB),ida_mem,which,jacB)
end

function IDADlsSetDenseJacFnBS(ida_mem,which::Cint,jacBS::IDADlsDenseJacFnBS)
    ccall((:IDADlsSetDenseJacFnBS,idas_direct),Cint,(Ptr{Void},Cint,IDADlsDenseJacFnBS),ida_mem,which,jacBS)
end

function IDADlsSetBandJacFnB(idaa_mem,which::Cint,jacB::IDADlsBandJacFnB)
    ccall((:IDADlsSetBandJacFnB,idas_direct),Cint,(Ptr{Void},Cint,IDADlsBandJacFnB),idaa_mem,which,jacB)
end

function IDADlsSetBandJacFnBS(idaa_mem,which::Cint,jacBS::IDADlsBandJacFnBS)
    ccall((:IDADlsSetBandJacFnBS,idas_direct),Cint,(Ptr{Void},Cint,IDADlsBandJacFnBS),idaa_mem,which,jacBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/idas/idas_spils.h
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

function IDASpilsSetPreconditioner(ida_mem,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,idas_spils),Cint,(Ptr{Void},IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,idas_spils),Cint,(Ptr{Void},IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem,gstype::Cint)
    ccall((:IDASpilsSetGSType,idas_spils),Cint,(Ptr{Void},Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,idas_spils),Cint,(Ptr{Void},Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem,maxl::Cint)
    ccall((:IDASpilsSetMaxl,idas_spils),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,idas_spils),Cint,(Ptr{Void},realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,idas_spils),Cint,(Ptr{Void},realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDASpilsGetWorkSpace,idas_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem,npevals)
    ccall((:IDASpilsGetNumPrecEvals,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem,npsolves)
    ccall((:IDASpilsGetNumPrecSolves,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem,nliters)
    ccall((:IDASpilsGetNumLinIters,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem,nlcfails)
    ccall((:IDASpilsGetNumConvFails,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem,njvevals)
    ccall((:IDASpilsGetNumJtimesEvals,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem,nrevalsLS)
    ccall((:IDASpilsGetNumResEvals,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem,flag)
    ccall((:IDASpilsGetLastFlag,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,idas_spils),Cstring,(Clong,),flag)
end

function IDASpilsSetGSTypeB(ida_mem,which::Cint,gstypeB::Cint)
    ccall((:IDASpilsSetGSTypeB,idas_spils),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,gstypeB)
end

function IDASpilsSetMaxRestartsB(ida_mem,which::Cint,maxrsB::Cint)
    ccall((:IDASpilsSetMaxRestartsB,idas_spils),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxrsB)
end

function IDASpilsSetEpsLinB(ida_mem,which::Cint,eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB,idas_spils),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,eplifacB)
end

function IDASpilsSetMaxlB(ida_mem,which::Cint,maxlB::Cint)
    ccall((:IDASpilsSetMaxlB,idas_spils),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end

function IDASpilsSetIncrementFactorB(ida_mem,which::Cint,dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB,idas_spils),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,dqincfacB)
end

function IDASpilsSetPreconditionerB(ida_mem,which::Cint,psetB::IDASpilsPrecSetupFnB,psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsPrecSetupFnB,IDASpilsPrecSolveFnB),ida_mem,which,psetB,psolveB)
end

function IDASpilsSetPreconditionerBS(ida_mem,which::Cint,psetBS::IDASpilsPrecSetupFnBS,psolveBS::IDASpilsPrecSolveFnBS)
    ccall((:IDASpilsSetPreconditionerBS,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsPrecSetupFnBS,IDASpilsPrecSolveFnBS),ida_mem,which,psetBS,psolveBS)
end

function IDASpilsSetJacTimesVecFnB(ida_mem,which::Cint,jtvB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesVecFnB,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsJacTimesVecFnB),ida_mem,which,jtvB)
end

function IDASpilsSetJacTimesVecFnBS(ida_mem,which::Cint,jtvBS::IDASpilsJacTimesVecFnBS)
    ccall((:IDASpilsSetJacTimesVecFnBS,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsJacTimesVecFnBS),ida_mem,which,jtvBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/idas/idas_band.h
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

function IDADlsSetDenseJacFn(ida_mem,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,idas_direct),Cint,(Ptr{Void},IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,idas_direct),Cint,(Ptr{Void},IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDADlsGetWorkSpace,idas_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem,njevals)
    ccall((:IDADlsGetNumJacEvals,idas_direct),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem,nfevalsLS)
    ccall((:IDADlsGetNumResEvals,idas_direct),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem,flag)
    ccall((:IDADlsGetLastFlag,idas_direct),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,idas_direct),Cstring,(Clong,),flag)
end

function IDADlsSetDenseJacFnB(ida_mem,which::Cint,jacB::IDADlsDenseJacFnB)
    ccall((:IDADlsSetDenseJacFnB,idas_direct),Cint,(Ptr{Void},Cint,IDADlsDenseJacFnB),ida_mem,which,jacB)
end

function IDADlsSetDenseJacFnBS(ida_mem,which::Cint,jacBS::IDADlsDenseJacFnBS)
    ccall((:IDADlsSetDenseJacFnBS,idas_direct),Cint,(Ptr{Void},Cint,IDADlsDenseJacFnBS),ida_mem,which,jacBS)
end

function IDADlsSetBandJacFnB(idaa_mem,which::Cint,jacB::IDADlsBandJacFnB)
    ccall((:IDADlsSetBandJacFnB,idas_direct),Cint,(Ptr{Void},Cint,IDADlsBandJacFnB),idaa_mem,which,jacB)
end

function IDADlsSetBandJacFnBS(idaa_mem,which::Cint,jacBS::IDADlsBandJacFnBS)
    ccall((:IDADlsSetBandJacFnBS,idas_direct),Cint,(Ptr{Void},Cint,IDADlsBandJacFnBS),idaa_mem,which,jacBS)
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

function IDABand(ida_mem,Neq::Clong,mupper::Clong,mlower::Clong)
    ccall((:IDABand,idas_band),Cint,(Ptr{Void},Clong,Clong,Clong),ida_mem,Neq,mupper,mlower)
end

function IDABandB(idaadj_mem,which::Cint,NeqB::Clong,mupperB::Clong,mlowerB::Clong)
    ccall((:IDABandB,idas_band),Cint,(Ptr{Void},Cint,Clong,Clong,Clong),idaadj_mem,which,NeqB,mupperB,mlowerB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/idas/idas_bbdpre.h
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

function IDABBDPrecInit(ida_mem,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_yy::realtype,Gres::IDABBDLocalFn,Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit,idas_bbdpre),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFn,IDABBDCommFn),ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)
end

function IDABBDPrecReInit(ida_mem,mudq::Clong,mldq::Clong,dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit,idas_bbdpre),Cint,(Ptr{Void},Clong,Clong,realtype),ida_mem,mudq,mldq,dq_rel_yy)
end

function IDABBDPrecGetWorkSpace(ida_mem,lenrwBBDP,leniwBBDP)
    ccall((:IDABBDPrecGetWorkSpace,idas_bbdpre),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwBBDP,leniwBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem,ngevalsBBDP)
    ccall((:IDABBDPrecGetNumGfnEvals,idas_bbdpre),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,ngevalsBBDP)
end

function IDABBDPrecInitB(ida_mem,which::Cint,NlocalB::Clong,mudqB::Clong,mldqB::Clong,mukeepB::Clong,mlkeepB::Clong,dq_rel_yyB::realtype,GresB::IDABBDLocalFnB,GcommB::IDABBDCommFnB)
    ccall((:IDABBDPrecInitB,idas_bbdpre),Cint,(Ptr{Void},Cint,Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFnB,IDABBDCommFnB),ida_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dq_rel_yyB,GresB,GcommB)
end

function IDABBDPrecReInitB(ida_mem,which::Cint,mudqB::Clong,mldqB::Clong,dq_rel_yyB::realtype)
    ccall((:IDABBDPrecReInitB,idas_bbdpre),Cint,(Ptr{Void},Cint,Clong,Clong,realtype),ida_mem,which,mudqB,mldqB,dq_rel_yyB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/idas/idas_dense.h
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

function IDADlsSetDenseJacFn(ida_mem,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,idas_direct),Cint,(Ptr{Void},IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,idas_direct),Cint,(Ptr{Void},IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDADlsGetWorkSpace,idas_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem,njevals)
    ccall((:IDADlsGetNumJacEvals,idas_direct),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem,nfevalsLS)
    ccall((:IDADlsGetNumResEvals,idas_direct),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem,flag)
    ccall((:IDADlsGetLastFlag,idas_direct),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,idas_direct),Cstring,(Clong,),flag)
end

function IDADlsSetDenseJacFnB(ida_mem,which::Cint,jacB::IDADlsDenseJacFnB)
    ccall((:IDADlsSetDenseJacFnB,idas_direct),Cint,(Ptr{Void},Cint,IDADlsDenseJacFnB),ida_mem,which,jacB)
end

function IDADlsSetDenseJacFnBS(ida_mem,which::Cint,jacBS::IDADlsDenseJacFnBS)
    ccall((:IDADlsSetDenseJacFnBS,idas_direct),Cint,(Ptr{Void},Cint,IDADlsDenseJacFnBS),ida_mem,which,jacBS)
end

function IDADlsSetBandJacFnB(idaa_mem,which::Cint,jacB::IDADlsBandJacFnB)
    ccall((:IDADlsSetBandJacFnB,idas_direct),Cint,(Ptr{Void},Cint,IDADlsBandJacFnB),idaa_mem,which,jacB)
end

function IDADlsSetBandJacFnBS(idaa_mem,which::Cint,jacBS::IDADlsBandJacFnBS)
    ccall((:IDADlsSetBandJacFnBS,idas_direct),Cint,(Ptr{Void},Cint,IDADlsBandJacFnBS),idaa_mem,which,jacBS)
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

function IDADense(ida_mem,Neq::Clong)
    ccall((:IDADense,idas_dense),Cint,(Ptr{Void},Clong),ida_mem,Neq)
end

function IDADenseB(ida_mem,which::Cint,NeqB::Clong)
    ccall((:IDADenseB,idas_dense),Cint,(Ptr{Void},Cint,Clong),ida_mem,which,NeqB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/idas/idas_impl.h
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

function IDACreate()
    ccall((:IDACreate,idas),Ptr{Void},())
end

function IDASetErrHandlerFn(ida_mem,ehfun::IDAErrHandlerFn,eh_data)
    ccall((:IDASetErrHandlerFn,idas),Cint,(Ptr{Void},IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

function IDASetErrFile(ida_mem,errfp)
    ccall((:IDASetErrFile,idas),Cint,(Ptr{Void},Ptr{FILE}),ida_mem,errfp)
end

function IDASetUserData(ida_mem,user_data)
    ccall((:IDASetUserData,idas),Cint,(Ptr{Void},Ptr{Void}),ida_mem,user_data)
end

function IDASetMaxOrd(ida_mem,maxord::Cint)
    ccall((:IDASetMaxOrd,idas),Cint,(Ptr{Void},Cint),ida_mem,maxord)
end

function IDASetMaxNumSteps(ida_mem,mxsteps::Clong)
    ccall((:IDASetMaxNumSteps,idas),Cint,(Ptr{Void},Clong),ida_mem,mxsteps)
end

function IDASetInitStep(ida_mem,hin::realtype)
    ccall((:IDASetInitStep,idas),Cint,(Ptr{Void},realtype),ida_mem,hin)
end

function IDASetMaxStep(ida_mem,hmax::realtype)
    ccall((:IDASetMaxStep,idas),Cint,(Ptr{Void},realtype),ida_mem,hmax)
end

function IDASetStopTime(ida_mem,tstop::realtype)
    ccall((:IDASetStopTime,idas),Cint,(Ptr{Void},realtype),ida_mem,tstop)
end

function IDASetNonlinConvCoef(ida_mem,epcon::realtype)
    ccall((:IDASetNonlinConvCoef,idas),Cint,(Ptr{Void},realtype),ida_mem,epcon)
end

function IDASetMaxErrTestFails(ida_mem,maxnef::Cint)
    ccall((:IDASetMaxErrTestFails,idas),Cint,(Ptr{Void},Cint),ida_mem,maxnef)
end

function IDASetMaxNonlinIters(ida_mem,maxcor::Cint)
    ccall((:IDASetMaxNonlinIters,idas),Cint,(Ptr{Void},Cint),ida_mem,maxcor)
end

function IDASetMaxConvFails(ida_mem,maxncf::Cint)
    ccall((:IDASetMaxConvFails,idas),Cint,(Ptr{Void},Cint),ida_mem,maxncf)
end

function IDASetSuppressAlg(ida_mem,suppressalg::Cint)
    ccall((:IDASetSuppressAlg,idas),Cint,(Ptr{Void},Cint),ida_mem,suppressalg)
end

function IDASetId(ida_mem,id::N_Vector)
    ccall((:IDASetId,idas),Cint,(Ptr{Void},N_Vector),ida_mem,id)
end

function IDASetConstraints(ida_mem,constraints::N_Vector)
    ccall((:IDASetConstraints,idas),Cint,(Ptr{Void},N_Vector),ida_mem,constraints)
end

function IDASetRootDirection(ida_mem,rootdir)
    ccall((:IDASetRootDirection,idas),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem)
    ccall((:IDASetNoInactiveRootWarn,idas),Cint,(Ptr{Void},),ida_mem)
end

function IDAInit(ida_mem,res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,idas),Cint,(Ptr{Void},IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

function IDAReInit(ida_mem,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,idas),Cint,(Ptr{Void},realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

function IDASStolerances(ida_mem,reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,idas),Cint,(Ptr{Void},realtype,realtype),ida_mem,reltol,abstol)
end

function IDASVtolerances(ida_mem,reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,idas),Cint,(Ptr{Void},realtype,N_Vector),ida_mem,reltol,abstol)
end

function IDAWFtolerances(ida_mem,efun::IDAEwtFn)
    ccall((:IDAWFtolerances,idas),Cint,(Ptr{Void},IDAEwtFn),ida_mem,efun)
end

function IDASetNonlinConvCoefIC(ida_mem,epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,idas),Cint,(Ptr{Void},realtype),ida_mem,epiccon)
end

function IDASetMaxNumStepsIC(ida_mem,maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC,idas),Cint,(Ptr{Void},Cint),ida_mem,maxnh)
end

function IDASetMaxNumJacsIC(ida_mem,maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC,idas),Cint,(Ptr{Void},Cint),ida_mem,maxnj)
end

function IDASetMaxNumItersIC(ida_mem,maxnit::Cint)
    ccall((:IDASetMaxNumItersIC,idas),Cint,(Ptr{Void},Cint),ida_mem,maxnit)
end

function IDASetLineSearchOffIC(ida_mem,lsoff::Cint)
    ccall((:IDASetLineSearchOffIC,idas),Cint,(Ptr{Void},Cint),ida_mem,lsoff)
end

function IDASetStepToleranceIC(ida_mem,steptol::realtype)
    ccall((:IDASetStepToleranceIC,idas),Cint,(Ptr{Void},realtype),ida_mem,steptol)
end

function IDARootInit(ida_mem,nrtfn::Cint,g::IDARootFn)
    ccall((:IDARootInit,idas),Cint,(Ptr{Void},Cint,IDARootFn),ida_mem,nrtfn,g)
end

function IDASetQuadErrCon(ida_mem,errconQ::Cint)
    ccall((:IDASetQuadErrCon,idas),Cint,(Ptr{Void},Cint),ida_mem,errconQ)
end

function IDAQuadInit(ida_mem,rhsQ::IDAQuadRhsFn,yQ0::N_Vector)
    ccall((:IDAQuadInit,idas),Cint,(Ptr{Void},IDAQuadRhsFn,N_Vector),ida_mem,rhsQ,yQ0)
end

function IDAQuadReInit(ida_mem,yQ0::N_Vector)
    ccall((:IDAQuadReInit,idas),Cint,(Ptr{Void},N_Vector),ida_mem,yQ0)
end

function IDAQuadSStolerances(ida_mem,reltolQ::realtype,abstolQ::realtype)
    ccall((:IDAQuadSStolerances,idas),Cint,(Ptr{Void},realtype,realtype),ida_mem,reltolQ,abstolQ)
end

function IDAQuadSVtolerances(ida_mem,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:IDAQuadSVtolerances,idas),Cint,(Ptr{Void},realtype,N_Vector),ida_mem,reltolQ,abstolQ)
end

function IDASetSensDQMethod(ida_mem,DQtype::Cint,DQrhomax::realtype)
    ccall((:IDASetSensDQMethod,idas),Cint,(Ptr{Void},Cint,realtype),ida_mem,DQtype,DQrhomax)
end

function IDASetSensParams(ida_mem,p,pbar,plist)
    ccall((:IDASetSensParams,idas),Cint,(Ptr{Void},Ptr{realtype},Ptr{realtype},Ptr{Cint}),ida_mem,p,pbar,plist)
end

function IDASetSensErrCon(ida_mem,errconS::Cint)
    ccall((:IDASetSensErrCon,idas),Cint,(Ptr{Void},Cint),ida_mem,errconS)
end

function IDASetSensMaxNonlinIters(ida_mem,maxcorS::Cint)
    ccall((:IDASetSensMaxNonlinIters,idas),Cint,(Ptr{Void},Cint),ida_mem,maxcorS)
end

function IDASensInit(ida_mem,Ns::Cint,ism::Cint,resS::IDASensResFn,yS0,ypS0)
    ccall((:IDASensInit,idas),Cint,(Ptr{Void},Cint,Cint,IDASensResFn,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,Ns,ism,resS,yS0,ypS0)
end

function IDASensReInit(ida_mem,ism::Cint,yS0,ypS0)
    ccall((:IDASensReInit,idas),Cint,(Ptr{Void},Cint,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,ism,yS0,ypS0)
end

function IDASensToggleOff(ida_mem)
    ccall((:IDASensToggleOff,idas),Cint,(Ptr{Void},),ida_mem)
end

function IDASensSStolerances(ida_mem,reltolS::realtype,abstolS)
    ccall((:IDASensSStolerances,idas),Cint,(Ptr{Void},realtype,Ptr{realtype}),ida_mem,reltolS,abstolS)
end

function IDASensSVtolerances(ida_mem,reltolS::realtype,abstolS)
    ccall((:IDASensSVtolerances,idas),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),ida_mem,reltolS,abstolS)
end

function IDASensEEtolerances(ida_mem)
    ccall((:IDASensEEtolerances,idas),Cint,(Ptr{Void},),ida_mem)
end

function IDAQuadSensInit(ida_mem,resQS::IDAQuadSensRhsFn,yQS0)
    ccall((:IDAQuadSensInit,idas),Cint,(Ptr{Void},IDAQuadSensRhsFn,Ptr{N_Vector}),ida_mem,resQS,yQS0)
end

function IDAQuadSensReInit(ida_mem,yQS0)
    ccall((:IDAQuadSensReInit,idas),Cint,(Ptr{Void},Ptr{N_Vector}),ida_mem,yQS0)
end

function IDAQuadSensSStolerances(ida_mem,reltolQS::realtype,abstolQS)
    ccall((:IDAQuadSensSStolerances,idas),Cint,(Ptr{Void},realtype,Ptr{realtype}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensSVtolerances(ida_mem,reltolQS::realtype,abstolQS)
    ccall((:IDAQuadSensSVtolerances,idas),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensEEtolerances(ida_mem)
    ccall((:IDAQuadSensEEtolerances,idas),Cint,(Ptr{Void},),ida_mem)
end

function IDASetQuadSensErrCon(ida_mem,errconQS::Cint)
    ccall((:IDASetQuadSensErrCon,idas),Cint,(Ptr{Void},Cint),ida_mem,errconQS)
end

function IDACalcIC(ida_mem,icopt::Cint,tout1::realtype)
    ccall((:IDACalcIC,idas),Cint,(Ptr{Void},Cint,realtype),ida_mem,icopt,tout1)
end

function IDASolve(ida_mem,tout::realtype,tret,yret::N_Vector,ypret::N_Vector,itask::Cint)
    ccall((:IDASolve,idas),Cint,(Ptr{Void},realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

function IDAGetDky(ida_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetDky,idas),Cint,(Ptr{Void},realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetWorkSpace(ida_mem,lenrw,leniw)
    ccall((:IDAGetWorkSpace,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

function IDAGetNumSteps(ida_mem,nsteps)
    ccall((:IDAGetNumSteps,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nsteps)
end

function IDAGetNumResEvals(ida_mem,nrevals)
    ccall((:IDAGetNumResEvals,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem,nlinsetups)
    ccall((:IDAGetNumLinSolvSetups,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem,netfails)
    ccall((:IDAGetNumErrTestFails,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,netfails)
end

function IDAGetNumBacktrackOps(ida_mem,nbacktr)
    ccall((:IDAGetNumBacktrackOps,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nbacktr)
end

function IDAGetConsistentIC(ida_mem,yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,idas),Cint,(Ptr{Void},N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

function IDAGetLastOrder(ida_mem,klast)
    ccall((:IDAGetLastOrder,idas),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,klast)
end

function IDAGetCurrentOrder(ida_mem,kcur)
    ccall((:IDAGetCurrentOrder,idas),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,kcur)
end

function IDAGetActualInitStep(ida_mem,hinused)
    ccall((:IDAGetActualInitStep,idas),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hinused)
end

function IDAGetLastStep(ida_mem,hlast)
    ccall((:IDAGetLastStep,idas),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hlast)
end

function IDAGetCurrentStep(ida_mem,hcur)
    ccall((:IDAGetCurrentStep,idas),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hcur)
end

function IDAGetCurrentTime(ida_mem,tcur)
    ccall((:IDAGetCurrentTime,idas),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tcur)
end

function IDAGetTolScaleFactor(ida_mem,tolsfact)
    ccall((:IDAGetTolScaleFactor,idas),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tolsfact)
end

function IDAGetErrWeights(ida_mem,eweight::N_Vector)
    ccall((:IDAGetErrWeights,idas),Cint,(Ptr{Void},N_Vector),ida_mem,eweight)
end

function IDAGetEstLocalErrors(ida_mem,ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,idas),Cint,(Ptr{Void},N_Vector),ida_mem,ele)
end

function IDAGetNumGEvals(ida_mem,ngevals)
    ccall((:IDAGetNumGEvals,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,ngevals)
end

function IDAGetRootInfo(ida_mem,rootsfound)
    ccall((:IDAGetRootInfo,idas),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootsfound)
end

function IDAGetIntegratorStats(ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    ccall((:IDAGetIntegratorStats,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem,nniters)
    ccall((:IDAGetNumNonlinSolvIters,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem,nncfails)
    ccall((:IDAGetNumNonlinSolvConvFails,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nncfails)
end

function IDAGetNonlinSolvStats(ida_mem,nniters,nncfails)
    ccall((:IDAGetNonlinSolvStats,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

function IDAGetQuad(ida_mem,t,yQout::N_Vector)
    ccall((:IDAGetQuad,idas),Cint,(Ptr{Void},Ptr{realtype},N_Vector),ida_mem,t,yQout)
end

function IDAGetQuadDky(ida_mem,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetQuadDky,idas),Cint,(Ptr{Void},realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetQuadNumRhsEvals(ida_mem,nrhsQevals)
    ccall((:IDAGetQuadNumRhsEvals,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrhsQevals)
end

function IDAGetQuadNumErrTestFails(ida_mem,nQetfails)
    ccall((:IDAGetQuadNumErrTestFails,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nQetfails)
end

function IDAGetQuadErrWeights(ida_mem,eQweight::N_Vector)
    ccall((:IDAGetQuadErrWeights,idas),Cint,(Ptr{Void},N_Vector),ida_mem,eQweight)
end

function IDAGetQuadStats(ida_mem,nrhsQevals,nQetfails)
    ccall((:IDAGetQuadStats,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQevals,nQetfails)
end

function IDAGetSens(ida_mem,tret,yySout)
    ccall((:IDAGetSens,idas),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yySout)
end

function IDAGetSens1(ida_mem,tret,is::Cint,yySret::N_Vector)
    ccall((:IDAGetSens1,idas),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yySret)
end

function IDAGetSensDky(ida_mem,t::realtype,k::Cint,dkyS)
    ccall((:IDAGetSensDky,idas),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyS)
end

function IDAGetSensDky1(ida_mem,t::realtype,k::Cint,is::Cint,dkyS::N_Vector)
    ccall((:IDAGetSensDky1,idas),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyS)
end

function IDAGetSensConsistentIC(ida_mem,yyS0,ypS0)
    ccall((:IDAGetSensConsistentIC,idas),Cint,(Ptr{Void},Ptr{N_Vector},Ptr{N_Vector}),ida_mem,yyS0,ypS0)
end

function IDAGetSensNumResEvals(ida_mem,nresSevals)
    ccall((:IDAGetSensNumResEvals,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nresSevals)
end

function IDAGetNumResEvalsSens(ida_mem,nresevalsS)
    ccall((:IDAGetNumResEvalsSens,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nresevalsS)
end

function IDAGetSensNumErrTestFails(ida_mem,nSetfails)
    ccall((:IDAGetSensNumErrTestFails,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSetfails)
end

function IDAGetSensNumLinSolvSetups(ida_mem,nlinsetupsS)
    ccall((:IDAGetSensNumLinSolvSetups,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlinsetupsS)
end

function IDAGetSensErrWeights(ida_mem,eSweight::N_Vector_S)
    ccall((:IDAGetSensErrWeights,idas),Cint,(Ptr{Void},N_Vector_S),ida_mem,eSweight)
end

function IDAGetSensStats(ida_mem,nresSevals,nresevalsS,nSetfails,nlinsetupsS)
    ccall((:IDAGetSensStats,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),ida_mem,nresSevals,nresevalsS,nSetfails,nlinsetupsS)
end

function IDAGetSensNumNonlinSolvIters(ida_mem,nSniters)
    ccall((:IDAGetSensNumNonlinSolvIters,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSniters)
end

function IDAGetSensNumNonlinSolvConvFails(ida_mem,nSncfails)
    ccall((:IDAGetSensNumNonlinSolvConvFails,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSncfails)
end

function IDAGetSensNonlinSolvStats(ida_mem,nSniters,nSncfails)
    ccall((:IDAGetSensNonlinSolvStats,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nSniters,nSncfails)
end

function IDAGetQuadSensNumRhsEvals(ida_mem,nrhsQSevals)
    ccall((:IDAGetQuadSensNumRhsEvals,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrhsQSevals)
end

function IDAGetQuadSensNumErrTestFails(ida_mem,nQSetfails)
    ccall((:IDAGetQuadSensNumErrTestFails,idas),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nQSetfails)
end

function IDAGetQuadSensErrWeights(ida_mem,eQSweight)
    ccall((:IDAGetQuadSensErrWeights,idas),Cint,(Ptr{Void},Ptr{N_Vector}),ida_mem,eQSweight)
end

function IDAGetQuadSensStats(ida_mem,nrhsQSevals,nQSetfails)
    ccall((:IDAGetQuadSensStats,idas),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQSevals,nQSetfails)
end

function IDAGetQuadSens(ida_mem,tret,yyQSout)
    ccall((:IDAGetQuadSens,idas),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yyQSout)
end

function IDAGetQuadSens1(ida_mem,tret,is::Cint,yyQSret::N_Vector)
    ccall((:IDAGetQuadSens1,idas),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yyQSret)
end

function IDAGetQuadSensDky(ida_mem,t::realtype,k::Cint,dkyQS)
    ccall((:IDAGetQuadSensDky,idas),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyQS)
end

function IDAGetQuadSensDky1(ida_mem,t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:IDAGetQuadSensDky1,idas),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyQS)
end

function IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,idas),Cstring,(Clong,),flag)
end

function IDAFree(ida_mem)
    ccall((:IDAFree,idas),Void,(Ptr{Ptr{Void}},),ida_mem)
end

function IDAQuadFree(ida_mem)
    ccall((:IDAQuadFree,idas),Void,(Ptr{Void},),ida_mem)
end

function IDASensFree(ida_mem)
    ccall((:IDASensFree,idas),Void,(Ptr{Void},),ida_mem)
end

function IDAQuadSensFree(ida_mem)
    ccall((:IDAQuadSensFree,idas),Void,(Ptr{Void},),ida_mem)
end

function IDAAdjInit(ida_mem,steps::Clong,interp::Cint)
    ccall((:IDAAdjInit,idas),Cint,(Ptr{Void},Clong,Cint),ida_mem,steps,interp)
end

function IDAAdjReInit(ida_mem)
    ccall((:IDAAdjReInit,idas),Cint,(Ptr{Void},),ida_mem)
end

function IDAAdjFree(ida_mem)
    ccall((:IDAAdjFree,idas),Void,(Ptr{Void},),ida_mem)
end

function IDACreateB(ida_mem,which)
    ccall((:IDACreateB,idas),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,which)
end

function IDAInitB(ida_mem,which::Cint,resB::IDAResFnB,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitB,idas),Cint,(Ptr{Void},Cint,IDAResFnB,realtype,N_Vector,N_Vector),ida_mem,which,resB,tB0,yyB0,ypB0)
end

function IDAInitBS(ida_mem,which::Cint,resS::IDAResFnBS,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitBS,idas),Cint,(Ptr{Void},Cint,IDAResFnBS,realtype,N_Vector,N_Vector),ida_mem,which,resS,tB0,yyB0,ypB0)
end

function IDAReInitB(ida_mem,which::Cint,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAReInitB,idas),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector),ida_mem,which,tB0,yyB0,ypB0)
end

function IDASStolerancesB(ida_mem,which::Cint,relTolB::realtype,absTolB::realtype)
    ccall((:IDASStolerancesB,idas),Cint,(Ptr{Void},Cint,realtype,realtype),ida_mem,which,relTolB,absTolB)
end

function IDASVtolerancesB(ida_mem,which::Cint,relTolB::realtype,absTolB::N_Vector)
    ccall((:IDASVtolerancesB,idas),Cint,(Ptr{Void},Cint,realtype,N_Vector),ida_mem,which,relTolB,absTolB)
end

function IDAQuadInitB(ida_mem,which::Cint,rhsQB::IDAQuadRhsFnB,yQB0::N_Vector)
    ccall((:IDAQuadInitB,idas),Cint,(Ptr{Void},Cint,IDAQuadRhsFnB,N_Vector),ida_mem,which,rhsQB,yQB0)
end

function IDAQuadInitBS(ida_mem,which::Cint,rhsQS::IDAQuadRhsFnBS,yQB0::N_Vector)
    ccall((:IDAQuadInitBS,idas),Cint,(Ptr{Void},Cint,IDAQuadRhsFnBS,N_Vector),ida_mem,which,rhsQS,yQB0)
end

function IDAQuadReInitB(ida_mem,which::Cint,yQB0::N_Vector)
    ccall((:IDAQuadReInitB,idas),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,yQB0)
end

function IDAQuadSStolerancesB(ida_mem,which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:IDAQuadSStolerancesB,idas),Cint,(Ptr{Void},Cint,realtype,realtype),ida_mem,which,reltolQB,abstolQB)
end

function IDAQuadSVtolerancesB(ida_mem,which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:IDAQuadSVtolerancesB,idas),Cint,(Ptr{Void},Cint,realtype,N_Vector),ida_mem,which,reltolQB,abstolQB)
end

function IDACalcICB(ida_mem,which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDACalcICB,idas),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector),ida_mem,which,tout1,yy0,yp0)
end

function IDACalcICBS(ida_mem,which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector,yyS0,ypS0)
    ccall((:IDACalcICBS,idas),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,which,tout1,yy0,yp0,yyS0,ypS0)
end

function IDASolveF(ida_mem,tout::realtype,tret,yret::N_Vector,ypret::N_Vector,itask::Cint,ncheckPtr)
    ccall((:IDASolveF,idas),Cint,(Ptr{Void},realtype,Ptr{realtype},N_Vector,N_Vector,Cint,Ptr{Cint}),ida_mem,tout,tret,yret,ypret,itask,ncheckPtr)
end

function IDASolveB(ida_mem,tBout::realtype,itaskB::Cint)
    ccall((:IDASolveB,idas),Cint,(Ptr{Void},realtype,Cint),ida_mem,tBout,itaskB)
end

function IDAAdjSetNoSensi(ida_mem)
    ccall((:IDAAdjSetNoSensi,idas),Cint,(Ptr{Void},),ida_mem)
end

function IDASetUserDataB(ida_mem,which::Cint,user_dataB)
    ccall((:IDASetUserDataB,idas),Cint,(Ptr{Void},Cint,Ptr{Void}),ida_mem,which,user_dataB)
end

function IDASetMaxOrdB(ida_mem,which::Cint,maxordB::Cint)
    ccall((:IDASetMaxOrdB,idas),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxordB)
end

function IDASetMaxNumStepsB(ida_mem,which::Cint,mxstepsB::Clong)
    ccall((:IDASetMaxNumStepsB,idas),Cint,(Ptr{Void},Cint,Clong),ida_mem,which,mxstepsB)
end

function IDASetInitStepB(ida_mem,which::Cint,hinB::realtype)
    ccall((:IDASetInitStepB,idas),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,hinB)
end

function IDASetMaxStepB(ida_mem,which::Cint,hmaxB::realtype)
    ccall((:IDASetMaxStepB,idas),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,hmaxB)
end

function IDASetSuppressAlgB(ida_mem,which::Cint,suppressalgB::Cint)
    ccall((:IDASetSuppressAlgB,idas),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,suppressalgB)
end

function IDASetIdB(ida_mem,which::Cint,idB::N_Vector)
    ccall((:IDASetIdB,idas),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,idB)
end

function IDASetConstraintsB(ida_mem,which::Cint,constraintsB::N_Vector)
    ccall((:IDASetConstraintsB,idas),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,constraintsB)
end

function IDASetQuadErrConB(ida_mem,which::Cint,errconQB::Cint)
    ccall((:IDASetQuadErrConB,idas),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,errconQB)
end

function IDAGetB(ida_mem,which::Cint,tret,yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetB,idas),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,tret,yy,yp)
end

function IDAGetQuadB(ida_mem,which::Cint,tret,qB::N_Vector)
    ccall((:IDAGetQuadB,idas),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),ida_mem,which,tret,qB)
end

function IDAGetAdjIDABmem(ida_mem,which::Cint)
    ccall((:IDAGetAdjIDABmem,idas),Ptr{Void},(Ptr{Void},Cint),ida_mem,which)
end

function IDAGetConsistentICB(ida_mem,which::Cint,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAGetConsistentICB,idas),Cint,(Ptr{Void},Cint,N_Vector,N_Vector),ida_mem,which,yyB0,ypB0)
end

function IDAGetAdjY(ida_mem,t::realtype,yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetAdjY,idas),Cint,(Ptr{Void},realtype,N_Vector,N_Vector),ida_mem,t,yy,yp)
end

function IDAGetAdjCheckPointsInfo(ida_mem,ckpnt)
    ccall((:IDAGetAdjCheckPointsInfo,idas),Cint,(Ptr{Void},Ptr{IDAadjCheckPointRec}),ida_mem,ckpnt)
end

function IDAGetAdjDataPointHermite(ida_mem,which::Cint,t,yy::N_Vector,yd::N_Vector)
    ccall((:IDAGetAdjDataPointHermite,idas),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,t,yy,yd)
end

function IDAGetAdjDataPointPolynomial(ida_mem,which::Cint,t,order,y::N_Vector)
    ccall((:IDAGetAdjDataPointPolynomial,idas),Cint,(Ptr{Void},Cint,Ptr{realtype},Ptr{Cint},N_Vector),ida_mem,which,t,order,y)
end

function IDAGetAdjCurrentCheckPoint(ida_mem,addr)
    ccall((:IDAGetAdjCurrentCheckPoint,idas),Cint,(Ptr{Void},Ptr{Ptr{Void}}),ida_mem,addr)
end

function IDAEwtSet(ycur::N_Vector,weight::N_Vector,data)
    ccall((:IDAEwtSet,idas_impl),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function IDAErrHandler(error_code::Cint,_module,_function,msg,data)
    ccall((:IDAErrHandler,idas_impl),Void,(Cint,Cstring,Cstring,Cstring,Ptr{Void}),error_code,_module,_function,msg,data)
end

function IDASensResDQ(Ns::Cint,t::realtype,yy::N_Vector,yp::N_Vector,resval::N_Vector,yyS,ypS,resvalS,user_dataS,ytemp::N_Vector,yptemp::N_Vector,restemp::N_Vector)
    ccall((:IDASensResDQ,idas_impl),Cint,(Cint,realtype,N_Vector,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector},Ptr{N_Vector},Ptr{Void},N_Vector,N_Vector,N_Vector),Ns,t,yy,yp,resval,yyS,ypS,resvalS,user_dataS,ytemp,yptemp,restemp)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/idas/idas_sparse.h
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

function IDASlsSetSparseJacFn(ida_mem,jac::IDASlsSparseJacFn)
    ccall((:IDASlsSetSparseJacFn,idas_sparse),Cint,(Ptr{Void},IDASlsSparseJacFn),ida_mem,jac)
end

function IDASlsGetNumJacEvals(ida_mem,njevals)
    ccall((:IDASlsGetNumJacEvals,idas_sparse),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njevals)
end

function IDASlsGetLastFlag(ida_mem,flag)
    ccall((:IDASlsGetLastFlag,idas_sparse),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDASlsGetReturnFlagName(flag::Clong)
    ccall((:IDASlsGetReturnFlagName,idas_sparse),Cstring,(Clong,),flag)
end

function IDASlsSetSparseJacFnB(ida_mem,which::Cint,jacB::IDASlsSparseJacFnB)
    ccall((:IDASlsSetSparseJacFnB,idas_sparse),Cint,(Ptr{Void},Cint,IDASlsSparseJacFnB),ida_mem,which,jacB)
end

function IDASlsSetSparseJacFnBS(ida_mem,which::Cint,jacBS::IDASlsSparseJacFnBS)
    ccall((:IDASlsSetSparseJacFnBS,idas_sparse),Cint,(Ptr{Void},Cint,IDASlsSparseJacFnBS),ida_mem,which,jacBS)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/idas/idas_spbcgs.h
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

function IDASpilsSetPreconditioner(ida_mem,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,idas_spils),Cint,(Ptr{Void},IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,idas_spils),Cint,(Ptr{Void},IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem,gstype::Cint)
    ccall((:IDASpilsSetGSType,idas_spils),Cint,(Ptr{Void},Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,idas_spils),Cint,(Ptr{Void},Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem,maxl::Cint)
    ccall((:IDASpilsSetMaxl,idas_spils),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,idas_spils),Cint,(Ptr{Void},realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,idas_spils),Cint,(Ptr{Void},realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDASpilsGetWorkSpace,idas_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem,npevals)
    ccall((:IDASpilsGetNumPrecEvals,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem,npsolves)
    ccall((:IDASpilsGetNumPrecSolves,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem,nliters)
    ccall((:IDASpilsGetNumLinIters,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem,nlcfails)
    ccall((:IDASpilsGetNumConvFails,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem,njvevals)
    ccall((:IDASpilsGetNumJtimesEvals,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem,nrevalsLS)
    ccall((:IDASpilsGetNumResEvals,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem,flag)
    ccall((:IDASpilsGetLastFlag,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,idas_spils),Cstring,(Clong,),flag)
end

function IDASpilsSetGSTypeB(ida_mem,which::Cint,gstypeB::Cint)
    ccall((:IDASpilsSetGSTypeB,idas_spils),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,gstypeB)
end

function IDASpilsSetMaxRestartsB(ida_mem,which::Cint,maxrsB::Cint)
    ccall((:IDASpilsSetMaxRestartsB,idas_spils),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxrsB)
end

function IDASpilsSetEpsLinB(ida_mem,which::Cint,eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB,idas_spils),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,eplifacB)
end

function IDASpilsSetMaxlB(ida_mem,which::Cint,maxlB::Cint)
    ccall((:IDASpilsSetMaxlB,idas_spils),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end

function IDASpilsSetIncrementFactorB(ida_mem,which::Cint,dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB,idas_spils),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,dqincfacB)
end

function IDASpilsSetPreconditionerB(ida_mem,which::Cint,psetB::IDASpilsPrecSetupFnB,psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsPrecSetupFnB,IDASpilsPrecSolveFnB),ida_mem,which,psetB,psolveB)
end

function IDASpilsSetPreconditionerBS(ida_mem,which::Cint,psetBS::IDASpilsPrecSetupFnBS,psolveBS::IDASpilsPrecSolveFnBS)
    ccall((:IDASpilsSetPreconditionerBS,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsPrecSetupFnBS,IDASpilsPrecSolveFnBS),ida_mem,which,psetBS,psolveBS)
end

function IDASpilsSetJacTimesVecFnB(ida_mem,which::Cint,jtvB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesVecFnB,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsJacTimesVecFnB),ida_mem,which,jtvB)
end

function IDASpilsSetJacTimesVecFnBS(ida_mem,which::Cint,jtvBS::IDASpilsJacTimesVecFnBS)
    ccall((:IDASpilsSetJacTimesVecFnBS,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsJacTimesVecFnBS),ida_mem,which,jtvBS)
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

function IDASpbcg(ida_mem,maxl::Cint)
    ccall((:IDASpbcg,idas_spbcgs),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpbcgB(ida_mem,which::Cint,maxlB::Cint)
    ccall((:IDASpbcgB,idas_spbcgs),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/idas/idas_spgmr.h
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

function IDASpilsSetPreconditioner(ida_mem,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,idas_spils),Cint,(Ptr{Void},IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,idas_spils),Cint,(Ptr{Void},IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem,gstype::Cint)
    ccall((:IDASpilsSetGSType,idas_spils),Cint,(Ptr{Void},Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,idas_spils),Cint,(Ptr{Void},Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem,maxl::Cint)
    ccall((:IDASpilsSetMaxl,idas_spils),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,idas_spils),Cint,(Ptr{Void},realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,idas_spils),Cint,(Ptr{Void},realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDASpilsGetWorkSpace,idas_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem,npevals)
    ccall((:IDASpilsGetNumPrecEvals,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem,npsolves)
    ccall((:IDASpilsGetNumPrecSolves,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem,nliters)
    ccall((:IDASpilsGetNumLinIters,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem,nlcfails)
    ccall((:IDASpilsGetNumConvFails,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem,njvevals)
    ccall((:IDASpilsGetNumJtimesEvals,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem,nrevalsLS)
    ccall((:IDASpilsGetNumResEvals,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem,flag)
    ccall((:IDASpilsGetLastFlag,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,idas_spils),Cstring,(Clong,),flag)
end

function IDASpilsSetGSTypeB(ida_mem,which::Cint,gstypeB::Cint)
    ccall((:IDASpilsSetGSTypeB,idas_spils),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,gstypeB)
end

function IDASpilsSetMaxRestartsB(ida_mem,which::Cint,maxrsB::Cint)
    ccall((:IDASpilsSetMaxRestartsB,idas_spils),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxrsB)
end

function IDASpilsSetEpsLinB(ida_mem,which::Cint,eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB,idas_spils),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,eplifacB)
end

function IDASpilsSetMaxlB(ida_mem,which::Cint,maxlB::Cint)
    ccall((:IDASpilsSetMaxlB,idas_spils),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end

function IDASpilsSetIncrementFactorB(ida_mem,which::Cint,dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB,idas_spils),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,dqincfacB)
end

function IDASpilsSetPreconditionerB(ida_mem,which::Cint,psetB::IDASpilsPrecSetupFnB,psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsPrecSetupFnB,IDASpilsPrecSolveFnB),ida_mem,which,psetB,psolveB)
end

function IDASpilsSetPreconditionerBS(ida_mem,which::Cint,psetBS::IDASpilsPrecSetupFnBS,psolveBS::IDASpilsPrecSolveFnBS)
    ccall((:IDASpilsSetPreconditionerBS,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsPrecSetupFnBS,IDASpilsPrecSolveFnBS),ida_mem,which,psetBS,psolveBS)
end

function IDASpilsSetJacTimesVecFnB(ida_mem,which::Cint,jtvB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesVecFnB,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsJacTimesVecFnB),ida_mem,which,jtvB)
end

function IDASpilsSetJacTimesVecFnBS(ida_mem,which::Cint,jtvBS::IDASpilsJacTimesVecFnBS)
    ccall((:IDASpilsSetJacTimesVecFnBS,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsJacTimesVecFnBS),ida_mem,which,jtvBS)
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

function IDASpgmr(ida_mem,maxl::Cint)
    ccall((:IDASpgmr,idas_spgmr),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpgmrB(ida_mem,which::Cint,maxlB::Cint)
    ccall((:IDASpgmrB,idas_spgmr),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/src/../deps/usr/include/idas/idas_sptfqmr.h
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

function IDASpilsSetPreconditioner(ida_mem,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,idas_spils),Cint,(Ptr{Void},IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,idas_spils),Cint,(Ptr{Void},IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem,gstype::Cint)
    ccall((:IDASpilsSetGSType,idas_spils),Cint,(Ptr{Void},Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,idas_spils),Cint,(Ptr{Void},Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem,maxl::Cint)
    ccall((:IDASpilsSetMaxl,idas_spils),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,idas_spils),Cint,(Ptr{Void},realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,idas_spils),Cint,(Ptr{Void},realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem,lenrwLS,leniwLS)
    ccall((:IDASpilsGetWorkSpace,idas_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem,npevals)
    ccall((:IDASpilsGetNumPrecEvals,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem,npsolves)
    ccall((:IDASpilsGetNumPrecSolves,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem,nliters)
    ccall((:IDASpilsGetNumLinIters,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem,nlcfails)
    ccall((:IDASpilsGetNumConvFails,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem,njvevals)
    ccall((:IDASpilsGetNumJtimesEvals,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem,nrevalsLS)
    ccall((:IDASpilsGetNumResEvals,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem,flag)
    ccall((:IDASpilsGetLastFlag,idas_spils),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,idas_spils),Cstring,(Clong,),flag)
end

function IDASpilsSetGSTypeB(ida_mem,which::Cint,gstypeB::Cint)
    ccall((:IDASpilsSetGSTypeB,idas_spils),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,gstypeB)
end

function IDASpilsSetMaxRestartsB(ida_mem,which::Cint,maxrsB::Cint)
    ccall((:IDASpilsSetMaxRestartsB,idas_spils),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxrsB)
end

function IDASpilsSetEpsLinB(ida_mem,which::Cint,eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB,idas_spils),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,eplifacB)
end

function IDASpilsSetMaxlB(ida_mem,which::Cint,maxlB::Cint)
    ccall((:IDASpilsSetMaxlB,idas_spils),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end

function IDASpilsSetIncrementFactorB(ida_mem,which::Cint,dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB,idas_spils),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,dqincfacB)
end

function IDASpilsSetPreconditionerB(ida_mem,which::Cint,psetB::IDASpilsPrecSetupFnB,psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsPrecSetupFnB,IDASpilsPrecSolveFnB),ida_mem,which,psetB,psolveB)
end

function IDASpilsSetPreconditionerBS(ida_mem,which::Cint,psetBS::IDASpilsPrecSetupFnBS,psolveBS::IDASpilsPrecSolveFnBS)
    ccall((:IDASpilsSetPreconditionerBS,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsPrecSetupFnBS,IDASpilsPrecSolveFnBS),ida_mem,which,psetBS,psolveBS)
end

function IDASpilsSetJacTimesVecFnB(ida_mem,which::Cint,jtvB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesVecFnB,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsJacTimesVecFnB),ida_mem,which,jtvB)
end

function IDASpilsSetJacTimesVecFnBS(ida_mem,which::Cint,jtvBS::IDASpilsJacTimesVecFnBS)
    ccall((:IDASpilsSetJacTimesVecFnBS,idas_spils),Cint,(Ptr{Void},Cint,IDASpilsJacTimesVecFnBS),ida_mem,which,jtvBS)
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

function IDASptfqmr(ida_mem,maxl::Cint)
    ccall((:IDASptfqmr,idas_sptfqmr),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASptfqmrB(ida_mem,which::Cint,maxlB::Cint)
    ccall((:IDASptfqmrB,idas_sptfqmr),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end
