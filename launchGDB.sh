#!/bin/csh

echo "running GDB. Once loaded run the following:"
echo "<return>"
echo "(gdb) target remote localhost:5528"
echo "(gdb) q"
echo "(gdb) y"

gdb -tui
