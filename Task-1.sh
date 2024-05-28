#!/bin/bash

#Script Created by : Ahmed.F.ElHabashy@hotmail.com
clear
while [ true ]
do
echo "
################################################################################
#
#Its a Simple Script to Implement below , Choose the Number that meet your request accordingly ..
#################################################################################
#
1- Create User.
2- Remove User.
3- Update Password of Specific User.
4- List all users.
5- Exit."

read -p "Enter your Choise .. " choise 

case "$choise" in

	"1")	


	read -p "Please Enter the Name of the user that you want to create : " createuser
	sudo useradd $createuser
	;;



        "2")


        read -p "Please Enter the Name of the user that you want to Delete : " deluser
        sudo userdel $deluser
        ;;


        "3")


        read -p "Please Enter the Name of the user that you want to Change : " pwchange
        sudo passwd $pwchange
        ;;



	"4")
	clear
        echo "Here is the list of all users : "
        awk -F: '$3 >=1000 && $3 <=1500 {print $1}' /etc/passwd
        ;;


        "5")
	clear
	echo "Exit ... Thanks for using my little script :) ... "
	break
        #read -p "Please Enter the Name of the user that you want to create : " createuser
        #sudo useradd $createuser
        ;;



esac



done











