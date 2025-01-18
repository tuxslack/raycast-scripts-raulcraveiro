#!/bin/bash

# Colaboração:    Fernando Souza - https://www.youtube.com/@fernandosuporte/


# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title YouTube Video Downloader
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ⬇️
# @raycast.packageName YouTube Video Downloader 

# Documentation:
# @raycast.description Easily download YouTube videos with MP4 extension
# @raycast.author Raul Craveiro
# @raycast.authorURL https://craveiro.com.br

# @raycast.argument1 { "type": "text", "placeholder": "URL" }


clear

# -------------------------------------------------------------------------------------------------

# Verificar se o programa esta instalado:

which yt-dlp         1> /dev/null || exit 1

# -------------------------------------------------------------------------------------------------

echo "
Verificando o acesso à internet..."


ping -c 10 www.google.com.br  1> /dev/null 2> /dev/null


if [ "$?" -eq "0" ];
then 

      echo -e "\e[1;32m\n[VERIFICADO] - Conexão com à internet funcionando normalmente.\n\e[0m"

      sleep 30
else 

     echo -e "\e[1;31m\n[ERRO] - Seu sistema não tem conexão com à internet. Verifique os cabos e o modem.\n\e[0m"

     exit

fi

# -------------------------------------------------------------------------------------------------


cd ~/Downloads

yt-dlp --merge-output-format mp4 ${1}

exit 0
