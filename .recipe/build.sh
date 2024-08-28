#!/bin/sh

set -e

mkdir build && cd build

cmake .. \
    ${CMAKE_ARGS} \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_BUILD_TYPE=Release \
    -DPYTHON3_VERSION=$PY_VER

cmake --build . -j 8
cmake --install .