#!bin/bash/

echo "Atualizando Servidor..."

apt update -y

echo "Instalando Apache..."

apt install apache2 -y

echo "instalando Unzip..."

apt install unzip -y

echo "Baixando Site..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "extraindo arquivos da pasta main.zip..."

unzip main.zip

echo "movendo para /var/www/html/"

cd linux-site-dio-main
cp * /var/www/html -r
