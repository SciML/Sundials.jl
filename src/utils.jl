@generated function local_cfunction(f, ret, arg)
   quote
     @cfunction($(Expr(:$, :f)), $ret, ($arg,)).ptr
   end
 end
