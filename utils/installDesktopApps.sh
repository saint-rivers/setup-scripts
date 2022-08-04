#!/bin/bash

sudo apt update -y

# install utils and telegram
sudo apt install vim git curl telegram-desktop -y

# install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y

# install papirus
sudo add-apt-repository ppa:papirus/papirus
sudo apt update -y && sudo apt install papirus-icon-theme -y