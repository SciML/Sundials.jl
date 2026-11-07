module FixedSizeArraysExt

using Sundials: Sundials, N_Vector, N_VGetArrayPointer_Serial, realtype
using FixedSizeArrays: FixedSizeArrays, FixedSizeArrayDefault, FixedSizeVectorDefault

# Wrap `FixedSizeArray`s with default backing storage (`Memory` on Julia >= 1.11, `Vector` otherwise)
# around the data of `N_Vector`s without copying
function Sundials.unsafe_wrap_nvector(prototype::FixedSizeArrayDefault{realtype}, x::N_Vector)
    mem = unsafe_wrap(typeof(parent(prototype)), N_VGetArrayPointer_Serial(x), length(prototype))
    return FixedSizeArrays.wrap(typeof(prototype), mem, size(prototype))
end

# `FixedSizeArray`s with default backing storage are always wrapped by `unsafe_wrap_nvector`
Sundials.user_buffer(prototype::FixedSizeArrayDefault{realtype}) = prototype

# `Vector` that aliases the backing storage of `v` and keeps it alive
# NB: Base has no public zero-copy conversion from `Memory` to `Vector`. Without this method,
# `NVector`s fall back to `unsafe_wrap` plus finalizer rooting, which allocates more per `NVector`.
function Sundials.nvector_data(v::FixedSizeVectorDefault{realtype})
    mem = parent(v)
    # On Julia 1.10, the backing storage is a `Vector` already
    return mem isa Vector ? mem : Base.wrap(Array, mem, length(v))
end

end
