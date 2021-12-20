#!/bin/bash
# 部分软件代理设置

# 服务器代理127.0.0.1
# 虚拟机代理为主机ip
# 混合代理设为socks5
server="192.168.10.133"
port="7890"


# git代理
git config --global http.proxy "socks5://$server:$port" && git config --global https.proxy "socks5://$server:$port"
# proxychains
# sudo vim /etc/proxychains.conf
# npm代理
npm config set proxy "http://$server:$port"
npm config set https-proxy "http://$server:$port"