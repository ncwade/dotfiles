#!/bin/bash

set -e
cd "$(dirname "$0")"

echo "Updating Python installation"
pip3 install --upgrade pip setuptools
echo "Installing Python libraries"
pip3 install -r packages.txt
