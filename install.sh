#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then

  # Install git
  xcode-select --install

  # Install homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  # Install brew packages
  brew install fish
  brew install vim --HEAD
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  brew install tmux
  brew install stow

  # Change default shell to fish
  echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
  chsh -s /usr/local/bin/fish
  curl -L https://get.oh-my.fish | fish
  omf install eden

  # Symlink .vimrc files
  stow vim tmux fish

  # TODO: Automate
  echo "Install fonts/RobotoMono-Regular.ttf"
  echo "Add osx/Dracula.terminal to your terminal theme."

elif [ "$(expr substr $uname -s) 1 5" ] == "Linux" ]; then

  # Upgrade the system
  sudo -v
  sudo apt update && sudo apt upgrade -y 
  sudo add-apt-repository ppa:jonathonf/vim

  # Install packages
  sudo apt install -y git
  sudo apt install -y fish
  sudo apt install -y vim
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  sudo apt install -y tmux
  sudo apt install -y stow

  # Change default shell to fish
  echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
  chsh -s /usr/local/bin/fish
  curl -L https://get.oh-my.fish | fish
  omf install eden

  # Symlink .vimrc files
  stow vim tmux fish

fi

