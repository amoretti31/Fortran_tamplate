! src/module.f90
module math_module
    implicit none
contains
    function add(a, b) result(res)
        integer, intent(in) :: a, b
        integer :: res
        res = a + b
    end function add

    function multiply(a, b) result(res)
        integer, intent(in) :: a, b
        integer :: res
        res = a * b
    end function multiply
end module math_module
