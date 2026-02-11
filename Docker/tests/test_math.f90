program test_math

    use math_module
    
    implicit none

    print *, "Running tests..."

    ! TEST ADD FUNCTION
    if (add(2,3) /= 5) then
        print *, "ERROR: add(2,3) failed"
        stop 1
    else
        print *, "add test passed"
    end if

    ! TEST MULTIPLY FUNCTION
    if (multiply(2,3) /= 6) then
        print *, "ERROR: multiply(2,3) failed"
        stop 1
    else
        print *, "multiply test passed"
    end if

    print *, "All tests passed."
    stop 0

end program test_math
