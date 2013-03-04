## This uses the simplified kinsol interface.
## Results should match that in kinsol_kminTest.jl.

import Sundials

## function to be optimized
function sysfn(y_in, fy_in, a_in)
    y = Sundials.asarray(y_in)
    fy = Sundials.asarray(fy_in)
    fy[1] = y[1]^2 + y[2]^2 - 1.0
    fy[2] = y[2] - y[1]^2
    return int32(0)   # indicates normal return
end

res = Sundials.kinsol(sysfn, ones(2))
println(res)
