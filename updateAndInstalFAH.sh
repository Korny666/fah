#!/bin/sh

#update machine
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install bzip2 htop less

wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.5/latest.deb

sudo dpkg -i --force-depends latest.deb
