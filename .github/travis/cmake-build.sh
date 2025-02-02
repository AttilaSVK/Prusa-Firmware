#!/bin/sh
set -xe
rm -rf build
mkdir build
cd build
cmake .. \
    -DCMAKE_TOOLCHAIN_FILE="../cmake/LocalAvrGcc.cmake" \
    -DCMAKE_BUILD_TYPE=Release \
    -G Ninja
ninja ALL_FIRMWARE
