using Sundials, Base.Test

h1 = Sundials.Handle(Sundials.CVodeCreate(Sundials.CV_BDF, Sundials.CV_NEWTON))
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
h3 = Sundials.MatrixHandle(Sundials.SUNDenseMatrix(neq,neq),Sundials.Dense())
h3 = Sundials.MatrixHandle(Sundials.SUNDenseMatrix(neq,neq),Sundials.Dense())
empty!(h3)
@test isempty(h3)
empty!(h3)
@test isempty(h3)

h3 = Sundials.MatrixHandle(Sundials.SUNBandMatrix(100,3,3,6),Sundials.Band())
h3 = Sundials.MatrixHandle(Sundials.SUNBandMatrix(100,3,3,6),Sundials.Band())
empty!(h3)
@test isempty(h3)
empty!(h3)
@test isempty(h3)

h3 = Sundials.MatrixHandle(Sundials.SUNSparseMatrix(neq,neq,neq,Sundials.CSC_MAT),Sundials.Sparse())
h3 = Sundials.MatrixHandle(Sundials.SUNSparseMatrix(neq,neq,neq,Sundials.CSC_MAT),Sundials.Sparse())
empty!(h3)
@test isempty(h3)
empty!(h3)
@test isempty(h3)
