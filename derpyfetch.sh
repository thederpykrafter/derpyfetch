#!/bin/bash

####    Colors    ####
blue="\e[34m"

bred="\e[91m"
bgreen="\e[92m"
bblue="\e[94m"
bpurple="\e[95m"
clr="\e[0m"

####    Title    ####
title=$bpurple"TDK ZSH"$clr
title_side_l=$blue"#    "$clr
title_side_r=$blue"    #"$clr
divider=$blue"###########"$clr

echo -e $divider
echo -e $title_side_l$title$title_side_r
echo -e $divider

if uname -a | grep "arch1" &> /dev/null; then
  kernel="Arch"
elif uname -a | grep "ubuntu" &> /dev/null; then
  kernel="Ubuntu"
elif uname -a | grep "Android" &> /dev/null; then
  kernel="Termux"
elif uname -a | grep "PRoot" &> /dev/null; then
  kernel="PRoot"
fi

#NOTE not sure where previous new line is coming from
echo -en $os
echo -e $kernel
