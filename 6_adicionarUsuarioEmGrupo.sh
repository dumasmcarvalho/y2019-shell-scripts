#!/bin/bash

clear

echo -e "- Adicionar Usuários em Grupo -\n"

read -p "Informe o nome de um usuário: " usuario
read -p "Informe o nome de um grupo: " grupo

gpasswd -a $usuario $grupo &> /dev/null

if [ $? -eq 0 ] ; then
	echo -e "\nUsuário adicionado ao grupo com sucesso!"
else
	echo -e "\nO usuário ou grupo informado não existem."
fi
