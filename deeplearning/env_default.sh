#!/bin/bash

# 环境常用库

echo "先启动对应环境再安装，conda activate env"

# 为什么不用source activate

proxychains conda install numpy -y
proxychains conda install pandas -y
proxychains conda install jupyter -y
proxychains conda install scipy -y
proxychains conda install h5py -y
proxychains conda install tqdm -y
proxychains conda install matplotlib -y  
proxychains conda install seaborn -y  
proxychains conda install scikit-learn -y  # 清华源，关vpn下载
proxychains conda install pyyaml -y


proxychains pip install opencv-contrib-python  # 推荐，清华源
