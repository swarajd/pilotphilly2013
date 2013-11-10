#!/bin/bash
#echo "Encrypting $1"
openssl des3 -salt -in $1 -out $2.des3 -pass pass:$3
rm -f $1
#echo "Encrypted using $3 as a password"
