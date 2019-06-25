#!/bin/bash

clear

echo -e "- Excluir Usuário ou Grupo -\n"

echo -e "Deseja exluir um usuário ou um grupo?\n 1) Usuário;\n 2) Grupo.\n"

read -p "Escolha uma das alternativas acima: " escolha

echo "";

if [ $escolha -eq 1 ] ; then
	read -p "Informe o nome do usuário para excluí-lo: " usuario

	smbpasswd -x $usuario &> /dev/null && userdel -r $usuario &> /dev/null

	if [ $? -eq 0 ] ; then
        	echo -e "\nUsuário excluído com sucesso!"
	else
        	echo -e "\nO usuário informado já foi excluído ou não existe."
	fi
elif [ $escolha -eq 2 ] ; then
        read -p "Informe o nome do grupo para excluí-lo: " grupo

        groupdel $grupo &> /dev/null

        if [ $? -eq 0 ] ; then
                echo -e "\nGrupo excluído com sucesso!"
        else
                echo -e "\nO grupo informado já foi excluído ou não existe."
        fi
else
	echo "Opção inválida, favor tentar novamente!"
fi
