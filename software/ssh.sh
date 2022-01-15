#!/bin/bash
# ssh 生成密钥对，添加公钥到服务器文件
# 文件命名规则 客户端-服务端
# 复制/.ssh下的密钥到客户端


sudo apt update
sudo apt install openssh-server
sudo ps -e |grep ssh
sudo service ssh start

echo "建议文件命名规则：客户端-服务端"
echo -n '输入存储的文件名(id_rsa)>'
read -r ssh_file
if [ "$ssh_file" = "" ] 
then
    ssh_file="id_rsa"
fi

ssh_path="$HOME/.ssh/$ssh_file"
echo "保存路径 :$ssh_path"

echo "生成密钥对"
ssh-keygen -t rsa -f $ssh_path
echo "已添加公钥到authorized_keys"
cat "$ssh_path.pub" >> "$HOME/.ssh/authorized_keys" 
echo "在~/.ssh文件夹下复制密钥"
