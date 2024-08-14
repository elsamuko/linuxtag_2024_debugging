#!/usr/bin/env python3
# python3 -m pip install lief

import lief
import sys

if __name__ == "__main__":
    binary = lief.parse(sys.argv[1])

    for imported_library in binary.imported_functions:
        print(imported_library.name)
