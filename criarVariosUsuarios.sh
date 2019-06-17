#!/bin/bash

clear

read -e -p "Informe o caminho e nome absoluto do arquivo que contém os usuários: " arquivoUsuarios

for i in `cat $arquivoUsuarios`
do
	useradd -m $i -s /bin/bash 2> /dev/null && echo $i:"Senha;123" | chpasswd

	if [ $? -eq 0 ] ; then
		echo -e "\nUsuário criado com sucesso!"
	else
		echo -e "\nO usuário informado já existe."
	fi
done
