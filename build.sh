#!/bin/bash

rm -f oswrch80

echo Assembling
ca65 -l oswrch80.lst -o oswrch80.o oswrch80.asm

echo Linking
ld65 oswrch80.o -o oswrch80 -C oswrch80.lkr 

echo Cleaning
rm -f *.o

echo Checksumming
md5sum oswrch80

