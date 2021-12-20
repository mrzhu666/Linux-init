#!/bin/bash


Welcome()
{
	reset
	echo  -e "\t\t\t\t \e[1;46m   欢迎进入图书管理系统-版本0.3   \e[0m"
	echo  -e "\n\n\n\n\n\n\n\n\n\n\t\t\t\t\t\e[1;31m Enter 图书管理系统\e[0m"
	read -r "selection"
	case $selection in
		1) echo 1
		deeplearning
		;;
		2|3) echo 2 or 3
		;;
		*) echo default
		;;
	esac
	
}

deeplearning(){
	
}

Welcome