#!/bin/sh

set -x

export CC="$BUILD_PREFIX/bin/clang"
export CXX="$BUILD_PREFIX/bin/clang++"
export LDSHARED="$BUILD_PREFIX/bin/clang -pthread -shared"

export CFLAGS="${CFLAGS} -O3 -fopenmp=libiomp5"
export CPPFLAGS="${CPPFLAGS} -O3 -fopenmp=libiomp5"
export LIGO_SKYMAP_USE_SYSTEM_CHEALPIX=1
export LIGO_SKYMAP_DISABLE_OPENMP=1

$PYTHON setup.py install --old-and-unmanageable
