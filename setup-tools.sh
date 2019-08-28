#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get -y install python-pip python-dev build-essential libffi-dev libssl-dev git curl software-properties-common
sudo pip install --upgrade pip

# Install Old Friends
sudo apt-get install --no-install-recommends \
 dc \
 bc \
 -y

# Install Editor
sudo apt-get install --no-install-recommends \
 vim \
 -y

# Install Dev Tools & Utilities
sudo apt-get install --no-install-recommends \
 git \
 gdb \
 libgtest-dev \
 cmake \
 g++ \
 valgrind \
 libpthread-stubs0-dev \
 build-essential \
 python3-dev \
 graphviz \
 zip \
 htop \
 linux-tools-common \
 linux-tools-4.15.0-29-generic \
 linux-tools-generic \
 -y

# Install other noteworthy languages
sudo apt-get install \
 nodejs \
 npm \
 clang \
 -y

sudo npm install -g typescript ts-node

# Install Pandoc and Tex
sudo apt-get install --no-install-recommends \
 pandoc \
 texlive-latex-base \
 texlive-latex-recommended \
 texlive-fonts-recommended \
 lmodern \
 -y

# Cleanup apt
apt-get -y autoremove
apt-get -y clean