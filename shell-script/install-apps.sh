#!/bin/bash

cd /tmp

isRoot=`id -g`

if [ "${isRoot}" != "0" ]; then
	echo "È necessário ser root para executar este script."
	exit
fi

# Gparted
echo -e "\n"
	if hash gparted 2>/dev/null; then
        echo "Gparted já está instalado"
    else
		echo "Baixando Gparted..."
		sudo apt-get install gparted -y
		echo "Instalando Gparted..."
		echo "Gparted instalado"
		sleep 1
	fi

# Google Chrome
echo -e "\n"
	if hash google-chrome-stable 2>/dev/null; then
        echo "Google Chrome já está instalado"
    else
		echo "Baixando Google Chrome..."
		wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
		echo "Instalando Google Chrome..."
		sudo dpkg -i google-chrome-stable_current_amd64.deb
		echo "Google Chrome instalado"
		sleep 1
	fi

# Telegram
echo -e "\n"
	if hash Telegram 2>/dev/null; then
        echo "Telegram já está instalado"
    else
		echo "Baixando Telegram Desktop"
		wget -c https://updates.tdesktop.com/tlinux/tsetup.0.9.18.tar.xz
		echo "Instalando Telegram Desktop"
		tar -xJvf tsetup.0.9.18.tar.xz
		mv Telegram /opt
		ln -s /opt/Telegram/Telegram /usr/bin/
		echo "Telegram instalado"
		sleep 1
	fi

# Team Viewer
echo -e "\n"
	if hash teamviewer 2>/dev/null; then
        echo "Team Viewer já está instalado"
    else
		echo "Baixando o Team Viewer..."
		wget -c http://downloadus2.teamviewer.com/download/version_11x/teamviewer_11.0.53191_i386.deb
		echo "Instalando Team Viewer"
		dpkg -i teamviewer_11.0.53191_i386.deb
		echo "Team Viewer instalado"
		sleep 1
	fi

# Bleach Bit
echo -e "\n"
	if hash bleachbit 2>/dev/null; then
        echo "Bleach Bit já está instalado"
    else
		echo "Baixando o Bleach Bit..."
		apt-get install bleachbit -y
		echo "Instalando Bleach Bit"
		echo "Bleach Bit instalado"
		sleep 1
	fi

# Qbittorrent
echo -e "\n"
	if hash qbittorrent 2>/dev/null; then
        echo "qBittorrent já está instalado"
    else
		echo "Baixando o qBittorrent..."
		apt-get install qbittorrent -y
		echo "Instalando qBittorrent"
		echo "qBittorrent instalado"
		sleep 1
	fi

# Smplayer
echo -e "\n"
	if hash smplayer 2>/dev/null; then
        echo "smplayer já está instalado"
    else
		echo "Baixando o smplayer..."
		apt-get install smplayer -y
		echo "Instalando smplayer"
		echo "smplayer instalado"
		sleep 1
	fi

# VLC
echo -e "\n"
	if hash vlc 2>/dev/null; then
        echo "Vlc já está instalado"
    else
		echo "Baixando o Vlc..."
		apt-get install vlc -y
		echo "Instalando vlc"
		echo "Vlc instalado"
		sleep 1
	fi

# Gimp
echo -e "\n"
	if hash gimp 2>/dev/null; then
        echo "Gimp já está instalado"
    else
		echo "Baixando o Gimp..."
		apt-get install gimp -y
		echo "Instalando Gimp"
		echo "Gimp instalado"
		sleep 1
	fi

# Thunderbird
echo -e "\n"
	if hash smplayer 2>/dev/null; then
        echo "thunderbird já está instalado"
    else
		echo "Baixando o thunderbird..."
		apt-get install thunderbird -y
		echo "Instalando thunderbird"
		echo "thunderbird instalado"
		sleep 1
	fi


# 7zip
echo -e "\n"
	if hash 7za 2>/dev/null; then
        echo "7zip já está instalado"
    else
		echo "Baixando o 7zip..."
		echo "Instalando o 7zip"
		sudo apt-get install p7zip p7zip-full p7zip-rar lzma lzma-dev
		echo "7zip instalado"
		sleep 1
	fi


# Dropbox
echo -e "\n"
	if hash dropbox 2>/dev/null; then
        echo "Dropbox já está instalado"
    else
		echo "Baixando o Dropbox..."
		wget -c https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb
		echo "Instalando o Dropbox"
		dpkg -i download?dl=packages%2Fubuntu%2Fdropbox_2015.10.28_amd64.deb
		echo "Dropbox instalado"
		sleep 1
	fi

# DKMS
echo -e "\n"
	if hash dkms 2>/dev/null; then
        echo "DKMS já está instalado"
    else
		echo "Baixando o DKMS..."
		echo "Instalando o DKMS"
		sudo apt-get install dkms
		echo "DKMS instalado"
		sleep 1
	fi


# VirtualBox
echo -e "\n"
	if hash VBoxManage 2>/dev/null; then
        echo "VirtualBox já está instalado"
    else
		echo "Baixando o VirtualBox..."
