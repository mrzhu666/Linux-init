#!/bin/bash

init(){
    echo "-------------------------------------------------------------"
    echo "代理管理"
    echo "1.代理测试google"
    echo "2.正常网络测试baidu"
    echo -n "请输入对应数字>"
    read -r option
    case $option in
        1) 
            bash $Linuxinit/proxy/proxy-testing.sh
        ;;
        2)
            bash $Linuxinit/proxy/network-testing.sh
        ;;
        *) echo default
        ;;
    esac
    
}
init