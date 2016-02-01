#! /bin/bash

# create lorem ispum
export CTEXT="Lorem ipsum"
echo $CTEXT > lorem.ptxt

#encrypt lorem ipsum
javac Encrypt.java
java Encrypt

export PTEXT="${cat lorem.ctxt}"

# pass execution to controller
./controller.sh
