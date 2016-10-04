# Solve the Brusselator example using ARKode
# Adapted from examples/arkode/C_serial/ark_brusselator.c
# Consider
#  du/dt = a - (w+1)*u + v*u^2
#  dv/dt = w*u - v*u^2
#  dw/dt = (b-w)/ep - w*u
#  for t in the interval [0.0, 10.0], with initial conditions
#  Y0 = [u0,v0,w0].
#
#  Test data:  u0=1.2,  v0=3.1,  w0=3,  a=1,  b=3.5,  ep=5.0e-6
#    Here, w experiences a fast initial transient, jumping 0.5
#    within a few steps.  All values proceed smoothly until
#    around t=6.5, when both u and v undergo a sharp transition,
#    with u increaseing from around 0.5 to 5 and v decreasing
#    from around 6 to 1 in less than 0.5 time units.  After this
#    transition, both u and v continue to evolve somewhat
#    rapidly for another 1.4 time units, and finish off smoothly.
using StrPack
# DlsMat type fron sundials/sundials_direct.h as of v2.6.2
# typedef struct _DlsMat {
#   int type;
#   long int M;
#   long int N;
#   long int ldim;
#   long int mu;
#   long int ml;
#   long int s_mu;
#   realtype *data;
#   long int ldata;
#   realtype **cols;
# } *DlsMat;
@struct type J_DlsMat
    typ::Int32
    M::Int
    N::Int
    ldim::Int
    mu::Int
    ml::Int
    s_mu::Int
    data::Ptr{Sundials.realtype}
    ldata::Int
    cols::Ptr{Ptr{Sundials.realtype}}
end
function fi(t, y_in, ydot_in, user_data)
    y = convert(Vector{Float64}, y_in)
    rdata = convert(Vector{Float64}, user_data)
    a = rdata[1]          #/* access data entries */
    b  = rdata[2]
    ep = rdata[3]
    ydot = convert(Vector{Float64}, ydot_in)
    #   /* fill in the RHS function */
    ydot[1] = a - (y[3] + 1.0) * y[1] + y[2] * y[1]^2
    ydot[2] = y[3] * y[1] - y[2] * y[1]^2
    ydot[3] = (b - y[3]) / ep - y[3] * y[1]

    return Sundials.ARK_SUCCESS           #/* Return with success */
end

function Jfi(N, t, y_in, fn_in, Jptr, user_data, tmp1, tmp2, tmp3)
    y = convert(Vector, y_in)
    rdata = convert(Vector, user_data)   #/* cast user_data to realtype */
    ep = rdata[3];           #/* access data entries */
    u = y[1]                 #/* access solution values */
    v = y[2]
    w = y[3]
    dlsmat = unpack(IOBuffer(
    pointer_to_array(convert(Ptr{Uint8}, Jptr),
    (sum(map(sizeof, J_DlsMat.types))+10,))
    ),
    J_DlsMat)
    J = pointer_to_array(unsafe_load(dlsmat.cols), (int(numeq), int(numeq)), false)
    # #   /* fill in the Jacobian */
    J[1,1] = -(w + 1) + 2 * u  *v
    J[1,2] = u * u
    J[1,3] = -u

    J[2,1] = w - 2 * u * v
    J[2,2] = -u * u
    J[2,3] = u

    J[3,1] = -w
    J[3,2] = 0.0
    J[3,3] = -1 / ep - u
    return Sundials.ARK_SUCCESS           #/* Return with success */
end

