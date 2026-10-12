# DIRETÓRIOS


echo “Criando diretórios”


mkdir -p /publico
mkdir -p /adm
mkdir -p /ven
mkdir -p /sec


# GRUPOS


echo “Criando grupos”


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


# USUÁRIOS - GRP_ADM


echo “Criando usuários do grupo GRP_ADM”




useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM


# USUARIOS - GRP_VEN


echo “Criando usuários do grupo GRP_VEN”


useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd robertoms -m -s /bin/bash -G GRP_VEN


# USUARIOS - GRP_SEC


echo “Criando usuários do grupo GRP_SEC”


useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC


# GRUPOS PROPRIETÁRIOS DOS DIRETÓRIOS


echo “Definindo dono dos diretórios 




chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


# PERMISSÕES


echo “Definindo as permissões dos diretórios”




chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec