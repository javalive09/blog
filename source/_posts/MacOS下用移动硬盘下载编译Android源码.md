---
title: MacOS下用移动硬盘下载编译Android源码
date: 2018-03-26 16:23:01
tags:
---

# 下载
## 制作一个大小写敏感的磁盘分区
磁盘工具 > 选中移动硬盘 > 文件 > 新建映像 > 空白映像 > 设置映像 > 存储 > 启动磁盘分区

## 下载android源码
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

//start download
repo sync
```

## 遇到的问题
```
warning: gpg (GnuPG) is not available. warning: Installing it is strongly encouraged.
```
解决：
```
brew install gpg
```
# 编译

## 环境
```
xcode-select --install
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
export PATH=/opt/local/bin:$PATH
POSIXLY_CORRECT=1 sudo port install gmake libsdl git gnupg
POSIXLY_CORRECT=1 sudo port install bison

```