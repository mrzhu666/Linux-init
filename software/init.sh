#!/bin/bash

init(){
    echo "-------------------------------------------------------------"
    echo "常用软件管理"
    echo "1.ssh"
    echo "2.tmux"
    echo "3.zsh"
    echo "4.java"
    echo "5.maven"
    echo -n "请输入对应数字>"
    read -r option
    case $option in 
        1) 
            bash $Linuxinit/software/ssh.sh
        ;;
        2)
            bash $Linuxinit/software/tmux.sh
        ;;
        3)
            bash $Linuxinit/software/zsh.sh
        ;;
        4)
            bash $Linuxinit/software/java.sh
        ;;
        5)
            bash $Linuxinit/software/maven.sh
        ;;
        *) echo default
        ;;
    esac
    
}
init