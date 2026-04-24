if [[ -z $DISPLAY ]]; then
    if [[ $(tty) == /dev/tty1 ]]; then
        export XDG_CURRENT_DESKTOP=SWAY
        exec sway
    elif [[ $(tty) == /dev/tty2 ]]; then
        export XDG_CURRENT_DESKTOP=niri
        export XDG_SESSION_TYPE=wayland
        exec niri
    fi
fi
