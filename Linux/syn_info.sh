#!/bin/bash

echo "system script"
date
echo -e "username information: $(uname -a) \n"
echo -e "IP address: $(ip addr | head -9 | tail -1) \n"
echo -e "Host name: $(hostname) \n"
cat /etc/resolv.conf 
free
lscpu | grep CPU
df -H | head -4
echo -e "The currently logged on users are: $(who -a)"
