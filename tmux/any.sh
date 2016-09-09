#!/bin/bash

set -e
cd "$(dirname "$0")"

ln -s $PWD/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sh ~/.tmux/plugins/tpm/scripts/install_plugins.sh
