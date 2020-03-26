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
		sudo sh upnaam.sh
	elif [ $os == "linux" ]
			then
			read -p "kon sa? (ubuntu/redhat) " linux
			if [ $linux == "ubuntu" ]
				then
					echo "password daal dena..."
					sudo apt install git
					git --version
					sudo sh upnaam.sh
			fi
			if [ $linux == "redhat" ] 
				then
					echo "password daal dena..."
					sudo yum install git
					git --version
					sudo sh upnaam.sh
			fi
	elif [[ $os == "windows" ]]; then
		echo "https://git-scm.com/downloads yahan se download krke install krlo"
		echo "after that run doskey.sh using bash doskey.sh"
	fi	
else
	if [[ "$OSTYPE" == "win"* ]]; then
		bash doskey.sh
	else
		sudo sh upnaam.sh
	fi
fi
