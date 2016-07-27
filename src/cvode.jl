# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,libsundials_cvode),CVODEMemPtr,(Cint,Cint),lmm,iter)
end

function __CVodeSetErrHandlerFn(cvode_mem::CVODEMemPtr,ehfun::CVErrHandlerFn,eh_data::Ptr{Void})
    ccall((:CVodeSetErrHandlerFn,libsundials_cvode),Cint,(CVODEMemPtr,CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

CVodeSetErrHandlerFn(cvode_mem,ehfun,eh_data) = __CVodeSetErrHandlerFn(convert(CVODEMemPtr,cvode_mem),ehfun,pointer(eh_data))

function __CVodeSetErrFile(cvode_mem::CVODEMemPtr,errfp::Ptr{FILE})
    ccall((:CVodeSetErrFile,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{FILE}),cvode_mem,errfp)
end

CVodeSetErrFile(cvode_mem,errfp) = __CVodeSetErrFile(convert(CVODEMemPtr,cvode_mem),errfp)

function __CVodeSetUserData(cvode_mem::CVODEMemPtr,user_data::Any)
    ccall((:CVodeSetUserData,libsundials_cvode),Cint,(CVODEMemPtr,Any),cvode_mem,user_data)
end

CVodeSetUserData(cvode_mem,user_data) = __CVodeSetUserData(convert(CVODEMemPtr,cvode_mem),user_data)

function __CVodeSetMaxOrd(cvode_mem::CVODEMemPtr,maxord::Cint)
    ccall((:CVodeSetMaxOrd,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxord)
end

CVodeSetMaxOrd(cvode_mem,maxord) = __CVodeSetMaxOrd(convert(CVODEMemPtr,cvode_mem),maxord)

function __CVodeSetMaxNumSteps(cvode_mem::CVODEMemPtr,mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,libsundials_cvode),Cint,(CVODEMemPtr,Clong),cvode_mem,mxsteps)
end

CVodeSetMaxNumSteps(cvode_mem,mxsteps) = __CVodeSetMaxNumSteps(convert(CVODEMemPtr,cvode_mem),convert(Clong,mxsteps))

function __CVodeSetMaxHnilWarns(cvode_mem::CVODEMemPtr,mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,mxhnil)
end

CVodeSetMaxHnilWarns(cvode_mem,mxhnil) = __CVodeSetMaxHnilWarns(convert(CVODEMemPtr,cvode_mem),mxhnil)

function __CVodeSetStabLimDet(cvode_mem::CVODEMemPtr,stldet::Cint)
    ccall((:CVodeSetStabLimDet,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,stldet)
end

CVodeSetStabLimDet(cvode_mem,stldet) = __CVodeSetStabLimDet(convert(CVODEMemPtr,cvode_mem),stldet)

function __CVodeSetInitStep(cvode_mem::CVODEMemPtr,hin::realtype)
    ccall((:CVodeSetInitStep,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,hin)
end

CVodeSetInitStep(cvode_mem,hin) = __CVodeSetInitStep(convert(CVODEMemPtr,cvode_mem),hin)

function __CVodeSetMinStep(cvode_mem::CVODEMemPtr,hmin::realtype)
    ccall((:CVodeSetMinStep,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,hmin)
end

CVodeSetMinStep(cvode_mem,hmin) = __CVodeSetMinStep(convert(CVODEMemPtr,cvode_mem),hmin)

function __CVodeSetMaxStep(cvode_mem::CVODEMemPtr,hmax::realtype)
    ccall((:CVodeSetMaxStep,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,hmax)
end

CVodeSetMaxStep(cvode_mem,hmax) = __CVodeSetMaxStep(convert(CVODEMemPtr,cvode_mem),hmax)

function __CVodeSetStopTime(cvode_mem::CVODEMemPtr,tstop::realtype)
    ccall((:CVodeSetStopTime,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,tstop)
end

CVodeSetStopTime(cvode_mem,tstop) = __CVodeSetStopTime(convert(CVODEMemPtr,cvode_mem),tstop)

function __CVodeSetMaxErrTestFails(cvode_mem::CVODEMemPtr,maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxnef)
end

CVodeSetMaxErrTestFails(cvode_mem,maxnef) = __CVodeSetMaxErrTestFails(convert(CVODEMemPtr,cvode_mem),maxnef)

function __CVodeSetMaxNonlinIters(cvode_mem::CVODEMemPtr,maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxcor)
end

CVodeSetMaxNonlinIters(cvode_mem,maxcor) = __CVodeSetMaxNonlinIters(convert(CVODEMemPtr,cvode_mem),maxcor)

function __CVodeSetMaxConvFails(cvode_mem::CVODEMemPtr,maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxncf)
end

CVodeSetMaxConvFails(cvode_mem,maxncf) = __CVodeSetMaxConvFails(convert(CVODEMemPtr,cvode_mem),maxncf)

function __CVodeSetNonlinConvCoef(cvode_mem::CVODEMemPtr,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,nlscoef)
end

CVodeSetNonlinConvCoef(cvode_mem,nlscoef) = __CVodeSetNonlinConvCoef(convert(CVODEMemPtr,cvode_mem),nlscoef)

function __CVodeSetIterType(cvode_mem::CVODEMemPtr,iter::Cint)
    ccall((:CVodeSetIterType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,iter)
end

CVodeSetIterType(cvode_mem,iter) = __CVodeSetIterType(convert(CVODEMemPtr,cvode_mem),iter)

function __CVodeSetRootDirection(cvode_mem::CVODEMemPtr,rootdir::Ptr{Cint})
    ccall((:CVodeSetRootDirection,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,rootdir)
end

CVodeSetRootDirection(cvode_mem,rootdir) = __CVodeSetRootDirection(convert(CVODEMemPtr,cvode_mem),pointer(rootdir))

function __CVodeSetNoInactiveRootWarn(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSetNoInactiveRootWarn,libsundials_cvode),Cint,(CVODEMemPtr,),cvode_mem)
end

CVodeSetNoInactiveRootWarn(cvode_mem) = __CVodeSetNoInactiveRootWarn(convert(CVODEMemPtr,cvode_mem))

function __CVodeInit(cvode_mem::CVODEMemPtr,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,libsundials_cvode),Cint,(CVODEMemPtr,CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

CVodeInit(cvode_mem,f,t0,y0) = __CVodeInit(convert(CVODEMemPtr,cvode_mem),CVRhsFn_wrapper(f),t0,convert(N_Vector,y0))

function __CVodeReInit(cvode_mem::CVODEMemPtr,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,libsundials_cvode),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,t0,y0)
end

CVodeReInit(cvode_mem,t0,y0) = __CVodeReInit(convert(CVODEMemPtr,cvode_mem),t0,convert(N_Vector,y0))

function __CVodeSStolerances(cvode_mem::CVODEMemPtr,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,libsundials_cvode),Cint,(CVODEMemPtr,realtype,realtype),cvode_mem,reltol,abstol)
end

CVodeSStolerances(cvode_mem,reltol,abstol) = __CVodeSStolerances(convert(CVODEMemPtr,cvode_mem),reltol,abstol)

function __CVodeSVtolerances(cvode_mem::CVODEMemPtr,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,libsundials_cvode),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,reltol,abstol)
end

CVodeSVtolerances(cvode_mem,reltol,abstol) = __CVodeSVtolerances(convert(CVODEMemPtr,cvode_mem),reltol,convert(N_Vector,abstol))

function __CVodeWFtolerances(cvode_mem::CVODEMemPtr,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,libsundials_cvode),Cint,(CVODEMemPtr,CVEwtFn),cvode_mem,efun)
end

CVodeWFtolerances(cvode_mem,efun) = __CVodeWFtolerances(convert(CVODEMemPtr,cvode_mem),efun)

function __CVodeRootInit(cvode_mem::CVODEMemPtr,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,libsundials_cvode),Cint,(CVODEMemPtr,Cint,CVRootFn),cvode_mem,nrtfn,g)
end

CVodeRootInit(cvode_mem,nrtfn,g) = __CVodeRootInit(convert(CVODEMemPtr,cvode_mem),nrtfn,CVRootFn_wrapper(g))

function __CVode(cvode_mem::CVODEMemPtr,tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint)
    ccall((:CVode,libsundials_cvode),Cint,(CVODEMemPtr,realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

CVode(cvode_mem,tout,yout,tret,itask) = __CVode(convert(CVODEMemPtr,cvode_mem),tout,convert(N_Vector,yout),pointer(tret),itask)

function __CVodeGetDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,libsundials_cvode),Cint,(CVODEMemPtr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

CVodeGetDky(cvode_mem,t,k,dky) = __CVodeGetDky(convert(CVODEMemPtr,cvode_mem),t,k,convert(N_Vector,dky))

function __CVodeGetWorkSpace(cvode_mem::CVODEMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:CVodeGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

CVodeGetWorkSpace(cvode_mem,lenrw,leniw) = __CVodeGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrw),pointer(leniw))

function __CVodeGetNumSteps(cvode_mem::CVODEMemPtr,nsteps::Ptr{Clong})
    ccall((:CVodeGetNumSteps,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nsteps)
end

CVodeGetNumSteps(cvode_mem,nsteps) = __CVodeGetNumSteps(convert(CVODEMemPtr,cvode_mem),pointer(nsteps))

function __CVodeGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevals::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevals)
end

CVodeGetNumRhsEvals(cvode_mem,nfevals) = __CVodeGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevals))

function __CVodeGetNumLinSolvSetups(cvode_mem::CVODEMemPtr,nlinsetups::Ptr{Clong})
    ccall((:CVodeGetNumLinSolvSetups,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlinsetups)
end

CVodeGetNumLinSolvSetups(cvode_mem,nlinsetups) = __CVodeGetNumLinSolvSetups(convert(CVODEMemPtr,cvode_mem),pointer(nlinsetups))

function __CVodeGetNumErrTestFails(cvode_mem::CVODEMemPtr,netfails::Ptr{Clong})
    ccall((:CVodeGetNumErrTestFails,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,netfails)
end

CVodeGetNumErrTestFails(cvode_mem,netfails) = __CVodeGetNumErrTestFails(convert(CVODEMemPtr,cvode_mem),pointer(netfails))

function __CVodeGetLastOrder(cvode_mem::CVODEMemPtr,qlast::Ptr{Cint})
    ccall((:CVodeGetLastOrder,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,qlast)
end

CVodeGetLastOrder(cvode_mem,qlast) = __CVodeGetLastOrder(convert(CVODEMemPtr,cvode_mem),pointer(qlast))

function __CVodeGetCurrentOrder(cvode_mem::CVODEMemPtr,qcur::Ptr{Cint})
    ccall((:CVodeGetCurrentOrder,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,qcur)
end

CVodeGetCurrentOrder(cvode_mem,qcur) = __CVodeGetCurrentOrder(convert(CVODEMemPtr,cvode_mem),pointer(qcur))

function __CVodeGetNumStabLimOrderReds(cvode_mem::CVODEMemPtr,nslred::Ptr{Clong})
    ccall((:CVodeGetNumStabLimOrderReds,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nslred)
end

CVodeGetNumStabLimOrderReds(cvode_mem,nslred) = __CVodeGetNumStabLimOrderReds(convert(CVODEMemPtr,cvode_mem),pointer(nslred))

function __CVodeGetActualInitStep(cvode_mem::CVODEMemPtr,hinused::Ptr{realtype})
    ccall((:CVodeGetActualInitStep,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hinused)
end

CVodeGetActualInitStep(cvode_mem,hinused) = __CVodeGetActualInitStep(convert(CVODEMemPtr,cvode_mem),pointer(hinused))

function __CVodeGetLastStep(cvode_mem::CVODEMemPtr,hlast::Ptr{realtype})
    ccall((:CVodeGetLastStep,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hlast)
end

CVodeGetLastStep(cvode_mem,hlast) = __CVodeGetLastStep(convert(CVODEMemPtr,cvode_mem),pointer(hlast))

function __CVodeGetCurrentStep(cvode_mem::CVODEMemPtr,hcur::Ptr{realtype})
    ccall((:CVodeGetCurrentStep,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hcur)
end

CVodeGetCurrentStep(cvode_mem,hcur) = __CVodeGetCurrentStep(convert(CVODEMemPtr,cvode_mem),pointer(hcur))

function __CVodeGetCurrentTime(cvode_mem::CVODEMemPtr,tcur::Ptr{realtype})
    ccall((:CVodeGetCurrentTime,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,tcur)
end

CVodeGetCurrentTime(cvode_mem,tcur) = __CVodeGetCurrentTime(convert(CVODEMemPtr,cvode_mem),pointer(tcur))

function __CVodeGetTolScaleFactor(cvode_mem::CVODEMemPtr,tolsfac::Ptr{realtype})
    ccall((:CVodeGetTolScaleFactor,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,tolsfac)
end

CVodeGetTolScaleFactor(cvode_mem,tolsfac) = __CVodeGetTolScaleFactor(convert(CVODEMemPtr,cvode_mem),pointer(tolsfac))

function __CVodeGetErrWeights(cvode_mem::CVODEMemPtr,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,libsundials_cvode),Cint,(CVODEMemPtr,N_Vector),cvode_mem,eweight)
end

CVodeGetErrWeights(cvode_mem,eweight) = __CVodeGetErrWeights(convert(CVODEMemPtr,cvode_mem),convert(N_Vector,eweight))

function __CVodeGetEstLocalErrors(cvode_mem::CVODEMemPtr,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,libsundials_cvode),Cint,(CVODEMemPtr,N_Vector),cvode_mem,ele)
end

CVodeGetEstLocalErrors(cvode_mem,ele) = __CVodeGetEstLocalErrors(convert(CVODEMemPtr,cvode_mem),convert(N_Vector,ele))

function __CVodeGetNumGEvals(cvode_mem::CVODEMemPtr,ngevals::Ptr{Clong})
    ccall((:CVodeGetNumGEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,ngevals)
end

CVodeGetNumGEvals(cvode_mem,ngevals) = __CVodeGetNumGEvals(convert(CVODEMemPtr,cvode_mem),pointer(ngevals))

function __CVodeGetRootInfo(cvode_mem::CVODEMemPtr,rootsfound::Ptr{Cint})
    ccall((:CVodeGetRootInfo,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,rootsfound)
end

CVodeGetRootInfo(cvode_mem,rootsfound) = __CVodeGetRootInfo(convert(CVODEMemPtr,cvode_mem),pointer(rootsfound))

function __CVodeGetIntegratorStats(cvode_mem::CVODEMemPtr,nsteps::Ptr{Clong},nfevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:CVodeGetIntegratorStats,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

CVodeGetIntegratorStats(cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur) = __CVodeGetIntegratorStats(convert(CVODEMemPtr,cvode_mem),pointer(nsteps),pointer(nfevals),pointer(nlinsetups),pointer(netfails),pointer(qlast),pointer(qcur),pointer(hinused),pointer(hlast),pointer(hcur),pointer(tcur))

function __CVodeGetNumNonlinSolvIters(cvode_mem::CVODEMemPtr,nniters::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvIters,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nniters)
end

CVodeGetNumNonlinSolvIters(cvode_mem,nniters) = __CVodeGetNumNonlinSolvIters(convert(CVODEMemPtr,cvode_mem),pointer(nniters))

function __CVodeGetNumNonlinSolvConvFails(cvode_mem::CVODEMemPtr,nncfails::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvConvFails,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nncfails)
end

CVodeGetNumNonlinSolvConvFails(cvode_mem,nncfails) = __CVodeGetNumNonlinSolvConvFails(convert(CVODEMemPtr,cvode_mem),pointer(nncfails))

function __CVodeGetNonlinSolvStats(cvode_mem::CVODEMemPtr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:CVodeGetNonlinSolvStats,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

CVodeGetNonlinSolvStats(cvode_mem,nniters,nncfails) = __CVodeGetNonlinSolvStats(convert(CVODEMemPtr,cvode_mem),pointer(nniters),pointer(nncfails))

function __CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

CVodeGetReturnFlagName(flag) = __CVodeGetReturnFlagName(convert(Clong,flag))

function CVodeFree(cvode_mem::Ref{CVODEMemPtr})
    ccall((:CVodeFree,libsundials_cvode),Void,(Ref{CVODEMemPtr},),cvode_mem)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVDlsSetDenseJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,libsundials_cvode),Cint,(CVODEMemPtr,CVDlsDenseJacFn),cvode_mem,jac)
end

CVDlsSetDenseJacFn(cvode_mem,jac) = __CVDlsSetDenseJacFn(convert(CVODEMemPtr,cvode_mem),jac)

function __CVDlsSetBandJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,libsundials_cvode),Cint,(CVODEMemPtr,CVDlsBandJacFn),cvode_mem,jac)
end

CVDlsSetBandJacFn(cvode_mem,jac) = __CVDlsSetBandJacFn(convert(CVODEMemPtr,cvode_mem),jac)

function __CVDlsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDlsGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

CVDlsGetWorkSpace(cvode_mem,lenrwLS,leniwLS) = __CVDlsGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))

function __CVDlsGetNumJacEvals(cvode_mem::CVODEMemPtr,njevals::Ptr{Clong})
    ccall((:CVDlsGetNumJacEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njevals)
end

CVDlsGetNumJacEvals(cvode_mem,njevals) = __CVDlsGetNumJacEvals(convert(CVODEMemPtr,cvode_mem),pointer(njevals))

function __CVDlsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDlsGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

CVDlsGetNumRhsEvals(cvode_mem,nfevalsLS) = __CVDlsGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsLS))

function __CVDlsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDlsGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

CVDlsGetLastFlag(cvode_mem,flag) = __CVDlsGetLastFlag(convert(CVODEMemPtr,cvode_mem),pointer(flag))

function __CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

CVDlsGetReturnFlagName(flag) = __CVDlsGetReturnFlagName(convert(Clong,flag))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSpilsSetPrecType(cvode_mem::CVODEMemPtr,pretype::Cint)
    ccall((:CVSpilsSetPrecType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,pretype)
end

CVSpilsSetPrecType(cvode_mem,pretype) = __CVSpilsSetPrecType(convert(CVODEMemPtr,cvode_mem),pretype)

function __CVSpilsSetGSType(cvode_mem::CVODEMemPtr,gstype::Cint)
    ccall((:CVSpilsSetGSType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,gstype)
end

CVSpilsSetGSType(cvode_mem,gstype) = __CVSpilsSetGSType(convert(CVODEMemPtr,cvode_mem),gstype)

function __CVSpilsSetMaxl(cvode_mem::CVODEMemPtr,maxl::Cint)
    ccall((:CVSpilsSetMaxl,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxl)
end

CVSpilsSetMaxl(cvode_mem,maxl) = __CVSpilsSetMaxl(convert(CVODEMemPtr,cvode_mem),maxl)

function __CVSpilsSetEpsLin(cvode_mem::CVODEMemPtr,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,eplifac)
end

CVSpilsSetEpsLin(cvode_mem,eplifac) = __CVSpilsSetEpsLin(convert(CVODEMemPtr,cvode_mem),eplifac)

function __CVSpilsSetPreconditioner(cvode_mem::CVODEMemPtr,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,libsundials_cvode),Cint,(CVODEMemPtr,CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

CVSpilsSetPreconditioner(cvode_mem,pset,psolve) = __CVSpilsSetPreconditioner(convert(CVODEMemPtr,cvode_mem),pset,psolve)

function __CVSpilsSetJacTimesVecFn(cvode_mem::CVODEMemPtr,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,libsundials_cvode),Cint,(CVODEMemPtr,CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

CVSpilsSetJacTimesVecFn(cvode_mem,jtv) = __CVSpilsSetJacTimesVecFn(convert(CVODEMemPtr,cvode_mem),jtv)

function __CVSpilsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS) = __CVSpilsGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))

function __CVSpilsGetNumPrecEvals(cvode_mem::CVODEMemPtr,npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npevals)
end

CVSpilsGetNumPrecEvals(cvode_mem,npevals) = __CVSpilsGetNumPrecEvals(convert(CVODEMemPtr,cvode_mem),pointer(npevals))

function __CVSpilsGetNumPrecSolves(cvode_mem::CVODEMemPtr,npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npsolves)
end

CVSpilsGetNumPrecSolves(cvode_mem,npsolves) = __CVSpilsGetNumPrecSolves(convert(CVODEMemPtr,cvode_mem),pointer(npsolves))

function __CVSpilsGetNumLinIters(cvode_mem::CVODEMemPtr,nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nliters)
end

CVSpilsGetNumLinIters(cvode_mem,nliters) = __CVSpilsGetNumLinIters(convert(CVODEMemPtr,cvode_mem),pointer(nliters))

function __CVSpilsGetNumConvFails(cvode_mem::CVODEMemPtr,nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlcfails)
end

CVSpilsGetNumConvFails(cvode_mem,nlcfails) = __CVSpilsGetNumConvFails(convert(CVODEMemPtr,cvode_mem),pointer(nlcfails))

function __CVSpilsGetNumJtimesEvals(cvode_mem::CVODEMemPtr,njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njvevals)
end

CVSpilsGetNumJtimesEvals(cvode_mem,njvevals) = __CVSpilsGetNumJtimesEvals(convert(CVODEMemPtr,cvode_mem),pointer(njvevals))

function __CVSpilsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS) = __CVSpilsGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsLS))

function __CVSpilsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

CVSpilsGetLastFlag(cvode_mem,flag) = __CVSpilsGetLastFlag(convert(CVODEMemPtr,cvode_mem),pointer(flag))

function __CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

CVSpilsGetReturnFlagName(flag) = __CVSpilsGetReturnFlagName(convert(Clong,flag))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVBand(cvode_mem::CVODEMemPtr,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:CVBand,libsundials_cvode),Cint,(CVODEMemPtr,Clong,Clong,Clong),cvode_mem,N,mupper,mlower)
end

CVBand(cvode_mem,N,mupper,mlower) = __CVBand(convert(CVODEMemPtr,cvode_mem),convert(Clong,N),convert(Clong,mupper),convert(Clong,mlower))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVBandPrecInit(cvode_mem::CVODEMemPtr,N::Clong,mu::Clong,ml::Clong)
    ccall((:CVBandPrecInit,libsundials_cvode),Cint,(CVODEMemPtr,Clong,Clong,Clong),cvode_mem,N,mu,ml)
end

CVBandPrecInit(cvode_mem,N,mu,ml) = __CVBandPrecInit(convert(CVODEMemPtr,cvode_mem),convert(Clong,N),convert(Clong,mu),convert(Clong,ml))

function __CVBandPrecGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBandPrecGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

CVBandPrecGetWorkSpace(cvode_mem,lenrwLS,leniwLS) = __CVBandPrecGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))

function __CVBandPrecGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsBP::Ptr{Clong})
    ccall((:CVBandPrecGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsBP)
end

CVBandPrecGetNumRhsEvals(cvode_mem,nfevalsBP) = __CVBandPrecGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsBP))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVBBDPrecInit(cvode_mem::CVODEMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,libsundials_cvode),Cint,(CVODEMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

CVBBDPrecInit(cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn) = __CVBBDPrecInit(convert(CVODEMemPtr,cvode_mem),convert(Clong,Nlocal),convert(Clong,mudq),convert(Clong,mldq),convert(Clong,mukeep),convert(Clong,mlkeep),dqrely,gloc,cfn)

function __CVBBDPrecReInit(cvode_mem::CVODEMemPtr,mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:CVBBDPrecReInit,libsundials_cvode),Cint,(CVODEMemPtr,Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

CVBBDPrecReInit(cvode_mem,mudq,mldq,dqrely) = __CVBBDPrecReInit(convert(CVODEMemPtr,cvode_mem),convert(Clong,mudq),convert(Clong,mldq),dqrely)

function __CVBBDPrecGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBBDPrecGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

CVBBDPrecGetWorkSpace(cvode_mem,lenrwLS,leniwLS) = __CVBBDPrecGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))

function __CVBBDPrecGetNumGfnEvals(cvode_mem::CVODEMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetNumGfnEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,ngevalsBBDP)
end

CVBBDPrecGetNumGfnEvals(cvode_mem,ngevalsBBDP) = __CVBBDPrecGetNumGfnEvals(convert(CVODEMemPtr,cvode_mem),pointer(ngevalsBBDP))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVDense(cvode_mem::CVODEMemPtr,N::Clong)
    ccall((:CVDense,libsundials_cvode),Cint,(CVODEMemPtr,Clong),cvode_mem,N)
end

CVDense(cvode_mem,N) = __CVDense(convert(CVODEMemPtr,cvode_mem),convert(Clong,N))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_diag.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVDiag(cvode_mem::CVODEMemPtr)
    ccall((:CVDiag,libsundials_cvode),Cint,(CVODEMemPtr,),cvode_mem)
end

CVDiag(cvode_mem) = __CVDiag(convert(CVODEMemPtr,cvode_mem))

function __CVDiagGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDiagGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

CVDiagGetWorkSpace(cvode_mem,lenrwLS,leniwLS) = __CVDiagGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))

function __CVDiagGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDiagGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

CVDiagGetNumRhsEvals(cvode_mem,nfevalsLS) = __CVDiagGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsLS))

function __CVDiagGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDiagGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

CVDiagGetLastFlag(cvode_mem,flag) = __CVDiagGetLastFlag(convert(CVODEMemPtr,cvode_mem),pointer(flag))

function __CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

CVDiagGetReturnFlagName(flag) = __CVDiagGetReturnFlagName(convert(Clong,flag))
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSpbcg(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSpbcg,libsundials_cvode),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

CVSpbcg(cvode_mem,pretype,maxl) = __CVSpbcg(convert(CVODEMemPtr,cvode_mem),pretype,maxl)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSpgmr(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSpgmr,libsundials_cvode),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

CVSpgmr(cvode_mem,pretype,maxl) = __CVSpgmr(convert(CVODEMemPtr,cvode_mem),pretype,maxl)
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSptfqmr(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSptfqmr,libsundials_cvode),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

CVSptfqmr(cvode_mem,pretype,maxl) = __CVSptfqmr(convert(CVODEMemPtr,cvode_mem),pretype,maxl)
