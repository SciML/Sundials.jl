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
