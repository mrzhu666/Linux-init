import argparse
import os

# sudo python 默认调用 /usr/bin/python python2.7
# 调用 sudo python3
def zsh_conf():
    """在文件底部，添加/修改 socks ip地址和端口
    """
    result=os.popen('echo "$HOME"')
    path=result.read().strip()
    file=path+'/.zshrc'
    file_data = ""
    if(os.path.isfile(file)):
        print('.zshrc文件存在')
    else:
        print('.zshrc文件不存在')
        print('创建.zshrc文件')
        f=open(file,'w')
        f.close()
    file_add=[
        '\n',
        'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh',
        'source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh',
        'source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme',
        '\n',
        'if [ -f ~/.profile ]; then',
        '    . ~/.profile;',
        'fi',
        '\n',
        'if [ -f ~/.bashrc ]; then',
        '    . ~/.bashrc > /dev/null 2>&1;',
        'fi']
    with open(file, "r", encoding="utf-8") as f:
        file_data=f.read()
        file_data="\n".join(file_add)

    with open(file,"w",encoding="utf-8") as f:
        f.write(file_data)


if __name__=='__main__':
    zsh_conf()
