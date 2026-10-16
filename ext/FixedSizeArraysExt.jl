module FixedSizeArraysExt

using Sundials: Sundials, N_Vector, N_VGetArrayPointer_Serial, realtype
using FixedSizeArrays: FixedSizeArrayDefault, FixedSizeVectorDefault, new_fixed_size_array

# Wrap `FixedSizeArray`s with default backing storage (`Memory` on Julia >= 1.11, `Vector` otherwise)
# around the data of `N_Vector`s without copying
# NB: FixedSizeArrays does not provide a public alternative to the internal `new_fixed_size_array`
function Sundials.unsafe_wrap_nvector(prototype::FixedSizeArrayDefault{realtype}, x::N_Vector)
    mem = unsafe_wrap(typeof(parent(prototype)), N_VGetArrayPointer_Serial(x), length(prototype))
    return new_fixed_size_array(mem, size(prototype))
end

# `FixedSizeArray`s with default backing storage are always wrapped by `unsafe_wrap_nvector`
Sundials.user_buffer(prototype::FixedSizeArrayDefault{realtype}) = prototype

# `Vector` that aliases the backing storage of `v` and keeps it alive
function Sundials.nvector_data(v::FixedSizeVectorDefault{realtype})
    mem = parent(v)
    # On Julia 1.10, the backing storage is a `Vector` already
    return mem isa Vector ? mem : Base.wrap(Array, mem, length(v))
end

end
