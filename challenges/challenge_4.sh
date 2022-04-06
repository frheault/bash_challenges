#!/bin/bash

# Initialisation
BASE_DIR=$(dirname "$0")
mkdir challenge_4/user_tmp/ challenge_4/output/ -p
unzip -q ${BASE_DIR}/../output/challenge_4.zip -d challenge_4/output/
unzip -q ${BASE_DIR}/../input/challenge_4.zip -d challenge_4/user_tmp/
cd challenge_4/user_tmp/
SECONDS=0

# User provided solution
for i in $(ls */* | xargs -n 1 basename | sort | uniq); do echo $i >> exist.txt; done
for i in {0..100}; do for j in {0..100}; do echo ${i}_${j} >> all.txt; done ;done
grep -Fxv -f  exist.txt all.txt >> missing.txt
rm exist.txt all.txt

cd ../
if [[ $(grep -Fxv -f output/missing.txt user_tmp/*.txt | wc -l) = 0 ]]; then echo 'SUCCESS!'; else echo 'FAIL!'; fi
echo 'Time elasped:' ${SECONDS}

# Cleaning
cd ../
rm -rf challenge_4/