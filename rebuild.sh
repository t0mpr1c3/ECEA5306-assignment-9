#!/bin/bash
cd $(dirname $0)/buildroot
make aesd-char-driver-rebuild > >(tee -i -a "../rebuild.log") 2> >(tee -i -a "../rebuild.log" >&2)
cd -
