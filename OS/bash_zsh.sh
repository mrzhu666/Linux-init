#!/bin/bash

# zsh与bash共用环境变量

# 自定义配置放到~/.profile

echo "source ~/.profile" >> ~/.bash_profile
echo "[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'" >> ~/.zshrc

