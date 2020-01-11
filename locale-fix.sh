#!/bin/bash

# The following command installs locale specific settings
# used by programs such as `man`. TODO: Move this into
# the general `setup-tools.sh` script.
locale-gen --purge en_US.UTF-8

# Cleanup
rm -f /locale-fix.sh