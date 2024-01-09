#!/bin/bash
function addtema() {
if [ -f "/etc/anggun/theme/blue" ]; then
#echo "sudah ada tema, mulai proses over write"
rm -rf /etc/anggun/theme
mkdir -p /etc/anggun
mkdir -p /etc/anggun/theme
else
#echo "belum ada tema njuk create folder tema"
mkdir -p /etc/anggun
mkdir -p /etc/anggun/theme
fi
#THEME RED
cat <<EOF>> /etc/anggun/theme/red
BG : \E[40;1;41m
TEXT : \033[0;31m
EOF
#THEME BLUE
cat <<EOF>> /etc/anggun/theme/blue
BG : \E[40;1;44m
TEXT : \033[0;34m
EOF
#THEME GREEN
cat <<EOF>> /etc/anggun/theme/green
BG : \E[40;1;42m
TEXT : \033[0;32m
EOF
#THEME YELLOW
cat <<EOF>> /etc/anggun/theme/yellow
BG : \E[40;1;43m
TEXT : \033[0;33m
EOF
#THEME MAGENTA
cat <<EOF>> /etc/anggun/theme/magenta
BG : \E[40;1;43m
TEXT : \033[0;33m
EOF
#THEME CYAN
cat <<EOF>> /etc/anggun/theme/cyan
BG : \E[40;1;46m
TEXT : \033[0;36m
EOF
#THEME CONFIG
cat <<EOF>> /etc/anggun/theme/color.conf
blue
EOF
}
function fixtema(){
    addtema
    if [ -f "/etc/anggun/theme/blue" ]; then
        #echo ada tema Yudhi default
        rm -rf /etc/anggun

        if [ -f "/etc/anggun/tema/blue" ]; then
            clear
            #echo ada tema yaddy.....
        else
            #echo ga ada tema yaddy...
            mkdir -p /etc/ssnvpn
            mkdir -p /etc/anggun
            mkdir -p /etc/anggun/theme
            mkdir -p /etc/anggun/tema
            cp -fr /etc/anggun/theme/* /etc/anggun/theme
        fi
    else

        clear
    fi
}
#hapus pagar bila tema error
fixtema
