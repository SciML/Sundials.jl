# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvode/cvode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,libsundials_cvode),CVODEMemPtr,(Cint,Cint),lmm,iter)
end

function CVodeCreate(lmm,iter)
    __CVodeCreate(convert(Cint,lmm),convert(Cint,iter))
end

function __CVodeSetErrHandlerFn(cvode_mem::CVODEMemPtr,ehfun::CVErrHandlerFn,eh_data::Ptr{Void})
    ccall((:CVodeSetErrHandlerFn,libsundials_cvode),Cint,(CVODEMemPtr,CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrHandlerFn(cvode_mem,ehfun,eh_data)
    __CVodeSetErrHandlerFn(convert(CVODEMemPtr,cvode_mem),ehfun,pointer(eh_data))
end

function __CVodeSetErrFile(cvode_mem::CVODEMemPtr,errfp::Ptr{FILE})
    ccall((:CVodeSetErrFile,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetErrFile(cvode_mem,errfp)
    __CVodeSetErrFile(convert(CVODEMemPtr,cvode_mem),errfp)
end

function __CVodeSetUserData(cvode_mem::CVODEMemPtr,user_data::Any)
    ccall((:CVodeSetUserData,libsundials_cvode),Cint,(CVODEMemPtr,Any),cvode_mem,user_data)
end

function CVodeSetUserData(cvode_mem,user_data)
    __CVodeSetUserData(convert(CVODEMemPtr,cvode_mem),user_data)
end

function __CVodeSetMaxOrd(cvode_mem::CVODEMemPtr,maxord::Cint)
    ccall((:CVodeSetMaxOrd,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxord)
end

function CVodeSetMaxOrd(cvode_mem,maxord)
    __CVodeSetMaxOrd(convert(CVODEMemPtr,cvode_mem),convert(Cint,maxord))
end

function __CVodeSetMaxNumSteps(cvode_mem::CVODEMemPtr,mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,libsundials_cvode),Cint,(CVODEMemPtr,Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxNumSteps(cvode_mem,mxsteps)
    __CVodeSetMaxNumSteps(convert(CVODEMemPtr,cvode_mem),convert(Clong,mxsteps))
end

function __CVodeSetMaxHnilWarns(cvode_mem::CVODEMemPtr,mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,mxhnil)
end

function CVodeSetMaxHnilWarns(cvode_mem,mxhnil)
    __CVodeSetMaxHnilWarns(convert(CVODEMemPtr,cvode_mem),convert(Cint,mxhnil))
end

function __CVodeSetStabLimDet(cvode_mem::CVODEMemPtr,stldet::Cint)
    ccall((:CVodeSetStabLimDet,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,stldet)
end

function CVodeSetStabLimDet(cvode_mem,stldet)
    __CVodeSetStabLimDet(convert(CVODEMemPtr,cvode_mem),convert(Cint,stldet))
end

function __CVodeSetInitStep(cvode_mem::CVODEMemPtr,hin::realtype)
    ccall((:CVodeSetInitStep,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,hin)
end

function CVodeSetInitStep(cvode_mem,hin)
    __CVodeSetInitStep(convert(CVODEMemPtr,cvode_mem),hin)
end

function __CVodeSetMinStep(cvode_mem::CVODEMemPtr,hmin::realtype)
    ccall((:CVodeSetMinStep,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,hmin)
end

function CVodeSetMinStep(cvode_mem,hmin)
    __CVodeSetMinStep(convert(CVODEMemPtr,cvode_mem),hmin)
end

function __CVodeSetMaxStep(cvode_mem::CVODEMemPtr,hmax::realtype)
    ccall((:CVodeSetMaxStep,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,hmax)
end

function CVodeSetMaxStep(cvode_mem,hmax)
    __CVodeSetMaxStep(convert(CVODEMemPtr,cvode_mem),hmax)
end

function __CVodeSetStopTime(cvode_mem::CVODEMemPtr,tstop::realtype)
    ccall((:CVodeSetStopTime,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,tstop)
end

function CVodeSetStopTime(cvode_mem,tstop)
    __CVodeSetStopTime(convert(CVODEMemPtr,cvode_mem),tstop)
end

function __CVodeSetMaxErrTestFails(cvode_mem::CVODEMemPtr,maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxnef)
end

function CVodeSetMaxErrTestFails(cvode_mem,maxnef)
    __CVodeSetMaxErrTestFails(convert(CVODEMemPtr,cvode_mem),convert(Cint,maxnef))
end

function __CVodeSetMaxNonlinIters(cvode_mem::CVODEMemPtr,maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxcor)
end

function CVodeSetMaxNonlinIters(cvode_mem,maxcor)
    __CVodeSetMaxNonlinIters(convert(CVODEMemPtr,cvode_mem),convert(Cint,maxcor))
end

function __CVodeSetMaxConvFails(cvode_mem::CVODEMemPtr,maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxncf)
end

function CVodeSetMaxConvFails(cvode_mem,maxncf)
    __CVodeSetMaxConvFails(convert(CVODEMemPtr,cvode_mem),convert(Cint,maxncf))
end

function __CVodeSetNonlinConvCoef(cvode_mem::CVODEMemPtr,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,nlscoef)
end

function CVodeSetNonlinConvCoef(cvode_mem,nlscoef)
    __CVodeSetNonlinConvCoef(convert(CVODEMemPtr,cvode_mem),nlscoef)
end

function __CVodeSetIterType(cvode_mem::CVODEMemPtr,iter::Cint)
    ccall((:CVodeSetIterType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,iter)
end

function CVodeSetIterType(cvode_mem,iter)
    __CVodeSetIterType(convert(CVODEMemPtr,cvode_mem),convert(Cint,iter))
end

function __CVodeSetRootDirection(cvode_mem::CVODEMemPtr,rootdir::Ptr{Cint})
    ccall((:CVodeSetRootDirection,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetRootDirection(cvode_mem,rootdir)
    __CVodeSetRootDirection(convert(CVODEMemPtr,cvode_mem),pointer(rootdir))
end

function __CVodeSetNoInactiveRootWarn(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSetNoInactiveRootWarn,libsundials_cvode),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVodeSetNoInactiveRootWarn(cvode_mem)
    __CVodeSetNoInactiveRootWarn(convert(CVODEMemPtr,cvode_mem))
end

function __CVodeInit(cvode_mem::CVODEMemPtr,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,libsundials_cvode),Cint,(CVODEMemPtr,CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeInit(cvode_mem,f,t0,y0)
    __y0 = convert(NVector,y0)
    __CVodeInit(convert(CVODEMemPtr,cvode_mem),CVRhsFn_wrapper(f),t0,convert(N_Vector,__y0))
end

function __CVodeReInit(cvode_mem::CVODEMemPtr,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,libsundials_cvode),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeReInit(cvode_mem,t0,y0)
    __y0 = convert(NVector,y0)
    __CVodeReInit(convert(CVODEMemPtr,cvode_mem),t0,convert(N_Vector,__y0))
end

function __CVodeSStolerances(cvode_mem::CVODEMemPtr,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,libsundials_cvode),Cint,(CVODEMemPtr,realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSStolerances(cvode_mem,reltol,abstol)
    __CVodeSStolerances(convert(CVODEMemPtr,cvode_mem),reltol,abstol)
end

function __CVodeSVtolerances(cvode_mem::CVODEMemPtr,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,libsundials_cvode),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem,reltol,abstol)
    __abstol = convert(NVector,abstol)
    __CVodeSVtolerances(convert(CVODEMemPtr,cvode_mem),reltol,convert(N_Vector,__abstol))
end

function __CVodeWFtolerances(cvode_mem::CVODEMemPtr,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,libsundials_cvode),Cint,(CVODEMemPtr,CVEwtFn),cvode_mem,efun)
end

function CVodeWFtolerances(cvode_mem,efun)
    __CVodeWFtolerances(convert(CVODEMemPtr,cvode_mem),efun)
end

function __CVodeRootInit(cvode_mem::CVODEMemPtr,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,libsundials_cvode),Cint,(CVODEMemPtr,Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVodeRootInit(cvode_mem,nrtfn,g)
    __CVodeRootInit(convert(CVODEMemPtr,cvode_mem),convert(Cint,nrtfn),CVRootFn_wrapper(g))
end

function __CVode(cvode_mem::CVODEMemPtr,tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint)
    ccall((:CVode,libsundials_cvode),Cint,(CVODEMemPtr,realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVode(cvode_mem,tout,yout,tret,itask)
    __yout = convert(NVector,yout)
    __CVode(convert(CVODEMemPtr,cvode_mem),tout,convert(N_Vector,__yout),pointer(tret),convert(Cint,itask))
end

function __CVodeGetDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,libsundials_cvode),Cint,(CVODEMemPtr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetDky(cvode_mem,t,k,dky)
    __dky = convert(NVector,dky)
    __CVodeGetDky(convert(CVODEMemPtr,cvode_mem),t,convert(Cint,k),convert(N_Vector,__dky))
end

function __CVodeGetWorkSpace(cvode_mem::CVODEMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:CVodeGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetWorkSpace(cvode_mem,lenrw,leniw)
    __CVodeGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrw),pointer(leniw))
end

function __CVodeGetNumSteps(cvode_mem::CVODEMemPtr,nsteps::Ptr{Clong})
    ccall((:CVodeGetNumSteps,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumSteps(cvode_mem,nsteps)
    __CVodeGetNumSteps(convert(CVODEMemPtr,cvode_mem),pointer(nsteps))
end

function __CVodeGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevals::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumRhsEvals(cvode_mem,nfevals)
    __CVodeGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevals))
end

function __CVodeGetNumLinSolvSetups(cvode_mem::CVODEMemPtr,nlinsetups::Ptr{Clong})
    ccall((:CVodeGetNumLinSolvSetups,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumLinSolvSetups(cvode_mem,nlinsetups)
    __CVodeGetNumLinSolvSetups(convert(CVODEMemPtr,cvode_mem),pointer(nlinsetups))
end

function __CVodeGetNumErrTestFails(cvode_mem::CVODEMemPtr,netfails::Ptr{Clong})
    ccall((:CVodeGetNumErrTestFails,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetNumErrTestFails(cvode_mem,netfails)
    __CVodeGetNumErrTestFails(convert(CVODEMemPtr,cvode_mem),pointer(netfails))
end

function __CVodeGetLastOrder(cvode_mem::CVODEMemPtr,qlast::Ptr{Cint})
    ccall((:CVodeGetLastOrder,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetLastOrder(cvode_mem,qlast)
    __CVodeGetLastOrder(convert(CVODEMemPtr,cvode_mem),pointer(qlast))
end

function __CVodeGetCurrentOrder(cvode_mem::CVODEMemPtr,qcur::Ptr{Cint})
    ccall((:CVodeGetCurrentOrder,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetCurrentOrder(cvode_mem,qcur)
    __CVodeGetCurrentOrder(convert(CVODEMemPtr,cvode_mem),pointer(qcur))
end

function __CVodeGetNumStabLimOrderReds(cvode_mem::CVODEMemPtr,nslred::Ptr{Clong})
    ccall((:CVodeGetNumStabLimOrderReds,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetNumStabLimOrderReds(cvode_mem,nslred)
    __CVodeGetNumStabLimOrderReds(convert(CVODEMemPtr,cvode_mem),pointer(nslred))
end

function __CVodeGetActualInitStep(cvode_mem::CVODEMemPtr,hinused::Ptr{realtype})
    ccall((:CVodeGetActualInitStep,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetActualInitStep(cvode_mem,hinused)
    __CVodeGetActualInitStep(convert(CVODEMemPtr,cvode_mem),pointer(hinused))
end

function __CVodeGetLastStep(cvode_mem::CVODEMemPtr,hlast::Ptr{realtype})
    ccall((:CVodeGetLastStep,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetLastStep(cvode_mem,hlast)
    __CVodeGetLastStep(convert(CVODEMemPtr,cvode_mem),pointer(hlast))
end

function __CVodeGetCurrentStep(cvode_mem::CVODEMemPtr,hcur::Ptr{realtype})
    ccall((:CVodeGetCurrentStep,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentStep(cvode_mem,hcur)
    __CVodeGetCurrentStep(convert(CVODEMemPtr,cvode_mem),pointer(hcur))
end

function __CVodeGetCurrentTime(cvode_mem::CVODEMemPtr,tcur::Ptr{realtype})
    ccall((:CVodeGetCurrentTime,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetCurrentTime(cvode_mem,tcur)
    __CVodeGetCurrentTime(convert(CVODEMemPtr,cvode_mem),pointer(tcur))
end

function __CVodeGetTolScaleFactor(cvode_mem::CVODEMemPtr,tolsfac::Ptr{realtype})
    ccall((:CVodeGetTolScaleFactor,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetTolScaleFactor(cvode_mem,tolsfac)
    __CVodeGetTolScaleFactor(convert(CVODEMemPtr,cvode_mem),pointer(tolsfac))
end

function __CVodeGetErrWeights(cvode_mem::CVODEMemPtr,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,libsundials_cvode),Cint,(CVODEMemPtr,N_Vector),cvode_mem,eweight)
end

function CVodeGetErrWeights(cvode_mem,eweight)
    __eweight = convert(NVector,eweight)
    __CVodeGetErrWeights(convert(CVODEMemPtr,cvode_mem),convert(N_Vector,__eweight))
end

function __CVodeGetEstLocalErrors(cvode_mem::CVODEMemPtr,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,libsundials_cvode),Cint,(CVODEMemPtr,N_Vector),cvode_mem,ele)
end

function CVodeGetEstLocalErrors(cvode_mem,ele)
    __ele = convert(NVector,ele)
    __CVodeGetEstLocalErrors(convert(CVODEMemPtr,cvode_mem),convert(N_Vector,__ele))
end

function __CVodeGetNumGEvals(cvode_mem::CVODEMemPtr,ngevals::Ptr{Clong})
    ccall((:CVodeGetNumGEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetNumGEvals(cvode_mem,ngevals)
    __CVodeGetNumGEvals(convert(CVODEMemPtr,cvode_mem),pointer(ngevals))
end

function __CVodeGetRootInfo(cvode_mem::CVODEMemPtr,rootsfound::Ptr{Cint})
    ccall((:CVodeGetRootInfo,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetRootInfo(cvode_mem,rootsfound)
    __CVodeGetRootInfo(convert(CVODEMemPtr,cvode_mem),pointer(rootsfound))
end

function __CVodeGetIntegratorStats(cvode_mem::CVODEMemPtr,nsteps::Ptr{Clong},nfevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:CVodeGetIntegratorStats,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetIntegratorStats(cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
    __CVodeGetIntegratorStats(convert(CVODEMemPtr,cvode_mem),pointer(nsteps),pointer(nfevals),pointer(nlinsetups),pointer(netfails),pointer(qlast),pointer(qcur),pointer(hinused),pointer(hlast),pointer(hcur),pointer(tcur))
end

function __CVodeGetNumNonlinSolvIters(cvode_mem::CVODEMemPtr,nniters::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvIters,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvIters(cvode_mem,nniters)
    __CVodeGetNumNonlinSolvIters(convert(CVODEMemPtr,cvode_mem),pointer(nniters))
end

function __CVodeGetNumNonlinSolvConvFails(cvode_mem::CVODEMemPtr,nncfails::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvConvFails,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem,nncfails)
    __CVodeGetNumNonlinSolvConvFails(convert(CVODEMemPtr,cvode_mem),pointer(nncfails))
end

function __CVodeGetNonlinSolvStats(cvode_mem::CVODEMemPtr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:CVodeGetNonlinSolvStats,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem,nniters,nncfails)
    __CVodeGetNonlinSolvStats(convert(CVODEMemPtr,cvode_mem),pointer(nniters),pointer(nncfails))
end

function __CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

function CVodeGetReturnFlagName(flag)
    __CVodeGetReturnFlagName(convert(Clong,flag))
end

function CVodeFree(cvode_mem::Ref{CVODEMemPtr})
    ccall((:CVodeFree,libsundials_cvode),Void,(Ref{CVODEMemPtr},),cvode_mem)
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvode/cvode_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVDlsSetDenseJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,libsundials_cvode),Cint,(CVODEMemPtr,CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetDenseJacFn(cvode_mem,jac)
    __CVDlsSetDenseJacFn(convert(CVODEMemPtr,cvode_mem),jac)
end

function __CVDlsSetBandJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,libsundials_cvode),Cint,(CVODEMemPtr,CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem,jac)
    __CVDlsSetBandJacFn(convert(CVODEMemPtr,cvode_mem),jac)
end

function __CVDlsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDlsGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    __CVDlsGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __CVDlsGetNumJacEvals(cvode_mem::CVODEMemPtr,njevals::Ptr{Clong})
    ccall((:CVDlsGetNumJacEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumJacEvals(cvode_mem,njevals)
    __CVDlsGetNumJacEvals(convert(CVODEMemPtr,cvode_mem),pointer(njevals))
end

function __CVDlsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDlsGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetNumRhsEvals(cvode_mem,nfevalsLS)
    __CVDlsGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsLS))
end

function __CVDlsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDlsGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetLastFlag(cvode_mem,flag)
    __CVDlsGetLastFlag(convert(CVODEMemPtr,cvode_mem),pointer(flag))
end

function __CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

function CVDlsGetReturnFlagName(flag)
    __CVDlsGetReturnFlagName(convert(Clong,flag))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvode/cvode_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSpilsSetPrecType(cvode_mem::CVODEMemPtr,pretype::Cint)
    ccall((:CVSpilsSetPrecType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,pretype)
end

function CVSpilsSetPrecType(cvode_mem,pretype)
    __CVSpilsSetPrecType(convert(CVODEMemPtr,cvode_mem),convert(Cint,pretype))
end

function __CVSpilsSetGSType(cvode_mem::CVODEMemPtr,gstype::Cint)
    ccall((:CVSpilsSetGSType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,gstype)
end

function CVSpilsSetGSType(cvode_mem,gstype)
    __CVSpilsSetGSType(convert(CVODEMemPtr,cvode_mem),convert(Cint,gstype))
end

function __CVSpilsSetMaxl(cvode_mem::CVODEMemPtr,maxl::Cint)
    ccall((:CVSpilsSetMaxl,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxl)
end

function CVSpilsSetMaxl(cvode_mem,maxl)
    __CVSpilsSetMaxl(convert(CVODEMemPtr,cvode_mem),convert(Cint,maxl))
end

function __CVSpilsSetEpsLin(cvode_mem::CVODEMemPtr,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,eplifac)
end

function CVSpilsSetEpsLin(cvode_mem,eplifac)
    __CVSpilsSetEpsLin(convert(CVODEMemPtr,cvode_mem),eplifac)
end

function __CVSpilsSetPreconditioner(cvode_mem::CVODEMemPtr,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,libsundials_cvode),Cint,(CVODEMemPtr,CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetPreconditioner(cvode_mem,pset,psolve)
    __CVSpilsSetPreconditioner(convert(CVODEMemPtr,cvode_mem),pset,psolve)
end

function __CVSpilsSetJacTimesVecFn(cvode_mem::CVODEMemPtr,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,libsundials_cvode),Cint,(CVODEMemPtr,CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsSetJacTimesVecFn(cvode_mem,jtv)
    __CVSpilsSetJacTimesVecFn(convert(CVODEMemPtr,cvode_mem),jtv)
end

function __CVSpilsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    __CVSpilsGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __CVSpilsGetNumPrecEvals(cvode_mem::CVODEMemPtr,npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecEvals(cvode_mem,npevals)
    __CVSpilsGetNumPrecEvals(convert(CVODEMemPtr,cvode_mem),pointer(npevals))
end

function __CVSpilsGetNumPrecSolves(cvode_mem::CVODEMemPtr,npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumPrecSolves(cvode_mem,npsolves)
    __CVSpilsGetNumPrecSolves(convert(CVODEMemPtr,cvode_mem),pointer(npsolves))
end

function __CVSpilsGetNumLinIters(cvode_mem::CVODEMemPtr,nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumLinIters(cvode_mem,nliters)
    __CVSpilsGetNumLinIters(convert(CVODEMemPtr,cvode_mem),pointer(nliters))
end

function __CVSpilsGetNumConvFails(cvode_mem::CVODEMemPtr,nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumConvFails(cvode_mem,nlcfails)
    __CVSpilsGetNumConvFails(convert(CVODEMemPtr,cvode_mem),pointer(nlcfails))
end

function __CVSpilsGetNumJtimesEvals(cvode_mem::CVODEMemPtr,njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumJtimesEvals(cvode_mem,njvevals)
    __CVSpilsGetNumJtimesEvals(convert(CVODEMemPtr,cvode_mem),pointer(njvevals))
end

function __CVSpilsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetNumRhsEvals(cvode_mem,nfevalsLS)
    __CVSpilsGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsLS))
end

function __CVSpilsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetLastFlag(cvode_mem,flag)
    __CVSpilsGetLastFlag(convert(CVODEMemPtr,cvode_mem),pointer(flag))
end

function __CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

function CVSpilsGetReturnFlagName(flag)
    __CVSpilsGetReturnFlagName(convert(Clong,flag))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvode/cvode_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVBand(cvode_mem::CVODEMemPtr,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:CVBand,libsundials_cvode),Cint,(CVODEMemPtr,Clong,Clong,Clong),cvode_mem,N,mupper,mlower)
end

function CVBand(cvode_mem,N,mupper,mlower)
    __CVBand(convert(CVODEMemPtr,cvode_mem),convert(Clong,N),convert(Clong,mupper),convert(Clong,mlower))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvode/cvode_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVBandPrecInit(cvode_mem::CVODEMemPtr,N::Clong,mu::Clong,ml::Clong)
    ccall((:CVBandPrecInit,libsundials_cvode),Cint,(CVODEMemPtr,Clong,Clong,Clong),cvode_mem,N,mu,ml)
end

function CVBandPrecInit(cvode_mem,N,mu,ml)
    __CVBandPrecInit(convert(CVODEMemPtr,cvode_mem),convert(Clong,N),convert(Clong,mu),convert(Clong,ml))
end

function __CVBandPrecGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBandPrecGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBandPrecGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    __CVBandPrecGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __CVBandPrecGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsBP::Ptr{Clong})
    ccall((:CVBandPrecGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsBP)
end

function CVBandPrecGetNumRhsEvals(cvode_mem,nfevalsBP)
    __CVBandPrecGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsBP))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvode/cvode_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVBBDPrecInit(cvode_mem::CVODEMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,libsundials_cvode),Cint,(CVODEMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function CVBBDPrecInit(cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
    __CVBBDPrecInit(convert(CVODEMemPtr,cvode_mem),convert(Clong,Nlocal),convert(Clong,mudq),convert(Clong,mldq),convert(Clong,mukeep),convert(Clong,mlkeep),dqrely,gloc,cfn)
end

function __CVBBDPrecReInit(cvode_mem::CVODEMemPtr,mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:CVBBDPrecReInit,libsundials_cvode),Cint,(CVODEMemPtr,Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

function CVBBDPrecReInit(cvode_mem,mudq,mldq,dqrely)
    __CVBBDPrecReInit(convert(CVODEMemPtr,cvode_mem),convert(Clong,mudq),convert(Clong,mldq),dqrely)
end

function __CVBBDPrecGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBBDPrecGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBBDPrecGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    __CVBBDPrecGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __CVBBDPrecGetNumGfnEvals(cvode_mem::CVODEMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetNumGfnEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,ngevalsBBDP)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem,ngevalsBBDP)
    __CVBBDPrecGetNumGfnEvals(convert(CVODEMemPtr,cvode_mem),pointer(ngevalsBBDP))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvode/cvode_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVDense(cvode_mem::CVODEMemPtr,N::Clong)
    ccall((:CVDense,libsundials_cvode),Cint,(CVODEMemPtr,Clong),cvode_mem,N)
end

function CVDense(cvode_mem,N)
    __CVDense(convert(CVODEMemPtr,cvode_mem),convert(Clong,N))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvode/cvode_diag.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVDiag(cvode_mem::CVODEMemPtr)
    ccall((:CVDiag,libsundials_cvode),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVDiag(cvode_mem)
    __CVDiag(convert(CVODEMemPtr,cvode_mem))
end

function __CVDiagGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDiagGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDiagGetWorkSpace(cvode_mem,lenrwLS,leniwLS)
    __CVDiagGetWorkSpace(convert(CVODEMemPtr,cvode_mem),pointer(lenrwLS),pointer(leniwLS))
end

function __CVDiagGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDiagGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDiagGetNumRhsEvals(cvode_mem,nfevalsLS)
    __CVDiagGetNumRhsEvals(convert(CVODEMemPtr,cvode_mem),pointer(nfevalsLS))
end

function __CVDiagGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDiagGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVDiagGetLastFlag(cvode_mem,flag)
    __CVDiagGetLastFlag(convert(CVODEMemPtr,cvode_mem),pointer(flag))
end

function __CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

function CVDiagGetReturnFlagName(flag)
    __CVDiagGetReturnFlagName(convert(Clong,flag))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvode/cvode_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvode/cvode_sparse.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSlsSetSparseJacFn(cvode_mem::CVODEMemPtr,jac::CVSlsSparseJacFn)
    ccall((:CVSlsSetSparseJacFn,libsundials_cvode),Cint,(CVODEMemPtr,CVSlsSparseJacFn),cvode_mem,jac)
end

function CVSlsSetSparseJacFn(cvode_mem,jac)
    __CVSlsSetSparseJacFn(convert(CVODEMemPtr,cvode_mem),jac)
end

function __CVSlsGetNumJacEvals(ida_mem::IDAMemPtr,njevals::Ptr{Clong})
    ccall((:CVSlsGetNumJacEvals,libsundials_cvode),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njevals)
end

function CVSlsGetNumJacEvals(ida_mem,njevals)
    __CVSlsGetNumJacEvals(convert(IDAMemPtr,ida_mem),pointer(njevals))
end

function __CVSlsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:CVSlsGetLastFlag,libsundials_cvode),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function CVSlsGetLastFlag(ida_mem,flag)
    __CVSlsGetLastFlag(convert(IDAMemPtr,ida_mem),pointer(flag))
end

function __CVSlsGetReturnFlagName(flag::Clong)
    ccall((:CVSlsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

function CVSlsGetReturnFlagName(flag)
    __CVSlsGetReturnFlagName(convert(Clong,flag))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvode/cvode_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSpbcg(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSpbcg,libsundials_cvode),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSpbcg(cvode_mem,pretype,maxl)
    __CVSpbcg(convert(CVODEMemPtr,cvode_mem),convert(Cint,pretype),convert(Cint,maxl))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvode/cvode_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSpgmr(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSpgmr,libsundials_cvode),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSpgmr(cvode_mem,pretype,maxl)
    __CVSpgmr(convert(CVODEMemPtr,cvode_mem),convert(Cint,pretype),convert(Cint,maxl))
end
# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Sundials/deps/usr/include/cvode/cvode_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __CVSptfqmr(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSptfqmr,libsundials_cvode),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSptfqmr(cvode_mem,pretype,maxl)
    __CVSptfqmr(convert(CVODEMemPtr,cvode_mem),convert(Cint,pretype),convert(Cint,maxl))
end
