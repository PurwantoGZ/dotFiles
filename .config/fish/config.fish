export PATH="$HOME/go/bin:$PATH"
export GOPATH="$HOME/go"
export VISUAL=nvim
export EDITOR="$VISUAL"
source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"
alias vim="nvim"
alias fm="sudo nnn"
alias mdata="sudo mount /dev/sda5 /data"
alias umdata="sudo umount /data"
alias mcell="simple-mtpfs --device 1 cell/"
alias umcell="fusermount -u cell/"
