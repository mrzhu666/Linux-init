#!/bin/bash

init()
{
    echo "Anaconda环境管理"
    echo "1.导出"
    echo "2.导入"
    read -r selecttion
    echo "输入环境名称："
    read -r env
    case $selecttion in
        1) 
        exportEnv;;
        2) 
        importEnv;;
        *) echo default
        ;;
    esac
}

# 导出环境
exportEnv(){
    # conda init bash
    # source activate  # 激活基础环境，脚本文件是隔离运行的
    conda activate "$env"
    conda env export > "$Linuxinit/out/$env".yaml
    pip freeze > "$Linuxinit/out/$env".txt

    echo ""
    echo "local usage:"
    echo "conda env create -f $env.yaml -n $env"
    echo "conda activate $env".
    echo "pip install -r $env.txt"
}

# 导入环境
importEnv(){
    source activate
    conda env create -f "./out/$env".yaml -n "$env"
    conda activate "$env"
    pip install -r "$Linuxinit/out/$env".txt
}

init
