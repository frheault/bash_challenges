#!/bin/bash

# Initialisation
BASE_DIR=$(dirname "$0")
mkdir challenge_2/user_tmp/ challenge_2/output/ -p
unzip -q ${BASE_DIR}/../output/challenge_2.zip -d challenge_2/output/
unzip -q ${BASE_DIR}/../input/challenge_2.zip -d challenge_2/user_tmp/
cd challenge_2/user_tmp/
SECONDS=0
alias mrinfo='cat'

# User provided solution
for i in sub-*; 
	do stride=$(cat $i | head -n 4 | tail -n 1 | awk '$1=$1');
	stride=${stride/"Dimensions: "/};
	a=$(echo ${stride} | cut -d'x' -f 1) b=$(echo ${stride} | cut -d'x' -f 2) c=$(echo ${stride} | cut -d'x' -f 3)
	total=$(echo $a+$b+$c | bc)
	if [[ $total -gt 700  || $total -lt 500 ]]; then echo $(basename ${i/__T1w.nii.gz/}) ${stride}; fi
done

for i in sub-*; 
	do stride=$(cat $i | head -n 6 | tail -n 1 | awk '$1=$1'); stride=${stride/"Data strides: "/};
	if [[ ! ${stride} = '[ 1 2 3 ]' ]]; then echo $(basename ${i/__T1w.nii.gz/}) ${stride}; fi;
done

for i in sub-*; 
	do stride=$(cat $i | head -n 5 | tail -n 1 | awk '$1=$1');
	stride=${stride/"Voxel size: "/};
	a=$(echo ${stride} | cut -d'x' -f 1); b=$(echo ${stride} | cut -d'x' -f 2); c=$(echo ${stride} | cut -d'x' -f 3)
	total=$(echo $a+$b+$c | bc)
	if [[ "$(echo "$total>3.03" | bc)" -eq 1  || "$(echo "$total<2.97" | bc)" -eq 1 ]]; then echo $(basename ${i/__T1w.nii.gz/}) ${stride}; fi
done

for i in sub-*;
	do stride=$(cat $i | head -n 8 | tail -n 1 | awk '$1=$1');
	stride=${stride/"Data type: "/};
	if [[ ! ${stride} = *'32 bit float'* ]]; then echo $(basename ${i/__T1w.nii.gz/}) ${stride}; fi;
done
rm sub-1236833* sub-2377930* sub-5234069* sub-3245905* sub-1236833* sub-2377930* sub-5234069* sub-4227617* -f

cd ../
if [[ $(diff -qr user_tmp/ output/ | wc -l) = 0 ]]; then echo 'SUCCESS!'; else echo 'FAIL!'; fi
echo 'Time elasped:' ${SECONDS}

# Cleaning
cd ../
rm -rf challenge_2/