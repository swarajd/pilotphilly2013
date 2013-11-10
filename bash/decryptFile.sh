#!/bin/sh
openssl des3 -d -salt -in $1.des3 -out $1 -pass pass:$2
