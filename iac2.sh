#!/bin/bash

echo "--------------------------------------------"
echo "Atualizando Sistema..."
apt-get update -y
apt-get upgrade -y
echo "Finalizacao da atualizacao do sistema"
echo "--------------------------------------------"
echo "---------------------------------------------"
echo "Instalando apache..."
apt-get install apache2 -y

systemctl enable apache2
echo "Apache instalado"
echo "--------------------------------------------"
echo "--------------------------------------------"
echo "Instalando ferramentas necessarias"
apt-get install unzip -y
echo "Instalacao finalizada"
echo "--------------------------------------------"
cd /tmp
echo "--------------------------------------------"
echo "Baixando arquivos do site..."
wget "https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"
echo "Download de arquivos concluido"
echo "--------------------------------------------"
echo "Extraindo arquivos"
unzip main.zip 
echo "------------------"
echo "Removendo arquivos do site"
rm -rf /var/www/html/* -v
echo "------------------------------"
echo "Movendo arquivos para o site"
mv -f /tmp/linux-site-dio-main/* /var/www/html/ -v
echo "-------------------------------"
echo "Arquivos movidos com sucesso!"
echo "------------------------------"
echo "Limpando arquivos temporarios"
rm -rf /tmp/linux-site-dio-main /tmp/main.zip -v
echo "------------------------------"
cd /
echo "Processo finalizado!"
echo "--------------------------------------------"
