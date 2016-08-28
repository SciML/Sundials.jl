# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/sundials/sundials_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/sundials/sundials_config.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/sundials/sundials_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/sundials/sundials_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/sundials/sundials_iterative.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/sundials/sundials_nvector.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function __N_VClone(w::N_Vector)
    ccall((:N_VClone,libsundials_sundials),N_Vector,(N_Vector,),w)
end

function N_VClone(w)
    __w = convert(NVector,w)
    __N_VClone(convert(N_Vector,__w))
end

function __N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,libsundials_sundials),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w)
    __w = convert(NVector,w)
    __N_VCloneEmpty(convert(N_Vector,__w))
end

function __N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,libsundials_sundials),Void,(N_Vector,),v)
end

function N_VDestroy(v)
    __v = convert(NVector,v)
    __N_VDestroy(convert(N_Vector,__v))
end

function __N_VSpace(v::N_Vector,lrw::Ptr{Clong},liw::Ptr{Clong})
    ccall((:N_VSpace,libsundials_sundials),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VSpace(v,lrw,liw)
    __v = convert(NVector,v)
    __N_VSpace(convert(N_Vector,__v),pointer(lrw),pointer(liw))
end

function __N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,libsundials_sundials),Ptr{realtype},(N_Vector,),v)
end

function N_VGetArrayPointer(v)
    __v = convert(NVector,v)
    __N_VGetArrayPointer(convert(N_Vector,__v))
end

function __N_VSetArrayPointer(v_data::Ptr{realtype},v::N_Vector)
    ccall((:N_VSetArrayPointer,libsundials_sundials),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VSetArrayPointer(v_data,v)
    __v = convert(NVector,v)
    __N_VSetArrayPointer(pointer(v_data),convert(N_Vector,__v))
end

function __N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,libsundials_sundials),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VLinearSum(a,x,b,y,z)
    __x = convert(NVector,x)
    __y = convert(NVector,y)
    __z = convert(NVector,z)
    __N_VLinearSum(a,convert(N_Vector,__x),b,convert(N_Vector,__y),convert(N_Vector,__z))
end

function __N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,libsundials_sundials),Void,(realtype,N_Vector),c,z)
end

function N_VConst(c,z)
    __z = convert(NVector,z)
    __N_VConst(c,convert(N_Vector,__z))
end

function __N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,libsundials_sundials),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VProd(x,y,z)
    __x = convert(NVector,x)
    __y = convert(NVector,y)
    __z = convert(NVector,z)
    __N_VProd(convert(N_Vector,__x),convert(N_Vector,__y),convert(N_Vector,__z))
end

function __N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,libsundials_sundials),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x,y,z)
    __x = convert(NVector,x)
    __y = convert(NVector,y)
    __z = convert(NVector,z)
    __N_VDiv(convert(N_Vector,__x),convert(N_Vector,__y),convert(N_Vector,__z))
end

function __N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,libsundials_sundials),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VScale(c,x,z)
    __x = convert(NVector,x)
    __z = convert(NVector,z)
    __N_VScale(c,convert(N_Vector,__x),convert(N_Vector,__z))
end

function __N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,libsundials_sundials),Void,(N_Vector,N_Vector),x,z)
end

function N_VAbs(x,z)
    __x = convert(NVector,x)
    __z = convert(NVector,z)
    __N_VAbs(convert(N_Vector,__x),convert(N_Vector,__z))
end

function __N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,libsundials_sundials),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x,z)
    __x = convert(NVector,x)
    __z = convert(NVector,z)
    __N_VInv(convert(N_Vector,__x),convert(N_Vector,__z))
end

function __N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,libsundials_sundials),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VAddConst(x,b,z)
    __x = convert(NVector,x)
    __z = convert(NVector,z)
    __N_VAddConst(convert(N_Vector,__x),b,convert(N_Vector,__z))
end

function __N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,libsundials_sundials),realtype,(N_Vector,N_Vector),x,y)
end

