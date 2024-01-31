#!/bin/bash

# Stop if any script fails
set -e

#Run heap pass
./useful_bash_scripts/build_heap.sh

#Run stack pass
./useful_bash_scripts/build_stack.sh

#Run tds pass
./useful_bash_scripts/build_tds.sh

#Run static and global variable pass
#./useful_bash_scripts/build_global_static_vars.sh