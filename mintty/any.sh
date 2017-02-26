#!/bin/bash

set -e
cd "$(dirname "$0")"

ln -s $PWD/minttyrc.symlink ~/.minttyrc