function N_VDotProd(x,y)
    __x = convert(NVector,x)
    __y = convert(NVector,y)
    __N_VDotProd(convert(N_Vector,__x),convert(N_Vector,__y))
end

function __N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,libsundials_sundials),realtype,(N_Vector,),x)
end

function N_VMaxNorm(x)
    __x = convert(NVector,x)
    __N_VMaxNorm(convert(N_Vector,__x))
end

function __N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,libsundials_sundials),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNorm(x,w)
    __x = convert(NVector,x)
    __w = convert(NVector,w)
    __N_VWrmsNorm(convert(N_Vector,__x),convert(N_Vector,__w))
end

function __N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,libsundials_sundials),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VWrmsNormMask(x,w,id)
    __x = convert(NVector,x)
    __w = convert(NVector,w)
    __id = convert(NVector,id)
    __N_VWrmsNormMask(convert(N_Vector,__x),convert(N_Vector,__w),convert(N_Vector,__id))
end

function __N_VMin(x::N_Vector)
    ccall((:N_VMin,libsundials_sundials),realtype,(N_Vector,),x)
end

function N_VMin(x)
    __x = convert(NVector,x)
    __N_VMin(convert(N_Vector,__x))
end

function __N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,libsundials_sundials),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWL2Norm(x,w)
    __x = convert(NVector,x)
    __w = convert(NVector,w)
    __N_VWL2Norm(convert(N_Vector,__x),convert(N_Vector,__w))
end

function __N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,libsundials_sundials),realtype,(N_Vector,),x)
end

function N_VL1Norm(x)
    __x = convert(NVector,x)
    __N_VL1Norm(convert(N_Vector,__x))
end

function __N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,libsundials_sundials),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VCompare(c,x,z)
    __x = convert(NVector,x)
    __z = convert(NVector,z)
    __N_VCompare(c,convert(N_Vector,__x),convert(N_Vector,__z))
end

function __N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,libsundials_sundials),Cint,(N_Vector,N_Vector),x,z)
end

function N_VInvTest(x,z)
    __x = convert(NVector,x)
    __z = convert(NVector,z)
    __N_VInvTest(convert(N_Vector,__x),convert(N_Vector,__z))
end

function __N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,libsundials_sundials),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VConstrMask(c,x,m)
    __c = convert(NVector,c)
    __x = convert(NVector,x)
    __m = convert(NVector,m)
    __N_VConstrMask(convert(N_Vector,__c),convert(N_Vector,__x),convert(N_Vector,__m))
end

function __N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,libsundials_sundials),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VMinQuotient(num,denom)
    __num = convert(NVector,num)
    __denom = convert(NVector,denom)
    __N_VMinQuotient(convert(N_Vector,__num),convert(N_Vector,__denom))
end

function __N_VCloneEmptyVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,libsundials_sundials),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneEmptyVectorArray(count,w)
    __w = convert(NVector,w)
    __N_VCloneEmptyVectorArray(convert(Cint,count),convert(N_Vector,__w))
end

function __N_VCloneVectorArray(count::Cint,w::N_Vector)
    ccall((:N_VCloneVectorArray,libsundials_sundials),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count,w)
    __w = convert(NVector,w)
    __N_VCloneVectorArray(convert(Cint,count),convert(N_Vector,__w))
end

function __N_VDestroyVectorArray(vs::Ptr{N_Vector},count::Cint)
    ccall((:N_VDestroyVectorArray,libsundials_sundials),Void,(Ptr{N_Vector},Cint),vs,count)
end

function N_VDestroyVectorArray(vs,count)
    __N_VDestroyVectorArray(pointer(vs),convert(Cint,count))
end
# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/sundials/sundials_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/sundials/sundials_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/sundials/sundials_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/sundials/sundials_types.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/sundials/sundials_fnvector.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /home/astukalov/.julia/v0.5/Sundials/src/../deps/usr/include/sundials/sundials_math.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

