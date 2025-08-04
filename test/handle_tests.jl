using Sundials, Test

h1 = Sundials.Handle(Sundials.CVodeCreate(Sundials.CV_BDF, Sundials.ensure_context()))
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
h3 = Sundials.MatrixHandle(Sundials.SUNDenseMatrix(neq, neq, Sundials.ensure_context()), Sundials.DenseMatrix())
h3 = Sundials.MatrixHandle(Sundials.SUNDenseMatrix(neq, neq, Sundials.ensure_context()), Sundials.DenseMatrix())
empty!(h3)
@test isempty(h3)
empty!(h3)
@test isempty(h3)

h3 = Sundials.MatrixHandle(Sundials.SUNBandMatrix(100, 3, 3, Sundials.ensure_context()), Sundials.BandMatrix())
h3 = Sundials.MatrixHandle(Sundials.SUNBandMatrix(100, 3, 3, Sundials.ensure_context()), Sundials.BandMatrix())
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

A = Sundials.SUNDenseMatrix(neq, neq, Sundials.ensure_context())
u0 = rand(neq)
Sundials.SUNLinSol_Dense(u0, A, Sundials.ensure_context())
h3 = Sundials.LinSolHandle(Sundials.SUNLinSol_Dense(u0, A, Sundials.ensure_context()), Sundials.Dense())
h3 = Sundials.LinSolHandle(Sundials.SUNLinSol_Dense(u0, A, Sundials.ensure_context()), Sundials.Dense())
empty!(h3)
@test isempty(h3)
empty!(h3)
@test isempty(h3)
