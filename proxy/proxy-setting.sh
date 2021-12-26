#!/bin/bash
# 部分软件代理设置

# 服务器代理127.0.0.1
# 虚拟机代理为主机ip
# 混合代理设为socks5
# server="192.168.101.53"
server="127.0.0.1"
port="7890"


# git代理
git config --global http.proxy "socks5://$server:$port" && git config --global https.proxy "socks5://$server:$port"

# proxychains
echo "
# sudo vim /etc/proxychains.conf
# socks5 127.0.0.1 7890
# find /usr/lib/ -name libproxychains.so.3 -print命令输出路径，再将/usr/bin/proxychains下的export LD_PRELOAD=libproxychains.so.3改为export LD_PRELOAD=刚刚获得的路径
"

# npm代理
npm config set proxy "http://$server:$port"
npm config set https-proxy "http://$server:$port"

