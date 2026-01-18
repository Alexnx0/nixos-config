#!/bin/bash
# Script para ativar/desativar modo jogo
# Autor: Alex
# How to use: ./gamemode.sh off/on

# Saída imediata em caso de erro
set -e

# Identifique a saída de vídeo (ajuste se necessário)
SAIDA="HDMI1"

# Função para ativar o modo jogo
ativar_modo_jogo() {
    echo "Ativando modo jogo..."
    sudo cpupower frequency-set -g performance
    xrandr --output "$SAIDA" --mode 1440x900
    echo "Modo jogo ativado!"
}

# Função para desativar o modo jogo
desativar_modo_jogo() {
    echo "Desativando modo jogo..."
    sudo cpupower frequency-set -g schedutil
    xrandr --output "$SAIDA" --mode 1920x1080
    echo "Modo jogo desativado!"
}

# Verifica argumento
case "$1" in
    on)
        ativar_modo_jogo
        ;;
    off)
        desativar_modo_jogo
        ;;
    *)
        echo "Uso: $0 {on|off}"
        exit 1
        ;;
esac
