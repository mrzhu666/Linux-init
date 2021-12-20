#!/bin/bash

init(){
    echo "-------------------------------------------------------------"
    echo "代理管理"
    echo "1.代理测试"
    echo -n "请输入对应数字>"
    read -r option
    case $option in
        1) 
            bash ./proxy/proxy-testing.sh
        ;;
        2|3) echo 2 or 3
        ;;
        *) echo default
        ;;
    esac
    
}
init