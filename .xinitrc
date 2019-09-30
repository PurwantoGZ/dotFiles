export _JAVA_AWT_WM_NONREPARENTING=1
xsetroot -cursor_name left_ptr &
exec feh --bg-scale "$HOME/pic/minimalist.png" &
xrandr --setprovideroutputsource modesetting NVIDIA-0 &
xrandr --auto &
polybar alfianbar &
compton --config .config/compton/compton.conf &
exec bspwm 
