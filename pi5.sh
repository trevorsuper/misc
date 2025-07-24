#!/usr/bin/sh
sudo apt remove firefox chromium orca thonny geany dillo lynx emacsen-common -y
sudo apt update && sudo apt upgrade -y
sudo apt install neofetch
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources
sudo apt update && sudo apt install brave-browser -y 