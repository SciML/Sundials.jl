using Sundials, Base.Test

println("Test error handling")

f_error(t,u) = u/t
u0 = 1.0
prob = ODEProblem(f_error,u0,(0.0,1.0))
sol = solve(prob,CVODE_BDF())

f_error2(t,u,du) = u/t-1
u0 = 1.0; du0 = 1.0
prob = DAEProblem(f_error2,u0,du0,(0.0,1.0),differential_vars=[1])
sol = solve(prob,IDA())

@test sol.retcode == :InitialFailure
