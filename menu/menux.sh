#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
MYIP=$(curl -sS ipv4.icanhazip.com)
###########- COLOR CODE -##############
colornow=$(cat /etc/rmbl/theme/color.conf)
export NC="\e[0m"
export yl='\033[0;33m';
export RED="\033[0;31m"
export COLOR1="$(cat /etc/rmbl/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/rmbl/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
WH='\033[1;37m'
###########- END COLOR CODE -##########
IPVPS=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
author=$(cat /etc/profil)
WKT=$(curl -s ipinfo.io/timezone?token=$ipn )
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
DATE2=$(date -R | cut -d " " -f -5)
data_ip="https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $IPVPS | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $IPVPS \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/rmblvp1"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6285256929176"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10)
NS=$(cat /etc/xray/dns)
CITY=$(curl -s ipinfo.io/city)
IPVPS=$(curl -s ipv4.icanhazip.com)
domain=$(cat /etc/xray/domain)
Name=$(curl -sS https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini | grep $MYIP | awk '{print $2}')
if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini | grep $MYIP | awk '{print $3}')
fi
rm -rf /etc/status

wget -q -O /etc/status "https://raw.githubusercontent.com/RMBL-ZERO/vip/main/status"


# // SSH Websocket Proxy
xray=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $xray == "running" ]]; then
    status_xray="${COLOR1}ON${NC}"
else
    status_xray="${RED}OFF${NC}"
fi
# STATUS EXPIRED ACTIVE
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[4$below" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}(Registered)${Font_color_suffix}"
Error="${Green_font_prefix}${Font_color_suffix}${Red_font_prefix}[EXPIRED]${Font_color_suffix}"

today=$(date -d "0 days" +"%Y-%m-%d")
if [[ $today < $Exp2 ]]; then
    sts="${Info}"
else
    sts="${Error}"
fi
# TOTAL ACC CREATE VMESS WS
vmess=$(grep -c -E "^#vmg " "/etc/xray/config.json")
# TOTAL ACC CREATE  VLESS WS
vless=$(grep -c -E "^#vlg " "/etc/xray/config.json")
# TOTAL ACC CREATE  TROJAN
trtls=$(grep -c -E "^#trg " "/etc/xray/config.json")
# TOTAL ACC CREATE OVPN SSH
total_ssh=$(grep -c -E "^### " "/etc/xray/ssh")
#total_ssh="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
function updatews(){
clear

echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}            ${WH}• UPDATE SCRIPT VPS •              ${NC} $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  $COLOR1[INFO]${NC} Check for Script updates"
sleep 2
wget -q -O /root/install_up.sh "https://raw.githubusercontent.com/RMBL-ZERO/vip/main/menu/install-up.sh" && chmod +x /root/install_up.sh
sleep 2
./install_up.sh
rm /root/install_up.sh
rm /opt/.ver
version_up=$( curl -sS https://raw.githubusercontent.com/RMBL-ZERO/permission/main/versi)
echo "$version_up" > /opt/.verecho "$version_up" > /opt/.ver
echo -e "$COLOR1 ${NC}  $COLOR1[INFO]${NC} Successfully Up To Date!"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌────────────────────── BY ───────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}             ${WH}• $author •${NC}                $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu
}
echo -e "$COLOR1╔══════════════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║${NC}${COLBG1}              ${WH} • RMBL VPN TUNNELING •                     ${NC}$COLOR1║ $NC"
echo -e "$COLOR1╚══════════════════════════════════════════════════════════╝${NC}"
echo -e "$COLOR1╔══════════════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║ $NC${WH}Sever Uptime        ${NC}= $( uptime -p  | cut -d " " -f 2-10000 ) "
echo -e "$COLOR1║ $NC${WH}Current Time        ${NC}= $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "$COLOR1║ $NC${WH}Operating System    ${NC}= $( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g')( $(uname -m))"
echo -e "$COLOR1║ $NC${WH}Current Domain      ${NC}= $( cat /etc/xray/domain )"
echo -e "$COLOR1║ $NC${WH}SLOWDNS Domain      ${NC}= $NS"
echo -e "$COLOR1║ $NC${WH}Server IP           ${NC}= $IPVPS"
echo -e "$COLOR1║ $NC${WH}ISP-VPS             ${NC}= $ISP"
echo -e "$COLOR1║ $NC${WH}City                ${NC}= $CITY"
echo -e "$COLOR1║ $NC${WH}RAM                 ${NC}= $uram / $tram"
echo -e "$COLOR1║ $NC${WH}CPU                 ${NC}= $cpu_usage"
#echo -e "  ${BLUE}• ${GREEN}Clients Name        ${NC}= ${YELLOW}$Name ${NC}"
#echo -e "  ${BLUE}• ${GREEN}Script Exfire       ${NC}= ${YELLOW}$Exp (${NC}${RED} $dayleft Days ${NC}${YELLOW})${NC}"
echo -e "$COLOR1║ $NC${WH}NAMA AUTHOR         ${NC}= ${WH}$author${NC}"
echo -e "$COLOR1╚══════════════════════════════════════════════════════════╝${NC}"
echo -e "$COLOR1╔══════════════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║ $NC ${WH}[ SSH WS : ${status_ws} ${WH}]           ${WH}[ Today     : $todayd $today_v]$NC"
echo -e "$COLOR1║ $NC ${WH}[ XRAY   : ${status_xray} ${WH}]           ${WH}[ Yesterday : $yesterday $yesterday_v]$NC"
echo -e "$COLOR1║ $NC ${WH}[ NGINX  : ${status_nginx} ${WH}]           ${WH}[ Month     : $month $month_v]$NC"
echo -e "$COLOR1╚══════════════════════════════════════════════════════════╝${NC}"
echo -e "      $COLOR1╔═════════════════════════════════════════════╗${NC}"
echo -e "      $COLOR1║${NC}${COLBG1}                   ${WH} • MENU •                 ${NC}$COLOR1║ $NC"
echo -e "      $COLOR1╚═════════════════════════════════════════════╝${NC}"
echo -e "      $COLOR1╔═════════════════════════════════════════════╗${NC}"
#echo -e "     $COLOR1║                                                 $COLOR1║ $NC"
echo -e "      $COLOR1║ ${WH}[${COLOR1}01${WH}]${NC} ${COLOR1}• ${WH}SSH-WS   ${WH}[${COLOR1}Menu${WH}]     ${WH}[${COLOR1}06${WH}]${NC} ${COLOR1}• ${WH}RESTART   ${WH}$COLOR1║ $NC"
echo -e "      $COLOR1║                                             $COLOR1║ $NC"
echo -e "      $COLOR1║ ${WH}[${COLOR1}02${WH}]${NC} ${COLOR1}• ${WH}VMESS    ${WH}[${COLOR1}Menu${WH}]     ${WH}[${COLOR1}07${WH}]${NC} ${COLOR1}• ${WH}REBOOT    ${WH}$COLOR1║ $NC"
echo -e "      $COLOR1║                                             $COLOR1║ $NC"
echo -e "      $COLOR1║ ${WH}[${COLOR1}03${WH}]${NC} ${COLOR1}• ${WH}VLESS    ${WH}[${COLOR1}Menu${WH}]     ${WH}[${COLOR1}08${WH}]${NC} ${COLOR1}• ${WH}UPDATE    ${WH}$COLOR1║ $NC"
echo -e "      $COLOR1║                                             $COLOR1║ $NC"
echo -e "      $COLOR1║ ${WH}[${COLOR1}04${WH}]${NC} ${COLOR1}• ${WH}TROJAN   ${WH}[${COLOR1}Menu${WH}]     ${WH}[${COLOR1}09${WH}]${NC} ${COLOR1}• ${WH}SETTING   ${WH}$COLOR1║ $NC"
echo -e "      $COLOR1║                                             $COLOR1║ $NC"
echo -e "      $COLOR1║ ${WH}[${COLOR1}05${WH}]${NC} ${COLOR1}• ${WH}RUNNING  ${WH}[${COLOR1}Menu${WH}]     ${WH}[${COLOR1}10${WH}]${NC} ${COLOR1}• ${WH}BACKUP    ${WH}$COLOR1║ $NC"
echo -e "      $COLOR1╚═════════════════════════════════════════════╝${NC}"
echo -e "$COLOR1╔══════════════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║$COLOR1$NC${WH} [ SSH  = ${COLOR1}$total_ssh${WH}]${WH}  [ VMESS = ${COLOR1}$vmess${WH}]  [ VLESS = ${COLOR1}$vless${WH}]  [ TROJAN = ${COLOR1}${trtls}${WH}] $NC"
echo -e "$COLOR1╚══════════════════════════════════════════════════════════╝${NC}"

DATE=$(date +'%Y-%m-%d')
datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo -e "$COLOR1 $NC Expiry In   : $(( (d1 - d2) / 86400 )) Days"
}
function new(){
cat> /etc/cron.d/autocpu << END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/3 * * * * root /usr/bin/autocpu
END
echo "Auto-Reboot CPU 100% TURN ON."
sleep 1
menu
}

