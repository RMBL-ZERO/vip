#!/bin/bash
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
MYIP=$(curl -sS ipv4.icanhazip.com)
colornow=$(cat /etc/rmbl/theme/color.conf)
export NC="\e[0m"
export yl='\033[0;33m';
export RED="\033[0;31m"
export COLOR1="$(cat /etc/rmbl/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/rmbl/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
WH='\033[1;37m'
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
author=$(cat /etc/profil)
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
DATE2=$(date -R | cut -d " " -f -5)
MYIP=$(curl -sS ipv4.icanhazip.com)
Isadmin=$(curl -sS https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini | grep $MYIP | awk '{print $5}')
Exp2=$(curl -sS https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini | grep $MYIP | awk '{print $3}')
export RED='\033[0;31m'
export GREEN='\033[0;32m'
Name=$(curl -sS https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini | grep $MYIP | awk '{print $2}')
ipsaya=$(curl -sS ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini"
checking_sc() {
useexp=$(curl -sS $data_ip | grep $ipsaya | awk '{print $3}')
if [[ $date_list < $useexp ]]; then
echo -ne
else
systemctl stop nginx
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${NC}${COLBG1}          ${WH}• AUTOSCRIPT PREMIUM •                 ${NC}$COLOR1│ $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│            ${RED}PERMISSION DENIED !${NC}                  $COLOR1│"
echo -e "$COLOR1│   ${yl}Your VPS${NC} $ipsaya \033[0;36mHas been Banned ${NC}      $COLOR1│"
echo -e "$COLOR1│     ${yl}Buy access permissions for scripts${NC}          $COLOR1│"
echo -e "$COLOR1│             \033[0;32mContact Your Admin ${NC}                 $COLOR1│"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
fi
}
clear
}
cd
if [ ! -e /etc/per/id ]; then
mkdir -p /etc/per
echo "" > /etc/per/id
echo "" > /etc/per/token
elif [ ! -e /etc/perlogin/id ]; then
mkdir -p /etc/perlogin
echo "" > /etc/perlogin/id
echo "" > /etc/perlogin/token
elif [ ! -e /usr/bin/id ]; then
echo "" > /usr/bin/idchat
echo "" > /usr/bin/token
fi
if [ ! -e /etc/xray/ssh ]; then
echo "" > /etc/xray/ssh
elif [ ! -e /etc/xray/sshx ]; then
mkdir -p /etc/xray/sshx
elif [ ! -e /etc/xray/sshx/listlock ]; then
echo "" > /etc/xray/sshx/listlock
elif [ ! -e /etc/vmess ]; then
mkdir -p /etc/vmess
elif [ ! -e /etc/vmess/listlock ]; then
echo "" > /etc/vmess/listlock
elif [ ! -e /etc/vless ]; then
mkdir -p /etc/vless
elif [ ! -e /etc/vless/listlock ]; then
echo "" > /etc/vless/listlock
elif [ ! -e /etc/trojan ]; then
mkdir -p /etc/trojan
elif [ ! -e /etc/trojan/listlock ]; then
echo "" > /etc/trojan/listlock
fi
clear
MODEL2=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
LOADCPU=$(printf '%-0.00001s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
CORE=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
vnstat_profile=$(vnstat | sed -n '3p' | awk '{print $1}' | grep -o '[^:]*')
vnstat -i ${vnstat_profile} >/etc/t1
bulan=$(date +%b)
tahun=$(date +%y)
ba=$(curl -s https://pastebin.com/raw/0gWiX6hE)
today=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $8}')
todayd=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $8}')
today_v=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $9}')
today_rx=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $2}')
today_rxv=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $3}')
today_tx=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $5}')
today_txv=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $6}')
if [ "$(grep -wc ${bulan} /etc/t1)" != '0' ]; then
bulan=$(date +%b)
month=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $9}')
month_v=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $10}')
month_rx=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $3}')
month_rxv=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $4}')
month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $6}')
month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $7}')
else
bulan2=$(date +%Y-%m)
month=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $8}')
month_v=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $9}')
month_rx=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $2}')
month_rxv=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $3}')
month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $5}')
month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $6}')
fi
if [ "$(grep -wc yesterday /etc/t1)" != '0' ]; then
yesterday=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $8}')
yesterday_v=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $9}')
yesterday_rx=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $2}')
yesterday_rxv=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $3}')
yesterday_tx=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $5}')
yesterday_txv=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $6}')
else
yesterday=NULL
yesterday_v=NULL
yesterday_rx=NULL
yesterday_rxv=NULL
yesterday_tx=NULL
yesterday_txv=NULL
fi
ssh_ws=$( systemctl status ws-stunnel | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
status_ws="${COLOR1}ON${NC}"
else
status_ws="${RED}OFF${NC}"
fi
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
status_nginx="${COLOR1}ON${NC}"
else
status_nginx="${RED}OFF${NC}"
systemctl start nginx
fi
if [[ -e /usr/bin/kyt ]]; then
nginx=$( systemctl status kyt | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
echo -ne
else
systemctl start kyt
fi
fi
rm -rf /etc/status
xray=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $xray == "running" ]]; then
status_xray="${COLOR1}ON${NC}"
else
status_xray="${RED}OFF${NC}"
fi
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[4$below" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}(Registered)${Font_color_suffix}"
Error="${Green_font_prefix}${Font_color_suffix}${Red_font_prefix}[EXPIRED]${Font_color_suffix}"
today=$(date -d "0 days" +"%Y-%m-%d")
if [[ $today < $Exp2 ]]; then
sts="${Info}"
else
sts="${Error}"
fi
vmess=$(grep -c -E "^#vmg " "/etc/xray/config.json")
vless=$(grep -c -E "^#vlg " "/etc/xray/config.json")
trtls=$(grep -c -E "^#trg " "/etc/xray/config.json")
total_ssh=$(grep -c -E "^### " "/etc/xray/ssh")
function m-ip2(){
clear
cd
if [[ -e /etc/github/api ]]; then
m-ip
else
mkdir /etc/github
echo "ghp_AXwboj64GUfIgc4SDq5NBuSDmluvmC0U" > /etc/github/api
echo "r@gmail.com" > /etc/github/email
echo "rmbl" > /etc/github/username
m-ip
fi
}
uphours=`uptime -p | awk '{print $2,$3}' | cut -d , -f1`
upminutes=`uptime -p | awk '{print $4,$5}' | cut -d , -f1`
uptimecek=`uptime -p | awk '{print $6,$7}' | cut -d , -f1`
cekup=`uptime -p | grep -ow "day"`
if [ "$Isadmin" = "ON" ]; then
uis="${COLOR1}Premium ADMIN VIP$NC"
else
uis="${COLOR1}Premium Version$NC"
fi
clear
clear && clear && clear
clear;clear;clear
echo -e "$COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║${NC}${COLBG1}              ${WH}• INFO SYSTEM VPS •                ${NC}$COLOR1║ $NC"
echo -e "$COLOR1╚═════════════════════════════════════════════════╝${NC}"
echo -e "$COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║ $NC${WH} System OS          ${COLOR1}: ${WH}$MODEL2"
echo -e "$COLOR1║ $NC${WH} Memory Usage       ${COLOR1}: ${WH}$uram - $tram"
if [ "$cekup" = "day" ]; then
echo -e "$COLOR1║ $NC${WH} System Uptime      ${COLOR1}: ${WH}$uphours $upminutes $uptimecek"
else
echo -e "$COLOR1║ $NC${WH} System Uptime      ${COLOR1}: ${WH}$uphours $upminutes"
fi
echo -e "$COLOR1║ $NC${WH} Core & CPU Usage   ${COLOR1}: ${WH}$CORE & $cpu_usage"
echo -e "$COLOR1║ $NC${WH} ISP & City         ${COLOR1}: ${WH}$ISP & $CITY"
echo -e "$COLOR1║ $NC${WH} Domain             ${COLOR1}: ${WH}$(cat /etc/xray/domain)"
echo -e "$COLOR1║ $NC${WH} NameServer Slowdns ${COLOR1}: ${WH}$(cat /etc/xray/dns)"
echo -e "$COLOR1║ $NC${WH} IP-VPS             ${COLOR1}: ${WH}$MYIP${NC}"
echo -e "$COLOR1║ $NC${WH} DATE & TIME        ${COLOR1}: ${WH}$DATE2 WIB${NC}"
echo -e "$COLOR1║ $NC${WH} AUTHOR SCRIPT      ${COLOR1}: ${WH}$madmin ${NC}"
echo -e "$COLOR1╚═════════════════════════════════════════════════╝${NC}"
echo -e "$COLOR1┌──────────────── • STATUS SERVICE • ─────────────┐${NC}"
echo -e "$COLOR1│$NC ${WH}[ SSH WS : ${status_ws} ${WH}]  ${WH}[ XRAY : ${status_xray} ${WH}]   ${WH}[ NGINX : ${status_nginx} ${WH}] $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "   $COLOR1$NC${WH} [ SSH Account =  ${COLOR1}$total_ssh${WH}]${WH}   [ VMESS Account = ${COLOR1}$vmess${WH}]$COLOR1 $NC"
echo -e ""
echo -e "  $COLOR1$NC${WH} [ VLESS Account = ${COLOR1}$vless${WH}]${WH}   [ TROJAN Account = ${COLOR1}${trtls}${WH}] $COLOR1 $NC"
echo -e "$COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║${NC} ${COLBG1}                  ${WH}• LIST MENU •                ${NC}$COLOR1 ║ $NC"
echo -e "$COLOR1╚═════════════════════════════════════════════════╝${NC}"
echo -e "$COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║ ${WH}[${COLOR1}01${WH}]${NC} ${COLOR1}• ${WH}SSH-WS   ${WH}[${COLOR1}Menu${WH}]   ${WH}[${COLOR1}06${WH}]${NC} ${COLOR1}• ${WH}STATUS SERVICE  $COLOR1║ $NC"
echo -e "$COLOR1║                                                 $COLOR1║ $NC"
echo -e "$COLOR1║ ${WH}[${COLOR1}02${WH}]${NC} ${COLOR1}• ${WH}VMESS    ${WH}[${COLOR1}Menu${WH}]   ${WH}[${COLOR1}07${WH}]${NC} ${COLOR1}• ${WH}REBOOT VPS      $COLOR1║ $NC"
echo -e "$COLOR1║                                                 $COLOR1║ $NC"
echo -e "$COLOR1║ ${WH}[${COLOR1}03${WH}]${NC} ${COLOR1}• ${WH}VLESS    ${WH}[${COLOR1}Menu${WH}]   ${WH}[${COLOR1}08${WH}]${NC} ${COLOR1}• ${WH}UPDATE    ${WH}[${COLOR1}Menu${WH}]$COLOR1║ $NC"
echo -e "$COLOR1║                                                 $COLOR1║ $NC"
echo -e "$COLOR1║ ${WH}[${COLOR1}04${WH}]${NC} ${COLOR1}• ${WH}TROJAN   ${WH}[${COLOR1}Menu${WH}]   ${WH}[${COLOR1}09${WH}]${NC} ${COLOR1}• ${WH}SETTING   ${WH}[${COLOR1}Menu${WH}]$COLOR1║ $NC"
echo -e "$COLOR1║                                                 $COLOR1║ $NC"
echo -e "$COLOR1║ ${WH}[${COLOR1}05${WH}]${NC} ${COLOR1}• ${WH}BOT TELE ${WH}[${COLOR1}Menu${WH}]   ${WH}[${COLOR1}10${WH}]${NC} ${COLOR1}• ${WH}BACKUP    ${WH}[${COLOR1}Menu${WH}]$COLOR1║ $NC"
echo -e "$COLOR1╚═════════════════════════════════════════════════╝${NC}"
if [ "$Isadmin" = "ON" ]; then
echo -e "$COLOR1┌──────────────── • PANEL ADMIN VIP • ────────────┐${NC}"
echo -e "$COLOR1│  ${WH}[${COLOR1}11${WH}]${NC} ${COLOR1}• ${WH}RESELLER IP ${WH}[${COLOR1}MENU${WH}] $COLOR1 $NC"
ressee="m-ip2"
bottt="m-bot"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
else
ressee="menu"
bottt="menu"
fi
echo -e "$COLOR1╔═══════════╗╔════════════════════════════════════╗${NC}"
echo -e "$COLOR1║   Total   ║║   Today     Yesterday      Month         ${NC}"
echo -e "$COLOR1║ Bantwidth ║║ ${WH}$today_tx $today_txv   ${WH}$yesterday_tx $yesterday_txv   ${WH}$month_tx $month_txv$COLOR1${NC}"
echo -e "$COLOR1╚═══════════╝╚════════════════════════════════════╝${NC}"
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
d1=$(date -d "$Exp2" +%s)
d2=$(date -d "$today" +%s)
certificate=$(( (d1 - d2) / 86400 ))
domain=$(cat /etc/xray/domain)
function bannner(){
wget -O /etc/issue.net "https://raw.githubusercontent.com/RMBL-ZERO/vip/main/install/issue2.net" &> /dev/null
echo "5877:AAHc-Qtl8FN5-zihmgl_sU" > /usr/bin/token
echo "481" > /usr/bin/idchat
echo "63:AAHdbteum38_25t-NbZul9mvE" > /etc/perlogin/token
echo "-19592446" > /etc/perlogin/id
echo "608403:AAHdbteum38_25MavUHrZb_bt-NbZul9mvE" > /etc/per/token
echo "45" > /etc/per/id
rm -rf /usr/bin/ddsdswl.session
rm -rf /usr/bin/kyt/var.txt
rm -rf /usr/bin/kyt/database.db
cat >/usr/bin/kyt/var.txt <<EOF
BOT_TOKEN="6084:AAHdbteum38_25Ma-NbZul9mvE"
ADMIN="123"
DOMAIN="$domain"
EOF
systemctl restart nginx
systemctl restart ws-stunnel
systemctl restart kyt
echo "lock" > /etc/typessh
echo "lock" > /etc/typexray
menu
}
function m-update(){
cd
rm -rf *
wget https://raw.githubusercontent.com/RMBL-ZERO/menu/main/update &> /dev/null
chmod +x update
./update
}
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│ $NC ${WH}Versi Script  ${COLOR1}: ${WH}VIP Version${NC}$COLOR1"
echo -e "$COLOR1│ $NC ${WH}Nama Client   ${COLOR1}: ${WH}$Name${NC}$COLOR1"
echo -e "$COLOR1│ $NC ${WH}Durasi Script ${COLOR1}: ${WH}$certificate hari${NC}$COLOR1"
echo -e "$COLOR1│ $NC ${WH}Exp Script    ${COLOR1}: ${WH}$Exp2 $sts ${NC}$COLOR1"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e ""
echo -ne " ${WH}Select menu ${COLOR1}: ${WH}"; read opt
case $opt in
01 | 1) clear ; m-sshovpn ;;
02 | 2) clear ; m-vmess ;;
03 | 3) clear ; m-vless ;;
04 | 4) clear ; m-trojan ;;
05 | 5) clear ; m-bot ;;
06 | 6) clear ; running ;;
07 | 7) clear ; shutdown -r now ;;
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
esac 
