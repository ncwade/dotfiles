#!/usr/bin/env bash

# Install the needed plugins.
PLUGINS=(
    PeterJausovec.vscode-docker
    lukehoban.Go
    ms-python.python
    ms-vscode.cpptools
    ms-vscode.sublime-keybindings
    redhat.java
    robertohuertasm.vscode-icons
    vscjava.vscode-java-debug
    vscjava.vscode-java-pack
    vscjava.vscode-java-test
    vscjava.vscode-maven
    vscoss.vscode-ansible
    vsmobile.vscode-react-native
    zhuangtongfa.material-theme
)

for plug in ${PLUGINS[@]}
do
    code --install-extension $plug
done
