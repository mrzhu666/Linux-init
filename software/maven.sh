#!/bin/bash

# 安装maven，需要先安装java

cd

wget https://archive.apache.org/dist/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.tar.gz && #tmp下载路径 

sudo tar xf apache-maven-*.tar.gz -C /opt &&

sudo ln -s /opt/apache-maven-3.8.1 /opt/maven &&


sudo bash -c 'cat <<EOL >> /etc/profile.d/maven.sh
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven
export PATH=\${M2_HOME}/bin:\${PATH}
EOL' &&


# 使脚本开机可执行
sudo chmod +x /etc/profile.d/maven.sh  &&

source /etc/profile.d/maven.sh  &&

mvn -version