#!/bin/bash

####    Colors    ####
blue="\e[34m"

bred="\e[91m"
bgreen="\e[92m"
bblue="\e[94m"
bpurple="\e[95m"
clr="\e[0m"

####    Title    ####
title=$bpurple"TDK Fresh Install Script"$clr
title_side_l=$blue"#    "$clr
title_side_r=$blue"    #"$clr
divider=$blue"############################"$clr

echo -e $divider
echo -e $title_side_l$title$title_side_r
echo -e $divider

####    Arch    ####
if cat /etc/os-release | grep "arch" &> /dev/null; then
  os="Arch"
fi

####    Ubuntu    ####
if cat /etc/os-release | grep "ubuntu" &> /dev/null; then
  os="Ubuntu"
fi
####    Termux    ####
if [ -d /data/data/com.termux ]; then
  os="Termux"
fi

if uname -a | grep "arch1" &> /dev/null; then
  kernel="Arch"
elif uname -a | grep "ubuntu" &> /dev/null; then
  kernel="Ubuntu"
elif uname -a | grep "aarch" &> /dev/null; then
  kernel="Termux"
elif uname -a | grep "PRoot" &> /dev/null; then
  kernel="PRoot"
fi

echo $os
echo $kernel
