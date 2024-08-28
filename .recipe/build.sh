#!/bin/sh

set -e

mkdir build && cd build

cmake .. \
    -DCMAKE_PREFIX_PATH=$CONDA_PREFIX \
    -DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX \
    -DCMAKE_BUILD_TYPE=Release

cmake --build . -j 8
cmake --install .