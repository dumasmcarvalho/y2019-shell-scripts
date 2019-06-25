#!/bin/bash

escolha=1

clear

while [ $escolha -ge 1 ] && [ $escolha -le 9 ]
do
	echo -e "- Menu Principal -\n"

	echo " 0) Encerrar o script;"
	echo " 1) Criar um novo grupo;"
	echo " 2) Criar um novo usuário;"
	echo " 3) Criar novos usuários em lote;"
	echo " 4) Listar os usuários existentes;"
	echo " 5) Listar os grupos existentes;"
	echo " 6) Adicionar um usuário a um grupo;"
	echo " 7) Listar os grupos de um usuário;"
	echo " 8) Remover um usuário de um grupo;"
	echo -e  " 9) Excluir um usuário ou grupo do sistema.\n"

	read -p "Informe uma das opções das opções acima: " escolha

	echo ""

	case $escolha in
		0) echo "Obrigado por utilizar!" ;;
		1) ./criarUmGrupo.sh ;;
		2) ./criarUmUsuario.sh ;;
		3) ./criarUsuariosEmLote.sh ;;
		4) pdbedit -L -v | grep "Unix username:" ;;
		5) compgen -g ;;
		6) ./adicionarUsuarioEmGrupo.sh ;;
		7) ./listarGruposDoUsuario.sh ;;
		8) ./removerUsuarioDoGrupo ;;
		9) ./excluirUsuarioOuGrupo.sh ;;
		*) echo "Opção inválida, favor executar o script novamente!" ;;
	esac

	echo ""
done
