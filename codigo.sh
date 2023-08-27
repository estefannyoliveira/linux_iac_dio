#!/bin/bash

echo "criando diretorios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupo de usuarios"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "especificando permissoes dos diretorios"
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "especificando permissoes dos diretorios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /publico

echo "fim"