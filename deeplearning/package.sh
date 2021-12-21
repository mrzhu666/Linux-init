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


exportEnv(){
    source activate  # 激活基础环境，脚本文件是隔离运行的
    conda activate "$env"
    conda env export > "./out/$env".yaml
    pip freeze > "./out/$env".txt
}


importEnv(){
    source activate
    # conda env create -f "./out/$env".yaml -n "$env"
    conda activate "$env"
    pip install -r "./out/$env".txt
}

init
