#!/bin/bash

mkdir -p build
cd build/

cmake -DCMAKE_BUILD_TYPE=Release \
    -DRDKIT_DIR=${PREFIX} \
    -DUSE_PYTHON=ON \
    -DRDCHIRALCPP_BUILD_TESTS=OFF \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    -DCMAKE_CXX_FLAGS=-D_LIBCPP_DISABLE_AVAILABILITY \
    ..

VERBOSE=1 make
make install
