#!/bin/bash
# vue 环境配置


# Ubuntu-18.04.6-live-server-amd64

# npm node 卸载旧版

# apt卸载
# sudo apt remove --purge npm
# sudo apt remove --purge nodejs
# sudo apt remove --purge nodejs-legacy
# sudo apt autoremove

#手动删除 
# rm -r /usr/local/bin/npm
# rm -r /usr/local/lib/node-moudels
# find / -name npm
# rm -r /tmp/npm* 

# 新版本安装 https://github.com/nodesource/distributions/blob/master/README.md
# Node.js v14.x:
cd "$HOME" || return
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs