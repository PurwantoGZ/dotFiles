# export things
export ZSH="/home/alfianguide/.oh-my-zsh"
export EDITOR='nvim'
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)
# misc
ZSH_THEME="bira"
ZSH_DISABLE_COMPFIX="true"
plugins=(git)
# sourcing
# source /usr/share/nvm/init-nvm.sh
source $ZSH/oh-my-zsh.sh
# aliasing
alias vim="nvim"
# function gocreate {
#   cd $GOPATH/src 
#   echo "enter project name"
#   read prjname
#   mkdir $prjname
#   cd $prjname
#   clear
#   touch main.go
#   ls
#   echo "\nthis is your main file, edit it with your favorite editor :)\n"
#   echo "type 'ls' to see files\n"
#   echo "happy hacking!!!\n"
# }
# alias gonew="gocreate"
