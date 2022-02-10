#!/bin/bash

echo '[+] ASSEMBLING WITH NASM ...'

nasm -f elf32 -o $1.o $1.nasm

echo '[+] LINKING ...'

ld -o $1 $1.o

echo '[+] COMPLETE!'



