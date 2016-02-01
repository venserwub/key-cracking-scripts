#! /bin/bash

# divide keyspace per worker
export KEYSPACE1=
export KEYSPACE2=
export KEYSPACE3=
export KEYSPACE4=

# pass execution to workers
ssh [user]@[server] "javac Crypto.java && nohup java Crypto $KEYSPACE1 lorem.txt encrypted.txt > foo.out 2> foo.err < /dev/null &"

ssh [user]@[server] "javac Crypto.java && nohup java Crypto $KEYSPACE2 lorem.txt encrypted.txt > foo.out 2> foo.err < /dev/null &"

ssh [user]@[server] "javac Crypto.java && nohup java Crypto $KEYSPACE3 lorem.txt encrypted.txt > foo.out 2> foo.err < /dev/null &"

ssh [user]@[server] "javac Crypto.java && nohup java Crypto $KEYSPACE4 lorem.txt encrypted.txt > foo.out 2> foo.err < /dev/null &"

# wait for user to find correct key


# write correct key to file

