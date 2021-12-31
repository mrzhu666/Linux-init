#!/bin/bash
# 采取非root

# 创建ShellClash软件默认目录
if [ ! -f ~/.local/share ]
then
    mkdir -p ~/.local/share
fi

export url='https://cdn.jsdelivr.net/gh/juewuy/ShellClash@master' && wget -q --no-check-certificate -O /tmp/install.sh $url/install.sh  && sh /tmp/install.sh && source /etc/profile &> /dev/null

# 非root用户安装，需读取环境变量
source ~/.bashrc &> /dev/null

echo "
提醒：设置定时更新任务
"