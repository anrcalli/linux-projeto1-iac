#!/bin/bash

echo "Criando diretórios e estabelecendo permissões..."

mkdir /publico
chmod 777 /publico

mkdir /adm
chmod 770 /adm

mkdir /ven
chmod 770 /ven

mkdir /sec
chmod 770 /sec

echo "Criação de diretórios com respectivas permissões concluída!!"

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação de grupos de usuários concluída!!"

echo "Criação de usuários viculados a grupos..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd -e carlos
useradd maria -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd -e maria
useradd joao -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd -e joao
useradd debora -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd -e debora
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd -e sebastiana
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd -e roberto
useradd josefinax -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd -e josefina
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd -e amanda
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd -e rogerio

echo "Usuários criados e vinculados a grupos!"

echo "Estabelecendo Donos e Grupos de diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

echo "Donos e Grupos de diretórios"

echo "CONFIGURAÇÃO CONCLUÍDA!!!"


