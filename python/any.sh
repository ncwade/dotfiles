#!/bin/bash

set -e
cd "$(dirname "$0")"

echo "Updating Python installation"
pip install --upgrade pip setuptools
echo "Installing Python libraries"
pip install -r packages.txt
