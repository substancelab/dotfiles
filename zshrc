# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=( bundler capistrano colorize git git-completion git-extras git-hubflow macports osx powder rails rake-fast rvm sublime zsh_reload)
plugins=(autojump gitfast git-prompt rvm sublime zsh_reload)

# User configuration

PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
PATH=$PATH:./bin:~/bin # Personal scripts etc
PATH=$PATH:/opt/local/lib/postgresql91/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin # MacPorts
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='subl -w'
fi

# Load RVM into a shell session *as a function*
[[ -s ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm

# Load aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

source $ZSH/oh-my-zsh.sh
