module FixedSizeArraysExt

using Sundials: Sundials, N_Vector, N_VGetArrayPointer_Serial, realtype
using FixedSizeArrays: FixedSizeArrayDefault, new_fixed_size_array

# Wrap `FixedSizeArray`s with default backing storage (`Memory` on Julia >= 1.11, `Vector` otherwise)
# around the data of `N_Vector`s without copying
# NB: FixedSizeArrays does not provide a public alternative to the internal `new_fixed_size_array`
function Sundials.unsafe_wrap_nvector(prototype::FixedSizeArrayDefault{realtype}, x::N_Vector)
    mem = unsafe_wrap(typeof(parent(prototype)), N_VGetArrayPointer_Serial(x), length(prototype))
    return new_fixed_size_array(mem, size(prototype))
end

end
