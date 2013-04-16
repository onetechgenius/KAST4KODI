#!/bin/bash -x
#/usr/bin/env bash

BUILD_DIR=$1
TOOLS_PREFIX=$2
TYPE=$3

echo $BUILD_DIR
echo $TOOLS_PREFIX
echo $TYPE

cd $BUILD_DIR

make -C tools/android/depends/xbmc || exit 1

make -j8 || exit 1

make apk || exit 1
