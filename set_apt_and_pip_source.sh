# set apt sources
sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
# set pip sources
pip config set global.index-url https://mirrors.aliyun.com./pypi/simple/
