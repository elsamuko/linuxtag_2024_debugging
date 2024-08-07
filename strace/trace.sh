#!/usr/bin/env bash

g++ main.cpp -o trace

strace ./trace 2> strace.log
