---
title: develop工具
date: 2017-08-28 22:01:28
tags:
---

# Homebrew
[官网](https://brew.sh/)
## install 
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

```
# wget
[官网](http://www.gnu.org/software/wget/)
## install
```
brew install wget
```
# wireshark
[官网](https://www.wireshark.org/)
## install
```
brew install wireshark
```
## 开启
```
sudo wireshark
```
## 信息过滤
```
//or
udp.port == 53 || tcp.port == 53

//and
ip.addr == 192.168.68.17 and udp.port == 1988

//not
!(udp.port == 53)
```


# pip
[官网](https://github.com/pypa/pip)
## install
```
sudo easy_install pip
```

# pyspider
[官网](http://www.pyspider.cn/book/pyspider/pyspider-Quickstart-2.html)
install 
```
pip install pyspider --user
pip uninstall pyspider
sudo pip install pyspider
```

# gitk
[gitk说明](https://git-scm.com/book/zh/v2/Appendix-A%3A-%E5%85%B6%E5%AE%83%E7%8E%AF%E5%A2%83%E4%B8%AD%E7%9A%84-Git-%E5%9B%BE%E5%BD%A2%E7%95%8C%E9%9D%A2)

install
```
brew update
brew install git
```
## 当前分支的节点图
```
gitk
```
## 所有分支的节点图
```
gitk --all
```

# socat
[官网](http://www.dest-unreach.org/socat/)

install
```
brew update
brew install socat
```

## 发送UDP广播
```
//发送hello 广播给 1988端口
echo -n "hello" | socat - udp-datagram:255.255.255.255:1988,broadcast
```


