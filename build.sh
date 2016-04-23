#!/bin/bash

PROG=OSWRCH80

ca65 -l${PROG}.lst  -o ${PROG}.o ${PROG}.asm 
ld65 ${PROG}.o -o ${PROG} -C ${PROG}.cfg 
