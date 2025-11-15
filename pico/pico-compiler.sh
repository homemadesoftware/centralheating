#!/bin/sh
echo "Starting compiler..."
export PICO_SDK_PATH=/usr/src/pico-sdk
export PICO_BOARD=pico_w
ls -l -a
cd /usr/src/project/
cmake -S . -B build

cd /usr/src/project/build
make -j10