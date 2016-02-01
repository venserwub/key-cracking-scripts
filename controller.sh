#! /bin/bash

# divide keyspace per worker


# pass execution to workers
ssh [user]@[server] 'javac Crypto.java && nohup java Crypto $RANDKEY lorem.txt encrypted.txt > foo.out 2> foo.err < /dev/null &'

ssh [user]@[server] 'javac Crypto.java && nohup java Crypto $RANDKEY lorem.txt encrypted.txt > foo.out 2> foo.err < /dev/null &'

ssh [user]@[server] 'javac Crypto.java && nohup java Crypto $RANDKEY lorem.txt encrypted.txt > foo.out 2> foo.err < /dev/null &'

ssh [user]@[server] 'javac Crypto.java && nohup java Crypto $RANDKEY lorem.txt encrypted.txt > foo.out 2> foo.err < /dev/null &'

# wait for user to find correct key


# write correct key to file

