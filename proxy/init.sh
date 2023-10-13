#!/bin/bash

init(){
    echo "-------------------------------------------------------------"
    echo "代理管理"
    echo "1.代理测试google"
    echo "2.正常网络测试baidu"
    echo "3.安装ShellClash"
    echo "4.软件代理设置"
    echo -n "请输入对应数字>"
    read -r option
    case $option in
        1) 
            bash $Linuxinit/proxy/proxy-testing.sh
        ;;
        2)
            bash $Linuxinit/proxy/network-testing.sh
        ;;
        3)
            bash $Linuxinit/proxy/install-shellclash.sh
        ;;
        4)
            bash $Linuxinit/proxy/proxy-setting.sh
        ;;
        *) echo default
        ;;
    esac
    
}
init