# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DEFAULT_USER="rin"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

DISABLE_CORRECTION="true"

alias zshconf="subl ~/.zshrc"
alias sl="'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'"
alias jk="git push -f rin HEAD:jenkins"
alias be="bundle exec"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
#DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(gem git brew coffee git-extras osx bundler)
plugins=(git git-extras osx)

export SSL_CERT_FILE=/usr/local/etc/cacert.pem

export EDITOR="subl"

source $ZSH/oh-my-zsh.sh
source $(brew --prefix nvm)/nvm.sh
source ~/.nvm/nvm.sh

# Customize to your needs...
export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11R6/bin:/opt/local/bin:/usr/texbin:/usr/local/lib/node_modules
export CDPATH=":~/code:~/code/rails"

eval "$(rbenv init -)"

precmd () {print -Pn "\e]2; %~/ \a"}
preexec () {print -Pn "\e]2; %~/ \a"}
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
