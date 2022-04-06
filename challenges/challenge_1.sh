#!/bin/bash

# Initialisation
BASE_DIR=$(dirname "$0")
mkdir challenge_1/user_tmp/ challenge_1/output/ -p
unzip -q ${BASE_DIR}/../output/challenge_1.zip -d challenge_1/output/
cd challenge_1/user_tmp/
SECONDS=0

# User provided solution
mkdir s{01..99}
touch s{02..99..2}/logfile.txt

# Evaluation
cd ../
if [[ $(diff -qr user_tmp/ output/ | wc -l) = 0 ]]; then echo 'SUCCESS!'; else echo 'FAIL!'; fi
echo 'Time elasped:' ${SECONDS}

# Cleaning
cd ../
rm -rf challenge_1/