using Sundials

## Define the system residual function. 
function resrob(tres, yy, yp, rr, user_data)
    yval = Sundials.asarray(yy) 
    ypval = Sundials.asarray(yp) 
    rval = Sundials.asarray(rr)
    rval[1]  = -0.04*yval[1] + 1.0e4*yval[2]*yval[3]
    rval[2]  = -rval[1] - 3.0e7*yval[2]*yval[2] - ypval[2]
    rval[1] -=  ypval[1]
    rval[3]  =  yval[1] + yval[2] + yval[3] - 1.0
    return int32(0)   # indicates normal return
end

t = [0.0, 4 * logspace(-1., 5., 7)]
yout, ypout = Sundials.dae(resrob, [1.0, 0, 0], [-0.04, 0.04, 0.0], t)
