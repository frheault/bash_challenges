#!/bin/bash

for i in {00..33}; do echo ${i}; done
for i in {a..z}; do echo ${i}; done

while true; do echo $(date); sleep 5; done
watch -n 5 date

head -n 1 README.md
tail -n 1 README.md
head -n 2 README.md | tail -n 1

for i in $(cat README.md); do echo $i; done
while read -r line; do echo ${line}; done  < README.md

txt='Bash is not for processing, but extremely useful for file management, Q/C and dispatching jobs'
echo ${txt}
for i in ${txt}; do echo ${i}; done

echo ${txt/' '/-}
echo ${txt} | tr ' ' -

IFS=', ' read -r -a array <<< "${txt}"
echo ${txt:32:16}
echo ${array[6]} ${array[7]}

count=0
while true; do if [[ ${array[${count}]} == 'Q/C' ]]; then echo 'Q/C is the '${count}' word'; break; else count=$((count+1)); fi; done

echo ${txt} | grep for
echo ${txt} | wc

echo $(( ( RANDOM % 100 )))
count=0
while true; do if [[ $(( ( RANDOM % 100 ))) -gt 90 ]]; then echo 'Took '${count}' iterations!'; break; else count=$((count+1)); fi; done

https://dev.to/awwsmm/101-bash-commands-and-tips-for-beginners-to-experts-30je
https://www.educative.io/blog/bash-shell-command-cheat-sheet
# pwd / ls / cd
# echo / printf
# head / tail / cat / less
# nano / nedit / vim
# mkdir / touch / rm / rmdir
# mv / cp / ln -s
# pwd / readlink -e
# df -hs / du -hs
# find / grep
# man / whereis / which / whatis
# ps / top / htop
# awk / sed / tr / cut
# logout / exit / reboot
# ping / wget / curl
# rsync / scp
# zip / tar / gzip
# dc / bc

# export VARIABLE='SOMETHING'
# printenv / unset
# alias ssh_h='ssh USER@hickory.accre.vanderbilt.edu' / unalias ssh_h
# echo 'HI!' >> log.txt &> log.txt
# parallel -P 2 < cmd.sh
# nano ~/.bash_profile
# history

# -h / --help
# -version / --version / -v
# CTRL-C / CTRL-Z / CTRL-L