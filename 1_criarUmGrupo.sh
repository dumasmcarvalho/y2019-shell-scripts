#!/bin/bash

clear

echo -e "- Criar um Novo Grupo -\n"

read -p "Informe o nome do novo grupo: " grupo

groupadd $grupo 2>  /dev/null

if [ $? -eq 0 ] ; then
	echo -e "\nGrupo criado com sucesso!"
else
	echo -e "\nO grupo informado já existe."
fi
