#!/usr/bin/env bash

#################################################################
# Script criado para limpar o cache do site                     #
#                                                               #
# Desenvolvido por Wellington Barros 02/02/2023                 #
#################################################################
#
# Arquivo de log
LOG='cache.log'
echo "[`date +%F\ %T`] ==== Inicio de rotina..." >> $LOG

echo -e "Parando o nginx!" >> $LOG
sudo service nginx stop 
sleep 2 
echo -e "Apagando o cache..." >> $LOG
sudo rm -rf /opt/cache 
sleep 4
echo -e "Iniciando o nginx!" >> $LOG
sudo service nginx start
echo "[`date +%F\ %T`] ==== Fim de rotina..." >> $LOG