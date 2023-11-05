#!/bin/bash
# COLOR VALIDATION
clear
y='\033[1;33m' #yellow
BGX="\033[42m"
CYAN="\033[96m"
z="\033[96m"
RED='\033[0;31m'
NC='\033[0m'
gray="\e[1;30m"
Blue="\033[0;34m"
green='\033[0;32m'
grenbo="\e[92;1m"
purple="\033[1;95m"
YELL='\033[0;33m'
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
#INTALLER-UDP
UDPX="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
IPVPS=$(curl -s ipv4.icanhazip.com)
domain=$(cat /etc/xray/domain)
RAM=$(free -m | awk 'NR==2 {print $2}')
USAGERAM=$(free -m | awk 'NR==2 {print $3}')
MEMOFREE=$(printf '%-1s' "$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')")
LOADCPU=$(printf '%-0.00001s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
MODEL=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
CORE=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
DATEVPS=$(date +'%d/%m/%Y')
TIMEZONE=$(printf '%(%H:%M:%S)T')
SERONLINE=$(uptime -p | cut -d " " -f 2-10000)
clear
MYIP=$(curl -sS ipv4.icanhazip.com)
echo ""
#########################
# USERNAME
rm -f /usr/bin/user
username=$(curl https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini | grep $MYIP | awk '{print $2}')
echo "$username" >/usr/bin/user
# validity
rm -f /usr/bin/e
valid=$(curl https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini | grep $MYIP | awk '{print $3}')
echo "$valid" >/usr/bin/e
# DETAIL ORDER
username=$(cat /usr/bin/user)
oid=$(cat /usr/bin/ver)
exp=$(cat /usr/bin/e)
clear
# CERTIFICATE STATUS
d1=$(date -d "$valid" +%s)
d2=$(date -d "$today" +%s)
certifacate=$(((d1 - d2) / 86400))
# VPS Information
DATE=$(date +'%Y-%m-%d')
datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo -e "$COLOR1 $NC Expiry In   : $(( (d1 - d2) / 86400 )) Days"
}
mai="datediff "$Exp" "$DATE""

# Status ExpiRED Active | Geo Project
Info="(${green}Active${NC})"
Error="(${RED}ExpiRED${NC})"
today=`date -d "0 days" +"%Y-%m-%d"`
Exp1=$(curl https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini | grep $MYIP | awk '{print $3}')
if [[ $today < $Exp1 ]]; then
sts="${Info}"
else
sts="${Error}"
fi
echo -e "\e[32mloading...\e[0m"
clear

# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"

