#!/usr/bin/env bash

g++ -g -O0 main.cpp -o leak

valgrind --leak-check=full ./leak
