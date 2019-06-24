#!/bin/bash

clear

read -p "Informe o nome do usuário para excluí-lo: " usuario

smbpasswd -x $usuario &> /dev/null && userdel -r $usuario &> /dev/null

if [ $? -eq 0 ] ; then
	echo -e "\nUsuário excluído com sucesso!"
else
	echo -e "\nO usuário informado já foi excluído ou não existe."
fi
