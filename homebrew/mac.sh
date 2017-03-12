#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

set -e

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cd "$(dirname "$0")"

# homebrew packages

TAPS=(
    homebrew/binary
    homebrew/dupes
    homebrew/versions
    caskroom/cask
    caskroom/versions
)
for tap in ${TAPS[@]}
do
    brew tap $tap
done

FORMULAS=(
    cmake
    go
    rust
    tmux
    kwm
    khd
    python
    python3
    screenfetch
    wget
    iperf3
    xz
    pianobar
    neovim/neovim/neovim
    ctags
    ranger
    weechat
    pandoc
    node
    htop
)
for form in ${FORMULAS[@]}
do
    brew install $form
done

CASKS=(
    atom-beta
    iterm2-nightly
    vagrant
    virtualbox
    google-chrome
    tunnelblick
    google-drive
    wireshark
    postman
)
for barrel in ${CASKS[@]}
do
    brew cask install --appdir="/Applications" $barrel
done

# Cleanup
brew cleanup
brew-cask cleanup
