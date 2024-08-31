#!/bin/bash

prefix="guest"
password="Senha123"

for i in $(seq 1 20); do
    username="${prefix}${i}"
    useradd "$username" -c "Usuário Convidado $i" -s /bin/bash -m -p "$(openssl passwd -crypt "$password")"
    
done
