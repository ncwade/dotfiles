#!/usr/bin/env bash

HOST=`uname`
if [[ "$HOST" = "Darwin" ]]
then
    # Ask for the administrator password upfront
    sudo -v

    # Expand save panel by default
    defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
    defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

    # Save to disk (not to iCloud) by default
    defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

    # Restart automatically if the computer freezes
    sudo systemsetup -setrestartfreeze on

    # Check for software updates daily, not just once per week
    defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

    # Finder: show all filename extensions
    defaults write NSGlobalDomain AppleShowAllExtensions -bool true
    # Display full POSIX path as Finder window title
    defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

    # Disable the warning before emptying the Trash
    defaults write com.apple.finder WarnOnEmptyTrash -bool false

    # Empty Trash securely by default
    defaults write com.apple.finder EmptyTrashSecurely -bool true

    # Show the ~/Library folder
    chflags nohidden ~/Library

    # Enable the debug menu in Disk Utility
    defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
    defaults write com.apple.DiskUtility advanced-image-options -bool true

    # Install xcode CLI utilities
    xcode-select --install

    # Disable startup sound
    sudo nvram SystemAudioVolume="%01"

    echo "Done. Note that some of these changes require a logout/restart to take effect."
fi