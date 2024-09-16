#!/usr/bin/env bash

function green  {
    echo -e "\033[1;32m$*\033[0m"
}

green "Leak Sanitizer Demo"
g++ -DWITH_LEAK_SAN -g -O0 -fsanitize=address main.cpp -o leak_san
./leak_san

echo
green "Address Sanitizer Demo"
g++ -DWITH_ADDRESS_SAN -g -O0 -fsanitize=address main.cpp -o address_san
./address_san
