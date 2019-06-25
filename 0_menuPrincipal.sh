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
	echo " 6) Adicionar um usuário em um grupo;"
	echo " 7) Listar os grupos de um usuário;"
	echo " 8) Remover usuário de um grupo;"
	echo -e  " 9) Excluir usuário ou grupo do sistema.\n"

	read -p "Informe uma das opções das opções acima: " escolha

	echo ""

	case $escolha in
		0) echo "Obrigado por utilizar!" ;;
		1) ./1_criarUmGrupo.sh ;;
		2) ./2_criarUmUsuario.sh ;;
		3) ./3_criarUsuariosEmLote.sh ;;
		4) pdbedit -L -v | grep "Unix username:" ;;
		5) compgen -g ;;
		6) ./6_adicionarUsuarioEmGrupo.sh ;;
		7) ./7_listarGruposDoUsuario.sh ;;
		8) ./8_removerUsuarioDoGrupo.sh ;;
		9) ./9_excluirUsuarioOuGrupo.sh ;;
		*) echo "Opção inválida, favor executar o script novamente!" ;;
	esac

	echo ""
done
