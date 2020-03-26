#!/bin/bash

read -p "Git install krna hai?(haan/nhi) " git

if [ $git == "haan" ]
then
	echo "Theek hai. Git install ho rha hai... Sayyam bna ke rakhiye."
	read -p "OS kon sa hai? (windows/linux/mac) ?" os
	export os=$os
	if [ $os == "mac" ]
		then
		echo "Bade log"
		brew install git
		git --version
	elif [ $os == "linux" ]
			then
			read -p "kon sa? (ubuntu/redhat) " linux
			if [ $linux == "Ubuntu" ]
				then
					echo "password daal dena..."
					sudo apt install git
			fi
			if [ $linux == "redhat" ] 
				then
					echo "password daal dena..."
					sudo yum install git
			fi
	elif [[ $os == "windows" ]]; then
		echo "https://git-scm.com/downloads yahan se download krke install krlo"
	fi	
else
	echo "Sabaash! Kaafi time bach gya..."
	sudo sh upnaam.sh
fi
