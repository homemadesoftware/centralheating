#!/bin/bash

set -e
df -h /usr/src/project/pico
df -h /usr/src/project/pico/build
cd /usr/src/project/pico
cmake -S . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
make -j4 -C build
mkdir -p build-outputs

cp build/*.uf2 build-outputs/. || true
cp build/compile_commands.json build-outputs/. || true
