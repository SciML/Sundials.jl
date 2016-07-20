# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINCreate()
    ccall((:KINCreate,libsundials_kinsol),KINMemPtr,())
end

function KINSetErrHandlerFn(kinmem::KINMemPtr,ehfun::KINErrHandlerFn,eh_data::Ptr{Void})
    ccall((:KINSetErrHandlerFn,libsundials_kinsol),Cint,(KINMemPtr,KINErrHandlerFn,Ptr{Void}),kinmem,ehfun,eh_data)
end

function KINSetErrFile(kinmem::KINMemPtr,errfp::Ptr{FILE})
    ccall((:KINSetErrFile,libsundials_kinsol),Cint,(KINMemPtr,Ptr{FILE}),kinmem,errfp)
end

function KINSetInfoHandlerFn(kinmem::KINMemPtr,ihfun::KINInfoHandlerFn,ih_data::Ptr{Void})
    ccall((:KINSetInfoHandlerFn,libsundials_kinsol),Cint,(KINMemPtr,KINInfoHandlerFn,Ptr{Void}),kinmem,ihfun,ih_data)
end

function KINSetInfoFile(kinmem::KINMemPtr,infofp::Ptr{FILE})
    ccall((:KINSetInfoFile,libsundials_kinsol),Cint,(KINMemPtr,Ptr{FILE}),kinmem,infofp)
end

function KINSetUserData(kinmem::KINMemPtr,user_data::Ptr{Void})
    ccall((:KINSetUserData,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Void}),kinmem,user_data)
end

