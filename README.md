# Fortran Template

## Build locally
docker build -t fortran-template Docker

## Compile a program
docker run --rm -v "$PWD/src":/workspace -w /workspace fortran-template gfortran main.f90 -o main

## Run an interactive shell
docker run -it --rm -v "$PWD":/workspace -w /workspace fortran-template /bin/bash
