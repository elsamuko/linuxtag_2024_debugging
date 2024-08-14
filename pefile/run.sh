#!/usr/bin/env bash

function separator {
    printf %"$COLUMNS"s |tr " " "-"
}

echo "Creating elf"
g++ main.cpp -o hello.elf

echo "Creating pe"
x86_64-w64-mingw32-g++ main.cpp -o hello.pe

separator
./demo_lief.py hello.elf
separator
./demo_lief.py hello.pe
separator
./demo_pefile.py hello.pe
separator
