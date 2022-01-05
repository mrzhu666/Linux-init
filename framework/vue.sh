#!/bin/bash
# vue 环境配置
# Ubuntu-18.04.6-live-server-amd64

vue(){
    echo "-------------------------------------------------------------"
    echo "vue"
    echo "1.nodejs安装"
    echo "2.nodejs、npm卸载"
    echo -n "请输入对应数字>"
    read -r option
    case $option in
        1) 
            install
        ;;
        2)
            uninstall
        ;;
        *) echo default
        ;;
    esac
}

uninstall(){
    # npm node 卸载旧版
    # 需要升级版本时直接卸了再重装
    # apt卸载
    sudo apt remove --purge npm
    sudo apt remove --purge nodejs
    sudo apt remove --purge nodejs-legacy
    sudo apt autoremove

    #手动删除 
    # rm -r /usr/local/bin/npm
    # rm -r /usr/local/lib/node-moudels
    # find / -name npm
    # rm -r /tmp/npm* 
}



install(){
    # 新版本安装 https://github.com/nodesource/distributions/blob/master/README.md
    cd "$HOME" || return

    # Node.js v14.x:
    # node -v 14.18.2
    # npm -v 6.14.15
    # curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
    # sudo apt-get install -y nodejs

    # Node.js v17.x:
    curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
    sudo apt-get install -y nodejs
}


vue