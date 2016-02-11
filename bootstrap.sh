#!/bin/bash
set -e

#update OSX prefs
./set-defaults.sh

echo "***Installing ZSH antigen***"
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ~/.antigen.zsh

echo "***Installing homebrew***"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "***Installing hombrew packages***"
brew tap Homebrew/bundle
brew bundle --global

#set up vim with janus
echo "***Installing Vim janus***"
curl -L https://bit.ly/janus-bootstrap | bash
