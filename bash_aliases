alias pip="pip2"
alias python="python2"
alias find="gfind"
alias locate="glocate"
alias udpatedb="gupdatedb"
alias grep="grep --color=always"
alias ll="ls -lrt"
alias la="ls -lart"
alias crontab="VIM_CRONTAB=true crontab"

# Git alias
alias gs="git status "
alias got="git "
alias get="git "

# Rails
alias be="bundle exec "
alias s="CACHE_AA=true CACHE=true NO_DEBUG=true bundle exec rails server"
alias f="CACHE_AA=true CACHE=true NO_DEBUG=true bundle exec foreman start"
alias w="QUEUE=\"default,doc_store,divisions,elastic,aging,notifications,importer,exporter,aggregate_notifications,webhooks\" bundle exec rake jobs:work"
alias c="bundle exec rails console "
alias r="bundle exec rake "
alias sql="bundle exec rails db "
alias run="bundle exec rails r "

# Rails /w docker
alias dup="docker-compose up"
alias ddown="docker-compose down"
alias dc="docker-compose run app rails console"
alias db="docker-compose run app bundle "
alias dr="docker-compose run app rake "
alias dsql="docker-compose run app mysql -uroot -hdb -P3306 -A eft3_development"
alias drun="docker-compose run app rails r "
