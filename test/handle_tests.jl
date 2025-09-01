using Sundials, Test

# Create context for tests
ctx_ptr = Ref{Sundials.SUNContext}(C_NULL)
Sundials.SUNContext_Create(C_NULL, Base.unsafe_convert(Ptr{Sundials.SUNContext}, ctx_ptr))
ctx = ctx_ptr[]

h1 = Sundials.Handle(Sundials.CVodeCreate(Sundials.CV_BDF, ctx))
h2 = h1

@test !isempty(h1)
@test !isempty(h2)

empty!(h1)

@test isempty(h1)
@test isempty(h2) # Check that the pointers are correct, and h1 empties h2

empty!(h1) # Make sure this does not throw

h = Sundials.Handle(h1.ptr) # Check construction with null pointers
@test isempty(h)

neq = 3
h3 = Sundials.MatrixHandle(Sundials.SUNDenseMatrix(neq, neq, ctx), Sundials.DenseMatrix())
h3 = Sundials.MatrixHandle(Sundials.SUNDenseMatrix(neq, neq, ctx), Sundials.DenseMatrix())
empty!(h3)
@test isempty(h3)
empty!(h3)
@test isempty(h3)

h3 = Sundials.MatrixHandle(Sundials.SUNBandMatrix(100, 3, 3, ctx), Sundials.BandMatrix())
h3 = Sundials.MatrixHandle(Sundials.SUNBandMatrix(100, 3, 3, ctx), Sundials.BandMatrix())
empty!(h3)
@test isempty(h3)
empty!(h3)
@test isempty(h3)

h3 = Sundials.MatrixHandle(Sundials.SUNSparseMatrix(neq, neq, neq, Sundials.CSC_MAT),
    Sundials.SparseMatrix())
h3 = Sundials.MatrixHandle(Sundials.SUNSparseMatrix(neq, neq, neq, Sundials.CSC_MAT),
    Sundials.SparseMatrix())
empty!(h3)
@test isempty(h3)
empty!(h3)
@test isempty(h3)

A = Sundials.SUNDenseMatrix(neq, neq, ctx)
u0 = rand(neq)
u0_nvec = Sundials.NVector(u0, ctx)
Sundials.SUNLinSol_Dense(u0_nvec, A, ctx)
h3 = Sundials.LinSolHandle(Sundials.SUNLinSol_Dense(u0_nvec, A, ctx), Sundials.Dense())
h3 = Sundials.LinSolHandle(Sundials.SUNLinSol_Dense(u0_nvec, A, ctx), Sundials.Dense())
empty!(h3)
@test isempty(h3)
empty!(h3)
@test isempty(h3)

# Clean up context
Sundials.SUNContext_Free(ctx)
