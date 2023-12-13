#!/bin/bash

if [ "$1" == "-unity" ]; then
    # Run code for unity
    echo "Unity Coming Soon"
    # Add your XFCE-specific commands here

elif [ "$1" == "-xfce" ]; then
    # Run code for XFCE
    sudo add-apt-repository ppa:upubuntu-com/gtk3
    sudo apt-get update
    sudo apt-get install win2-7

    # Applying Unity-specific settings
    gsettings set org.gnome.desktop.wm.preferences theme 'Win2-7-theme'
    gsettings set org.gnome.desktop.wm.preferences button-layout 'menu:minimize,maximize,close'
    
    echo "XFCE-specific commands executed."
else
    echo "Invalid tag. Please provide either -xfce or -unity as arguments."
    exit 1
fi
