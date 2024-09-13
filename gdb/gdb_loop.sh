#!/usr/bin/env bash
# script to debug loop a program until it crashes
# https://haaspors.github.io/tools/2015/01/21/gdb-run-until-crash.html


APP="$1"
shift
ARGS="$@"

echo "Looping $APP $ARGS"

cat << EOF > /tmp/debug_loop.gdb
set pagination off
break _fini
commands
    run $ARGS
    end
run $ARGS
EOF

gdb -x /tmp/debug_loop.gdb "$APP"
