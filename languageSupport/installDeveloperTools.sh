#!/bin/bash

sudo apt update -y 
sudo apt install code neovim gradle -y

# install node 16
curl -s https://deb.nodesource.com/setup_16.x | sudo bash
sudo apt install nodejs -y
node -v

# install JDK 17
apt-cache search openjdk
sudo apt-get install openjdk-17-jdk -y
java --version