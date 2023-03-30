#!/bin/bash

set -e

# Compile and execute train.c
# Requires the TensorFlow C library library and headers, so download those.

if [[ ! -d "clib" ]]
then
  echo "Downloading TensorFlow C library into clib"
  mkdir clib
  curl -L "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-1.4.0.tar.gz" | tar -C clib -xz
fi

gcc -std=c99 -I clib/include -L clib/lib train.c -ltensorflow -ltensorflow_framework
LD_LIBRARY_PATH=clib/lib ./a.out
