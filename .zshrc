export VISUAL=nvim
export EDITOR="$VISUAL"
ZSH_DISABLE_COMPFIX="true"
source "${HOME}/.zgen/zgen.zsh"
if ! zgen saved; then

  # specify plugins here
  zgen load subnixr/minimal
  zgen oh-my-zsh

  # generate the init script from plugins above
  zgen save
fi
# aliasing
alias vim="nvim"
alias vifm="vifm ."
