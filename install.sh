#!/usr/bin/env bash

# Install dependencies & neovim
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y python-dev python-pip python3-dev python3-pip
sudo apt-get install -y neovim

# Vim & Python
pip3 install neovim

# FZF install
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
