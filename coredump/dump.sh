#!/usr/bin/env bash

# do not download debuginfos from https://debuginfod.ubuntu.com
unset DEBUGINFOD_URLS

# set max core dump file size to unlimited
ulimit -c unlimited

# compile program
g++ -O0 -g main.cpp -o crash

# run
./crash

# inspect coredump
# cat /proc/sys/kernel/core_pattern
# cat /var/log/apport.log
DUMPFILE=$(find /var/lib/apport/coredump/ -name 'core.*' | tail -n 1)

# show stacktraces of all threads
gdb -ex "t a a bt" -ex "quit" ./crash "$DUMPFILE"

# or with coredumpctl
# DUMPFILE=$(find /var/lib/systemd/coredump/ -name 'core.crash.1000.*' | tail -n 1)
# sudo apt install systemd-coredump
# coredumpctl info crash -n 1 -r --no-pager
# coredumpctl debug crash
