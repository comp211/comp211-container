#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get -y --no-install-recommends install tmux default-jdk

# Cleanup apt
apt-get -y autoremove
apt-get -y clean