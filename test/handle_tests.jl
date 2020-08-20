using Sundials, Test

h1 = Sundials.Handle(Sundials.CVodeCreate(Sundials.CV_BDF))
h2 = h1

@test !isempty(h1)
@test !isempty(h2)

empty!(h1)

@test isempty(h1)
@test isempty(h2) # Check that the pointers are correct, and h1 empties h2

empty!(h1) # Make sure this does not throw

h = Sundials.Handle(h1.ptr_ref[]) # Check construction with null pointers
@test isempty(h)

neq = 3
h3 = Sundials.MatrixHandle(Sundials.SUNDenseMatrix(neq, neq), Sundials.DenseMatrix())
h3 = Sundials.MatrixHandle(Sundials.SUNDenseMatrix(neq, neq), Sundials.DenseMatrix())
empty!(h3)
@test isempty(h3)
empty!(h3)
@test isempty(h3)

h3 = Sundials.MatrixHandle(Sundials.SUNBandMatrix(100, 3, 3), Sundials.BandMatrix())
h3 = Sundials.MatrixHandle(Sundials.SUNBandMatrix(100, 3, 3), Sundials.BandMatrix())
empty!(h3)
@test isempty(h3)
empty!(h3)
@test isempty(h3)

h3 = Sundials.MatrixHandle(
    Sundials.SUNSparseMatrix(neq, neq, neq, Sundials.CSC_MAT),
    Sundials.SparseMatrix(),
)
h3 = Sundials.MatrixHandle(
    Sundials.SUNSparseMatrix(neq, neq, neq, Sundials.CSC_MAT),
    Sundials.SparseMatrix(),
)
empty!(h3)
@test isempty(h3)
empty!(h3)
@test isempty(h3)

A = Sundials.SUNDenseMatrix(neq, neq)
u0 = rand(neq)
Sundials.SUNLinSol_Dense(u0, A)
h3 = Sundials.LinSolHandle(Sundials.SUNLinSol_Dense(u0, A), Sundials.Dense())
h3 = Sundials.LinSolHandle(Sundials.SUNLinSol_Dense(u0, A), Sundials.Dense())
empty!(h3)
@test isempty(h3)
empty!(h3)
@test isempty(h3)