function RunArkodeTest()
    numeq = 3
    T0 = 0.0     #/* initial time */
    Tf = 10.0   #/* final time */
    dTout = 1.0  #/* time between outputs */
    Nt = ceil(Int, Tf/dTout)

    reltol = 1.0e-6
    abstol = 1.0e-10
    u0_ark = 1.2
    v0 = 3.1
    w0 = 3.0
    a  = 1.0
    b  = 3.5
    ep = 5.0e-6

    print("\nBrusselator ODE test problem:\n")
    @printf "    initial conditions:  u0 = %e,  v0 = %e,  w0 = %e\n" u0_ark v0 w0
    @printf "    problem parameters:  a = %e,  b = %e,  ep = %e\n" a b ep
    @printf "    reltol = %.1e,  abstol = %.1e\n\n" reltol abstol


    rdata = [a, b, ep] #/* set user data  */
    y = zeros(numeq)
    y[1] = u0_ark               #/* Set initial conditions */
    y[2] = v0
    y[3] = w0

    amem = Sundials.ARKodeCreate()

    # /* Call ARKodeInit to initialize the integrator memory and specify the
    #      hand-side side function in y'=f(t,y), the inital time T0, and
    #      the initial dependent variable vector y.  Note: since this
    #      problem is fully implicit, we set f_E to NULL and f_I to f. */
    Sundials.@checkflag Sundials.ARKodeInit(amem, C_NULL, cfunction(fi, Cint, (Sundials.realtype, Sundials.N_Vector, Sundials.N_Vector, Sundials.N_Vector)), T0, y)
    Sundials.@checkflag Sundials.ARKodeSetUserData(amem, Sundials.nvector(rdata))
    Sundials.@checkflag Sundials.ARKodeSStolerances(amem, reltol, abstol)
    Sundials.@checkflag Sundials.ARKDense(amem, numeq)
    flag = Sundials.ARKDlsSetDenseJacFn(amem, cfunction(Jfi, Cint, (Culong, Sundials.realtype, Sundials.N_Vector, Sundials.N_Vector, J_DlsMat, Sundials.N_Vector, Sundials.N_Vector, Sundials.N_Vector, Sundials.N_Vector)))

    open(Pkg.dir("Sundials", "test", "arkode_solution.txt"), "w") do h
        print(h, "# t u v w\n")

        #   /* output initial condition to disk */
        @printf h " %.16e %.16e %.16e %.16e\n" T0 y[1] y[2] y[3]

        t = [T0]
        tout = T0 + dTout
        print("        t           u           v           w\n",
        "   -------------------------------------------\n")
        solsave = Array(Float64, Nt, 4)
        iout = 1
        while true
            Sundials.@checkflag Sundials.ARKode(amem, tout, y, t, Sundials.ARK_NORMAL)      #/* call integrator */
            @printf "  %10.6f  %10.6f  %10.6f  %10.6f\n" t[1] y[1] y[2] y[3] #/* access/print solution */
            @printf h " %.16e %.16e %.16e %.16e\n" t[1] y[1] y[2] y[3]
            solsave[iout, 1], solsave[iout, 2], solsave[iout, 3], solsave[iout, 4] = t[1], y[1], y[2], y[3]
            if flag >= Sundials.ARK_SUCCESS   #/* successful solve: update time */
                tout += dTout
                tout = (tout > Tf) ? Tf : tout
            else
                printf(STDERR, "Solver failure, stopping integration\n")#/* unsuccessful solve: break */
                break
            end
            if (iout >= Nt) break end
            iout += 1
        end
        print("   -------------------------------------------\n")
    end

    nst = [0]; nst_a = [0]; nfe = [0]; nfi = [0]
    nsetups = [0]; netf = [0]; nni = [0];
    ncfn = [0]; nje = [0]; nfeLS = [0]
    Sundials.@checkflag Sundials.ARKodeGetNumSteps(amem, nst)
    Sundials.@checkflag Sundials.ARKodeGetNumStepAttempts(amem, nst_a)
    Sundials.@checkflag Sundials.ARKodeGetNumRhsEvals(amem, nfe, nfi)
    Sundials.@checkflag Sundials.ARKodeGetNumLinSolvSetups(amem, nsetups)
    Sundials.@checkflag Sundials.ARKodeGetNumErrTestFails(amem, netf)
    Sundials.@checkflag Sundials.ARKodeGetNumNonlinSolvIters(amem, nni)
    Sundials.@checkflag Sundials.ARKodeGetNumNonlinSolvConvFails(amem, ncfn)
    Sundials.@checkflag Sundials.ARKDlsGetNumJacEvals(amem, nje)
    Sundials.@checkflag Sundials.ARKDlsGetNumRhsEvals(amem, nfeLS)

    println("\nFinal Solver Statistics:")
    @printf "   Internal solver steps = %li (attempted = %li)\n" nst[1] nst_a[1]
    @printf "   Total RHS evals:  Fe = %li,  Fi = %li\n" nfe[1] nfi[1]
    @printf "   Total linear solver setups = %li\n" nsetups[1]
    @printf "   Total RHS evals for setting up the linear system = %li\n" nfeLS[1]
    @printf "   Total number of Jacobian evaluations = %li\n" nje[1]
    @printf "   Total number of Newton iterations = %li\n" nni[1]
    @printf "   Total number of linear solver convergence failures = %li\n" ncfn[1]
    @printf "   Total number of error test failures = %li\n\n" netf[1]
    Sundials.ARKodeFree([amem])

    # Parse output from example code (in a messy way)
    # to verify that our solution matches.
    open(Pkg.dir("Sundials", "deps", "usr", "examples", "arkode", "C_serial", "ark_brusselator.out"), "r") do d1
        readvals = false
        truevals = Array(Float64, Nt, 4)
        iout = 1
        for i in eachline(d1)
            if chomp(i) == "   -------------------------------------------"
                readvals = !readvals
                continue
            end
            if readvals
                truevals[iout, :] = map(parsefloat, split(chomp(i)))
                iout += 1
            end
        end
    end

    # Since the data in ark_brusselator.out has 6 decimal places of precision, should pass.
    @test max(vec(abs(solsave - truevals))...) < 1e-5
end
RunArkodeTest()
