#!/bin/bash



init(){
	echo "-------------------------------------------------------------"
	
    echo "1.代理管理"
	echo "2.深度学习环境管理"
	echo "3.初始化系统"
    echo "4.框架环境管理"
	
    echo -n "请输入对应数字>"
    read -r option
    case $option in
        1) 
            bash $Linuxinit/proxy/init.sh
        ;;
        2) 
			bash $Linuxinit/deeplearning/init.sh
        ;;
		3)
			bash $Linuxinit/OS/init.sh
		;;
		4)
			bash $Linuxinit/framework/init.sh
		;;
        *) echo default
        ;;
    esac
}

init
# Welcome()
# {
# 	reset
# 	echo  -e "\t\t\t\t \e[1;46m   欢迎进入图书管理系统-版本0.3   \e[0m"
# 	echo  -e "\n\n\n\n\n\n\n\n\n\n\t\t\t\t\t\e[1;31m Enter 图书管理系统\e[0m"
# 	read -r "selection"
# 	case $selection in
# 		1) echo 1
# 		deeplearning
# 		;;
# 		2|3) echo 2 or 3
# 		;;
# 		*) echo default
# 		;;
# 	esac
	
# }


# Welcome