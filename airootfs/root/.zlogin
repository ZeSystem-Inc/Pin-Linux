# tty1'de otomatik grafik oturum başlat; X çökerse normal kabuğa düşer
if [[ -z "$DISPLAY" && "$(tty)" == "/dev/tty1" ]]; then
    startx
fi
