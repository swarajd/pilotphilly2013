#!/bin/bash
#echo "Encrypting $1"
openssl des3 -salt -in $1 -out $1.des3 -pass pass:$2
rm -f $1
#echo "Encrypted using $2 as a password"
