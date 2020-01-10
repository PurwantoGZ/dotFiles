starship init fish | source
source $HOME/.cargo/env
set -x VISUAL nvim
set -x EDITOR nvim
alias vi="nvim"
alias vim="nvim"
alias removeorphan="sudo pacman -Rns (pacman -Qttdq)"
function fm
  sudo nnn
end
function mdata
  sudo mount /dev/sda5 /data
end
function umdata
  sudo umount /data
end
function mcell
  simple-mtpfs --device 1 cell/
end
function umcell
  fusermount -u cell/
end
function smstr1
  cd clg/semester\ I/
end
function smstr2
  cd clg/semester\ II/
end
function smstr3
  cd clg/semester\ III/
end
function smstr4
  cd clg/semester\ IV/
end
function smstr5
  cd clg/semester\ V/
end
function smstr6
  cd clg/semester\ VI/
end
function smstr7
  cd clg/semester\ VII/
end
function smstr8
  cd clg/semester\ VIII/
end
function prsnt
  xrandr --output HDMI1 --mode 1360x768
end

set PATH /home/alfianguide/.fnm $PATH
fnm env --multi | source

# fnm
set PATH /home/alfianguide/.fnm $PATH
fnm env --multi | source
