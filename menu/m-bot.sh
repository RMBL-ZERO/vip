#!/bin/bash
#install
apt update && apt upgrade
apt install python3 python3-pip git
git clone https://github.com/VPN-RMBL/bot_panel.git
unzip bot_panel/rmblvpn.zip
pip3 install -r rmblvpn/requirements.txt
apt install zlib1g-dev libjpeg-dev libpng-dev
pip3 install pillow

#isi data
echo ""
read -e -p "[*] Input your Bot Token : " bottoken
read -e -p "[*] Input Your Id Telegram :" admin
read -e -p "[*] Input Your Domain :" domain
echo -e BOT_TOKEN='"'$bottoken'"' >> /root/rmblvpn/var.txt
echo -e ADMIN='"'$admin'"' >> /root/rmblvpn/var.txt
echo -e DOMAIN='"'$domain'"' >> /root/rmblvpn/var.txt
clear
echo "Done"
echo "Your Data Bot"
echo -e "==============================="
echo "DOMAIN         : $bottoken"
echo "Email          : $admin"
echo "Api Key        : $domain"
echo -e "==============================="
echo "Setting done"

cat > /etc/systemd/system/rmblvpn.service << END
[Unit]
Description=Simple kyt - @rmblvpn
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/python3 -m rmblvpn
Restart=always

[Install]
WantedBy=multi-user.target
END

systemctl start rmblvpn 
systemctl enable rmblvpn
clear
echo " Installations complete, type /menu on your bot"
