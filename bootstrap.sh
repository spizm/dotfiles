#!/bin/bash
set -e

#update OSX prefs
./set-defaults.sh

#install ZSH antigen
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ~/.antigen.zsh

#install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install hombrew packages
brew tap Homebrew/bundle
brew bundle --global

#set up vim with janus
curl -L https://bit.ly/janus-bootstrap | bash
