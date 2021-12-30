import argparse

# https://vra.github.io/2017/12/02/argparse-usage/
parser = argparse.ArgumentParser()
parser.add_argument('-server',type=str,required=True,default='127.0.0.1')
parser.add_argument('-port',type=str,required=True,default='7890')

# sudo python 默认调用 /usr/bin/python python2.7
# 调用 sudo python3
def proxychains_conf(server,port):
    """在文件底部，添加/修改 socks ip地址和端口
    """
    file='/etc/proxychains.conf'
    file_data = ""
    flag=False  # 是否修改标志

    with open(file, "r", encoding="utf-8") as f:
        for line in f.readlines():
            line_split=line.split(' ')
            if(line[0]!='#'     and line_split[0]=='socks5'):
                line_split[1]=server
                line_split[2]=port+'\n'
                flag=True
            file_data+=' '.join(line_split)
        if(not flag):
            file_data+='socks5 '+server+' '+port

    with open(file,"w",encoding="utf-8") as f:
        f.write(file_data)


if __name__=='__main__':
    args=parser.parse_args()
    proxychains_conf(args.server,args.port)
