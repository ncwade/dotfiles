#!/usr/bin/env bash
set -e

# Install brew if needed
HOST=`uname`

# Install oh-my-zsh if it does not exist.
if [[ ! -a $HOME/.oh-my-zsh ]]; then
  echo "   Installing Oh My ZShell!"
  git clone http://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# Check for Homebrew
if [[ ! -f "$(which brew)" ]]
then
    echo "Installing Homebrew"
    # Install the correct homebrew for each OS type
    if [[ "$HOST" = "Darwin" ]]
    then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
    fi
fi

# Run Homebrew through the Brewfile
brew bundle

# find and run installers.
find . -name install.sh | while read script ; do sh -c "${script}" ; done

# Find and symlink all of the config files.
for src in $(find -H . -maxdepth 2 -name '*.symlink')
do
    SRC_FOLDER=$(dirname $src)
    # Clean of the config if it exists.
    if [[ -f "$SRC_FOLDER/symlink.destination" ]]
    then
        dst=$(eval echo $(cat $SRC_FOLDER/symlink.destination))
    else
        # Default to the home folder.
        dst="$HOME/.$(basename "${src%.*}")"
    fi

    # Clean of the config if it exists.
    if [[ -f "$dst" ]]
    then
        rm "$dst"
    fi

    # Link our modifications to the correct places.
    ln -s "$PWD/$src" "$dst"
done

# Change the shell to ZSH
chsh -s /bin/zsh
