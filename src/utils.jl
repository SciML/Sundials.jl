@noinline function old_cfunction(f, r, a)
  ccall(:jl_function_ptr, Ptr{Cvoid}, (Any, Any, Any), f, r, a)
end
