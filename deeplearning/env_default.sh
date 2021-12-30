#!/bin/bash

# 环境常用库

echo "先启动对应环境再安装，conda activate env"

conda install numpy -y
conda install pandas -y
conda install jupyter -y
conda install scipy -y
conda install h5py -y
conda install tqdm -y
conda install matplotlib -y  # 绘图
conda install seaborn -y  # 绘图
conda install scikit-learn -y  # 清华源，关vpn下载
conda install pyyaml -y


proxychains pip install opencv-contrib-python  # 推荐，清华源
