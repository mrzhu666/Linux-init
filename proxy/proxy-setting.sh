#!/bin/bash
# 代理设置
# 部分软件代理设置

# 服务器代理127.0.0.1
# 虚拟机代理为主机ip
# 混合代理设为socks5
# server="192.168.101.53"
server="127.0.0.1"
port="7890"

Acquire::http::proxy "http://127.0.0.1:7890/";
Acquire::https::proxy "https://127.0.0.1:7890/";
Acquire::ftp::proxy "ftp://127.0.0.1:7890/";
Acquire::socks::proxy "socks://127.0.0.1:7890/";

init(){
    echo "-------------------------------------------------------------"
    echo "代理设置"
    echo "1.全部设置"
    echo "2.git"
    echo "3.proxychains"
    echo "4.npm"
    echo -n "请输入对应数字>"
    read -r option
    case $option in
        1) 
            git_proxy
            proxychains_proxy
            npm_proxy
        ;;
        2)
            git_proxy
        ;;
        3)
            proxychains_proxy
        ;;
        4)
            npm_proxy
        ;;
        *) echo default
        ;;
    esac
}




git_proxy(){
    # git代理
    git config --global http.proxy "socks5://$server:$port" && git config --global https.proxy "socks5://$server:$port"
}


proxychains_proxy(){
    # proxychains
    echo "
    # find /usr/lib/ -name libproxychains.so.3 -print命令输出路径，再将/usr/bin/proxychains下的export LD_PRELOAD=libproxychains.so.3改为export LD_PRELOAD=刚刚获得的路径
    "
    sudo python3 $Linuxinit/script-python/proxychains.py -server $server -port $port
}

npm_proxy(){
    # npm代理
    npm config set proxy "http://$server:$port"
    npm config set https-proxy "http://$server:$port"
}

init