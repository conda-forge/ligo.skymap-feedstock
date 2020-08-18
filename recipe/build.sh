#!/bin/bash

set -x

export CC="$BUILD_PREFIX/bin/clang"
export CXX="$BUILD_PREFIX/bin/clang++"

$PYTHON -m pip install --no-deps --ignore-installed -v .
