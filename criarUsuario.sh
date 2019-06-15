#!/bin/bash

clear

read -p "Informe o nome do novo usuário: " usuario

useradd -m $usuario -s /bin/bash 2> /dev/null && echo $usuario:"Senha;123" | chpasswd

if [ $? -eq 0 ] ; then
	echo -e "\nUsuário criado com sucesso!"
else
	echo -e "\nO usuário informado já existe."
fi
