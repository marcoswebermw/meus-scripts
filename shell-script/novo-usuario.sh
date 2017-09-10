#!/bin/bash

maior_uid_encontrado=$(cat /etc/passwd|cut -d":" -f3|sort -n|tail -2|grep -v 65534)
novo_uid=$(($maior_uid_encontrado + 1))

sudo useradd -u $novo_uid -d /home/yoda -m -r -k /etc/skel -U -c Yoda,,, -s /bin/bash -G adm,cdrom,sudo,dip,plugdev,lpadmin,sambashare yoda

sudo groupmod -g $novo_uid yoda

echo -e "\nDigite a nova senha: "
sudo passwd yoda

# Para deletar o usuário yoda:
# sudo userdel -r yoda
