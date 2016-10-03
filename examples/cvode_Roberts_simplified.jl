using Sundials

## f routine. Compute function f(t,y).

function f(t, y, ydot)
    ydot[1] = -0.04*y[1] + 1.0e4*y[2]*y[3]
    ydot[3] = 3.0e7*y[2]*y[2]
    ydot[2] = -ydot[1] - ydot[3]
    return Sundials.CV_SUCCESS
end

const t = [0.0; 4 * logspace(-1., 7., 9)]
const shortt = [0.0;4.0;40.0]
const y0 = [1.0, 0.0, 0.0]

# Test out-of-place versions
ts,res = Sundials.cvode(f, y0, t)
ts2,res2 = Sundials.cvode(f, y0, t,Val{false})
ts3,res3 = Sundials.cvode(f, y0,shortt,Val{false},collect_times=:all)

# Test in-place versions
res4 = Matrix{Float64}(length(t),length(y0))
ts4 = copy(t)
Sundials.cvode!(f, y0,ts4,res4)

res5 = Vector{Vector{Float64}}(length(t))
for i in 1:length(t)
  res5[i] = Vector{Float64}(length(y0))
end
ts5 = copy(t)
Sundials.cvode!(f, y0,ts5,res5)

ts3,res3 = Sundials.cvode(f, y0,shortt,Val{false},collect_times=:all)

res6 = Vector{Vector{Float64}}(length(shortt))
for i in 1:length(shortt)
  res6[i] = Vector{Float64}(length(y0))
end
ts6 = copy(shortt)
Sundials.cvode!(f, y0,ts6,res6;collect_times=:all)
