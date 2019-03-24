#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then

  # Install git
  xcode-select --install

  # Install homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  # Install brew packages
  brew install fish
  brew install vim --with-override-system-vi
  brew install tmux
  brew install stow

  # Change default shell to fish
  chsh -s /usr/local/bin/fish
  curl -L https://get.oh-my.fish | fish

  echo "Add osx/Dracula.terminal to your terminal theme."
  echo "Install Roboto Mono"

  # Symlink .vimrc files
  stow vim

elif [ "$(expr substr $uname -s) 1 5" ] == "Linux" ]; then

  echo "Not implemented."

fi
