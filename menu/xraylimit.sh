#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
colornow=$(cat /etc/casper/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m"
COLOR1="$(cat /etc/casper/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/casper/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
WH='\033[1;37m'
###########- END COLOR CODE -##########

ipsaya=$(curl -sS ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/casper9/permission/main/ipmini"
checking_sc() {
    useexp=$(curl -sS $data_ip | grep $ipsaya | awk '{print $3}')
    if [[ $date_list < $useexp ]]; then
        echo -ne
    else
        echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
        echo -e "$COLOR1 ${NC} ${COLBG1}          ${WH}• AUTOSCRIPT PREMIUM •               ${NC} $COLOR1 $NC"
        echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
        echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
        echo -e "            ${RED}PERMISSION DENIED !${NC}"
        echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
        echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
        echo -e "             \033[0;33mContact Your Admin ${NC}"
    #    echo -e "     \033[0;36mTelegram${NC}: https://t.me/CasperGaming"
        echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
        exit
    fi
}
checking_sc
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               #!/bin/bash
inaIP=$(wget -qO- ipv4.icanhazip.com)
timenow=$(date +%T" WIB")
TIMES="10"
CHATID=$(cat /etc/perlogin/id)
KEY=$(cat /etc/perlogin/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
domen=`cat /etc/xray/domain`
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
DATE=$(date +'%Y-%m-%d') 
TIME=$(date +'%H:%M:%S')
author=$(cat /etc/profil)
tim2sec() {
  mult=1
  arg="$1"
  inu=0
  while [ ${#arg} -gt 0 ]; do
    prev="${arg%:*}"
    if [ "$prev" = "$arg" ]; then
      curr="${arg#0}"
      prev=""
    else
      curr="${arg##*:}"
      curr="${curr#0}"
    fi
    curr="${curr%.*}"
    inu=$((inu + curr * mult))
    mult=$((mult * 60))
    arg="$prev"
  done
  echo "$inu"
}
# ------ VMESS IP
function vmess() {
  vm=($(cat /etc/xray/config.json | grep "^#vmg" | awk '{print $2}' | sort -u))
  echo -n >/tmp/vm
  for db1 in ${vm[@]}; do
    logvm=$(cat /var/log/xray/access.log | grep -w "email: ${db1}" | tail -n 100)
    while read a; do
      if [[ -n ${a} ]]; then
        set -- ${a}
        ina="${7}"
        inu="${2}"
        anu="${3}"
        enu=$(echo "${anu}" | sed 's/tcp://g' | sed '/^$/d' | cut -d. -f1,2,3)
        now=$(tim2sec ${timenow})
        client=$(tim2sec ${inu})
        nowt=$(((${now} - ${client})))
        if [[ ${nowt} -lt 40 ]]; then
          cat /tmp/vm | grep -w "${ina}" | grep -w "${enu}" >/dev/null
          if [[ $? -eq 1 ]]; then
            echo "${ina} ${inu} WIB : ${enu}" >>/tmp/vm
            splvm=$(cat /tmp/vm)
          fi
        fi
      fi
    done <<<"${logvm}"
  done
  if [[ ${splvm} != "" ]]; then
    for vmuser in ${vm[@]}; do
      vmhas=$(cat /tmp/vm | grep -w "${vmuser}" | wc -l)
      vmhas2=$(cat /tmp/vm | grep -w "${vmuser}" | cut -d ' ' -f 2-8 | nl -s '. ' )
      vmsde=$(ls "/etc/vmess" | grep -w "${vmuser}IP")
      if [[ -z ${vmsde} ]]; then
        vmip="0"
      else
        vmip=$(cat /etc/vmess/${vmuser}IP)
      fi
      if [[ ${vmhas} -gt $vmip ]]; then
      echo "$vmuser ${vmhas}" >> /etc/vmess/${vmuser}login
      vmessip=$(cat /etc/vmess/${vmuser}login | wc -l)
      ssvmess1=$(ls "/etc/vmess" | grep -w "notif")
      if [[ -z ${ssvmess1} ]]; then
        ssvmess="3"
        else
        ssvmess=$(cat /etc/vmess/notif)
      fi
if [ $vmessip = $ssvmess ]; then
TEXT2="
<code>◇━━━━━━━━━━━━━━◇</code>
<b> ⚠️ XRAY VMESS NOTIF </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>DOMAIN : ${domen} </b>
<b>ISP : ${ISP} $CITY</b>
<b>DATE LOGIN : $DATE</b>
<b>USERNAME : $vmuser </b>
<b>TOTAL LOGIN IP : ${vmhas} </b>
<code>◇━━━━━━━━━━━━━━◇</code>
     <b>TIME LOGIN : IP LOGIN </b>
<code>$vmhas2</code>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>${ssvmess}x Multi Login Auto Lock Account...</i>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT2&parse_mode=html" $URL >/dev/null
         exp=$(grep -wE "^#vmg $vmuser" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
         uuid=$(grep -wE "^#vmg $vmuser" "/etc/xray/config.json" | cut -d ' ' -f 4 | sort | uniq)
         echo "### $vmuser $exp $uuid" >> /etc/vmess/listlock
         sed -i "/^#vmg $vmuser $exp/,/^},{/d" /etc/xray/config.json
         sed -i "/^#vm $vmuser $exp/,/^},{/d" /etc/xray/config.json
         rm /etc/vmess/${vmuser}login >/dev/null 2>&1
         systemctl restart xray
         else
        TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b> ⚠️ XRAY VMESS NOTIF </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>DOMAIN : ${domen} </b>
<b>ISP : ${ISP} $CITY</b>
<b>DATE LOGIN : $DATE</b>
<b>USERNAME : $vmuser </b>
<b>TOTAL LOGIN IP : ${vmhas} </b>
<code>◇━━━━━━━━━━━━━━◇</code>
     <b>TIME LOGIN : IP LOGIN </b>
<code>$vmhas2</code>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>${vmessip}x Multi Login : ${ssvmess}x Multi Login Auto Lock Account...</i>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
         fi
         if [ $vmessip -gt $ssvmess ]; then
         exp=$(grep -wE "^#vmg $vmuser" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
         uuid=$(grep -wE "^#vmg $vmuser" "/etc/xray/config.json" | cut -d ' ' -f 4 | sort | uniq)
         echo "### $vmuser $exp $uuid" >> /etc/vmess/listlock
         sed -i "/^#vmg $vmuser $exp/,/^},{/d" /etc/xray/config.json
         sed -i "/^#vm $vmuser $exp/,/^},{/d" /etc/xray/config.json
         rm /etc/vmess/${vmuser}login >/dev/null 2>&1
         systemctl restart xray
         fi
      fi
    done
  fi
}
# ------ VLESS IP
function vless() {
  vldat=($(cat /etc/xray/config.json | grep "^#vlg" | awk '{print $2}' | sort -u))
  echo -n >/tmp/vl
  for db2 in ${vldat[@]}; do
    logvl=$(cat /var/log/xray/access.log | grep -w "email: ${db2}" | tail -n 100)
    while read a; do
      if [[ -n ${a} ]]; then
        set -- ${a}
        ina="${7}"
        inu="${2}"
        anu="${3}"
        enu=$(echo "${anu}" | sed 's/tcp://g' | sed '/^$/d' | cut -d. -f1,2,3)
        now=$(tim2sec ${timenow})
        client=$(tim2sec ${inu})
        nowt=$(((${now} - ${client})))
        if [[ ${nowt} -lt 40 ]]; then
          cat /tmp/vl | grep -w "${ina}" | grep -w "${enu}" >/dev/null
          if [[ $? -eq 1 ]]; then
            echo "${ina} ${inu} WIB : ${enu}" >>/tmp/vl
            spll=$(cat /tmp/vl)
          fi
        fi
      fi
    done <<<"${logvl}"
  done
  if [[ ${spll} != "" ]]; then
    for vlus in ${vldat[@]}; do
      vlsss=$(cat /tmp/vl | grep -w "${vlus}" | wc -l)
      vlsss2=$(cat /tmp/vl | grep -w "${vlus}" | cut -d ' ' -f 2-8 | nl -s '. ' )
      sdf=$(ls "/etc/vless" | grep -w "${vlus}IP")
      if [[ -z ${sdf} ]]; then
        vmip="0"
      else
        vmip=$(cat /etc/vless/${vlus}IP)
      fi
      if [[ ${vlsss} -gt $vmip ]]; then
      echo "$vlus ${vlsss}" >> /etc/vless/${vlus}login
      vlessip=$(cat /etc/vless/${vlus}login | wc -l)
      ssvless1=$(ls "/etc/vless" | grep -w "notif")
      if [[ -z ${ssvless1} ]]; then
        ssvless="3"
        else
        ssvless=$(cat /etc/vless/notif)
      fi
if [ $vlessip = $ssvless ]; then
 TEXT2="
<code>◇━━━━━━━━━━━━━━◇</code>
<b> ⚠️ XRAY VLESS NOTIF </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>DOMAIN : ${domen} </b>
<b>ISP : ${ISP} $CITY</b>
<b>DATE LOGIN : $DATE</b>
<b>USERNAME : $vlus </b>
<b>TOTAL LOGIN IP : ${vlsss} </b>
<code>◇━━━━━━━━━━━━━━◇</code>
     <b>TIME LOGIN : IP LOGIN </b>
<code>$vlsss2</code>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>${ssvless}x Multi Login Auto Lock Account...</i>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT2&parse_mode=html" $URL >/dev/null
         expvl=$(grep -wE "^#vl $vlus" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
         uuidvl=$(grep -wE "^#vl $vlus" "/etc/xray/config.json" | cut -d ' ' -f 4 | sort | uniq)
         echo "### $vlus $expvl $uuidvl" >> /etc/vless/listlock
         sed -i "/^#vl $vlus $expvl/,/^},{/d" /etc/xray/config.json
         sed -i "/^#vlg $vlus $expvl/,/^},{/d" /etc/xray/config.json
         rm /etc/vless/${vlus}login >/dev/null 2>&1
        systemctl restart xray >/dev/null 2>&1
       else
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b> ⚠️ XRAY VLESS NOTIF </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>DOMAIN : ${domen} </b>
<b>ISP : ${ISP} $CITY</b>
<b>DATE LOGIN : $DATE</b>
<b>USERNAME : $vlus </b>
<b>TOTAL LOGIN IP : ${vlsss} </b>
<code>◇━━━━━━━━━━━━━━◇</code>
     <b>TIME LOGIN : IP LOGIN </b>
<code>$vlsss2</code>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>${vlessip}x Multi Login : ${ssvless}x Multi Login Auto Lock Account..</i>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
      fi
      if [ $vlessip -gt $ssvless ]; then 
         expvl=$(grep -wE "^#vl $vlus" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
         uuidvl=$(grep -wE "^#vl $vlus" "/etc/xray/config.json" | cut -d ' ' -f 4 | sort | uniq)
         echo "### $vlus $expvl $uuidvl" >> /etc/vless/listlock
         sed -i "/^#vl $vlus $expvl/,/^},{/d" /etc/xray/config.json
         sed -i "/^#vlg $vlus $expvl/,/^},{/d" /etc/xray/config.json
         rm /etc/vless/${vlus}login >/dev/null 2>&1
        systemctl restart xray >/dev/null 2>&1
        fi
      fi
    done
  fi
}
# ------ TROJAN IP
function trojan() {
  trda=($(cat /etc/xray/config.json | grep "^#trg" | awk '{print $2}' | sort -u))
  echo -n >/tmp/tr
  for db3 in ${trda[@]}; do
    logtr=$(cat /var/log/xray/access.log | grep -w "email: ${db3}" | tail -n 100)
    while read a; do
      if [[ -n ${a} ]]; then
        set -- ${a}
        ina="${7}"
        inu="${2}"
        anu="${3}"
        enu=$(echo "${anu}" | sed 's/tcp://g' | sed '/^$/d' | cut -d. -f1,2,3)
        now=$(tim2sec ${timenow})
        client=$(tim2sec ${inu})
        nowt=$(((${now} - ${client})))
        if [[ ${nowt} -lt 40 ]]; then
          cat /tmp/tr | grep -w "${ina}" | grep -w "${enu}" >/dev/null
          if [[ $? -eq 1 ]]; then
            echo "${ina} ${inu} WIB : ${enu}" >>/tmp/tr
            restr=$(cat /tmp/tr)
          fi
        fi
      fi
    done <<<"${logtr}"
  done
  if [[ ${restr} != "" ]]; then
    for usrtr in ${trda[@]}; do
      trip=$(cat /tmp/tr | grep -w "${usrtr}" | wc -l)
      trip2=$(cat /tmp/tr | grep -w "${usrtr}" | cut -d ' ' -f 2-8 | nl -s '. ' )
      sdf=$(ls "/etc/trojan" | grep -w "${usrtr}IP")
      if [[ -z ${sdf} ]]; then
        sadsde="0"
      else
        sadsde=$(cat /etc/trojan/${usrtr}IP)
      fi
      if [[ ${trip} -gt $sadsde ]]; then
      echo "$usrtr ${trip}" >> /etc/trojan/${usrtr}login
      trojanip=$(cat /etc/trojan/${usrtr}login | wc -l)
      sstrojan1=$(ls "/etc/trojan" | grep -w "notif")
      if [[ -z ${sstrojan1} ]]; then
        sstrojan="3"
        else
        sstrojan=$(cat /etc/trojan/notif)
      fi
if [ $trojanip = $sstrojan ]; then
      TEXT2="
<code>◇━━━━━━━━━━━━━━◇</code>
<b> ⚠️ XRAY TROJAN NOTIF </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>DOMAIN : ${domen} </b>
<b>ISP : ${ISP} $CITY</b>
<b>DATE LOGIN : $DATE</b>
<b>USERNAME : $usrtr </b>
<b>TOTAL LOGIN IP : ${trip} </b>
<code>◇━━━━━━━━━━━━━━◇</code>
     <b>TIME LOGIN : IP LOGIN </b>
<code>$trip2</code>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>${sstrojan}x Multi Login Auto Lock Account...</i>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT2&parse_mode=html" $URL >/dev/null
         exptr=$(grep -wE "^#tr $usrtr" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
         uuidtr=$(grep -wE "^#tr $usrtr" "/etc/xray/config.json" | cut -d ' ' -f 4 | sort | uniq)
         echo "### $usrtr $exptr $uuidtr" >> /etc/trojan/listlock
         sed -i "/^#tr $usrtr $exptr/,/^},{/d" /etc/xray/config.json
         sed -i "/^#trg $usrtr $exptr/,/^},{/d" /etc/xray/config.json
         rm /etc/trojan/${usrtr}login >/dev/null 2>&1 
         systemctl restart xray >/dev/null 2>&1
         else
     TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b> ⚠️ XRAY TROJAN NOTIF </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>DOMAIN : ${domen} </b>
<b>ISP : ${ISP} $CITY</b>
<b>DATE LOGIN : $DATE</b>
<b>USERNAME : $usrtr </b>
<b>TOTAL LOGIN IP : ${trip} </b>
<code>◇━━━━━━━━━━━━━━◇</code>
     <b>TIME LOGIN : IP LOGIN </b>
<code>$trip2</code>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>${trojanip}x Multi Login : ${sstrojan}x Multi Login Auto Lock Account...</i>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
      fi
      if [ $trojanip -gt $sstrojan ]; then
      exptr=$(grep -wE "^#tr $usrtr" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
         uuidtr=$(grep -wE "^#tr $usrtr" "/etc/xray/config.json" | cut -d ' ' -f 4 | sort | uniq)
         echo "### $usrtr $exptr $uuidtr" >> /etc/trojan/listlock
         sed -i "/^#tr $usrtr $exptr/,/^},{/d" /etc/xray/config.json
         sed -i "/^#trg $usrtr $exptr/,/^},{/d" /etc/xray/config.json
         rm /etc/trojan/${usrtr}login >/dev/null 2>&1 
         systemctl restart xray >/dev/null 2>&1
         fi
      fi
    done
  fi
}
# ------ SHDWSCK IP
function shdwsk() {
  ssdt=($(cat /etc/xray/config.json| grep "^#ss" | awk '{print $2}' | sort -u))
  echo -n >/tmp/ss
  for db4 in ${ssdt[@]}; do
    logss=$(cat /var/log/xray/access.log | grep -w "email: ${db4}" | tail -n 100)
    while read a; do
      if [[ -n ${a} ]]; then
        set -- ${a}
        ina="${7}"
        inu="${2}"
        anu="${3}"
        enu=$(echo "${anu}" | sed 's/tcp://g' | sed '/^$/d' | cut -d. -f1,2,3)
        now=$(tim2sec ${timenow})
        client=$(tim2sec ${inu})
        nowt=$(((${now} - ${client})))
        if [[ ${nowt} -lt 40 ]]; then
          cat /tmp/ss | grep -w "${ina}" | grep -w "${enu}" >/dev/null
          if [[ $? -eq 1 ]]; then
            echo "${ina} ${inu} ${enu}" >>/tmp/ss
            dewacs=$(cat /tmp/ss)
          fi
        fi
      fi
    done <<<"${logss}"
  done
  if [[ ${dewacs} != "" ]]; then
    for sdfe in ${ssdt[@]}; do
      decv=$(cat /tmp/ss | grep -w "${sdfe}" | wc -l)
      ergeger=$(ls "/etc/shadowsocks" | grep -w "${decv}IP")
      if [[ -z ${ergeger} ]]; then
        sdsrr="0"
      else
        sdsrr=$(cat /etc/shadowsocks/${decv}IP)
      fi
      if [[ ${decv} -gt $sdsrr ]]; then
      TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>  ⚠️XRAY SHADOWSOCK NOTIF⚠️</b>
<b>   User Multi Login</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>DOMAIN :</b> <code>${domen} </code>
<b>ISP AND CITY :</b> <code>$ISP $CITY </code>
<b>USERNAME :</b> <code>${username[$i]} </code>
<b>TOTAL IP :</b> <code>${jumlah[$i]} </code>
<code>◇━━━━━━━━━━━━━━◇</code>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
#         xpss=$(grep -wE "^###& $sdfe" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
#         sed -i "/^###& $sdfe $xpss/,/^},{/d" /etc/xray/config.json
#         sed -i "/^### $sdfe $xpss/d" /etc/shadowsocks/.shadowsocks.db
#         rm /etc/xray/log-create-${sdfe}.log
#         systemctl restart xray >/dev/null 2>&1
      fi
    done
  fi
}
vmess
vless
trojan
#shdwsk  