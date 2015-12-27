# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=( bundler capistrano colorize git git-completion git-extras git-hubflow macports osx powder rails rake-fast rvm sublime zsh_reload)
plugins=(aws gitfast git-prompt rvm sublime zsh_reload)

# Load autojump with tab completions
export FPATH="$FPATH:/opt/local/share/zsh/site-functions/"
if [ -f /opt/local/etc/profile.d/autojump.sh ]; then
    . /opt/local/etc/profile.d/autojump.sh
fi
autoload -U compinit; compinit

# User configuration

PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH"
PATH=./bin:~/bin:$PATH # Personal scripts etc
PATH=/opt/local/lib/postgresql94/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH # MacPorts
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Optimize Ruby GC for longer running processes
export RUBY_GC_HEAP_INIT_SLOTS=2000000
export RUBY_HEAP_SLOTS_INCREMENT=500000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=70000000
export RUBY_GC_HEAP_FREE_SLOTS=100000

# Load RVM into a shell session *as a function*
[[ -s ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm

# Load aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Load extensions
[[ -f ~/.extensions ]] && source ~/.extensions

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

source $ZSH/oh-my-zsh.sh
