if [[ -z $DISPLAY ]]; then
    if [[ $(tty) == /dev/tty1 ]]; then
        export XDG_CURRENT_DESKTOP=SWAY
        exec sway
    elif [[ $(tty) == /dev/tty2 ]]; then
        exec niri-session -l
    fi
fi
