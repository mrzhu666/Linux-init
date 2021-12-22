#!/bin/bash
# 安装配置，安装配置
current_path=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)


echo "alias linuxinit=\"bash $current_path/init.sh\"" >> $HOME/.bashrc
echo "export Linuxinit=\"$current_path\"" >> $HOME/.bashrc

