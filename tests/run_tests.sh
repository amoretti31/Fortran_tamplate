#!/bin/bash
set -e  # exit on error

# Compile all Fortran modules
gfortran ../src/*.f90 tests/*.f90 -o test_runner

# Run the tests
./test_runner

rm -f test_runner