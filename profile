
export LSCOLORS="gxfxcxdxbxegedabagacad"
export ARCHFLAGS="-arch x86_64"
export M2_HOME="~/apache-maven-3.6.3"

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
export PATH=$HOME/bin:$PATH

# bash completion under osx
if [ "$(uname)" == "Darwin" ]; then
  export PATH=$HOME/homebrew/bin:$HOME/homebrew/opt/node@12/bin:$HOME/homebrew/opt/coreutils/bin:$HOME/homebrew/opt/findutils/libexec/gnubin:$PATH
  export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:~/homebrew/lib/pkgconfig
  export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
  if [ -f $(brew --prefix)/etc/profile.d/bash-completion.sh ]; then
    . $(brew --prefix)/etc/profile.d/bash_completion.sh
  fi
fi

export EDITOR=vim
set -o vi
if which rbenv > /dev/null 2>&1; then 
  eval "$(rbenv init -)"
  export PATH=$HOME/.rbenv/bin:$PATH
fi

if which mvn > /dev/null 2>&1; then
  export PATH=$M2_HOME/bin:$PATH
fi

. ~/.bash_aliases
