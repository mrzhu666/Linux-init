#!/bin/bash

# 对应系统镜像常用初始化

#!/bin/bash

init(){
    echo "-------------------------------------------------------------"
    echo "系统初始化"
    echo "1.ubuntu-18.04.6-live-server-amd64"
    echo -n "请输入对应数字>"
    read -r option
    case $option in
        1) 
            bash ./OS/ubuntu-18.04.6-live-server-amd64.sh
        ;;
        2)
            # bash ./deeplearning/package.sh
        ;;
        *) echo default
        ;;
    esac
}
init