#!/usr/bin/env python3
# python3 -m pip install pefile
import pefile
import sys

if __name__ == "__main__":
    pe = pefile.PE(sys.argv[1])

    for entry in pe.DIRECTORY_ENTRY_IMPORT:
        print(entry.dll.decode())
        for imp in entry.imports:
            print('\t', hex(imp.address), imp.name)