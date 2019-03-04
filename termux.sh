#!/bin/bash

apt update && apt upgrade -y
#-------------------------------------------------------------#

k='\033[01;32m'
echo
echo "${k}████████╗ ██████╗██╗  ██╗███████╗██╗      ██████╗ ";
echo "${k}╚══██╔══╝██╔════╝██║  ██║██╔════╝██║     ██╔═══██╗";
echo "${k}   ██║   ██║     ███████║█████╗  ██║     ██║   ██║";
echo "${k}   ██║   ██║     ██╔══██║██╔══╝  ██║     ██║   ██║";
echo "${k}   ██║   ╚██████╗██║  ██║███████╗███████╗╚██████╔╝";
echo "${k}   ╚═╝    ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝ ";
echo "${k} /_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/";
# -------------------------------------------------------------#

echo
apt install figlet -y
figlet TERMUX
# -------------------------------------------------------------#
echo "**** Instalando Requisitos ****"
# -------------------------------------------------------------#
apt install nmap -y
apt install nano -y
apt install python -y
apt install python2 -y
apt install php -y
apt install apache -y
apt install wget -y
apt install curl -y
apt install ruby -y
apt install openssh -y
apt install proot -y
apt install php-apache -y
apt install tsu -y
apt install zsh -y
apt install tcpdump -y
apt install mariadb
# -------------------------------------------------------------#
# link de acesso da memoria interna (Storage)
echo
termux-setup-storage
echo
clear
# -------------------------------------------------------------#
echo "**** Youtube-dl ****"
echo "(Pacote para realizar Downloads de Video e Audio do Youtube)"
echo
echo "Deseja instalar? [Y/n]: "
read opcao
case $opcao in

y)
echo
wget http://pastebin.com/raw/DnTWgxZp -O install.sh
dos2unix install.sh
chmod u+x install.sh
bash install.sh
echo
;;

n)
echo "Pacote não instalado :-("
;;
esac
echo
clear
# -------------------------------------------------------------#
echo "**** Sudo ****"
echo "Pacote para conceder permissão de super usuário"
echo
echo "Seu dispositivo possui acesso root? [Y/n]: "
read sudo
case $sudo in

y)
echo
git clone https://github.com/tchelospy/termux-sudo
cd termux-sudo
pkg install ncurses-utils
cat sudo > /data/data/com.termux/files/usr/bin/sudo
chmod 700 /data/data/com.termux/files/usr/bin/sudo
cd
echo
rm -rf termux-sudo install.sh termux.sh
;;

n)
echo "Pacote não instalado :-("
;;
esac
# -------------------------------------------------------------#
echo

:<<'Teste'
echo
wget https://raw.githubusercontent.com/tchelospy/PHONE-TOOLS/master/motd
echo
cat motd > /data/data/com.termux/files/usr/etc/motd
echo
rm modt motd.sh
Teste
# -------------------------------------------------------------#
echo

apt update
clear
echo
echo "Pacote Oh My Zsh"
echo "Framework open-source para o Termux"
echo
echo "Deseja instalar? [Y/n]: "

read terminal
case $terminal in

y)
if [ -d "$HOME/.termux" ]; then
 mv $HOME/.termux $HOME/.termux.bak
fi
echo
curl -fsLo $HOME/.termux/font.ttf --create-dirs https://cdn.rawgit.com/4679/oh-my-termux/master/.termux/font.ttf
echo
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh --depth 1
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
chsh -s zsh

echo
;;
n)
echo "Pacote não instalado :-("
echo
;;
esac
clear
figlet FINISH XD
echo
echo "Reinicie o Termux para aplicar as configurações: [exit]"

