#!/bin/bash
#
# script para testar se temos conectividade com a internet.
# Se nao tivermos conectividade, de um boot no mini-PC.
#
# Para que esse script rode como root e nao peca a senha, de os seguintes comandos
# sudo chown root.root <nome do script>
# sudo chmod 4755 <nome do script>
#
#
# versao 1: Paulo Abreu
#           2022-jun-26 (ontem foi a festa de formatura da Tais)
#

if ping -c 5 www.google.com &> /dev/null
#if ping -c 1 www.naoexiste.com &> /dev/null
then
    echo "pingou"
else
    echo "nao pingou"
    sudo reboot
fi

