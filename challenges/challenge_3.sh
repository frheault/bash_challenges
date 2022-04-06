#!/bin/bash

# Initialisation
BASE_DIR=$(dirname "$0")
mkdir challenge_3/user_tmp/ challenge_3/output/ -p
unzip -q ${BASE_DIR}/../output/challenge_3.zip -d challenge_3/output/
unzip -q ${BASE_DIR}/../input/challenge_3.zip -d challenge_3/user_tmp/
cd challenge_3/user_tmp/
SECONDS=0

# User provided solution
for i in *{01..91}*; do mkdir sub-${i:4:2}/sess-${i:6:3} -p; mv ${i}/* sub-${i:4:2}/sess-${i:6:3}/; rm ${i} -r; done
for i in */*/*.*; do base_name=$(basename ${i}); dir_name_1=$(dirname $(dirname ${i})); dir_name_2=$(basename $(dirname ${i})); done
rm NEW_* -r

cd ../
if [[ $(diff -qr user_tmp/ output/ | wc -l) = 0 ]]; then echo 'SUCCESS!'; else echo 'FAIL!'; fi
echo 'Time elasped:' ${SECONDS}

# Cleaning
cd ../
rm -rf challenge_3/