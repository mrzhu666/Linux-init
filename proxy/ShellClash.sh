#!/bin/bash

if [ ! -f ~/.local/share ]
then
    mkdir -p ~/.local/share
fi

export url='https://cdn.jsdelivr.net/gh/juewuy/ShellClash@master' && wget -q --no-check-certificate -O /tmp/install.sh $url/install.sh  && sh /tmp/install.sh && source /etc/profile &> /dev/null

# 非root用户安装，需读取环境变量
source ~/.bashrc &> /dev/null