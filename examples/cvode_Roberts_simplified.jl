using Sundials

## f routine. Compute function f(t,y).

function f(t, y, ydot)
    ydot[1] = -0.04*y[1] + 1.0e4*y[2]*y[3]
    ydot[3] = 3.0e7*y[2]*y[2]
    ydot[2] = -ydot[1] - ydot[3]
    return Sundials.CV_SUCCESS
end

const t = [0.0; 4 * logspace(-1., 7., 9)]
const y0 = [1.0, 0.0, 0.0]
res = Sundials.cvode(f, y0, t)

ts1, res1 = Sundials.cvode_common(f, y0,t,saveat=t)
ts2, res2 = Sundials.cvode_common(f, y0,t,saveat=t,save_timeseries=true)
ts3, res3 = Sundials.cvode_common(f, y0,t,save_timeseries=true)

ts1 == t
intersect(ts2,t) == t
length(ts2) > length(t)
intersect(ts3,t) == [t[1];t[end]]
length(ts3) > 2
