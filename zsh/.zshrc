# Path
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

export GOPATH="$HOME/go"
export FLUTTER_PATH="$HOME/Code/flutter"

export PATH=$PATH:$GOPATH/bin:$FLUTTER_PATH/bin

# oh-my-zsh
ZSH_DISABLE_COMPFIX=true # required to fix error with permissions
ZSH_THEME="cloud"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Terminal config
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR='vim'

# Aliases
alias zshrc="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias load_zsh="source $HOME/.zshrc"

# Load tools
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
