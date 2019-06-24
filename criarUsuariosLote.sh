#!/bin/bash

clear

senha="Senha;123"

read -e -p "Informe o caminho e nome absoluto do arquivo que contém os usuários: " arquivoUsuarios

for usuario in `cat $arquivoUsuarios`
do
	useradd -m $usuario -s /bin/bash &> /dev/null && echo $usuario:$senha | chpasswd

	if [ $? -eq 0 ] ; then
		echo -e "$senha\n$senha" | smbpasswd -s -a $usuario &> /dev/null
		echo -e "\nUsuário criado com sucesso!"
	else
		echo -e "\nO usuário informado já existe."
	fi
done
