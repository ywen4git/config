# -*- shell-script -*-

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias hi='history'

alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'

alias le='less -Mi'

alias e='/usr/bin/emacsclient -c -a /usr/bin/vi'

UPDATEDB_LOCATE_ALIASES="$HOME/config/updatedb_locate_aliases"
if [ -f "$UPDATEDB_LOCATE_ALIASES" ]; then
   source "$UPDATEDB_LOCATE_ALIASES"
fi
   
# git related
GIT_ALIASES="$HOME/config/git_aliases"
if [ -f "$GIT_ALIASES" ]; then
   source "$GIT_ALIASES"
fi
alias gits='git status'
alias gitd='git diff'
alias gitds='git diff --staged'
fetch_origin_and_checkout() {
  git fetch origin "$1" && git checkout "$1"
}
fetch_origin_and_checkout_and_pull() {
  git fetch origin "$1" && git checkout "$1" && git pull origin "$1"
}
alias gitfc=fetch_origin_and_checkout
alias gitfcp=fetch_origin_and_checkout_and_pull

alias cdroot='cd $(git rev-parse --show-toplevel)'

# URL encode/decode from commandline with Python
alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'

