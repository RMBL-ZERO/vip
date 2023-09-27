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
# =========================================
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let tra=$trx/2
ssx=$(grep -c -E "^## " "/etc/xray/config.json")
let ssa=$ssx/2
COLOR1='\033[0;35m'
COLOR2='\033[0;39m'
clear
#total_ssh="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
COLOR1='\033[0;35m'
COLOR2='\033[0;39m'
clear
UDPX="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
GREEN='\033[0;32m'
RED='\033[0;31m'
IPVPS=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
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
    echo -e "      \033[0;36mTelegram${NC} t.me/rmblvpn1"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/085256929176"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10)
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
#let vla=$vlx/2
#vmc=$(grep -c -E "^### " "/etc/xray/config.json")
#let vma=$vmc/2
#ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

#trx=$(grep -c -E "^#! " "/etc/xray/config.json")
#let tra=$trx/2
#ssx=$(grep -c -E "^## " "/etc/xray/config.json")
#let ssa=$ssx/2
vmess=$(cat /root/akun/vmess/.vmess.db | wc -l)
vless=$(cat /root/akun/vless/.vless.db | wc -l)
trojan=$(cat /root/akun/trojan/.trojan.db | wc -l)
ss=$(cat /root/akun/shadowsocks/.shadowsocks.db | wc -l)
ssh=$(cat /root/akun/ssh/ssh.db | wc -l)

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
export Server_URL="raw.githubusercontent.com/RMBL-ZERO/test/main"
export Server1_URL="raw.githubusercontent.com/RMBL-ZERO/limit/main"
export Server_Port="443"
export Server_IP="underfined"
export Script_Mode="Stable"
export Auther=".geovpn"
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
IPVPS=$(curl -s ipinfo.io/ip )
# TOTAL ACC CREATE VMESS WS
vmess=$(grep -c -E "^#vmg " "/etc/xray/config.json")
# TOTAL ACC CREATE  VLESS WS
vless=$(grep -c -E "^#vlg " "/etc/xray/config.json")
# TOTAL ACC CREATE  TROJAN
trtls=$(grep -c -E "^#trg " "/etc/xray/config.json")
# TOTAL ACC CREATE OVPN SSH
total_ssh=$(grep -c -E "^### " "/etc/xray/ssh")
#total_ssh="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
clear
clear
echo -e "$COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║${NC}${COLBG1}              ${WH}• RMBL VPN TUNNELING  •            ${NC}$COLOR1║ $NC"
echo -e "$COLOR1╚═════════════════════════════════════════════════╝${NC}"
echo -e "$COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║ ${WH} ${BLUE}• ${GREEN}Sever Uptime        ${NC}= $( uptime -p  | cut -d " " -f 2-10000 ) "
echo -e "$COLOR1║ ${WH} ${BLUE}• ${GREEN}Current Time        ${NC}= $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "$COLOR1║ ${WH} ${BLUE}• ${GREEN}Operating System    ${NC}= $( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g')( $(uname -m))"
echo -e "$COLOR1║ ${WH} ${BLUE}• ${GREEN}Current Domain      ${NC}= $( cat /etc/xray/domain )"
echo -e "$COLOR1║ ${WH} ${BLUE}• ${GREEN}Server IP           ${NC}= $IPVPS"
echo -e "$COLOR1║ ${WH} ${BLUE}• ${GREEN}ISP-VPS             ${NC}= $ISP"
echo -e "$COLOR1║ ${WH} ${BLUE}• ${GREEN}City                ${NC}= $CITY"
echo -e "$COLOR1║ ${WH} ${BLUE}• ${GREEN}RAM                 ${NC}= $uram / $tram"
echo -e "$COLOR1║ ${WH} ${BLUE}• ${GREEN}CPU                 ${NC}= $cpu_usage"
echo -e "$COLOR1║ ${WH} ${BLUE}• ${GREEN}Script Exfire       ${NC}= ${YELLOW}$Exp (${NC}${RED} $dayleft Days ${NC}${YELLOW})${NC}"
echo -e "$COLOR1║ ${WH} ${BLUE}• ${GREEN}Developer           ${NC}= RMBL VPN TUNNELING${NC}"
echo -e "$COLOR1╚═════════════════════════════════════════════════╝${NC}"
echo -e "$COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "     ${BICyan} NGINX ${NC}: ${GREEN}$resngx         ${LIGHT} Today  : $ttoday"
echo -e "     ${BICyan} XRAY  ${NC}: ${GREEN}$resv2r         ${LIGHT} Monthly: $tmon"
echo -e "$COLOR1╚═════════════════════════════════════════════════╝${NC}"
echo -e "$COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║ ${WH} \033[0m ${BOLD}${YELLOW}SSH     VMESS       VLESS      TROJAN       $NC  $COLOR1║ $NC"
echo -e "$COLOR1║ ${WH} \033[0m ${Blue} $ssh1        $vma           $vla          $tra        $NC    $COLOR1║ $NC"
echo -e "$COLOR1╚═════════════════════════════════════════════════╝${NC}"

echo -e "$COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║${NC} ${COLBG1}                  ${WH}• LIST MENU •                ${NC}$COLOR1 ║ $NC"
echo -e "$COLOR1╚═════════════════════════════════════════════════╝${NC}"
echo -e "$COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║                                                 $COLOR1║ $NC"
echo -e "$COLOR1║ ${WH} ${BICyan}[${BIWhite}01${BICyan}]${RED} •${NC} ${BIGreen}SSH     ${GREEN}MENU   $NC  ${BICyan}[${BIWhite}6${BICyan}]${RED}  • ${NC}${BIGreen}RESTART SERVICE $COLOR1║ $NC"
echo -e "$COLOR1║                                                 $COLOR1║ $NC"
echo -e "$COLOR1║ ${WH} ${BICyan}[${BIWhite}02${BICyan}]${RED} •${NC} ${BIGreen}VMESS   ${GREEN}MENU   $NC  ${BICyan}[${BIWhite}7${BICyan}]${RED}  • ${NC}${BIGreen}REBOOT VPS      $COLOR1║ $NC"
echo -e "$COLOR1║                                                 $COLOR1║ $NC"
echo -e "$COLOR1║ ${WH} ${BICyan}[${BIWhite}03${BICyan}]${RED} •${NC} ${BIGreen}VLESS   ${GREEN}MENU   $NC  ${BICyan}[${BIWhite}8${BICyan}]${RED}  • ${NC}${BIGreen}UPDATE          $COLOR1║ $NC"
echo -e "$COLOR1║                                                 $COLOR1║ $NC"
echo -e "$COLOR1║ ${WH} ${BICyan}[${BIWhite}04${BICyan}]${RED} •${NC} ${BIGreen}TROJAN  ${GREEN}MENU   $NC  ${BICyan}[${BIWhite}9${BICyan}]${RED}  • ${NC}${BIGreen}SETTING         $COLOR1║ $NC"
echo -e "$COLOR1║                                                 $COLOR1║ $NC"
echo -e "$COLOR1║ ${WH} ${BICyan}[${BIWhite}05${BICyan}]${RED} •${NC} ${BIGreen}RUNNING ${GREEN}MENU   $NC  ${BICyan}[${BIWhite}10${BICyan}]${RED} • ${NC}${BIGreen}BACKUP          $COLOR1║ $NC"
echo -e "$COLOR1║                                                 $COLOR1║ $NC"
echo -e "$COLOR1╚═════════════════════════════════════════════════╝${NC}"

echo -e "$COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "$COLOR1║ ${WH} ${BOLD}${GREEN}Client    = $Name                           ${NC}"
echo -e "$COLOR1║ ${WH} ${BOLD}${RED}Expired   = $Exp                            ${NC}"
echo -e "$COLOR1║ ${WH} ${BOLD}${YELLOW}Developer = RMBL VPN TUNNELING                 ${NC}"
echo -e "$COLOR1║ ${WH} ${BOLD}${PURPLE}Version   = 1.0 Version                     ${NC}"
echo -e "$COLOR1╚═════════════════════════════════════════════════╝${NC}"

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
