#!/bin/bash
ipsaya=$(curl -sS ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini"
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
       #echo -e "     \033[0;36mTelegram${NC}: https://t.me/rmblvpn1"
        echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
        exit
    fi
}
checking_sc

cd
if [[ -e /usr/local/kyt/var.txt ]]; then
echo -ne
else
apt -y install python3 python3-pip libjpeg-dev zlib1g-dev p7zip-full
cd /usr/local
wget https://github.com/Keposekali/bot_panel/main/bot.zip &> /dev/null
7z e -bot_panel bot.zip
unzip kyt.zip
sleep 2
cd geo
pip3 install -r requirements.txt
pip3 install pillow
cat > /etc/systemd/system/kyt.service << END
[Unit]
Description=Simple kyt - @kyt
After=network.target

[Service]
WorkingDirectory=/usr/local
ExecStart=/usr/bin/python3 -m kyt
Restart=always

[Install]
WantedBy=multi-user.target
END
fi

PB=$(cat /etc/slowdns/server.pub)
NS=$(cat /etc/xray/dns)
SD=$(cat /etc/xray/domain)
UUID=$(tr </dev/urandom -dc a-z | head -c8)

#isi data
clear
echo -e "$COLOR1┌──────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│ ${WH}           • CREATE BOT MENU •           ${NC}"
echo -e "$COLOR1└──────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌──────────────────────────────────────────┐${NC}"
read -e -p "Enter Token (Creat on @BotFather) : " TOKET
read -e -p "Enter Your Id (Creat on @userinfobot)  :  " IDTELE
rm -rf /usr/local/kyt/database.db
cat >/usr/local/kyt/var.txt <<EOF
BOT_TOKEN="$TOKET"
ADMIN="$IDTELE"
DOMAIN="${SD}"
PUB="${PB}"
HOST="${NS}"
SESSIONS="${UUID}"
EOF

systemctl disable kyt
systemctl enable kyt
systemctl start kyt
systemctl restart kyt
clear

rm /usr/local/kyt.zip
rm /usr/local/bot.zip
echo -e " BOT SUDAH BISA DI GUNAKAN, SILAHKAN KETIK "
echo -e "      (/menu Atau .menu) Di BOT KAMU"Sp4ASp
q
#!/bin/bash

ipsaya=$(curl -sS ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/RMBL-ZERO/permission/main/ipmini"
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
       #echo -e "     \033[0;36mTelegram${NC}: https://t.me/rmblvpn1"
        echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
        exit
    fi
}
checking_sc

cd
if [[ -e /usr/local/kyt/var.txt ]]; then
echo -ne
else
apt -y install python3 python3-pip libjpeg-dev zlib1g-dev p7zip-full
cd /usr/local
wget https://github.com/Keposekali/bot_panel/main/bot.zip &> /dev/null
7z e -bot_panel bot.zip
unzip kyt.zip
sleep 2
cd kyt
pip3 install -r requirements.txt
pip3 install pillow
cat > /etc/systemd/system/kyt.service << END
[Unit]
Description=Simple kyt - @kyt
After=network.target

[Service]
WorkingDirectory=/usr/local
ExecStart=/usr/bin/python3 -m geo
Restart=always

[Install]
WantedBy=multi-user.target
END
fi

PB=$(cat /etc/slowdns/server.pub)
NS=$(cat /etc/xray/dns)
SD=$(cat /etc/xray/domain)
UUID=$(tr </dev/urandom -dc a-z | head -c8)

#isi data
clear
echo -e "$COLOR1┌──────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│ ${WH}           • CREATE BOT MENU •           ${NC}"
echo -e "$COLOR1└──────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌──────────────────────────────────────────┐${NC}"
read -e -p "Enter Token (Creat on @BotFather) : " TOKET
read -e -p "Enter Your Id (Creat on @userinfobot)  :  " IDTELE
rm -rf /usr/local/kyt/database.db
cat >/usr/local/kyt/var.txt <<EOF
BOT_TOKEN="$TOKET"
ADMIN="$IDTELE"
DOMAIN="${SD}"
PUB="${PB}"
HOST="${NS}"
SESSIONS="${UUID}"
EOF

systemctl disable geo
systemctl enable geo
systemctl start geo
systemctl restart geo
clear

rm /usr/local/kyt.zip
rm /usr/local/bot.zip
echo -e " BOT SUDAH BISA DI GUNAKAN, SILAHKAN KETIK "
echo -e "      (/menu Atau .menu) Di BOT KAMU"
