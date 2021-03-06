#!/bin/bash
set -e

#update OSX prefs
echo "***Modifying OSX settings***"
./set-defaults.sh

echo "***Installing ZSH antigen***"
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ~/.antigen.zsh

if test $(which brew); then
  echo "***Brew is already installed***"
else
  echo "***Installing homebrew***"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "***Installing hombrew packages***"
brew tap Homebrew/bundle
brew bundle --global

if [ ! -d $HOME/.vim/janus ]; then
  echo "***Installing Vim janus***"
  curl -L https://bit.ly/janus-bootstrap | bash
fi

if grep -Fxq "/usr/local/bin/zsh" /etc/shells; then
  echo "***Brew ZSH is approved for chsh***"
else
  echo "***Adding brew zsh as approved chsh***"
  echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells > /dev/null
  chsh -s /usr/local/bin/zsh
fi
