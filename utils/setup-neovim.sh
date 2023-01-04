#!/bin/bash

sudo apt update 
sudo apt install neovim -y

mkdir -p ~/.config/nvim/
cp ../config/init.vim ~/.config/nvim

