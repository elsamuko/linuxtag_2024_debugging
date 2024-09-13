#!/usr/bin/env bash

g++ main.cpp -g -O0 -o crash

cat << EOF > /tmp/script.gdb
b main
run
next
next
source script.py
quit
EOF

gdb -x /tmp/script.gdb ./crash