# Getting CPU Information | Wings Project
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${coREDiilik:-1}))"
cpu_usage+=" %"
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
DATE2=$(date -R | cut -d " " -f -5)
IPVPS=$(curl -s ipinfo.io/ip )
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
uram=$( free -m | awk 'NR==2 {print $3}' )
fram=$( free -m | awk 'NR==2 {print $4}' )
clear
ssh_service=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
dropbear_service=$(/etc/init.d/dropbear status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
haproxy_service=$(systemctl status haproxy | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
xray_service=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
nginx_service=$(systemctl status nginx | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
#Status | Geo Project
clear
# STATUS SERVICE  SSH 
if [[ $ssh_service == "running" ]]; then 
   status_ssh="${grenbo}ON✓${NC}"
else
   status_ssh="${RED}🔴${NC} "
fi

# // SSH Websocket Proxy
ssh_ws=$( systemctl status ws | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
    status_ws_epro="${grenbo}ON✓${NC}"
else
    status_ws_epro="${RED}🔴${NC} "
fi

# STATUS SERVICE HAPROXY
if [[ $haproxy_service == "running" ]]; then 
   status_haproxy="${grenbo}ON✓${NC}"
else
   status_haproxy="${RED}🔴${NC} "
fi

# STATUS SERVICE XRAY
if [[ $xray_service == "running" ]]; then 
   status_xray="${grenbo}ON✓${NC}"
else
   status_xray="${RED}🔴${NC} "
fi

# STATUS SERVICE NGINX
if [[ $nginx_service == "running" ]]; then 
   status_nginx="${grenbo}ON✓${NC}"
else
   status_nginx="${RED}🔴${NC} "
fi

# STATUS SERVICE Dropbear
if [[ $dropbear_service == "running" ]]; then 
   status_dropbear="${grenbo}ON✓${NC}"
else
   status_dropbear="${RED}🔴${NC} "
fi
# usage
#Download/Upload today
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
clear
#####INFOAKUN
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let trb=$trx/2
ssx=$(grep -c -E "^#ss# " "/etc/xray/config.json")
let ssa=$ssx/2
###########
KANAN="\033[1;32m<\033[1;33m<\033[1;31m<\033[1;31m$NC"
KIRI="\033[1;32m>\033[1;33m>\033[1;31m>\033[1;31m$NC"
########
r="\033[1;31m"  #REDTERANG
a=" ${grenbo}ACCOUNT PREMIUM" 
echo -e " "
echo -e " ${z}╭══════════════════════════════════════════════════════════╮${NC}"
echo -e " ${z}│$NC\033[41m         Welcome To Script Premium RMBL VPN               $NC${z}│$NC"
echo -e " ${z}╰══════════════════════════════════════════════════════════╯${NC}"
echo -e " ${z}╭══════════════════════════════════════════════════════════╮${NC}"
echo -e " ${z}│$NC$r ⇲ $NC$Blue System OS ${NC}     $Blue   =   $NC $MODEL${NC}"
echo -e " ${z}│$NC$r ⇲ $NC$Blue Server RAM ${NC}    $Blue   =   $NC $RAM MB $NC"
echo -e " ${z}│$NC$r ⇲ $NC$Blue Uptime Server ${NC} $Blue   =   $NC $SERONLINE${NC}"
echo -e " ${z}│$NC$r ⇲ $NC$Blue Date ${NC}          $Blue   =   $NC $DATEVPS${NC}"
echo -e " ${z}│$NC$r ⇲ $NC$Blue Time ${NC}          $Blue   =   $NC $TIMEZONE${NC}"
echo -e " ${z}│$NC$r ⇲ $NC$Blue IP VPS ${NC}        $Blue   =   $NC $IPVPS${NC}"
echo -e " ${z}│$NC$r ⇲ $NC$Blue Domain ${NC}        $Blue   =   $NC $domain${NC}"
echo -e " ${z}╰══════════════════════════════════════════════════════════╯${NC}"
echo -e "       ───────────────────────────────────────────────${NC}"  
echo -e "           ${Blue}SSH/OPENVPN${NC}    $y=$NC $ssh1${NC}" "$a"
echo -e "           ${Blue}VMESS/WS/GRPC${NC}  $y=$NC $vma$NC" "$a"
echo -e "           ${Blue}VLESS/WS/GRPC${NC}  $y=$NC $vla$NC" "$a"
echo -e "           ${Blue}TROJAN/WS/GRPC${NC} $y=$NC $trb${NC}" "$a"
echo -e "       ───────────────────────────────────────────────${NC}"  
echo -e " ${z}╭════════════════╮╭══════════════════╮╭════════════════════╮${NC}"
echo -e " ${z}│ ${NC}$Blue SSH$NC : $status_ssh" "        $Blue NGINX$NC : $status_nginx" "        $Blue XRAY$NC : $status_xray      $NC${z}│$NC" 
echo -e " ${z}╰════════════════╯╰══════════════════╯╰════════════════════╯${NC}"
echo -e "     ${z}╔═════════════════════════════════════════════════╗${NC}"
echo -e "     ${z}║${NC} ${COLBG1}                  ${WH}• LIST MENU •                ${NC}${z} ║ $NC"
echo -e "     ${z}╚═════════════════════════════════════════════════╝${NC}"
echo -e "     ${z}╔═════════════════════════════════════════════════╗${NC}"
echo -e "     ${z}║                                                 ${z}║ $NC"
echo -e "     ${z}║ $NC ${BICyan}[${BIWhite}01${BICyan}]${RED} •${NC} ${BIGreen}SSH OVPN ${GREEN}MENU  $NC    ${BICyan}[${BIWhite}8${BICyan}]${RED}  • ${NC}${BIGreen}RESTART       ${z}║ $NC"
echo -e "     ${z}║                                                 ${z}║ $NC"
echo -e "     ${z}║ $NC ${BICyan}[${BIWhite}02${BICyan}]${RED} •${NC} ${BIGreen}VMESS    ${GREEN}MENU  $NC    ${BICyan}[${BIWhite}9${BICyan}]${RED}  • ${NC}${BIGreen}REBOOT        ${z}║ $NC"
echo -e "     ${z}║                                                 ${z}║ $NC"
echo -e "     ${z}║ $NC ${BICyan}[${BIWhite}03${BICyan}]${RED} •${NC} ${BIGreen}VLESS    ${GREEN}MENU  $NC    ${BICyan}[${BIWhite}10${BICyan}]${RED} • ${NC}${BIGreen}DOMAIN        ${z}║ $NC"
echo -e "     ${z}║                                                 ${z}║ $NC"
echo -e "     ${z}║ $NC ${BICyan}[${BIWhite}04${BICyan}]${RED} •${NC} ${BIGreen}TROJAN   ${GREEN}MENU  $NC    ${BICyan}[${BIWhite}11${BICyan}]${RED} • ${NC}${BIGreen}REN.CRT       ${z}║ $NC"
echo -e "     ${z}║                                                 ${z}║ $NC"
echo -e "     ${z}║ $NC ${BICyan}[${BIWhite}05${BICyan}]${RED} •${NC} ${BIGreen}BOT AKUN ${GREEN}MENU  $NC    ${BICyan}[${BIWhite}12${BICyan}]${RED} • ${NC}${BIGreen}BACKUP        ${z}║ $NC"
echo -e "     ${z}║                                                 ${z}║ $NC"
echo -e "     ${z}║ $NC ${BICyan}[${BIWhite}06${BICyan}]${RED} •${NC} ${BIGreen}NOTIF    ${GREEN}MENU  $NC    ${BICyan}[${BIWhite}13${BICyan}]${RED} • ${NC}${BIGreen}INS UDP       ${z}║ $NC"
echo -e "     ${z}║                                                 ${z}║ $NC"
echo -e "     ${z}║ $NC ${BICyan}[${BIWhite}07${BICyan}]${RED} •${NC} ${BIGreen}RUNNING  ${GREEN}MENU  $NC    ${BICyan}[${BIWhite}14${BICyan}]${RED} • ${NC}${BIGreen}SPEED TES     ${z}║ $NC"
echo -e "     ${z}║                                                 ${z}║ $NC"
echo -e "     ${z}╚═════════════════════════════════════════════════╝${NC}"
echo -e " ${z}╭══════════════════════════════════════════════════════════╮${NC}"
echo -e " ${z}│$NC ${BICyan}HARI ini${NC}: ${red}$ttoday$NC ${BICyan}KEMARIN${NC}: ${red}$tyest$NC ${BICyan}BULAN${NC}: ${red}$tmon$NC $NC"
echo -e " ${z}╰══════════════════════════════════════════════════════════╯${NC}"
echo -e " ${z}╭══════════════════════════════════════════════════════════╮${NC}"
echo -e " ${z}│$NC$Blue Version$NC       ${Blue}=$NC V2.0"
echo -e " ${z}│$NC$Blue User$NC          ${Blue}=$NC $username"
echo -e " ${z}│$NC$Blue Script Status$NC ${Blue}=$NC $sts "
echo -e " ${z}│$NC$Blue Expiry script$NC $Blue=$grenbo $exp$NC ($r $certifacate ${NC}Days )"
echo -e " ${z}╰══════════════════════════════════════════════════════════╯${NC}"
echo
read -p " Select menu : " opt
echo -e ""
case $opt in
1 | 01)
clear
m-sshws
;;
2 | 02)
clear
m-vmess
;;
3 | 03)
clear
m-vless
;;
4 | 04)
clear
m-trojan
;;
5 | 05)
clear
add-bot-panel
;;
6 | 06)
clear
bot
;;
7 | 07)
clear
run
;;
8 | 08)
clear
restart
9 | 09)
clear
reboot
;;
10)
clear
addhost
;;
11)
clear
fixcert
;;
12)
clear
menu-backup
;;
13)
clear
echo -e "${green}ANDA YAKIN UNTUK MEMASANG SCRIPT INI ? $NC"
echo -e "${green}MINIMAL RAM 2 GB BIAR DISK TIDAK FULL $NC"
echo -e "${green}OS SUPPORT UBUNTU 20.04 ONLY $NC"
echo -e ""
read -p "SUDAH LAPOR KE ADMIN ? [Y/N]:" arg
if [[ $arg == 'Y' ]]; then
  echo -e "${Blue}Tindakan Diteruskan! $NC"
  echo -e "${green}START. . . $NC"
elif [[ $arg == 'y' ]]; then
  echo -e "${Blue}Tindakan Diteruskan! $NC"
  clear
  echo -e "${Blue}START . . .$NC"
elif [[ $arg == 'N' ]]; then
  echo -e "${RED}Tindakan Dihentikan! $NC"
  sleep 1
  clear
  menu
  exit 0
elif [[ $arg == 'n' ]]; then
  echo -e "${RED}Tindakan Dihentikan! $NC"
  sleep 1
  clear
  rm -f /root/update.sh
  exit 0
else
  echo -e "${RED}Argumen Tidak Diketahui! $NC"
  sleep 1
  clear
  rm -f /root/update.sh
  exit 0
fi
##########
clear
wget --load-cookies /tmp/cookies.txt ${UDPX} -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp
;;
14)
clear
speedtest
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
0 | 00)
figlet Rmbl PROJECT
exit
;;
x)
menu
;;
*)
echo -e ""
menu
;;
esac
