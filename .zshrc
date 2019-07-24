ZSH_DISABLE_COMPFIX="true"
export VISUAL=nvim
export EDITOR="$VISUAL"
source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"
source "${HOME}/.zgen/zgen.zsh"
if ! zgen saved; then

  # specify plugins here
  zgen load zsh-users/zsh-completions
  zgen load subnixr/minimal
  zgen oh-my-zsh

  # generate the init script from plugins above
  zgen save
fi
# aliasing
alias vim="nvim"
alias fm="sudo nnn"
alias mand="fusermount -u cell/"
