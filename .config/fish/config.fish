eval (starship init fish)
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export GOPATH="$HOME/go"
export VISUAL=nvim
export EDITOR="$VISUAL"
source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"
export GPG_TTY=(tty)
alias vim="nvim"
alias fm="sudo nnn"
alias mdata="sudo mount /dev/sda5 /data"
alias umdata="sudo umount /data"
alias mcell="simple-mtpfs --device 1 cell/"
alias umcell="fusermount -u cell/"
alias webdev="sudo /etc/init.d/nginx start && sudo /etc/init.d/php-fpm start && sudo /etc/init.d/mysql start"
alias smstr1="cd clg/semester\ II/"
alias smstr2="cd clg/semester\ II/"
alias smstr3="cd clg/semester\ III/"
alias smstr4="cd clg/semester\ IV/"
alias smstr5="cd clg/semester\ V/"
alias smstr6="cd clg/semester\ VI/"
alias smstr7="cd clg/semester\ VII/"
alias smstr8="cd clg/semester\ VIII/"