function KINSetPrintLevel(kinmemm::KINMemPtr,printfl::Cint)
    ccall((:KINSetPrintLevel,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmemm,printfl)
end

function KINSetNumMaxIters(kinmem::KINMemPtr,mxiter::Clong)
    ccall((:KINSetNumMaxIters,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,mxiter)
end

function KINSetNoInitSetup(kinmem::KINMemPtr,noInitSetup::Cint)
    ccall((:KINSetNoInitSetup,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,noInitSetup)
end

function KINSetNoResMon(kinmem::KINMemPtr,noNNIResMon::Cint)
    ccall((:KINSetNoResMon,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,noNNIResMon)
end

function KINSetMaxSetupCalls(kinmem::KINMemPtr,msbset::Clong)
    ccall((:KINSetMaxSetupCalls,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,msbset)
end

function KINSetMaxSubSetupCalls(kinmem::KINMemPtr,msbsetsub::Clong)
    ccall((:KINSetMaxSubSetupCalls,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,msbsetsub)
end

function KINSetEtaForm(kinmem::KINMemPtr,etachoice::Cint)
    ccall((:KINSetEtaForm,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,etachoice)
end

function KINSetEtaConstValue(kinmem::KINMemPtr,eta::realtype)
    ccall((:KINSetEtaConstValue,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,eta)
end

function KINSetEtaParams(kinmem::KINMemPtr,egamma::realtype,ealpha::realtype)
    ccall((:KINSetEtaParams,libsundials_kinsol),Cint,(KINMemPtr,realtype,realtype),kinmem,egamma,ealpha)
end

function KINSetResMonParams(kinmem::KINMemPtr,omegamin::realtype,omegamax::realtype)
    ccall((:KINSetResMonParams,libsundials_kinsol),Cint,(KINMemPtr,realtype,realtype),kinmem,omegamin,omegamax)
end

function KINSetResMonConstValue(kinmem::KINMemPtr,omegaconst::realtype)
    ccall((:KINSetResMonConstValue,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,omegaconst)
end

function KINSetNoMinEps(kinmem::KINMemPtr,noMinEps::Cint)
    ccall((:KINSetNoMinEps,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,noMinEps)
end

function KINSetMaxNewtonStep(kinmem::KINMemPtr,mxnewtstep::realtype)
    ccall((:KINSetMaxNewtonStep,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,mxnewtstep)
end

function KINSetMaxBetaFails(kinmem::KINMemPtr,mxnbcf::Clong)
    ccall((:KINSetMaxBetaFails,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,mxnbcf)
end

function KINSetRelErrFunc(kinmem::KINMemPtr,relfunc::realtype)
    ccall((:KINSetRelErrFunc,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,relfunc)
end

function KINSetFuncNormTol(kinmem::KINMemPtr,fnormtol::realtype)
    ccall((:KINSetFuncNormTol,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,fnormtol)
end

function KINSetScaledStepTol(kinmem::KINMemPtr,scsteptol::realtype)
    ccall((:KINSetScaledStepTol,libsundials_kinsol),Cint,(KINMemPtr,realtype),kinmem,scsteptol)
end

function KINSetConstraints(kinmem::KINMemPtr,constraints::N_Vector)
    ccall((:KINSetConstraints,libsundials_kinsol),Cint,(KINMemPtr,N_Vector),kinmem,constraints)
end

function KINSetSysFunc(kinmem::KINMemPtr,func::KINSysFn)
    ccall((:KINSetSysFunc,libsundials_kinsol),Cint,(KINMemPtr,KINSysFn),kinmem,func)
end

function KINInit(kinmem::KINMemPtr,func::KINSysFn,tmpl::N_Vector)
    ccall((:KINInit,libsundials_kinsol),Cint,(KINMemPtr,KINSysFn,N_Vector),kinmem,func,tmpl)
end

function KINSol(kinmem::KINMemPtr,uu::N_Vector,strategy::Cint,u_scale::N_Vector,f_scale::N_Vector)
    ccall((:KINSol,libsundials_kinsol),Cint,(KINMemPtr,N_Vector,Cint,N_Vector,N_Vector),kinmem,uu,strategy,u_scale,f_scale)
end

function KINGetWorkSpace(kinmem::KINMemPtr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:KINGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrw,leniw)
end

function KINGetNumNonlinSolvIters(kinmem::KINMemPtr,nniters::Ptr{Clong})
    ccall((:KINGetNumNonlinSolvIters,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nniters)
end

function KINGetNumFuncEvals(kinmem::KINMemPtr,nfevals::Ptr{Clong})
    ccall((:KINGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevals)
end

function KINGetNumBetaCondFails(kinmem::KINMemPtr,nbcfails::Ptr{Clong})
    ccall((:KINGetNumBetaCondFails,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nbcfails)
end

function KINGetNumBacktrackOps(kinmem::KINMemPtr,nbacktr::Ptr{Clong})
    ccall((:KINGetNumBacktrackOps,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nbacktr)
end

function KINGetFuncNorm(kinmem::KINMemPtr,fnorm::Ptr{realtype})
    ccall((:KINGetFuncNorm,libsundials_kinsol),Cint,(KINMemPtr,Ptr{realtype}),kinmem,fnorm)
end

function KINGetStepLength(kinmem::KINMemPtr,steplength::Ptr{realtype})
    ccall((:KINGetStepLength,libsundials_kinsol),Cint,(KINMemPtr,Ptr{realtype}),kinmem,steplength)
end

function KINGetReturnFlagName(flag::Clong)
    ccall((:KINGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end

function KINFree(kinmem::Ref{KINMemPtr})
    ccall((:KINFree,libsundials_kinsol),Void,(Ref{KINMemPtr},),kinmem)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINDlsSetDenseJacFn(kinmem::KINMemPtr,jac::KINDlsDenseJacFn)
    ccall((:KINDlsSetDenseJacFn,libsundials_kinsol),Cint,(KINMemPtr,KINDlsDenseJacFn),kinmem,jac)
end

function KINDlsSetBandJacFn(kinmem::KINMemPtr,jac::KINDlsBandJacFn)
    ccall((:KINDlsSetBandJacFn,libsundials_kinsol),Cint,(KINMemPtr,KINDlsBandJacFn),kinmem,jac)
end

function KINDlsGetWorkSpace(kinmem::KINMemPtr,lenrwB::Ptr{Clong},leniwB::Ptr{Clong})
    ccall((:KINDlsGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwB,leniwB)
end

function KINDlsGetNumJacEvals(kinmem::KINMemPtr,njevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumJacEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,njevalsB)
end

function KINDlsGetNumFuncEvals(kinmem::KINMemPtr,nfevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevalsB)
end

function KINDlsGetLastFlag(kinmem::KINMemPtr,flag::Ptr{Clong})
    ccall((:KINDlsGetLastFlag,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,flag)
end

function KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINSpilsSetMaxRestarts(kinmem::KINMemPtr,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem::KINMemPtr,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,libsundials_kinsol),Cint,(KINMemPtr,KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem::KINMemPtr,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,libsundials_kinsol),Cint,(KINMemPtr,KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem::KINMemPtr,lenrwSG::Ptr{Clong},leniwSG::Ptr{Clong})
    ccall((:KINSpilsGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem::KINMemPtr,npevals::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem::KINMemPtr,npsolves::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecSolves,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem::KINMemPtr,nliters::Ptr{Clong})
    ccall((:KINSpilsGetNumLinIters,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem::KINMemPtr,nlcfails::Ptr{Clong})
    ccall((:KINSpilsGetNumConvFails,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem::KINMemPtr,njvevals::Ptr{Clong})
    ccall((:KINSpilsGetNumJtimesEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem::KINMemPtr,nfevalsS::Ptr{Clong})
    ccall((:KINSpilsGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem::KINMemPtr,flag::Ptr{Clong})
    ccall((:KINSpilsGetLastFlag,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINDlsSetDenseJacFn(kinmem::KINMemPtr,jac::KINDlsDenseJacFn)
    ccall((:KINDlsSetDenseJacFn,libsundials_kinsol),Cint,(KINMemPtr,KINDlsDenseJacFn),kinmem,jac)
end

function KINDlsSetBandJacFn(kinmem::KINMemPtr,jac::KINDlsBandJacFn)
    ccall((:KINDlsSetBandJacFn,libsundials_kinsol),Cint,(KINMemPtr,KINDlsBandJacFn),kinmem,jac)
end

function KINDlsGetWorkSpace(kinmem::KINMemPtr,lenrwB::Ptr{Clong},leniwB::Ptr{Clong})
    ccall((:KINDlsGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwB,leniwB)
end

function KINDlsGetNumJacEvals(kinmem::KINMemPtr,njevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumJacEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,njevalsB)
end

function KINDlsGetNumFuncEvals(kinmem::KINMemPtr,nfevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevalsB)
end

function KINDlsGetLastFlag(kinmem::KINMemPtr,flag::Ptr{Clong})
    ccall((:KINDlsGetLastFlag,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,flag)
end

function KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end

function KINBand(kinmem::KINMemPtr,N::Clong,mupper::Clong,mlower::Clong)
    ccall((:KINBand,libsundials_kinsol),Cint,(KINMemPtr,Clong,Clong,Clong),kinmem,N,mupper,mlower)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINBBDPrecInit(kinmem::KINMemPtr,Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_uu::realtype,gloc::KINLocalFn,gcomm::KINCommFn)
    ccall((:KINBBDPrecInit,libsundials_kinsol),Cint,(KINMemPtr,Clong,Clong,Clong,Clong,Clong,realtype,KINLocalFn,KINCommFn),kinmem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_uu,gloc,gcomm)
end

function KINBBDPrecGetWorkSpace(kinmem::KINMemPtr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:KINBBDPrecGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwBBDP,leniwBBDP)
end

function KINBBDPrecGetNumGfnEvals(kinmem::KINMemPtr,ngevalsBBDP::Ptr{Clong})
    ccall((:KINBBDPrecGetNumGfnEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,ngevalsBBDP)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINDlsSetDenseJacFn(kinmem::KINMemPtr,jac::KINDlsDenseJacFn)
    ccall((:KINDlsSetDenseJacFn,libsundials_kinsol),Cint,(KINMemPtr,KINDlsDenseJacFn),kinmem,jac)
end

function KINDlsSetBandJacFn(kinmem::KINMemPtr,jac::KINDlsBandJacFn)
    ccall((:KINDlsSetBandJacFn,libsundials_kinsol),Cint,(KINMemPtr,KINDlsBandJacFn),kinmem,jac)
end

function KINDlsGetWorkSpace(kinmem::KINMemPtr,lenrwB::Ptr{Clong},leniwB::Ptr{Clong})
    ccall((:KINDlsGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwB,leniwB)
end

function KINDlsGetNumJacEvals(kinmem::KINMemPtr,njevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumJacEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,njevalsB)
end

function KINDlsGetNumFuncEvals(kinmem::KINMemPtr,nfevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevalsB)
end

function KINDlsGetLastFlag(kinmem::KINMemPtr,flag::Ptr{Clong})
    ccall((:KINDlsGetLastFlag,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,flag)
end

function KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end

function KINDense(kinmem::KINMemPtr,N::Clong)
    ccall((:KINDense,libsundials_kinsol),Cint,(KINMemPtr,Clong),kinmem,N)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINSpilsSetMaxRestarts(kinmem::KINMemPtr,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem::KINMemPtr,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,libsundials_kinsol),Cint,(KINMemPtr,KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem::KINMemPtr,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,libsundials_kinsol),Cint,(KINMemPtr,KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem::KINMemPtr,lenrwSG::Ptr{Clong},leniwSG::Ptr{Clong})
    ccall((:KINSpilsGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem::KINMemPtr,npevals::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem::KINMemPtr,npsolves::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecSolves,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem::KINMemPtr,nliters::Ptr{Clong})
    ccall((:KINSpilsGetNumLinIters,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem::KINMemPtr,nlcfails::Ptr{Clong})
    ccall((:KINSpilsGetNumConvFails,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem::KINMemPtr,njvevals::Ptr{Clong})
    ccall((:KINSpilsGetNumJtimesEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem::KINMemPtr,nfevalsS::Ptr{Clong})
    ccall((:KINSpilsGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem::KINMemPtr,flag::Ptr{Clong})
    ccall((:KINSpilsGetLastFlag,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end

function KINSpbcg(kinmem::KINMemPtr,maxl::Cint)
    ccall((:KINSpbcg,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxl)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINSpilsSetMaxRestarts(kinmem::KINMemPtr,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem::KINMemPtr,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,libsundials_kinsol),Cint,(KINMemPtr,KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem::KINMemPtr,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,libsundials_kinsol),Cint,(KINMemPtr,KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem::KINMemPtr,lenrwSG::Ptr{Clong},leniwSG::Ptr{Clong})
    ccall((:KINSpilsGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem::KINMemPtr,npevals::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem::KINMemPtr,npsolves::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecSolves,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem::KINMemPtr,nliters::Ptr{Clong})
    ccall((:KINSpilsGetNumLinIters,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem::KINMemPtr,nlcfails::Ptr{Clong})
    ccall((:KINSpilsGetNumConvFails,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem::KINMemPtr,njvevals::Ptr{Clong})
    ccall((:KINSpilsGetNumJtimesEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem::KINMemPtr,nfevalsS::Ptr{Clong})
    ccall((:KINSpilsGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem::KINMemPtr,flag::Ptr{Clong})
    ccall((:KINSpilsGetLastFlag,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end

function KINSpgmr(kinmem::KINMemPtr,maxl::Cint)
    ccall((:KINSpgmr,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxl)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function KINSpilsSetMaxRestarts(kinmem::KINMemPtr,maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem::KINMemPtr,pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,libsundials_kinsol),Cint,(KINMemPtr,KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem::KINMemPtr,jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,libsundials_kinsol),Cint,(KINMemPtr,KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem::KINMemPtr,lenrwSG::Ptr{Clong},leniwSG::Ptr{Clong})
    ccall((:KINSpilsGetWorkSpace,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem::KINMemPtr,npevals::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem::KINMemPtr,npsolves::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecSolves,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem::KINMemPtr,nliters::Ptr{Clong})
    ccall((:KINSpilsGetNumLinIters,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem::KINMemPtr,nlcfails::Ptr{Clong})
    ccall((:KINSpilsGetNumConvFails,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem::KINMemPtr,njvevals::Ptr{Clong})
    ccall((:KINSpilsGetNumJtimesEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem::KINMemPtr,nfevalsS::Ptr{Clong})
    ccall((:KINSpilsGetNumFuncEvals,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem::KINMemPtr,flag::Ptr{Clong})
    ccall((:KINSpilsGetLastFlag,libsundials_kinsol),Cint,(KINMemPtr,Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,libsundials_kinsol),Ptr{UInt8},(Clong,),flag)
end

function KINSptfqmr(kinmem::KINMemPtr,maxl::Cint)
    ccall((:KINSptfqmr,libsundials_kinsol),Cint,(KINMemPtr,Cint),kinmem,maxl)
end
