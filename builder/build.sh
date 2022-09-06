#!/bin/bash

# start
printf "\33[1m
   ,-----------------,
   |       ZOS       |
   |-----------------|
   | made in russian |
   |-----------------|
   |    by  zёbra    |
   '-----------------'
\33[0m
"

cd ../build

printf "\33[1;36m[  INFO  ]\33[0m pre compilation\n"
# pre compilation
mkdir bin 2> /dev/null
mkdir o 2> /dev/null
mkdir log 2> /dev/null
touch log/fasm.log 2> /dev/null
touch log/fasme.log 2> /dev/null
touch log/c.log 2> /dev/null
touch log/ce.log 2> /dev/null
printf "\33[1;32m[  DONE  ]\33[0m pre compilation done\n\n"

printf "\33[1;36m[  INFO  ]\33[0m c compilation\n"
# C compilation
../builder/script/cc.sh main kernel
printf "\33[1;32m[  DONE  ]\33[0m c compilation done\n\n"

printf "\33[1;36m[  INFO  ]\33[0m post compilation\n"
# post compilation
../builder/script/fasmc.sh boot boot
../builder/script/fasmc.sh main ../build/s/kernel
../builder/script/fasmc.sh os ../build/s/os ..
printf "\33[1;32m[  DONE  ]\33[0m post compilation done\n\n"

# copy img
mv -f os.bin ../os.img

printf "\33[1;37m[ * * *  ]\33[0m start OS\n"
# start os
qemu-system-x86_64 -drive file=../os.img,index=0,format=raw