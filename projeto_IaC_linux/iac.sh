#!/bin/bash

echo "Criando os diretórios ! "

mkdir /publico
mkdir /administracao
mkdir /vendas
mkdir /secretarios

echo "Criando grupos para os usuários ! "

groupadd GRP_ADMIN
groupadd GRP_VENDAS
groupadd GRP_SEC

echo "Criando os usuários ! "

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADMIN
useradd maria -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADMIN
useradd joao -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADMIN

useradd debora -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VENDAS
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VENDAS
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VENDAS

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC

echo "Definindo permissões para os diretórios ! "

chown root:GRP_ADMIN /administracao
chown root:GRP_VENDAS /vendas
chown root:GRP_SEC /secretarios

chmod 770 /administracao
chmod 770 /vendas
chmod 770 /secretarios
chmod 777 /publico

echo "Script finalizado ! "
