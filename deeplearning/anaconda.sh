#!/bin/bash



init()
{
    echo "Anaconda初始化"
    echo "1.安装Anacodna"
    echo "2.创建环境"
    read -n -r select
    case $VAR in
        1) 
        install
        ;;
        2|3) 
        echo 2 or 3
        
        ;;
        *) echo default
        ;;
    esac
    
}


install()
{
    wget https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
    bash Anaconda3-2021.11-Linux-x86_64.sh
}



init
