#!/bin/bash

df -h /usr/src/project/pico
df -h /usr/src/project/pico/build
cd /usr/src/project/pico
cmake -S . -B build
make -j4 -C build
mkdir build-outputs
cp build/*.uf2 build-outputs/.


