#! /bin/bash

# generate a random key
#Use env var?
#RANDKEY=...

# create lorem ispum
echo "Hello World" > lorem.txt

#create file for encrpted version
touch encrypted.txt

# pass execution to controller
./controller.sh
