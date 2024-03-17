#!/bin/bash

# setup script (figlet) :

echo "Install Requirements"

apt-get update && apt-get install figlet git gem curl -y

git clone https://github.com/busyloop/lolcat

cd ..
cd ..
cd usr/share

gem install lolcat

git clone https://github.com/xero/figlet-fonts

mv figlet-fonts/* figlet && rm –rf figlet-fonts

echo "ItsAlias Requirements Successfuly Installed :)" | lolcat
