#!/bin/bash

server="127.0.0.1"
port="7890"

echo -e "\e[1;34m代理端口测试\e[0m"
echo "-------------------------------------------------------------"
wget -e http_proxy="$server:$port" www.google.com -O $Linuxinit/out/index.html
echo "-------------------------------------------------------------"
echo -e "\e[1;34mproxychains测试\e[0m"
echo "-------------------------------------------------------------"
proxychains wget www.google.com -O $Linuxinit/out/index.html