#		wget -c http://download.virtualbox.org/virtualbox/5.0.14/virtualbox-5.0_5.0.14-105127~Ubuntu~trusty_amd64.deb
#		wget -c http://download.virtualbox.org/virtualbox/5.0.14/Oracle_VM_VirtualBox_Extension_Pack-5.0.14-105127.vbox-extpack
		wget -c http://download.virtualbox.org/virtualbox/5.0.18/virtualbox-5.0_5.0.18-106667~Ubuntu~xenial_amd64.deb
		wget -c http://download.virtualbox.org/virtualbox/5.0.18/Oracle_VM_VirtualBox_Extension_Pack-5.0.18-106667.vbox-extpack
		echo "Instalando o VirtualBox"
#		dpkg -i virtualbox-5.0_5.0.14-105127~Ubuntu~trusty_amd64.deb
		dpkg -i virtualbox-5.0_5.0.18-106667~Ubuntu~xenial_amd64.deb
		echo "Instalando o Extension Pack"
#		VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.0.14-105127.vbox-extpack
		VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.0.18-106667.vbox-extpack
		echo "VirtualBox instalado"
		sleep 1
	fi

# Vagrant
echo -e "\n"
	if hash vagrant 2>/dev/null; then
        echo "Vagrant já está instalado"
    else
		echo "Baixando o Vagrant..."
		wget -c https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb
		echo "Instalando o Vagrant"
		dpkg -i vagrant_1.8.1_x86_64.deb
		# Plugin para o vagrant atualizar automaticamente o guest aditionals se o virtual box for atualizado.
		echo "Instalando o plugin para atualizar o guest aditions automaticamente"
		vagrant plugin install vagrant-vbguest
		echo "Vagrant instalado"
		sleep 1
	fi


# Java
echo -e "\n"
	if hash dkms 2>/dev/null; then
        echo "Java já está instalado"
    else
		echo "Baixando o Java..."
		echo "Instalando o Java"
		sudo apt-get install openjdk-8-jdk
		echo "Java instalado"
		sleep 1
	fi


# SpeedTest
echo -e "\n"
	if hash speedtest 2>/dev/null; then
        echo "SpeedTest já está instalado"
    else
		echo "Baixando o SpeedTest..."
		wget -O speedtest https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest_cli.py
		echo "Instalando o SpeedTest"
		chmod +x speedtest
		mv speedtest /usr/bin
		echo "SpeedTest instalado"
		sleep 1
	fi

# Eclipse
echo -e "\n"
	if hash /opt/eclipse/eclipse 2>/dev/null; then
        echo "Eclipse já está instalado"
    else
		echo "Baixando o Eclipse..."
		wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz
		echo "Instalando Eclipse"
		tar -xzvf eclipse.tar.gz -C /opt/
		# Definindo ícone
		echo -e "[Desktop Entry] \nName=Eclipse Mars\nType=Application\nExec=/opt/eclipse/eclipse\nTerminal=false\nIcon=/opt/eclipse/icon.xpm\nComment=Integrated Development Environment for Java EE\nNoDisplay=false\nCategories=Development;IDE;\nName[en]=Eclipse" > /usr/share/applications/eclipse.desktop

		echo "Eclipse instalado"
		sleep 1
	fi




# Grub Customizer
echo -e "\n"
	if hash grub-customizer 2>/dev/null; then
        echo "Grub-customizer já está instalado"
    else
		echo "Baixando o Grub-customizer..."
		wget -c https://launchpad.net/~danielrichter2007/+archive/ubuntu/grub-customizer/+build/9607969/+files/grub-customizer_5.0.6-0ubuntu1~ppa1x_amd64.deb -O grub-customizer.deb
		echo "Instalando o Grub-customizer"
		sudo dpkg -i grub-customizer.deb
		echo "Grub-customizer instalado"
		sleep 1
	fi



# Utilitários
echo -e "\n\n"
echo ">>>>>  Instalando utilitários do sistema..."
sudo apt-get install xz-utils rar unrar vim tree ubuntu-restricted-extras libavcodec-extra unity-tweak-tool language-pack-gnome-pt language-pack-pt-base -y
echo ">>>>>  Instalando plugins java..."
apt install icedtea-8-plugin openjdk-8-jre -y

# Resolver dependências.
echo -e "\n\n"
echo ">>>>>  Resolvendo dependências..."
apt-get -f install

# Limpeza
echo -e "\n\n"
echo ">>>>>  Limpando sistema..."
# Programas ou bibliotecas que o sistema não está mais usando.
echo -e "\n"
echo ">>>>>  Removendo programas e bibliotecas que não estão mais em uso..."
apt-get autoremove  -y 
# Remove somente os pacotes obsoletos e que não servirão mais para uma instalação posterior.
echo -e "\n"
echo ">>>>>  Removendo pacotes obsoletos..."
apt-get autoclean -y
# Removendo pacotes instalados com o apt.
echo -e "\n"
echo ">>>>>  Limpando o cache apt..."
apt-get clean -y
# Garantindo a remoção dos arquivos temporários.
echo -e "\n"
echo ">>>>>  Limpando arquivos temporários..."
rm -rf /tmp/*
