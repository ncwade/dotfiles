#!/bin/sh

cd "$(dirname "$0")"

cp cp ./com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

/usr/libexec/PlistBuddy -c "Add :'Custom Color Presets':'Tomorrow Night Eighties' dict" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Merge 'TomorrowNightEighties.itermcolors' :'Custom Color Presets':'Tomorrow Night Eighties'" ~/Library/Preferences/com.googlecode.iterm2.plist

# Read the settings
defaults read com.googlecode.iterm2