function newx(){
clear
until [[ $usagee =~ ^[0-9]+$ ]]; do
read -p "kuota user format angka 1, 2 atau 3 (TERA): " usagee
done
echo "$usagee" > /etc/usagee
cat> /etc/cron.d/bantwidth << END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/10 * * * * root /usr/bin/bantwidth
END
echo "Auto-Shutdown $usagee TERA TURN ON."
sleep 1
menu
}
mai="datediff "$Exp" "$DATE""

# CERTIFICATE STATUS
d1=$(date -d "$Exp2" +%s)
d2=$(date -d "$today" +%s)
certificate=$(( (d1 - d2) / 86400 ))

function bannner(){
wget -O /etc/issue.net "https://raw.githubusercontent.com/RMBL-ZERO/vip/main/install/issue2.net" &> /dev/null
menu
}
echo -e "$COLOR1╔══════════════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║       $NC ${WH}Versi Script  ${COLOR1}: ${WH}$(cat /opt/.ver) Version                    ${NC}"
echo -e "$COLOR1║       $NC ${WH}Nama Client   ${COLOR1}: ${WH}$Name${NC}                           "
echo -e "$COLOR1║       $NC ${WH}Durasi Script ${COLOR1}: ${WH}$certificate hari                        ${NC}"                    
echo -e "$COLOR1║       $NC ${WH}Exp Script    ${COLOR1}: ${WH}$Exp2 $sts        ${NC}"
echo -e "$COLOR1╚══════════════════════════════════════════════════════════╝${NC}"
echo -e ""
echo -ne " ${WH}Select menu ${COLOR1}: ${WH}"; read opt
case $opt in
01 | 1) clear ; m-sshovpn ;;
02 | 2) clear ; m-vmess ;;
03 | 3) clear ; m-vless ;;
04 | 4) clear ; m-trojan ;;
05 | 5) clear ; m-allxray ;;
06 | 6) clear ; running ;;
07 | 7) clear ; reboot ;;
08 | 8) clear ; m-update ;;
19 | 9) clear ; m-system ;;
10 | 10) clear ; m-backup;;
11 | 11) clear ; $ressee ;;
12 | 12) clear ; key ;;
89 | 89) clear ; bannner ;;
88 | 88) clear ; new ;;
77 | 77) clear ; newx ;;
100) clear ; $up2u ;;
00 | 0) clear ; menu ;;
*) clear ; menu ;;
esac
