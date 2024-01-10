#!/bin/bash
# 安装java

cd

# 下载java8 放到默认目录

sudo mkdir /usr/local/java  && 

# 解压
sudo tar -zxvf jdk-8u391-linux-x64.tar.gz -C /usr/local/java/ && 

sudo cat <<EOL >> ~/.profile  &&
JAVA_HOME=/usr/local/java/jdk1.8.0_391    
JRE_HOME=/usr/local/java/jdk1.8.0_391/jre     
CLASS_PATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar:\$JRE_HOME/lib
PATH=\$PATH:\$JAVA_HOME/bin:\$JRE_HOME/bin
export JAVA_HOME JRE_HOME CLASS_PATH PATH
EOL

source ~/.profile &&

java -version
