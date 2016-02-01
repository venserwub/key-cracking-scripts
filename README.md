# key-cracking-scripts

### Key Space Calculations
Since we have a cluster of 5 nodes and a keyspace of **2^64**, we can assume that:
  Each host gets **[(2^64) / 5]** keys, which is about **3,689,348,814,741,910,324** keys
  If we also assume that each host can generate and test **10^6** keys per second, it would take each host **(3,689,348,814,741,910,324 / 1,000,000) ~= 116,989 years** running the computations in parrallel.

## start.sh
start.sh is responsible for creating the plaintext and cipher text file. After the plaintext has been encrypted, the script starts executes the controller script to start computing the keys.

## controller.sh

## worker.sh


