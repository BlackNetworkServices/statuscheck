#!/bin/bash
#This script is designed to tell you if your web server is working properly.
#Copyright @ 2016; Black Network Service
#https://www.blacknet.xyz

#Text indication shortcut
bold=$(tput bold)
normal=$(tput sgr0)

#Color text shortcut
red='\033[0;31m'
green='\033[0;32m'
blue='\033[0;34m'
br='\e[0;31;1m'

#Ascii Art Logo
cat "blacknetwork.txt"

echo -e "${br}Warning: This is for Debian based operating systems.${normal}"
echo "${bold}Perfoming system status check...${normal}"

#Check if Apache2 or Nginx
echo -e "${blue}What web server are you using?${normal}"
echo ""
echo -e "${blue}1. Apache2${normal}"
echo -e "${blue}2. Nginx${normal}"
echo""
read INPUT

#Check Apache2
case "$INPUT" in "1" )
	echo "${bold}Checking for Apache2 status${normal}"
Apache=$(pgrep apache2 | wc -l);
if [ "$Apache" -ne 1 ];
then
	echo -e "${red}Apache2 is down.${normal}";
else
	echo -e "${green}Apache2 is up.${normal}";
fi
;;

#Check Nginx
"2" )
	echo -e "${bold}Checking for Nginx status${normal}"
Nginx=$(pgrep nginx | wc -l);
if [ "$Nginx" -ne 1 ];
then
	echo -e "${red}Nginx is down.{$normal}"
else
	echo -e "${green}Nginx is up.${normal}"
fi
;;

#Not an option, wildcard choice
*)
echo -e "${red}This is not a option, please try again. ${normal}"
#Exit script here
exit 0
;;
#End Case statement
esac

#Check Mysql
Mysql=$(pgrep mysql | wc -l);
if [ "$Mysql" -ne 1 ];
then
        echo -e "${red}MySQL is down.${normal}";

else
        echo -e "${green}MySQL is up.${normal}";
fi

