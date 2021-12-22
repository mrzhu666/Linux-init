#!/bin/bash

# 一些框架环境配置

init(){
    echo "-------------------------------------------------------------"
    echo "框架环境"
    echo "1.vue"
    echo -n "请输入对应数字>"
    read -r option
    case $option in
        1) 
            bash $Linuxinit/framework/vue.sh
        ;;
        2)
            # bash ./deeplearning/package.sh
        ;;
        *) echo default
        ;;
    esac
}
init