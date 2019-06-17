#!/bin/bash

escolha=1

clear

while [ $escolha -ge 1 ] && [ $escolha -le 5 ]
do
	echo -e "- Menu Principal -\n"

	echo " 1) Criar um novo grupo;"
	echo " 2) Criar um novo usuário;"
	echo " 3) Criar vários usuários;"
	echo " 4) Listar usuários existentes;"
	echo -e " 5) Listar grupos existentes.\n"

	read -p "Informe uma das opções das opções acima: " escolha

	echo ""

	case $escolha in
		1) ./criarGrupo.sh ;;
		2) ./criarUsuario.sh ;;
		3) ./criarVariosUsuarios.sh ;;
		4) compgen -u ;;
		5) compgen -g ;;
		*) echo -e "Opção inválida, favor tente novamente!" ;;
	esac

	echo ""
done
