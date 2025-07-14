#!/bin/sh

sudo apt update
sudo apt install \
    git \
    cmake \
    clang-format \
    googletest \
    build-essential \
    libgtk2.0-dev \
    pkg-config \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libyaml-cpp-dev \
    libboost-all-dev \
    qt5-default \
    python3-pip \
    python3-matplotlib \
    python3-numpy \
    nuget

sudo pip3 install conan
