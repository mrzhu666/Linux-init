#!/bin/bash

server="127.0.0.1"
port="7890"

wget -e http_proxy="$server:$port" google.com -O out/index.html