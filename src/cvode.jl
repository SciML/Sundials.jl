# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,libsundials_cvode),CVODEMemPtr,(Cint,Cint),lmm,iter)
end

function CVodeSetErrHandlerFn(cvode_mem::CVODEMemPtr,ehfun::CVErrHandlerFn,eh_data::Ptr{Void})
    ccall((:CVodeSetErrHandlerFn,libsundials_cvode),Cint,(CVODEMemPtr,CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem::CVODEMemPtr,errfp::Ptr{FILE})
    ccall((:CVodeSetErrFile,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem::CVODEMemPtr,user_data::Any)
    ccall((:CVodeSetUserData,libsundials_cvode),Cint,(CVODEMemPtr,Any),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem::CVODEMemPtr,maxord::Cint)
    ccall((:CVodeSetMaxOrd,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem::CVODEMemPtr,mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,libsundials_cvode),Cint,(CVODEMemPtr,Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem::CVODEMemPtr,mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem::CVODEMemPtr,stldet::Cint)
    ccall((:CVodeSetStabLimDet,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem::CVODEMemPtr,hin::realtype)
    ccall((:CVodeSetInitStep,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem::CVODEMemPtr,hmin::realtype)
    ccall((:CVodeSetMinStep,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem::CVODEMemPtr,hmax::realtype)
    ccall((:CVodeSetMaxStep,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem::CVODEMemPtr,tstop::realtype)
    ccall((:CVodeSetStopTime,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem::CVODEMemPtr,maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem::CVODEMemPtr,maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem::CVODEMemPtr,maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem::CVODEMemPtr,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem::CVODEMemPtr,iter::Cint)
    ccall((:CVodeSetIterType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem::CVODEMemPtr,rootdir::Ptr{Cint})
    ccall((:CVodeSetRootDirection,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem::CVODEMemPtr)
    ccall((:CVodeSetNoInactiveRootWarn,libsundials_cvode),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVodeInit(cvode_mem::CVODEMemPtr,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,libsundials_cvode),Cint,(CVODEMemPtr,CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem::CVODEMemPtr,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,libsundials_cvode),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem::CVODEMemPtr,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,libsundials_cvode),Cint,(CVODEMemPtr,realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem::CVODEMemPtr,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,libsundials_cvode),Cint,(CVODEMemPtr,realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem::CVODEMemPtr,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,libsundials_cvode),Cint,(CVODEMemPtr,CVEwtFn),cvode_mem,efun)
end

function CVodeRootInit(cvode_mem::CVODEMemPtr,nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,libsundials_cvode),Cint,(CVODEMemPtr,Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVode(cvode_mem::CVODEMemPtr,tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint)
    ccall((:CVode,libsundials_cvode),Cint,(CVODEMemPtr,realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem::CVODEMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,libsundials_cvode),Cint,(CVODEMemPtr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetWorkSpace(cvode_mem::CVODEMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:CVodeGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem::CVODEMemPtr,nsteps::Ptr{Clong})
    ccall((:CVodeGetNumSteps,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevals::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem::CVODEMemPtr,nlinsetups::Ptr{Clong})
    ccall((:CVodeGetNumLinSolvSetups,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem::CVODEMemPtr,netfails::Ptr{Clong})
    ccall((:CVodeGetNumErrTestFails,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem::CVODEMemPtr,qlast::Ptr{Cint})
    ccall((:CVodeGetLastOrder,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem::CVODEMemPtr,qcur::Ptr{Cint})
    ccall((:CVodeGetCurrentOrder,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem::CVODEMemPtr,nslred::Ptr{Clong})
    ccall((:CVodeGetNumStabLimOrderReds,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem::CVODEMemPtr,hinused::Ptr{realtype})
    ccall((:CVodeGetActualInitStep,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem::CVODEMemPtr,hlast::Ptr{realtype})
    ccall((:CVodeGetLastStep,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem::CVODEMemPtr,hcur::Ptr{realtype})
    ccall((:CVodeGetCurrentStep,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem::CVODEMemPtr,tcur::Ptr{realtype})
    ccall((:CVodeGetCurrentTime,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem::CVODEMemPtr,tolsfac::Ptr{realtype})
    ccall((:CVodeGetTolScaleFactor,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem::CVODEMemPtr,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,libsundials_cvode),Cint,(CVODEMemPtr,N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem::CVODEMemPtr,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,libsundials_cvode),Cint,(CVODEMemPtr,N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem::CVODEMemPtr,ngevals::Ptr{Clong})
    ccall((:CVodeGetNumGEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem::CVODEMemPtr,rootsfound::Ptr{Cint})
    ccall((:CVodeGetRootInfo,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem::CVODEMemPtr,nsteps::Ptr{Clong},nfevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:CVodeGetIntegratorStats,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem::CVODEMemPtr,nniters::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvIters,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem::CVODEMemPtr,nncfails::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvConvFails,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem::CVODEMemPtr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:CVodeGetNonlinSolvStats,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

function CVodeFree(cvode_mem::Ref{CVODEMemPtr})
    ccall((:CVodeFree,libsundials_cvode),Void,(Ref{CVODEMemPtr},),cvode_mem)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDlsSetDenseJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,libsundials_cvode),Cint,(CVODEMemPtr,CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,libsundials_cvode),Cint,(CVODEMemPtr,CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDlsGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem::CVODEMemPtr,njevals::Ptr{Clong})
    ccall((:CVDlsGetNumJacEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDlsGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDlsGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVSpilsSetPrecType(cvode_mem::CVODEMemPtr,pretype::Cint)
    ccall((:CVSpilsSetPrecType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem::CVODEMemPtr,gstype::Cint)
    ccall((:CVSpilsSetGSType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem::CVODEMemPtr,maxl::Cint)
    ccall((:CVSpilsSetMaxl,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem::CVODEMemPtr,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem::CVODEMemPtr,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,libsundials_cvode),Cint,(CVODEMemPtr,CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem::CVODEMemPtr,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,libsundials_cvode),Cint,(CVODEMemPtr,CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem::CVODEMemPtr,npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem::CVODEMemPtr,npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem::CVODEMemPtr,nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem::CVODEMemPtr,nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem::CVODEMemPtr,njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDlsSetDenseJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,libsundials_cvode),Cint,(CVODEMemPtr,CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,libsundials_cvode),Cint,(CVODEMemPtr,CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDlsGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem::CVODEMemPtr,njevals::Ptr{Clong})
    ccall((:CVDlsGetNumJacEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDlsGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDlsGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

function CVBand(cvode_mem::CVODEMemPtr,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:CVBand,libsundials_cvode),Cint,(CVODEMemPtr,Clong,Clong,Clong),cvode_mem,N,mupper,mlower)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVBandPrecInit(cvode_mem::CVODEMemPtr,N::Clong,mu::Clong,ml::Clong)
    ccall((:CVBandPrecInit,libsundials_cvode),Cint,(CVODEMemPtr,Clong,Clong,Clong),cvode_mem,N,mu,ml)
end

function CVBandPrecGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBandPrecGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBandPrecGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsBP::Ptr{Clong})
    ccall((:CVBandPrecGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsBP)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVBBDPrecInit(cvode_mem::CVODEMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,libsundials_cvode),Cint,(CVODEMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function CVBBDPrecReInit(cvode_mem::CVODEMemPtr,mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:CVBBDPrecReInit,libsundials_cvode),Cint,(CVODEMemPtr,Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBBDPrecGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem::CVODEMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetNumGfnEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,ngevalsBBDP)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDlsSetDenseJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,libsundials_cvode),Cint,(CVODEMemPtr,CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem::CVODEMemPtr,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,libsundials_cvode),Cint,(CVODEMemPtr,CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDlsGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem::CVODEMemPtr,njevals::Ptr{Clong})
    ccall((:CVDlsGetNumJacEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDlsGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDlsGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

function CVDense(cvode_mem::CVODEMemPtr,N::Clong)
    ccall((:CVDense,libsundials_cvode),Cint,(CVODEMemPtr,Clong),cvode_mem,N)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_diag.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDiag(cvode_mem::CVODEMemPtr)
    ccall((:CVDiag,libsundials_cvode),Cint,(CVODEMemPtr,),cvode_mem)
end

function CVDiagGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDiagGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDiagGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVDiagGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDiagGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVDiagGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVSpilsSetPrecType(cvode_mem::CVODEMemPtr,pretype::Cint)
    ccall((:CVSpilsSetPrecType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem::CVODEMemPtr,gstype::Cint)
    ccall((:CVSpilsSetGSType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem::CVODEMemPtr,maxl::Cint)
    ccall((:CVSpilsSetMaxl,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem::CVODEMemPtr,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem::CVODEMemPtr,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,libsundials_cvode),Cint,(CVODEMemPtr,CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem::CVODEMemPtr,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,libsundials_cvode),Cint,(CVODEMemPtr,CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem::CVODEMemPtr,npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem::CVODEMemPtr,npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem::CVODEMemPtr,nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem::CVODEMemPtr,nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem::CVODEMemPtr,njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

function CVSpbcg(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSpbcg,libsundials_cvode),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVSpilsSetPrecType(cvode_mem::CVODEMemPtr,pretype::Cint)
    ccall((:CVSpilsSetPrecType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem::CVODEMemPtr,gstype::Cint)
    ccall((:CVSpilsSetGSType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem::CVODEMemPtr,maxl::Cint)
    ccall((:CVSpilsSetMaxl,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem::CVODEMemPtr,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem::CVODEMemPtr,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,libsundials_cvode),Cint,(CVODEMemPtr,CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem::CVODEMemPtr,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,libsundials_cvode),Cint,(CVODEMemPtr,CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem::CVODEMemPtr,npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem::CVODEMemPtr,npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem::CVODEMemPtr,nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem::CVODEMemPtr,nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem::CVODEMemPtr,njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

function CVSpgmr(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSpgmr,libsundials_cvode),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVSpilsSetPrecType(cvode_mem::CVODEMemPtr,pretype::Cint)
    ccall((:CVSpilsSetPrecType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem::CVODEMemPtr,gstype::Cint)
    ccall((:CVSpilsSetGSType,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem::CVODEMemPtr,maxl::Cint)
    ccall((:CVSpilsSetMaxl,libsundials_cvode),Cint,(CVODEMemPtr,Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem::CVODEMemPtr,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,libsundials_cvode),Cint,(CVODEMemPtr,realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem::CVODEMemPtr,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,libsundials_cvode),Cint,(CVODEMemPtr,CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem::CVODEMemPtr,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,libsundials_cvode),Cint,(CVODEMemPtr,CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem::CVODEMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem::CVODEMemPtr,npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem::CVODEMemPtr,npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem::CVODEMemPtr,nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem::CVODEMemPtr,nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem::CVODEMemPtr,njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem::CVODEMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem::CVODEMemPtr,flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,libsundials_cvode),Cint,(CVODEMemPtr,Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

function CVSptfqmr(cvode_mem::CVODEMemPtr,pretype::Cint,maxl::Cint)
    ccall((:CVSptfqmr,libsundials_cvode),Cint,(CVODEMemPtr,Cint,Cint),cvode_mem,pretype,maxl)
end
