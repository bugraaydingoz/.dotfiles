# PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cloud"
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR='vim'

# Aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
# alias add_to_path="echo -n 'export PATH=~/bin:$PATH' >> ~/.zshrc"
alias load_zsh="source $HOME/.zshrc"
