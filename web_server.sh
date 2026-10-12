echo "Iniciando servidor web APACHE..."

echo "Passo 1: Atualizando bibliotecas do sistema..."
apt update && apt upgrade -y

echo "Instalando wget, unzip e Apache..."
apt install wget unzip apache2 -y

echo "Movendo para o diretório /tmp..."
cd /tmp

echo "Removendo restos de downloads anteriores..."
rm -rf main.zip linux-site-dio-main

echo "Obtendo código fonte da aplicação..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo..."
unzip main.zip

echo "Copiando a aplicação para o diretório do Apache..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Iniciando o Apache..."
apache2ctl start

echo "Deploy concluído com sucesso!"
