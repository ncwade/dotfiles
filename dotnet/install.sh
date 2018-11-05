#!/usr/bin/env bash
if [ ! -f ~/.nuget/NuGet/Nuget.Config ]; then
    ln -s ~/.config/NuGet/NuGet.Config 
fi
