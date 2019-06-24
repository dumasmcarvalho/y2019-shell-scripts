#!/bin/bash

escolha=1

while [ $escolha -ge 1 ] && [ $escolha -le 6 ]
do

	echo -e "- Menu Principal -\n"

	echo " 0) Encerrar o script;"
	echo " 1) Criar um novo grupo;"
	echo " 2) Criar um novo usuário;"
	echo " 3) Criar usuários em lote;"
	echo " 4) Listar usuários existentes;"
	echo " 5) Listar grupos existentes;"
	echo -e  " 6) Excluir usuário do sistema.\n"

	read -p "Informe uma das opções das opções acima: " escolha

	echo ""

	case $escolha in
		0) echo "Obrigado por utilizar!" ;;
		1) ./criarGrupo.sh ;;
		2) ./criarUsuario.sh ;;
		3) ./criarUsuariosLote.sh ;;
		4) pdbedit -L -v | grep "Unix username:" ;;
		5) compgen -g ;;
		6) ./excluirUsuario.sh ;;
		*) echo "Opção inválida, favor executar o script novamente!" ;;
	esac

	echo ""
done
