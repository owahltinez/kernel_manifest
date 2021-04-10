#!/bin/bash
set -xe

# Sync repo
repo init -u https://github.com/android-rpi/kernel_manifest -b arpi-5.10
repo sync

# Build Kernel
bash build/build.sh
