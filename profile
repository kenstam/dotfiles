export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"
export ARCHFLAGS="-arch x86_64"

# Colours
BLACK='\e[0;30m'        # Black
RED='\e[0;31m'          # Red
GREEN='\e[0;32m'        # Green
YELLOW='\e[0;33m'       # Yellow
BLUE='\e[0;34m'         # Blue
PURPLE='\e[0;35m'       # Purple
CYAN='\e[0;36m'         # Cyan
WHITE='\e[0;37m'        # White

# Load in the git branch prompt script.
source ~/.git-prompt
source ~/.git-completion
export PS1="\[$CYAN\]\h \[$GREEN\]\t\[$YELLOW\]\w\[\033[m\]\[$RED\]\$(__git_ps1)\[$WHITE\]\$ "
export PATH=$HOME/.rbenv/bin:$HOME/bin:$PATH

# bash completion under osx
if [ "$(uname)" == "Darwin" ]; then
  export PATH=$HOME/homebrew/bin:$HOME/homebrew/opt/node@8/bin:$HOME/homebrew/opt/gnupg@1.4/libexec/gpgbin:$HOME/homebrew/opt/coreutils/bin:$HOME/homebrew/opt/findutils/libexec/gnubin:$PATH
  export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
  if [ -f $(brew --prefix)/etc/profile.d/bash-completion.sh ]; then
    . $(brew --prefix)/etc/profile.d/bash_completion.sh
  fi
fi

export EDITOR=vim
set -o vi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

. ~/.bash_aliases
