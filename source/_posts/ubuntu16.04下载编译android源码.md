---
title: ubunut16.04下载编译android源码
date: 2018-05-29 16:28:21
tags:
---

# 下载
[android细分版本号列表](https://source.android.com/setup/start/build-numbers)

## 从官网下载android源码
[官方文档](https://source.android.com/source/downloading)
```
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

mkdir WORKING_DIRECTORY
cd WORKING_DIRECTORY
git config --global user.name "Your Name"
git config --global user.email "you@example.com"

repo init -u https://android.googlesource.com/platform/manifest
repo init -u https://android.googlesource.com/platform/manifest -b android-4.0.1_r1

repo sync //start download
```

## 使用清华源下载源码

### 下载repo
```
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
```

### 下载
```
export HTTP_PROXY=
export HTTPS_PROXY=
export REPO_URL='https://mirrors.tuna.tsinghua.edu.cn/git/git-repo/'
repo init -u https://aosp.tuna.tsinghua.edu.cn/platform/manifest -b android-8.1.0_r10 // -b 后面为选择的一个[android细分版本号列表](https://source.android.com/setup/start/build-numbers) 中的一个分支号
repo sync // start download
```

# 编译

## 安装基本的依赖软件
因为用的是mac环境，所以先安装Homebrew（这是mac下超强的包管理工具）。
homebrew官网：[http://brew.sh/index_zh-cn.html](http://brew.sh/index_zh-cn.html)

``` 
sudo apt-get install -y git flex bison gperf build-essential libncurses5-dev:i386 
sudo apt-get install libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-dev g++-multilib
sudo apt-get install tofrodos python-markdown libxml2-utils xsltproc zlib1g-dev:i386
sudo apt-get install dpkg-dev libsdl1.2-dev libesd0-dev
sudo apt-get install git-core gnupg flex bison gperf build-essential 
sudo apt-get install zip curl zlib1g-dev gcc-multilib g++-multilib
sudo apt-get install libc6-dev-i386
sudo apt-get install lib32ncurses5-dev x11proto-core-dev libx11-dev
sudo apt-get install lib32z-dev ccache
sudo apt-get install libgl1-mesa-dev libxml2-utils xsltproc unzip m4
sudo apt-get install gawk

```
## 根据自己所下载的Android代码的版本，选择安装所需的jdk版本

### Android版本是7.1.2，所需的JDK版本是openjdk-8-jdk。Ubuntu默认自带的openjdk-8-jdk的安装源，可以直接安装，使用下面的命令安装即可

```
sudo apt-get update
sudo apt-get install openjdk-8-jdk
```

### 如果使用的OpenJDK7，由于Ubuntu 16.04没有OpenJDK7的源，因此要先添加源，然后在安装OpenJDK7，按下面的命令操作即可
```
sudo add-apt-repository ppa:openjdk-r/ppa 
sudo apt-get update
sudo apt-get install openjdk-7-jdk 

```

### 安装完以后，执行下面的命令添加JAVA_HOME相关配置
```
sudo gedit /etc/profile

// 在打开的profile文件的末尾添加下面的内容：
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export JRE_HOME=${JAVA_HOME}/jre 
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib 
export PATH=${JAVA_HOME}/bin:$PATH

// 修改了/etc/profile文件需要重启才能生效，但使用下面命令可以在不重启的情况下在当前bash环境生效：
source /etc/profile

// 最后，检查一下jdk是否安装成功：
java -version

```

## 切换java版本（方法一）
默认使用jdk 8 当要用到jdk7时在终端执行：（只对当前终端有效）
```
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export JRE_HOME=${JAVA_HOME}/jre 
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib 
export PATH=${JAVA_HOME}/bin:$PATH

```
## 切换java版本（方法二）
```
sudo update-alternatives --config java  
```

## 开始编译
```
source build/envsetup.sh
make -j4
```

# 查看Android源码版本
```
build\core\version_defaults.mk //搜索该文件中的 PLATFORM_VERSION值
```

