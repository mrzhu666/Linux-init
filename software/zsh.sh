#!/bin/bash


cd 
sudo apt install zsh -y

# sudo proxychains apt update && sudo proxychains apt upgrade
# sudo apt-get install zsh-autosuggestions zsh-syntax-highlighting zsh-theme-powerlevel9k
# sudo apt install zsh-autosuggestions zsh-syntax-highlighting zsh-theme-powerlevel9k


chsh -s /usr/bin/zsh

# 根据历史命令，提示补全
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
# 检测命令语法
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
# 主题
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k

# vim ~/.zshrc
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# 原terminus改名为tabby

# 配置 linuxinit
# 变量都放这个文件不放bashrc
# if [ -f ~/.profile ]; then
#     . ~/.profile;
# fi


# 配置 conda,clash
# if [ -f ~/.bashrc ]; then
#     . ~/.bashrc > /dev/null 2>&1; # 输出重定向包括错误输出
# fi



