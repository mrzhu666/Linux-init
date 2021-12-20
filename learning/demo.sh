#!/bin/bash
NUM=10
echo "输出数字$NUM"
echo $NUM

echo "这里的 # 不会被注释";echo '这里的 # 不会被注释';echo 这里的 \# 不会被注释
echo 这里的 # 会被注释


your_id=${USER}-on-${HOSTNAME}
echo "$your_id"