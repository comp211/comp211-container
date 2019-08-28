#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive

# Cleanup
apt-get -y autoremove
apt-get -y clean

rm /setup-tools.sh
rm /setup-vim.sh
rm /cleanup.sh