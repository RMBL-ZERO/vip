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
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
author=$(cat /etc/profil)
WKT=$(curl -s ipinfo.io/timezone?token=$ipn )
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
DATE2=$(date -R | cut -d " " -f -5)
IPVPS=$(curl -s ipinfo.io/ip?token=7578ac19afd785 )
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
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $IPVPS \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/rmblvpn1"
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

# =========================================
#vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
# TOTAL ACC CREATE VMESS WS
vmess=$(grep -c -E "^#vmg " "/etc/xray/config.json")
# TOTAL ACC CREATE  VLESS WS
vless=$(grep -c -E "^#vlg " "/etc/xray/config.json")
# TOTAL ACC CREATE  TROJAN
trtls=$(grep -c -E "^#trg " "/etc/xray/config.json")
# TOTAL ACC CREATE OVPN SSH
total_ssh=$(grep -c -E "^### " "/etc/xray/ssh")
#total_ssh="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
COLOR1='\033[0;35m'
COLOR2='\033[0;39m'
clear

BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"


# // Exporting URL Host
export Server_URL="raw.githubusercontent.com/RMBL-ZERO/vip/main"
export Server1_URL="raw.githubusercontent.com/RMBL-ZERO/limit/main"
export Server_Port="443"
export Server_IP="underfined"
export Script_Mode="Stable"
export Auther=".rmblvpn"
export MYIP=$( curl -s https://ipinfo.io/ip/ )
Name=$(curl -sS https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini | grep $MYIP | awk '{print $2}')
Exp=$(curl -sS https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini | grep $MYIP | awk '{print $3}')

# // Root Checking
if [ "${EUID}" -ne 0 ]; then
		echo -e "${EROR} Please Run This Script As Root User !"
		exit 1
fi

# // Exporting IP Address
export IP=$( curl -s https://ipinfo.io/ip/ )

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

###########- END COLOR CODE -##########
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))

persenmemori="$(echo "scale=2; $usmem*100/$tomem" | bc)"
#persencpu=
persencpu="$(echo "scale=2; $cpu1+$cpu2" | bc)"



# // Exporting Network Interface
export NETWORK_IFACE="$(ip route show to default | awk '{print $5}')"

data_ip="https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini"
d2=$(date -d "$date_list" +"+%s")
d1=$(date -d "$Exp" +"+%s")
dayleft=$(( ($d1 - $d2) / 86400 ))


# // Clear
clear
clear && clear && clear
clear;clear;clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
function addhost(){
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -rp "Domain/Host: " -e host
echo ""
if [ -z $host ]; then
echo "????"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
setting-menu
else
rm -fr /etc/xray/domain
echo "IP=$host" > /var/lib/scrz-prem/ipvps.conf
echo $host > /etc/xray/domain
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo "Dont forget to renew gen-ssl"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
}
function genssl(){
clear
systemctl stop nginx
systemctl stop xray
domain=$(cat /var/lib/scrz-prem/ipvps.conf | cut -d'=' -f2)
Cek=$(lsof -i:80 | cut -d' ' -f1 | awk 'NR==2 {print $1}')
if [[ ! -z "$Cek" ]]; then
sleep 1
echo -e "[ ${red}WARNING${NC} ] Detected port 80 used by $Cek " 
systemctl stop $Cek
sleep 2
echo -e "[ ${green}INFO${NC} ] Processing to stop $Cek " 
sleep 1
fi
echo -e "[ ${green}INFO${NC} ] Starting renew gen-ssl... " 
sleep 2
/root/.acme.sh/acme.sh --upgrade
/root/.acme.sh/acme.sh --upgrade --auto-upgrade
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
echo -e "[ ${green}INFO${NC} ] Renew gen-ssl done... " 
sleep 2
echo -e "[ ${green}INFO${NC} ] Starting service $Cek " 
sleep 2
echo $domain > /etc/xray/domain
systemctl start nginx
systemctl start xray
echo -e "[ ${green}INFO${NC} ] All finished... " 
sleep 0.5
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
IPVPS=$(curl -s ipinfo.io/ip )
ISPVPS=$( curl -s ipinfo.io/org )
ttoday="$(vnstat | grep today | awk '{print $8" "substr ($9, 1, 3)}' | head -1)"
tmon="$(vnstat -m | grep `date +%G-%m` | awk '{print $8" "substr ($9, 1 ,3)}' | head -1)"
export sem=$( curl -s https://raw.githubusercontent.com/RMBL-ZERO/vip/main/version)
export pak=$( cat /home/.ver)
IPVPS=$(curl -s ipinfo.io/ip )
clear
echo -e "$COLOR1╔══════════════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║${NC}${COLBG1}              ${WH} • RMBL VPN TUNNELING •                     ${NC}$COLOR1║ $NC"
echo -e "$COLOR1╚══════════════════════════════════════════════════════════╝${NC}"
echo -e "$COLOR1╔══════════════════════════════════════════════════════════╗${NC}"
echo -e "  ${BLUE}• ${GREEN}Sever Uptime        ${NC}= $( uptime -p  | cut -d " " -f 2-10000 ) "
echo -e "  ${BLUE}• ${GREEN}Current Time        ${NC}= $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "  ${BLUE}• ${GREEN}Operating System    ${NC}= $( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g')( $(uname -m))"
echo -e "  ${BLUE}• ${GREEN}Current Domain      ${NC}= $( cat /etc/xray/domain )"
echo -e "  ${BLUE}• ${GREEN}SLOWDNS Domain      ${NC}= $NS"
echo -e "  ${BLUE}• ${GREEN}Server IP           ${NC}= $IPVPS"
echo -e "  ${BLUE}• ${GREEN}ISP-VPS             ${NC}= $ISP"
echo -e "  ${BLUE}• ${GREEN}City                ${NC}= $CITY"
echo -e "  ${BLUE}• ${GREEN}RAM                 ${NC}= $uram / $tram"
echo -e "  ${BLUE}• ${GREEN}CPU                 ${NC}= $cpu_usage"
#echo -e "  ${BLUE}• ${GREEN}Clients Name        ${NC}= ${YELLOW}$Name ${NC}"
#echo -e "  ${BLUE}• ${GREEN}Script Exfire       ${NC}= ${YELLOW}$Exp (${NC}${RED} $dayleft Days ${NC}${YELLOW})${NC}"
echo -e "  ${BLUE}• ${GREEN}Developer           ${NC}= RMBL VPN Tunneling ${NC}"
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
echo -e "$COLOR1║$COLOR1$NC${WH} [ SSH =  ${COLOR1}$total_ssh${WH}]${WH}  [ VMESS = ${COLOR1}$vmess${WH}]  [ VLESS = ${COLOR1}$vless${WH}]  [ TROJAN = ${COLOR1}${trtls}${WH}] $COLOR1║$NC"
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
esac 
