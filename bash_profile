export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.7.0/bin/:$PATH"

source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/{path,completion}.bash.inc

desk() {
    defaults write com.apple.finder CreateDesktop $1; killall Finder
}

alias aa='vi ~/.bash_profile; . ~/.bash_profile'
alias hh='vi ~/.hyper.js;'

alias burn='open -a Firefox'

alias g='git'
alias gap='git add -p'

alias dm='docker-machine'
alias dmb='docker-machine start docker'
alias dml='eval $(docker-machine env docker)'
alias dc='docker-compose'
alias slp='pmset sleepnow'
alias vi='nvim'

pass() {
  lpass ls > /dev/null &&\
  lpass ls --sync=no -m |\
  fzf |\
  ag '\d+]$' --only |\
  ag '\d+' --only |\
  xargs lpass show |\
  ag '^Password: (.+)$' |\
  ag ' .+$' --only |\
  ag '\S+' --only |\
  pbcopy
}

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
passcode() {
  ruby -e "puts (\
    (\"a\"..\"z\").to_a +\
    (\"A\"..\"Z\").to_a +\
    (0..9).to_a +\
    \"!$#,%@~^&*_-+=><\".chars\
    ).sample(${1:-12}).join"
}

ulimit -s 61440
