#!/bin/sh

set -e

# install dependencies
apk add --no-cache g++ linux-headers make
pip install --upgrade pip

# build
pip wheel --extra-index-url https://alpine-wheels.github.io/index --no-deps --requirement requirements.txt
