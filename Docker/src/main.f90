! src/main.f90
program main
    use math_module
    implicit none
    integer :: a, b, c

    a = 5
    b = 7
    c = add(a, b)



    print *, "Adding", a, "and", b, "gives", c, "ciao"
end program main
