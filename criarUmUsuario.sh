#!/bin/bash

clear

senha="Senha;123"

read -p "Informe o nome do novo usuário: " usuario

useradd -m $usuario -s /bin/bash &> /dev/null && echo $usuario:$senha | chpasswd

if [ $? -eq 0 ] ; then
	echo -e "$senha\n$senha" | smbpasswd -s -a $usuario &> /dev/null
	echo -e "\nUsuário criado com sucesso!"
else
	echo -e "\nO usuário informado já existe."
fi
