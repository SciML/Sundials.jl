#######################################################################
#       Implementation of Sundials forward sensitivity example        #
#                  CVode_Roberts_FSA_dns in Julia.                    #
#######################################################################

using Sundials
using StrPack


#######################################################################
#              Problem related functions and structures               #
#######################################################################

# Create a user data structure that can be passed through to
# the right hand side function
type UserData
  p :: Array{Float64,1}
end

## f routine. Compute function f(t,y). 
function f(t, y, ydot, user_data)
  y = Sundials.asarray(y)

  # This might be risky.  Are there better ways to do this?
  # Or can we trust that Sundials will always pass our userdata here?
  user_data = unsafe_pointer_to_objref(user_data) :: UserData

  p1 = user_data.p[1]
  p2 = user_data.p[2]
  p3 = user_data.p[3]

  ydot = Sundials.asarray(ydot)

  ydot[1] = -p1*y[1] + p2*y[2]*y[3]
  ydot[3] = p3*y[2]*y[2]
  ydot[2] = -ydot[1] - ydot[3]

  return int32(0)
  end

# Note: Here is the (untested) structure for v 2.5
# This is taken from cvode_Roberts_dns.jl and have been given no additional thoughts.
using StrPack
@struct type J_DlsMat    
  typ   :: Int32
  M     :: Int
  N     :: Int
  ldim  :: Int
  mu    :: Int
  ml    :: Int
  s_mu  :: Int
  data  :: Ptr{Float64}
  ldata :: Int
  cols  :: Ptr{Ptr{Float64}}
  end

# Jacobian routine. Compute J(t,y) = df/dy.  
# Again - taken from cvode_Roberts_dns.jl. But with parameter values being parsed instead of hardcoded
function Jac(N, t, y, fy, Jptr, user_data,
             tmp1, tmp2, tmp3)
  y = Sundials.asarray(y)
  dlsmat = unpack(IOBuffer(pointer_to_array(convert(Ptr{Uint8}, Jptr),
                                            (sum(map(sizeof, J_DlsMat.types))+10,))),
                  J_DlsMat)
  J = pointer_to_array(unsafe_load(dlsmat.cols), (int(neq), int(neq)), false)
  user_data = unsafe_pointer_to_objref(user_data) :: UserData

  p1 = user_data.p[1]
  p2 = user_data.p[2]
  p3 = user_data.p[3]

  J[1,1] = -p1
  J[1,2] = p2*y[3]
  J[1,3] = p2*y[2]
  J[2,1] = p1 
  J[2,2] = -p2*y[3] - 2*p3*y[2]
  J[2,3] = -p2*y[2]
  J[3,2] = 2*p3*y[2]
  return int32(0)
  end

#= fS routine. Compute sensitivity r.h.s.  =#
function fS(Ns, t, y, ydot, 
              iS, yS, ySdot, 
              user_data, tmp, tmp2) 
  user_data = unsafe_pointer_to_objref(user_data) :: UserData
  p1 = user_data.p[1]; 
  p2 = user_data.p[2]; 
  p3 = user_data.p[3];


  y     = Sundials.asarray(y)
  ydot  = Sundials.asarray(ydot)
  yS    = Sundials.asarray(yS)
  ySdot = Sundials.asarray(ySdot)

  y1 = y[1]
  y2 = y[2]
  y3 = y[3]
  s1 = yS[1]
  s2 = yS[2]
  s3 = yS[3]

  sd1 = -p1*s1 + p2*y3*s2 + p2*y2*s3;
  sd3 = 2*p3*y2*s2;
  sd2 = -sd1-sd3;

  if iS == 0
    sd1 += -y1;
    sd2 +=  y1;
  elseif iS == 1
    sd1 +=  y2*y3;
    sd2 += -y2*y3;
  elseif iS == 2
    sd2 += -y2*y2;
    sd3 +=  y2*y2;
    end
  
  ySdot[1] = sd1
  ySdot[2] = sd2
  ySdot[3] = sd3

  return int32(0);
  end

