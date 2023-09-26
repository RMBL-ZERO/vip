#!/bin/bash
#install
apt update && apt upgrade
apt install python3 python3-pip git
wget --no-check-certificate https://github.com/keposekali/bot_panel.git &> /dev/null
7z e -bot_panel bot.zip &> /dev/null
unzip bot_panel/bot.zip
pip3 install -r kyt/requirements.txt
apt install zlib1g-dev libjpeg-dev libpng-dev
pip3 install pillow

#isi data
echo ""
read -e -p "[*] Input your Bot Token : " bottoken
read -e -p "[*] Input Your Id Telegram :" admin
read -e -p "[*] Input Your Domain :" domain
echo -e BOT_TOKEN='"'$bottoken'"' >> /root/kyt/var.txt
echo -e ADMIN='"'$admin'"' >> /root/kyt/var.txt
echo -e DOMAIN='"'$domain'"' >> /root/kyt/var.txt
clear
echo "Done"
echo "Your Data Bot"
echo -e "==============================="
echo "DOMAIN         : $bottoken"
echo "Email          : $admin"
echo "Api Key        : $domain"
echo -e "==============================="
echo "Setting done"

cat > /etc/systemd/system/kyt.service << END
[Unit]
Description=Simple XolPanel - @kyt
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/python3 -m kyt
Restart=always

[Install]
WantedBy=multi-user.target
END

systemctl start kyt 
systemctl enable kyt
clear
echo " Installations complete, type /menu on your bot"
