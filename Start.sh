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
azul="\033[0;34m"
verde="\033[0;32m"
verme="\033[1;31m"
amarelo="\033[1;33m"
echo -e $verde"11111111111111111111111111111111111111001111111111111111111111111"
echo -e $verde"11111111111111111111111111111111111100011111111111111111111111111"
echo -e $verde"11111111111111111111111111111111100001111111111111111111111111111"
echo -e $verde"11111111111111111111111111111110000111111111111111111111111111111"
echo -e $verde"11111111111111111111111111111000000111111111111111111111111111111"
echo -e $verde"11111111111111111111111111100000011110001100000000000000011111111"
echo -e $verde"11111111111111111100000000000000000000000000000000011111111111111"
echo -e $verde"11111111111111110111000000000000000000000000000011111111111111111"
echo -e $verde"11111111111111111111111000000000000000000000000000000000111111111"
echo -e $verde"11111111111111111110000000000000000000000000000000111111111111111"
echo -e $verde"11111111111111111100011100000000000000000000000000000111111111111"
echo -e $verde"11111111111111100000110000000000011000000000000000000011111111111"
echo -e $verde"11111111111111000000000000000100111100000000000001100000111111111"
echo -e $verde"11111111110000000000000000001110111110000000000000111000011111111"
echo -e $verde"11111111000000000000000000011111111100000000000000011110001111111"
echo -e $verde"11111110000000011111111111111111111100000000000000001111100111111"
echo -e $verde"11111111000001111111111111111111110000000000000000001111111111111"
echo -e $verde"11111111110111111111111111111100000000000000000000000111111111111"
echo -e $verde"11111111111111110000000000000000000000000000000000000111111111111"
echo -e $verde"11111111111111111100000000000000000000000000001100000111111111111"
echo -e $verde"11111111111111000000000000000000000000000000111100000111111111111"
echo -e $verde"11111111111000000000000000000000000000000001111110000111111111111"
echo -e $verde"11111111100000000000000000000000000000001111111110000111111111111"
echo -e $verde"11111110000000000000000000000000000000111111111110000111111111111"
echo -e $verde"11111100000000000000000001110000001111111111111110001111111111111"
echo -e $verde"11111000000000000000011111111111111111111111111110011111111111111"
echo -e $verme"______________ DRAGON TERMINAL _____________"
sleep 1
echo


read -p 'COLE SEU LINK AQUI: ' link_recebido
checkar_url $link_recebido
sleep 1
echo
echo -e $verde "PRECESSADO [+]"
echo

short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${link_recebido})
shorter=${short#https://}

echo -e $verde "DOMINIO [+]"
echo
read -p ' DIGITE SEU DOMINIO ( HTTPS:// or HTTP://): ' mask
checkar_url $mask

echo
	echo -e $azul "PALAVRAS FALSAS [+]"
	echo -e $verme 'NÃO USE ESPAÇODS ! '
sleep 1
echo -n '--> '
read palavras

	echo -e $azul "LINK GERADO [+]"
gerado=$masm-$palavras@$shorter
	echo
	echo -e $amarelo "LINK: ${mask}${gerado}"
bash Start.sh
