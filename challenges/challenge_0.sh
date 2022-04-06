#!/bin/bash

# Initialisation
BASE_DIR=$(dirname "$0")
mkdir challenge_0/user_tmp/ challenge_0/output/ -p
unzip -q ${BASE_DIR}/../output/challenge_0.zip -d challenge_0/output/
unzip -q ${BASE_DIR}/../input/challenge_0.zip -d challenge_0/user_tmp/
cd challenge_0/user_tmp/
SECONDS=0

# User provided solution
rm sub-????/ sub-???/ sub-??/ -rf
rm */*.json
rm */*6dirs*.*

# Evaluation
cd ../
if [[ $(diff -qr user_tmp/ output/ | wc -l) = 0 ]]; then echo 'SUCCESS!'; else echo 'FAIL!'; fi
echo 'Time elasped:' ${SECONDS}

# Cleaning
cd ../
rm -rf challenge_0/