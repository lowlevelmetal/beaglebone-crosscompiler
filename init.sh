#!/bin/bash

git submodule update --init --recursive --remote

scripts/update-modules.sh

cd $(pwd)/3rd/glibc
git apply ../../glibc.patch
