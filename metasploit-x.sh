#!/usr/bin/bash

# Author : ABHacker Official
# Copyright : ©2020-25-May
# Script follows here:


banner() {
clear
sleep 0.5
echo -e '\033[1;94m

\e[1;94m┏━┓┏━┓  ┏┓         ┏┓    ┏┓ \033[1;91m   ┏━┓┏━┓\033[0m
\e[1;94m┃┃┗┛┃┃ ┏┛┗┓        ┃┃   ┏┛┗┓\033[1;91m   ┗┓┗┛┏┛\033[0m
\e[1;94m┃┏┓┏┓┣━┻┓┏╋━━┳━━┳━━┫┃┏━━╋┓┏┛\033[1;91m    ┗┓┏┛\033[0m
\e[1;94m┃┃┃┃┃┃┃━┫┃┃┏┓┃━━┫┏┓┃┃┃┏┓┣┫┃ \033[1;91m ┏━━┳┛┗┓\033[0m
\e[1;94m┃┃┃┃┃┃┃━┫┗┫┏┓┣━━┃┗┛┃┗┫┗┛┃┃┗┓\033[1;91m ┗━┳┛┏┓┗┓\033[0m
\e[1;94m┗┛┗┛┗┻━━┻━┻┛┗┻━━┫┏━┻━┻━━┻┻━┛\033[1;91m   ┗━┛┗━┛\033[0m
\e[1;94m                ┃┃
\e[1;94m                ┗┛'

echo -e '     \e[0;102;90mCoding by @abhackerofficial\033[0m'
sleep 0.2 ;echo;echo; }

options() {
printf "\e[1;94m[\e[0m\e[1;77m1\e[0m\e[1;94m]\e[0m\e[1;94m Install Metasploit \e[0m(Installed\e[0m)"
echo""
printf "\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m]\e[0m\e[1;92m Uninstall Metasploit \e[0m(Installed\e[0m"
echo""
printf "\e[1;38;2;255;255;0m[\e[0m\e[1;77m3\e[0m\e[1;38;2;255;255;0m]\e[0m\e[1;38;2;255;255;0m MSVENOM [Payload] \e[0m(MSF Required\e[0m)"
echo""
printf "\e[1;38;2;0;230;118m[\e[0m\e[1;77m4\e[0m\e[1;38;2;0;230;118m]\e[0m\e[1;38;2;0;230;118m Update \e[0m(Metasploit-X)\e[0m"
echo
printf $'\n\e[1;91m[\e[0m\e[1;77m*\e[0m\e[1;91m] Choose an option : \e[0m'; }

options1() {
printf "\e[1;94m[\e[0m\e[1;77m1\e[0m\e[1;94m]\e[0m\e[1;94m Install Metasploit \e[0m(Not Installed\e[0m)"
echo""
printf "\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m]\e[0m\e[1;92m Uninstall Metasploit \e[0m(Not Installed)\e[0m"
echo""
printf "\e[1;38;2;255;255;0m[\e[0m\e[1;77m3\e[0m\e[1;38;2;255;255;0m]\e[0m\e[1;38;2;255;255;0m MSVENOM [Payload] \e[0m(MSF Required\e[0m)"
echo
printf "\e[1;38;2;0;230;118m[\e[0m\e[1;77m4\e[0m\e[1;38;2;0;230;118m]\e[0m\e[1;38;2;0;230;118m Update \e[0m(Metasploit-X)\e[0m"
echo
printf $'\n\e[1;91m[\e[0m\e[1;77m*\e[0m\e[1;91m] Choose an option : \e[0m'; }

if [ -d "/data/data/com.termux/files/usr/opt/metasploit-framework" ]; then
banner;options
else
banner
options1
fi

read meta
if [[ $meta = "1" ]] || [[ $meta = "01" ]]
        then clear
cd .setup && bash install.sh

elif [[ $meta = "2" ]] || [[ $meta = "02" ]]
        then clear
cd .setup && bash uninstall.sh

elif [[ $meta = "3" ]] || [[ $meta = "03" ]]
        then cd .setup && bash extra.sh

elif [[ $meta = "3" ]] || [[ $meta = "03" ]]
        then echo -e "\e[0m[!] Updating... Metasploit-X"
cd .setup && bash update.sh
else echo;
printf "\e[1;77m[!] Invalid option! ~Closing..\e[0m\n\n"
exec sleep 0.5
fi
