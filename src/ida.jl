# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDACreate()
    ccall((:IDACreate,libsundials_ida),IDAMemPtr,())
end

function IDASetErrHandlerFn(ida_mem::IDAMemPtr,ehfun::IDAErrHandlerFn,eh_data::Ptr{Void})
    ccall((:IDASetErrHandlerFn,libsundials_ida),Cint,(IDAMemPtr,IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

function IDASetErrFile(ida_mem::IDAMemPtr,errfp::Ptr{FILE})
    ccall((:IDASetErrFile,libsundials_ida),Cint,(IDAMemPtr,Ptr{FILE}),ida_mem,errfp)
end

function IDASetUserData(ida_mem::IDAMemPtr,user_data::Any)
    ccall((:IDASetUserData,libsundials_ida),Cint,(IDAMemPtr,Any),ida_mem,user_data)
end

function IDASetMaxOrd(ida_mem::IDAMemPtr,maxord::Cint)
    ccall((:IDASetMaxOrd,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxord)
end

function IDASetMaxNumSteps(ida_mem::IDAMemPtr,mxsteps::Clong)
    ccall((:IDASetMaxNumSteps,libsundials_ida),Cint,(IDAMemPtr,Clong),ida_mem,mxsteps)
end

function IDASetInitStep(ida_mem::IDAMemPtr,hin::realtype)
    ccall((:IDASetInitStep,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,hin)
end

function IDASetMaxStep(ida_mem::IDAMemPtr,hmax::realtype)
    ccall((:IDASetMaxStep,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,hmax)
end

function IDASetStopTime(ida_mem::IDAMemPtr,tstop::realtype)
    ccall((:IDASetStopTime,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,tstop)
end

function IDASetNonlinConvCoef(ida_mem::IDAMemPtr,epcon::realtype)
    ccall((:IDASetNonlinConvCoef,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,epcon)
end

function IDASetMaxErrTestFails(ida_mem::IDAMemPtr,maxnef::Cint)
    ccall((:IDASetMaxErrTestFails,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxnef)
end

function IDASetMaxNonlinIters(ida_mem::IDAMemPtr,maxcor::Cint)
    ccall((:IDASetMaxNonlinIters,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxcor)
end

function IDASetMaxConvFails(ida_mem::IDAMemPtr,maxncf::Cint)
    ccall((:IDASetMaxConvFails,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxncf)
end

function IDASetSuppressAlg(ida_mem::IDAMemPtr,suppressalg::Cint)
    ccall((:IDASetSuppressAlg,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,suppressalg)
end

function IDASetId(ida_mem::IDAMemPtr,id::N_Vector)
    ccall((:IDASetId,libsundials_ida),Cint,(IDAMemPtr,N_Vector),ida_mem,id)
end

function IDASetConstraints(ida_mem::IDAMemPtr,constraints::N_Vector)
    ccall((:IDASetConstraints,libsundials_ida),Cint,(IDAMemPtr,N_Vector),ida_mem,constraints)
end

function IDASetRootDirection(ida_mem::IDAMemPtr,rootdir::Ptr{Cint})
    ccall((:IDASetRootDirection,libsundials_ida),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem::IDAMemPtr)
    ccall((:IDASetNoInactiveRootWarn,libsundials_ida),Cint,(IDAMemPtr,),ida_mem)
end

function IDAInit(ida_mem::IDAMemPtr,res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,libsundials_ida),Cint,(IDAMemPtr,IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

function IDAReInit(ida_mem::IDAMemPtr,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,libsundials_ida),Cint,(IDAMemPtr,realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

function IDASStolerances(ida_mem::IDAMemPtr,reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,libsundials_ida),Cint,(IDAMemPtr,realtype,realtype),ida_mem,reltol,abstol)
end

function IDASVtolerances(ida_mem::IDAMemPtr,reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,libsundials_ida),Cint,(IDAMemPtr,realtype,N_Vector),ida_mem,reltol,abstol)
end

function IDAWFtolerances(ida_mem::IDAMemPtr,efun::IDAEwtFn)
    ccall((:IDAWFtolerances,libsundials_ida),Cint,(IDAMemPtr,IDAEwtFn),ida_mem,efun)
end

function IDASetNonlinConvCoefIC(ida_mem::IDAMemPtr,epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,epiccon)
end

function IDASetMaxNumStepsIC(ida_mem::IDAMemPtr,maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxnh)
end

function IDASetMaxNumJacsIC(ida_mem::IDAMemPtr,maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxnj)
end

function IDASetMaxNumItersIC(ida_mem::IDAMemPtr,maxnit::Cint)
    ccall((:IDASetMaxNumItersIC,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxnit)
end

function IDASetLineSearchOffIC(ida_mem::IDAMemPtr,lsoff::Cint)
    ccall((:IDASetLineSearchOffIC,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,lsoff)
end

function IDASetStepToleranceIC(ida_mem::IDAMemPtr,steptol::realtype)
    ccall((:IDASetStepToleranceIC,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,steptol)
end

function IDARootInit(ida_mem::IDAMemPtr,nrtfn::Cint,g::IDARootFn)
    ccall((:IDARootInit,libsundials_ida),Cint,(IDAMemPtr,Cint,IDARootFn),ida_mem,nrtfn,g)
end

function IDACalcIC(ida_mem::IDAMemPtr,icopt::Cint,tout1::realtype)
    ccall((:IDACalcIC,libsundials_ida),Cint,(IDAMemPtr,Cint,realtype),ida_mem,icopt,tout1)
end

function IDASolve(ida_mem::IDAMemPtr,tout::realtype,tret::Ptr{realtype},yret::N_Vector,ypret::N_Vector,itask::Cint)
    ccall((:IDASolve,libsundials_ida),Cint,(IDAMemPtr,realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

function IDAGetDky(ida_mem::IDAMemPtr,t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetDky,libsundials_ida),Cint,(IDAMemPtr,realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetWorkSpace(ida_mem::IDAMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:IDAGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

function IDAGetNumSteps(ida_mem::IDAMemPtr,nsteps::Ptr{Clong})
    ccall((:IDAGetNumSteps,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nsteps)
end

function IDAGetNumResEvals(ida_mem::IDAMemPtr,nrevals::Ptr{Clong})
    ccall((:IDAGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem::IDAMemPtr,nlinsetups::Ptr{Clong})
    ccall((:IDAGetNumLinSolvSetups,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem::IDAMemPtr,netfails::Ptr{Clong})
    ccall((:IDAGetNumErrTestFails,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,netfails)
end

function IDAGetNumBacktrackOps(ida_mem::IDAMemPtr,nbacktr::Ptr{Clong})
    ccall((:IDAGetNumBacktrackOps,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nbacktr)
end

function IDAGetConsistentIC(ida_mem::IDAMemPtr,yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,libsundials_ida),Cint,(IDAMemPtr,N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

function IDAGetLastOrder(ida_mem::IDAMemPtr,klast::Ptr{Cint})
    ccall((:IDAGetLastOrder,libsundials_ida),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,klast)
end

function IDAGetCurrentOrder(ida_mem::IDAMemPtr,kcur::Ptr{Cint})
    ccall((:IDAGetCurrentOrder,libsundials_ida),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,kcur)
end

function IDAGetActualInitStep(ida_mem::IDAMemPtr,hinused::Ptr{realtype})
    ccall((:IDAGetActualInitStep,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hinused)
end

function IDAGetLastStep(ida_mem::IDAMemPtr,hlast::Ptr{realtype})
    ccall((:IDAGetLastStep,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hlast)
end

function IDAGetCurrentStep(ida_mem::IDAMemPtr,hcur::Ptr{realtype})
    ccall((:IDAGetCurrentStep,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,hcur)
end

function IDAGetCurrentTime(ida_mem::IDAMemPtr,tcur::Ptr{realtype})
    ccall((:IDAGetCurrentTime,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,tcur)
end

function IDAGetTolScaleFactor(ida_mem::IDAMemPtr,tolsfact::Ptr{realtype})
    ccall((:IDAGetTolScaleFactor,libsundials_ida),Cint,(IDAMemPtr,Ptr{realtype}),ida_mem,tolsfact)
end

function IDAGetErrWeights(ida_mem::IDAMemPtr,eweight::N_Vector)
    ccall((:IDAGetErrWeights,libsundials_ida),Cint,(IDAMemPtr,N_Vector),ida_mem,eweight)
end

function IDAGetEstLocalErrors(ida_mem::IDAMemPtr,ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,libsundials_ida),Cint,(IDAMemPtr,N_Vector),ida_mem,ele)
end

function IDAGetNumGEvals(ida_mem::IDAMemPtr,ngevals::Ptr{Clong})
    ccall((:IDAGetNumGEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,ngevals)
end

function IDAGetRootInfo(ida_mem::IDAMemPtr,rootsfound::Ptr{Cint})
    ccall((:IDAGetRootInfo,libsundials_ida),Cint,(IDAMemPtr,Ptr{Cint}),ida_mem,rootsfound)
end

function IDAGetIntegratorStats(ida_mem::IDAMemPtr,nsteps::Ptr{Clong},nrevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:IDAGetIntegratorStats,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem::IDAMemPtr,nniters::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvIters,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem::IDAMemPtr,nncfails::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvConvFails,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nncfails)
end

function IDAGetNonlinSolvStats(ida_mem::IDAMemPtr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:IDAGetNonlinSolvStats,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

function IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDAFree(ida_mem::Ref{IDAMemPtr})
    ccall((:IDAFree,libsundials_ida),Void,(Ref{IDAMemPtr},),ida_mem)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDADlsSetDenseJacFn(ida_mem::IDAMemPtr,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,libsundials_ida),Cint,(IDAMemPtr,IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem::IDAMemPtr,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,libsundials_ida),Cint,(IDAMemPtr,IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem::IDAMemPtr,njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem::IDAMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDASpilsSetPreconditioner(ida_mem::IDAMemPtr,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_ida),Cint,(IDAMemPtr,IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem::IDAMemPtr,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_ida),Cint,(IDAMemPtr,IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem::IDAMemPtr,gstype::Cint)
    ccall((:IDASpilsSetGSType,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem::IDAMemPtr,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpilsSetMaxl,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem::IDAMemPtr,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem::IDAMemPtr,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem::IDAMemPtr,npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem::IDAMemPtr,npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem::IDAMemPtr,nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem::IDAMemPtr,nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem::IDAMemPtr,njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem::IDAMemPtr,nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDADlsSetDenseJacFn(ida_mem::IDAMemPtr,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,libsundials_ida),Cint,(IDAMemPtr,IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem::IDAMemPtr,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,libsundials_ida),Cint,(IDAMemPtr,IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem::IDAMemPtr,njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem::IDAMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDABand(ida_mem::IDAMemPtr,Neq::Clong,mupper::Clong,mlower::Clong)
    ccall((:IDABand,libsundials_ida),Cint,(IDAMemPtr,Clong,Clong,Clong),ida_mem,Neq,mupper,mlower)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDABBDPrecInit(ida_mem::IDAMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_yy::realtype,Gres::IDABBDLocalFn,Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit,libsundials_ida),Cint,(IDAMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFn,IDABBDCommFn),ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)
end

function IDABBDPrecReInit(ida_mem::IDAMemPtr,mudq::Clong,mldq::Clong,dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit,libsundials_ida),Cint,(IDAMemPtr,Clong,Clong,realtype),ida_mem,mudq,mldq,dq_rel_yy)
end

function IDABBDPrecGetWorkSpace(ida_mem::IDAMemPtr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwBBDP,leniwBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem::IDAMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetNumGfnEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,ngevalsBBDP)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDADlsSetDenseJacFn(ida_mem::IDAMemPtr,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,libsundials_ida),Cint,(IDAMemPtr,IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem::IDAMemPtr,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,libsundials_ida),Cint,(IDAMemPtr,IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem::IDAMemPtr,njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem::IDAMemPtr,nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDADense(ida_mem::IDAMemPtr,Neq::Clong)
    ccall((:IDADense,libsundials_ida),Cint,(IDAMemPtr,Clong),ida_mem,Neq)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDASpilsSetPreconditioner(ida_mem::IDAMemPtr,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_ida),Cint,(IDAMemPtr,IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem::IDAMemPtr,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_ida),Cint,(IDAMemPtr,IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem::IDAMemPtr,gstype::Cint)
    ccall((:IDASpilsSetGSType,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem::IDAMemPtr,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpilsSetMaxl,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem::IDAMemPtr,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem::IDAMemPtr,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem::IDAMemPtr,npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem::IDAMemPtr,npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem::IDAMemPtr,nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem::IDAMemPtr,nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem::IDAMemPtr,njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem::IDAMemPtr,nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDASpbcg(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpbcg,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDASpilsSetPreconditioner(ida_mem::IDAMemPtr,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_ida),Cint,(IDAMemPtr,IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem::IDAMemPtr,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_ida),Cint,(IDAMemPtr,IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem::IDAMemPtr,gstype::Cint)
    ccall((:IDASpilsSetGSType,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem::IDAMemPtr,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpilsSetMaxl,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem::IDAMemPtr,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem::IDAMemPtr,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem::IDAMemPtr,npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem::IDAMemPtr,npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem::IDAMemPtr,nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem::IDAMemPtr,nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem::IDAMemPtr,njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem::IDAMemPtr,nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDASpgmr(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpgmr,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/ida/ida_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDASpilsSetPreconditioner(ida_mem::IDAMemPtr,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_ida),Cint,(IDAMemPtr,IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem::IDAMemPtr,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_ida),Cint,(IDAMemPtr,IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem::IDAMemPtr,gstype::Cint)
    ccall((:IDASpilsSetGSType,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem::IDAMemPtr,maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASpilsSetMaxl,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem::IDAMemPtr,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem::IDAMemPtr,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_ida),Cint,(IDAMemPtr,realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem::IDAMemPtr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem::IDAMemPtr,npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem::IDAMemPtr,npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem::IDAMemPtr,nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem::IDAMemPtr,nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem::IDAMemPtr,njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem::IDAMemPtr,nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem::IDAMemPtr,flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_ida),Cint,(IDAMemPtr,Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDASptfqmr(ida_mem::IDAMemPtr,maxl::Cint)
    ccall((:IDASptfqmr,libsundials_ida),Cint,(IDAMemPtr,Cint),ida_mem,maxl)
end
