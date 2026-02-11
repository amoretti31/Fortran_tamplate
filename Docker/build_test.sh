#!/bin/bash
set -e

echo "Compiling module..."
gfortran  -c src/module.f90 

echo "Compiling tests..."
gfortran tests/test_math.f90 module.o -o test_math

echo "Running tests..."
./test_math

echo "Tests finished"
