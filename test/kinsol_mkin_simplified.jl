## This uses the simplified kinsol interface.
## Results should match that in kinsol_kminTest.jl.

using Sundials

function sysfn(fy, y)
    fy[1] = y[1]^2 + y[2]^2 - 1.0
    fy[2] = y[2] - y[1]^2
end

res = Sundials.kinsol(sysfn, ones(2))
