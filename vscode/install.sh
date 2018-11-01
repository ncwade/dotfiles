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
    adamhartford.vscode-base64
    bbenoist.Nix
    bungcip.better-toml
    coolbear.systemd-unit-file
    dbaeumer.vscode-eslint
    DotJoshJohnson.xml
    formulahendry.dotnet-test-explorer
    heptio.jsonnet
    korekontrol.saltstack
    marcostazi.VS-code-vagrantfile
    mauve.terraform
    mikestead.dotenv
    ms-mssql.mssql
    ms-python.python
    ms-vscode.cpptools
    ms-vscode.csharp
    ms-vscode.Go
    ms-vscode.PowerShell
    ms-vscode.sublime-keybindings
    msjsdiag.debugger-for-chrome
    PeterJausovec.vscode-docker
    redhat.java
    robertohuertasm.vscode-icons
    vscjava.vscode-java-debug
    vscjava.vscode-java-pack
    vscjava.vscode-java-test
    vscjava.vscode-maven
    vscoss.vscode-ansible
    vsmobile.vscode-react-native
    wholroyd.HCL
)

for plug in ${PLUGINS[@]}
do
    code --install-extension $plug
done
