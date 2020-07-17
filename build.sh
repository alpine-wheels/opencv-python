#!/bin/sh

set -e

# install dependencies
apk add --no-cache g++ git make
apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.9/main/ qt-dev
pip install --extra-index-url https://alpine-wheels.github.io/index cmake==3.17.3 numpy==1.17.3

# build
pip wheel --no-deps git+https://github.com/skvark/opencv-python@36
