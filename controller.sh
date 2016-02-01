#! /bin/bash


javac CipherExample.java
#Need to adjust it to pull the key from params if we generate a random one
java CipherExample $RANDKEY lorem.txt encrypted.txt
#gets lorem ipsum and encrypts then decrypts


# divide keyspace per worker


# pass execution to workers


# wait for user to find correct key


# write correct key to file

