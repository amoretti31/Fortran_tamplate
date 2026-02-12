#!/bin/bash
set -e


mkdir -p build
cd build

gfortran -Wall -Wextra -std=f2008 \
    -c ../src/module.f90

gfortran -Wall -Wextra -std=f2008 \
    ../tests/test_math.f90 module.o \
    -o test_math

echo "Running tests..."
./test_math


cd ..
rm -r build