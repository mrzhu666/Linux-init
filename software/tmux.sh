#!/bin/bash

# 配置风格
# https://github.com/gpakosz/.tmux.git

tmux(){
    echo "-------------------------------------------------------------"
    echo "常用软件管理"
    echo "1.安装"
    echo "2.配置"
    echo -n "请输入对应数字>"
    read -r option
    case $option in
        1) 
            install
        ;;
        2)
            conf
        ;;
        *) echo default
        ;;
    esac
    
}


install(){
    sudo apt install tmux -y
}

conf(){
    cd "$HOME"
    git clone git://github.com/gpakosz/.tmux.git
    ln -s -f .tmux/.tmux.conf
    cp .tmux/.tmux.conf.local .
}

echo "
\`设为prefix
vim ~/.tmux.conf
    set -g prefix2 \`                        
    bind \` send-prefix -2

tmux kill-server 或者               
"

tmux