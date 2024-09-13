#!/usr/bin/env bash

g++ main.cpp -g -O0 -o crash

./gdb_loop.sh crash

