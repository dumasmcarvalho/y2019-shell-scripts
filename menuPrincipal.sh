#!/bin/bash

escolha=1

clear

while [ $escolha -le 1 -o $escolha -ge 5 ]
do
	echo -e "- Menu Principal -\n"

	echo " 1) Criar um novo grupo;"
	echo " 2) Criar um novo usuário;"
	echo " 3) Criar usuários em massa;"
	echo " 4) Listar usuários existentes;"
	echo -e " 5) Listar grupos existentes.\n"

	read -p "Informe uma das opções das opções acima: " escolha

	echo ""

	case $escolha in
		1) . criarGrupo.sh ;;
		2) echo "2" ;;
		3) echo "3" ;;
		4) echo "4" ;;
		5) echo "5" ;;
		*) echo -e "Opção inválida, favor tente novamente!" ;;
	esac

	echo ""
done
