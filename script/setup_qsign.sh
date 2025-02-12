if uname -a | grep -q "Android"; then
    echo "当前会话不处于proot，请在proot容器内运行该脚本"
    echo "请联系作者"
    exit 1
else
    echo "您的会话正处于 proot 容器内"
fi

apt install unzip curl -y


# 安装qsign
if [ -f "/root/unidbg-fetch-qsign-1.1.9/txlib/8.9.68/config.json" ]; then
    echo qsign已安装
else
    cd /root
    rm -rf unidbg-fetch-qsign*
    curl -o unidbg-fetch-qsign.3.zip https://ghproxy.com/https://github.com/fuqiuluo/unidbg-fetch-qsign/releases/download/1.1.9/unidbg-fetch-qsign.3.zip
    unzip unidbg-fetch-qsign.3.zip
    unzip unidbg-fetch-qsign-1.1.9.zip
    rm -f *.zip
fi
