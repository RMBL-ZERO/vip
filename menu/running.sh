#!/bin/bash
clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
    systemctl daemon-reload
}
res2() {
    systemctl reload nginx
}
res3() {
    systemctl reload xray
}
res4() {
    systemctl reload rc-local
}
res5() {
    systemctl reload client
}
res6() {
    systemctl reload server
}
res7() {
    systemctl reload dropbear
}
res8() {
    systemctl reload ws
}
res9() {
    systemctl reload openvpn
}
res10() {
    systemctl reload cron
}
res11() {
    systemctl reload haproxy
}
res12() {
    systemctl reload netfilter-persistent
}
res13() {
    systemctl reload squid
}
res14() {
    systemctl reload badvpn1
    systemctl reload badvpn2
    systemctl reload badvpn3
}
netfilter-persistent
clear
echo -e "$COLOR1 ┌──────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}          ${WH}RESTART SERVICE VPS             ${NC} $COLOR1 $NC"
echo -e "$COLOR1 └──────────────────────────────────────────┘${NC}"
echo -e ""
echo -e "  \033[1;91m Restart All Service... \033[1;37m"
echo -e ""
restart
