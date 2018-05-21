#!/bin/bash

# This script compiles and installs the kvantum theme engine for KDE on Fedora
# Link: https://github.com/tsujan/Kvantum
# Tested on Fedora 28 but should work on previous/newer versions too.

# Install essential packages

dnf install \
-y \
gcc-c++ \
libX11-devel \
libXext-devel \
qt5-qtx11extras-devel \
qt5-qtbase-devel \
qt5-qtsvg-devel \
qt5-qttools-devel 

# Get kvantum from the repo
git clone --depth=1 https://github.com/tsujan/Kvantum.git

# Directory is changed twice cause the repo kvantum has a folder kvantum that contains the code
# Both of them are called kvantum
cd Kvantum
cd Kvantum

# Create and change to build directory 
mkdir build && cd build

# Compile

cmake ..

make


# Install

make install
make distclean

# Finished

echo Done

