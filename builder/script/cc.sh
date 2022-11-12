#!/bin/bash

printf "\33[37;1m[ * * *  ]\33[0m C compiling \33[1m$1.\33[0m\n"
gcc-11 -x c++ -std=gnu99 -fpermissive -Os -I ../include -nostdlib -m32 -march=i386 -fno-pie -ffreestanding -o o/$3/$1.o \
-Wl,--nmagic,--script=../builder/c/linker.ld ../src/$2/$1.c 2> log/ce.log 1> log/c.log
if (grep "rror" log/ce.log)
then
    printf "\33[1;31m[ ERROR  ]\33[0m when \33[1m$1\33[0m compilation C.\n"
    exit
elif (grep "шибка" log/ce.log)
then
    printf "\33[1;31m[ ERROR  ]\33[0m when \33[1m$1\33[0m compilation C.\n"
    exit
else
    printf "\33[1;32m[   OK   ]\33[0;1m $1\33[0m compilation C done.\33[0m\n"
fi
