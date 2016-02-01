#! /bin/bash

# generate a random key
#Use env var?
export RANDKEY=
export CTEXT="Lorem ipsum"

# create lorem ispum


#create file for encrpted version
touch encrypted.txt

# pass execution to controller
./controller.sh
