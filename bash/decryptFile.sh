#!/bin/sh
openssl des3 -d -salt -in $1 -out $2 -pass pass:$3