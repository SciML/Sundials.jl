# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_config.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_iterative.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_nvector.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __N_VClone(w::N_Vector)
    ccall((:N_VClone,libsundials_sundials),N_Vector,(N_Vector,),w)
end

N_VClone(w) = __N_VClone(convert(N_Vector,w))

function __N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,libsundials_sundials),N_Vector,(N_Vector,),w)
end

N_VCloneEmpty(w) = __N_VCloneEmpty(convert(N_Vector,w))

function __N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,libsundials_sundials),Void,(N_Vector,),v)
end

N_VDestroy(v) = __N_VDestroy(convert(N_Vector,v))

function __N_VSpace(v::N_Vector,lrw::Ptr{Clong},liw::Ptr{Clong})
    ccall((:N_VSpace,libsundials_sundials),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

N_VSpace(v,lrw,liw) = __N_VSpace(convert(N_Vector,v),pointer(lrw),pointer(liw))

function __N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,libsundials_sundials),Ptr{realtype},(N_Vector,),v)
end

N_VGetArrayPointer(v) = __N_VGetArrayPointer(convert(N_Vector,v))

function __N_VSetArrayPointer(v_data::Ptr{realtype},v::N_Vector)
    ccall((:N_VSetArrayPointer,libsundials_sundials),Void,(Ptr{realtype},N_Vector),v_data,v)
end

N_VSetArrayPointer(v_data,v) = __N_VSetArrayPointer(pointer(v_data),convert(N_Vector,v))

function __N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,libsundials_sundials),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

N_VLinearSum(a,x,b,y,z) = __N_VLinearSum(a,convert(N_Vector,x),b,convert(N_Vector,y),convert(N_Vector,z))

function __N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,libsundials_sundials),Void,(realtype,N_Vector),c,z)
end

N_VConst(c,z) = __N_VConst(c,convert(N_Vector,z))

function __N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,libsundials_sundials),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

N_VProd(x,y,z) = __N_VProd(convert(N_Vector,x),convert(N_Vector,y),convert(N_Vector,z))

function __N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,libsundials_sundials),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

N_VDiv(x,y,z) = __N_VDiv(convert(N_Vector,x),convert(N_Vector,y),convert(N_Vector,z))

function __N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,libsundials_sundials),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

N_VScale(c,x,z) = __N_VScale(c,convert(N_Vector,x),convert(N_Vector,z))

function __N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,libsundials_sundials),Void,(N_Vector,N_Vector),x,z)
end

N_VAbs(x,z) = __N_VAbs(convert(N_Vector,x),convert(N_Vector,z))

function __N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,libsundials_sundials),Void,(N_Vector,N_Vector),x,z)
end

N_VInv(x,z) = __N_VInv(convert(N_Vector,x),convert(N_Vector,z))

function __N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,libsundials_sundials),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

N_VAddConst(x,b,z) = __N_VAddConst(convert(N_Vector,x),b,convert(N_Vector,z))

function __N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,libsundials_sundials),realtype,(N_Vector,N_Vector),x,y)
end

N_VDotProd(x,y) = __N_VDotProd(convert(N_Vector,x),convert(N_Vector,y))

function __N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,libsundials_sundials),realtype,(N_Vector,),x)
end

N_VMaxNorm(x) = __N_VMaxNorm(convert(N_Vector,x))

function __N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,libsundials_sundials),realtype,(N_Vector,N_Vector),x,w)
end

N_VWrmsNorm(x,w) = __N_VWrmsNorm(convert(N_Vector,x),convert(N_Vector,w))

function __N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,libsundials_sundials),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

N_VWrmsNormMask(x,w,id) = __N_VWrmsNormMask(convert(N_Vector,x),convert(N_Vector,w),convert(N_Vector,id))

function __N_VMin(x::N_Vector)
    ccall((:N_VMin,libsundials_sundials),realtype,(N_Vector,),x)
end

N_VMin(x) = __N_VMin(convert(N_Vector,x))

function __N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,libsundials_sundials),realtype,(N_Vector,N_Vector),x,w)
end

N_VWL2Norm(x,w) = __N_VWL2Norm(convert(N_Vector,x),convert(N_Vector,w))

function __N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,libsundials_sundials),realtype,(N_Vector,),x)
end

N_VL1Norm(x) = __N_VL1Norm(convert(N_Vector,x))

function __N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,libsundials_sundials),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

N_VCompare(c,x,z) = __N_VCompare(c,convert(N_Vector,x),convert(N_Vector,z))

function __N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,libsundials_sundials),Cint,(N_Vector,N_Vector),x,z)
end

N_VInvTest(x,z) = __N_VInvTest(convert(N_Vector,x),convert(N_Vector,z))

function __N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,libsundials_sundials),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

N_VConstrMask(c,x,m) = __N_VConstrMask(convert(N_Vector,c),convert(N_Vector,x),convert(N_Vector,m))

function __N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,libsundials_sundials),realtype,(N_Vector,N_Vector),num,denom)
end

N_VMinQuotient(num,denom) = __N_VMinQuotient(convert(N_Vector,num),convert(N_Vector,denom))

function __N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,libsundials_sundials),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

N_VCloneEmptyVectorArray(count,w) = __N_VCloneEmptyVectorArray(count,convert(N_Vector,w))

function __N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,libsundials_sundials),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

N_VCloneVectorArray(count,w) = __N_VCloneVectorArray(count,convert(N_Vector,w))

function N_VDestroyVectorArray(vs::Ptr{N_Vector},count::Cint)
    ccall((:N_VDestroyVectorArray,libsundials_sundials),Void,(Ptr{N_Vector},Cint),vs,count)
end
# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_types.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_fnvector.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_math.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

