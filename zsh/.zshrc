# PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

export GOPATH="$HOME/go"
export FLUTTER_PATH="$HOME/Code/flutter"
export NVM_DIR="$HOME/.nvm"
  # [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

export PATH=$PATH:$GOPATH/bin:$FLUTTER_PATH/bin:NVM_DIR


 ZSH_THEME="cloud"
plugins=(git)

source $ZSH/oh-my-zsh.sh
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR='vim'

# Aliases
alias code="code-insiders"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
# alias add_to_path="echo -n 'export PATH=~/bin:$PATH' >> ~/.zshrc"
alias load_zsh="source $HOME/.zshrc"
alias load_nvm='[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"'

# if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
