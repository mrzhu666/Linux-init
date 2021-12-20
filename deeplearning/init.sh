#!/bin/bash

init(){
    echo "-------------------------------------------------------------"
    echo "深度管理"
    echo "1.Anaconda"
    echo "2.conda环境管理"
    echo -n "请输入对应数字>"
    read -r option
    case $option in
        1) 
            bash ./anaconda.sh
        ;;
        2)
            bash ./package.sh
        ;;
        *) echo default
        ;;
    esac
    
}
init