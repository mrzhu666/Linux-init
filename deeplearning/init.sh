#!/bin/bash

init(){
    echo "-------------------------------------------------------------"
    echo "深度管理"
    echo "1.Anaconda"
    echo "2.conda环境管理"
    echo "3.常用包安装"
    echo -n "请输入对应数字>"
    read -r option
    case $option in
        1) 
            bash $Linuxinit/deeplearning/anaconda.sh
        ;;
        2)
            bash $Linuxinit/deeplearning/package.sh
        ;;
        3)
            bash $Linuxinit/deeplearning/env_default.sh
        ;;
        *) echo default
        ;;
    esac
}
init