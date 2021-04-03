xrdb -merge .Xresources

#ibus setup
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
ibus-daemon -drx

xrandr -s 1440x900
feh --bg-scale ~/wallpapers/1.jpg

#~/build/tinywm/tinywm &
#xterm
exec openbsd-cwm
