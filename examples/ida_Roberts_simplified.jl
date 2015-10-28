using Sundials

## Define the system residual function.
function resrob(tres, y, yp, r)
    r[1]  = -0.04*y[1] + 1.0e4*y[2]*y[3]
    r[2]  = -r[1] - 3.0e7*y[2]*y[2] - yp[2]
    r[1] -=  yp[1]
    r[3]  =  y[1] + y[2] + y[3] - 1.0
end

t = [0.0; 4 * logspace(-1., 5., 7)]
yout, ypout = Sundials.idasol(resrob, [1.0, 0, 0], [-0.04, 0.04, 0.0], t)
