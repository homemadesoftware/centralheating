#!/bin/sh
echo "Starting compiler... $1 "
ls -l -a
cd /usr/src/project/
cmake -S . -B build