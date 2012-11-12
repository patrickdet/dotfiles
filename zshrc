# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="tilltheis"

# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gem bundler rails rails3 rbenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Z
. `brew --prefix`/etc/profile.d/z.sh
function precmd () {
  z --add "$(pwd -P)"
}

# Editor
export EDITOR="mvim -f"
export VISUAL='mvim -f' # http://stackoverflow.com/questions/2056137/how-to-run-mvim-macvim-from-terminal

# Colors
autoload -U colors
colors
setopt prompt_subst

# rbenv
eval "$(rbenv init -)"

# Path
PATH=/usr/local/bin:$HOME/bin:$PATH

# add Python dir to PATH
PATH=$PATH:$HOME/Library/Python/2.7/bin

# Term setting for tmux
TERM=screen-256color

# Tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
