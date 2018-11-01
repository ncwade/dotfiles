#!/usr/bin/env bash
set -e

# Install brew if needed
HOST=`uname`


install_file ()
{
    src=$1
    dst=$2
    dstDir=$(dirname $dst)

    # Clean of the config if it exists.
    if [[ -e "$dst" ]]
    then
        rm -r "$dst"
    fi

    mkdir -p $dstDir
    # Link our modifications to the correct places.
    ln -s "$PWD/$src" "$dst"
}


install_cfg ()
{
    src=$1
    SRC_FOLDER=$(dirname $src)
    # Clean of the config if it exists.
    if [[ -f "$SRC_FOLDER/cfg.dest" ]]
    then
        dst=$(eval echo $(cat $SRC_FOLDER/cfg.dest))
    else
        # Default to the home folder.
        dst="$HOME/.$(basename "${src%.*}")"
    fi

    install_file $src $dst
}


install_bin ()
{
    src=$1
    mkdir -p $HOME/bin
    install_file $src $HOME/bin/$(basename "${src%.*}")
}


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
    install_cfg $src
done

# Find and symlink all of the scripts we want in our path.
for src in $(find -H . -maxdepth 2 -name '*.bin')
do
    install_bin $src
done

# Change the shell to ZSH
chsh -s /bin/zsh
