#!/bin/bash

clear

read -p "Informe o nome do novo grupo: " grupo

sudo groupadd $grupo

if [ $? -eq 0 ] ; then
	echo "Grupo criado com sucesso!"
else
	echo "O grupo informado já existe."
fi
