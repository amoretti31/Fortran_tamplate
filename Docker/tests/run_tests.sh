#!/bin/bash
set -e

mkdir -p build
cd build

cmake .. -DpFUnit_DIR=/opt/pFUnit-install/lib/cmake/pFUnit
make
./test_math
