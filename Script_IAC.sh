#!/bin/bash


mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -c "User Carlos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -c "User Maria" -s /bin/bash -p $(openssl passwd -crypt Senha123) GRP_ADM
useradd joao -m -c "User João" -s /bin/bash -p $(openssl passwd -crypt Senha123) GRP_ADM
useradd debora -m -c "User Débora" -s /bin/bash -p $(openssl passwd -crypt Senha123) GRP_VEN
useradd sebastiana -m -c "User Sebastiana" -s /bin/bash -p $(openssl passwd -crypt Senha123) GRP_VEN
useradd roberto -m -c "User Roberto" -s /bin/bash -p $(openssl passwd -crypt Senha123) GRP_VEN
useradd josefina -m -c "User Josefina" -s /bin/bash -p $(openssl passwd -crypt Senha123) GRP_ADMSEC
useradd amanda -m -c "User Amanda" -s /bin/bash -p $(openssl passwd -crypt Senha123) GRP_ADMSEC
useradd rogerio -m -c "User Rogério" -s /bin/bash -p $(openssl passwd -crypt Senha123) GRP_ADMSEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico 