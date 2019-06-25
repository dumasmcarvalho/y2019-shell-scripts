#!/bin/bash

clear

echo -e "- Remover Usuários do Grupo -\n"

read -p "Informe o nome de um usuário: " usuario
read -p "Informe o nome de um grupo: " grupo

gpasswd -d $usuario $grupo &> /dev/null

if [ $? -eq 0 ] ; then
	echo -e "\nUsuário removido do grupo com sucesso!"
else
	echo -e "\nO usuário ou grupo informado não existe."
fi