# Custom error function
function ewt(y, w, user_data; reltol = 1e-4, abstol = [1e-8, 1e-14, 1e-6])
  y = Sundials.asarray(y)
  w = Sundials.asarray(w)

  user_data = unsafe_pointer_to_objref(user_data) :: UserData

  for i=1:3
    yy = y[i]
    ww = reltol*Sundials.RAbs(yy) + abstol[i]
    if (ww <= 0.0) 
      return int32(-1);
    end
    w[i] = 1.0/ww
  end

  return int32(0);
  end


#######################################################################
#                     Functions for pretty output                     #
#######################################################################

# Print output pretty like the C program
function PrintOutput(cvode_mem, t, u)
  udata = Sundials.asarray(u)

  nst   = [int64(0)]
  qu    = [int32(0)]
  hu    = [0.0]

  flag  = Sundials.CVodeGetNumSteps(cvode_mem,pointer(nst))
  flag  = Sundials.CVodeGetLastOrder(cvode_mem,qu)
  flag  = Sundials.CVodeGetLastStep(cvode_mem,pointer(hu))

  @printf("%8.3e %2d  %8.3e %5d \n", t[1], qu[1], hu[1], nst[1]);
  @printf("                  Solution       ");
  @printf("%12.4e %12.4e %12.4e \n", udata[1], udata[2], udata[3]);

  return int32(0)
  end


# Print output pretty like the C program
function PrintOutputS(uS)
  sdata = Sundials.asarray(unsafe_load(yS,1))
  @printf("                  Sensitivity 1  "); 
  @printf("%12.4e %12.4e %12.4e \n", sdata[1], sdata[2], sdata[3]);
  
  sdata = Sundials.asarray(unsafe_load(yS,2))
  @printf("                  Sensitivity 2  ");
  @printf("%12.4e %12.4e %12.4e \n", sdata[1], sdata[2], sdata[3]);

  sdata = Sundials.asarray(unsafe_load(yS,2))
  @printf("                  Sensitivity 3  ");
  @printf("%12.4e %12.4e %12.4e \n", sdata[1], sdata[2], sdata[3]);

  return int32(0)
  end


# Print output pretty like the C program
function PrintFinalStats(cvode_mem, sensi)
  nst      = [int64(0)]
  nfe      = [int64(0)]

  nsetups  = [int64(0)]
  nni      = [int64(0)]
  ncfn     = [int64(0)]
  netf     = [int64(0)]

  nfSe     = [int64(0)]
  nfeS     = [int64(0)]
  nsetupsS = [int64(0)]
  nniS     = [int64(0)]
  ncfnS    = [int64(0)]
  netfS    = [int64(0)]

  nje      = [int64(0)]
  nfeLS    = [int64(0)]


  flag = Sundials.CVodeGetNumSteps(cvode_mem, pointer(nst));
  flag = Sundials.CVodeGetNumRhsEvals(cvode_mem, pointer(nfe));
  flag = Sundials.CVodeGetNumLinSolvSetups(cvode_mem, pointer(nsetups));
  flag = Sundials.CVodeGetNumErrTestFails(cvode_mem, pointer(netf));
  flag = Sundials.CVodeGetNumNonlinSolvIters(cvode_mem, pointer(nni));
  flag = Sundials.CVodeGetNumNonlinSolvConvFails(cvode_mem, pointer(ncfn));

  if sensi
    flag = Sundials.CVodeGetSensNumRhsEvals(cvode_mem, pointer(nfSe));
    flag = Sundials.CVodeGetNumRhsEvalsSens(cvode_mem, pointer(nfeS));
    flag = Sundials.CVodeGetSensNumLinSolvSetups(cvode_mem, pointer(nsetupsS));
    flag = Sundials.CVodeGetSensNumErrTestFails(cvode_mem, pointer(netfS));
    flag = Sundials.CVodeGetSensNumNonlinSolvIters(cvode_mem, pointer(nniS));
    flag = Sundials.CVodeGetSensNumNonlinSolvConvFails(cvode_mem, pointer(ncfnS));
    end

  flag = Sundials.CVDlsGetNumJacEvals(cvode_mem, pointer(nje));
  flag = Sundials.CVDlsGetNumRhsEvals(cvode_mem, pointer(nfeLS));

  @printf("\nFinal Statistics\n\n");
  @printf("nst     = %5ld\n\n", nst[1]);
  @printf("nfe     = %5ld\n",   nfe[1]);
  @printf("netf    = %5ld    nsetups  = %5ld\n", netf[1], nsetups[1]);
  @printf("nni     = %5ld    ncfn     = %5ld\n", nni[1], ncfn[1]);

  if sensi
    @printf("\n");
    @printf("nfSe    = %5ld    nfeS     = %5ld\n", nfSe[1], nfeS[1]);
    @printf("netfs   = %5ld    nsetupsS = %5ld\n", netfS[1], nsetupsS[1]);
    @printf("nniS    = %5ld    ncfnS    = %5ld\n", nniS[1], ncfnS[1]);
    end

  @printf("\n");
  @printf("nje    = %5ld    nfeLS     = %5ld\n", nje[1], nfeLS[1]);

  end


