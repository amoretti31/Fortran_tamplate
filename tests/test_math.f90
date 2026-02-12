program test_math
    
    use math_module
    implicit none

    print *, "=========================================="
    print *, "       RUNNING FORTRAN TEST SUITE         "
    print *, "=========================================="
    print *, ""

    ! TEST ADD FUNCTION
    print *, "TEST 1: add(2,3)"
    if (add(2,3) /= 5) then
        print *, "❌ ERROR: add(2,3) failed"
        print *, "------------------------------------------"
        stop 1
    else
        print *, "✅ PASS: add(2,3)"
        print *, "------------------------------------------"
    end if

    ! TEST MULTIPLY FUNCTION
    print *, "TEST 2: multiply(2,3)"
    if (multiply(2,3) /= 6) then
        print *, "❌ ERROR: multiply(2,3) failed"
        print *, "------------------------------------------"
        stop 1
    else
        print *, "✅ PASS: multiply(2,3)"
        print *, "------------------------------------------"
    end if

    print *, "=========================================="
    print *, "       ALL TESTS PASSED SUCCESSFULLY      "
    print *, "=========================================="
    stop 0

end program test_math
