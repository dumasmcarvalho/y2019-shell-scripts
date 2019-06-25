#!/bin/bash

clear

echo -e "- Listar Grupos do Usuário  -\n"

read -p "Informe o nome de um usuário: " usuario

echo ""

groups $usuario 2> /dev/null

if [ $? -eq 0 ] ; then
	echo -e "\nOs grupos do usuário foram listados com sucesso!"
else
	echo -e "\nO usuário informado não existe."
fi
