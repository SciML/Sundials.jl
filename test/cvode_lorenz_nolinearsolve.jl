using Sundials

function f(t, y_nv, ydot_nv, user_data)
    u = convert(Vector, y_nv)
    du = convert(Vector, ydot_nv)
    du[1] = 10.0*(u[2]-u[1])
    du[2] = u[1]*(28.0-u[3]) - u[2]
    du[3] = u[1]*u[2] - (8/3)*u[3]
    return Sundials.CV_SUCCESS
end

const neq = 3
const t0 = 0.0
const t1 = 0.4
const tmult = 10.0
const nout = 12
const y0 = [1.0, 0.0, 0.0]
const reltol = 1e-4
const abstol = [1e-8, 1e-14, 1e-6]

cvode_mem = Sundials.CVodeCreate(Sundials.CV_ADAMS, Sundials.CV_FUNCTIONAL)
Sundials.@checkflag Sundials.CVodeInit(cvode_mem, f, t0, y0)
Sundials.@checkflag Sundials.CVodeSVtolerances(cvode_mem, reltol, abstol)

iout = 0
tout = t1
const t = [t0]

y = similar(y0)
while iout < nout
    flag = Sundials.CVode(cvode_mem, tout, y, t, Sundials.CV_NORMAL)
    println("T=", tout, ", Y=", y)
    iout += 1
    tout *= tmult
end
