function f!(resid, x)
    for i in eachindex(x)
       resid[i] = sin(x[i]) + x[i]^3
    end
end
x = ones(5)
@test Sundials.kinsol(f!, x, linear_solver=:Band, jac_upper=0, jac_lower=0) == Sundials.kinsol(f!, x)
