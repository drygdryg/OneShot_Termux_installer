#!/data/data/com.termux/files/usr/bin/bash

pkgs=(git tsu python wpa-supplicant pixiewps iw) 
if [ ! -f "/data/data/com.termux/files/usr/etc/apt/sources.list.d/root.list" ];then
    apt-get update -yq --silent
    echo -e "\e[1mInstalling\e[0m \e[1;36mRoot-Repo\e[0m\e[1m!\e[0m"
    apt-get install root-repo -y > /dev/null
fi
apt-get update -yq --silent
for i in "${pkgs[@]}"
do
    echo -e "\e[1mInstalling\e[0m \e[1;36m${i}\e[0m\e[1m!\e[0m"
    apt-get install "${i}" -y > /dev/null
done
git clone --depth 1 https://github.com/drygdryg/OneShot OneShot
chmod +x OneShot/oneshot.py
echo -e  "\e[1;37m┌───────────────────────────────────────────────┐\e[0m\n\e[1;37;47m│\e[0m  \e[1;36mAll done! Now you can run OneShot with\e[0m       \e[1;37;47m│\e[0m\n\e[1;47;37m│\e[0m   \e[1;96msudo python OneShot/oneshot.py -i wlan0 -K\e[0m  \e[1;37;47m│\e[0m\n\e[1;37;47m│\e[0m                                               \e[1;37;47m│\e[0m\n\e[1;37;47m│\e[0m  \e[1;36mTo update, run\e[0m                               \e[1;37;47m│\e[0m\n\e[1;37;47m│\e[0m   \e[1;96mcd OneShot && git pull\e[0m                      \e[1;37;47m│\e[0m\n\e[1;37m└───────────────────────────────────────────────┘\e[0m\n"