#######################################################################
#                        Start of main program                        #
#######################################################################

# Calculate sensitivities?
sensi      = true
sensi_meth = int32(Sundials.CV_SIMULTANEOUS) # CV_SIMULTANEOUS, CV_STAGGERED or CV_STAGGERED1
err_con    = int32(1)                        # Error control?

neq    = int32(3)            # Number of equations
y      = [1.0,0.0,0.0]       # Initial conditions
reltol = 1e-4                # Relative tolerance
abstol = [1e-8, 1e-14, 1e-6] # Absolute tolerance
t0     = 0.0                 # Initial time
t1     = 0.4                 # First output time
tmult  = 10.0                # Output time factor
nout   = 12                  # Number of output times
NP     = int32(3)            # Number of parameters
NS     = int32(3)            # Number of sensitivities computed

# Set parameter values
data = UserData([0.04, 1.0e4, 3.0e7])

#= Create CVODES object =#
cvode_mem = Sundials.CVodeCreate(Sundials.CV_BDF, Sundials.CV_NEWTON)

#= Allocate space for CVODES =#
flag = Sundials.CVodeInit(cvode_mem, f, t0, y)

#= Use private function to compute error weights =#
flag = Sundials.CVodeWFtolerances(cvode_mem, ewt)

#= Attach user data =#
flag = Sundials.CVodeSetUserData(cvode_mem, data)

#= Attach linear solver =#
flag = Sundials.CVDense(cvode_mem, neq)

#= Set Jacobian =#
# works, but clunky, see above and cvode_Roberts_dns.jl
flag = Sundials.CVDlsSetDenseJacFn(cvode_mem, Jac)  


#= Sensitivity related settings =#
if sensi
  pbar = data.p

  # yS should be an array of arrays
  ySJ    = Array(Array{Float64,1}, neq)
  ySJ[1] = zeros(Float64,NS)
  ySJ[2] = zeros(Float64,NS)
  ySJ[3] = zeros(Float64,NS)

  ySjulia = [Sundials.nvector(ySJ[1]), Sundials.nvector(ySJ[2]), Sundials.nvector(ySJ[3])]
  yS = pointer(ySjulia)

  ## Then yS can be read again by 
  # ySJpointer = [unsafe_load(yS,1), unsafe_load(yS,2), unsafe_load(yS,3)]
  ## ySJpointer is then equal to ySjulia

  flag = Sundials.CVodeSensInit1(cvode_mem, NS, sensi_meth, fS, yS)
  flag = Sundials.CVodeSensEEtolerances(cvode_mem)
  flag = Sundials.CVodeSetSensErrCon(cvode_mem, err_con)
  flag = Sundials.CVodeSetSensParams(cvode_mem, 0, Sundials.nvector(data.p), 0)
  end

iout = 1
tout = t1
t = [t0]

@printf("\n\n")
@printf("===========================================")
@printf("============================\n")
@printf("     T     Q       H      NST           y1")
@printf("           y2           y3    \n")
@printf("===========================================")
@printf("============================\n")

while iout<=nout
  flag = Sundials.CVode(cvode_mem, tout, y, t, Sundials.CV_NORMAL)
  PrintOutput(cvode_mem, t, y)
  if sensi
    flag   = Sundials.CVodeGetSens(cvode_mem, t, yS)
    tempyS = [unsafe_load(yS,1), unsafe_load(yS,2), unsafe_load(yS,3)]
    
    PrintOutputS(yS)
  end
  @printf("-----------------------------------------")
  @printf("------------------------------\n")

    iout += 1
    tout *= tmult
  end

PrintFinalStats(cvode_mem, sensi);
