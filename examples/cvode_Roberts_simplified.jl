using Sundials

## f routine. Compute function f(t,y).

function f(t, y, ydot)
    ydot[1] = -0.04*y[1] + 1.0e4*y[2]*y[3]
    ydot[3] = 3.0e7*y[2]*y[2]
    ydot[2] = -ydot[1] - ydot[3]
    return(Int32(0))
end
t = [0.0; 4 * logspace(-1., 7., 9)]
y0= [1.0, 0.0, 0.0]
res = Sundials.cvode(f, y0, t)

ts1, res3 = Sundials.cvode_fulloutput(f, y0, [0.0, 1.0])
