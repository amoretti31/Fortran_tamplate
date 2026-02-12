#!/bin/bash
set -e

echo "Creating build directory..."
mkdir -p build
cd build

echo "Compiling module..."
gfortran -Wall -Wextra -std=f2008 \
    -c ../src/module.f90

echo "Compiling tests..."
gfortran -Wall -Wextra -std=f2008 \
    ../tests/test_math.f90 module.o \
    -o test_math

echo "Running tests..."
./test_math

echo "Tests finished successfully"

cd ..
rm -r build