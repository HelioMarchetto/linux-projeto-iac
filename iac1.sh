#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo e usuários ADM..."
groupadd GRP_ADM
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_ADM

echo "Criando grupo e usuários VEN..."
groupadd GRP_VEN
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_VEN

echo "Criando grupo e usuários SEC..."
groupadd GRP_SEC
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_SEC
useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_SEC

echo "Gerando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim do script..."
