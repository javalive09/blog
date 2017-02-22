---
title: git分享
date: 2017-02-13 10:32:38
tags:
---


# git命令
* [查看](http://200code.com/2017/02/13/git%E5%91%BD%E4%BB%A4/)

# 常用命令
```
git clone //克隆仓库

git init  //创建仓库

git add -A  //添加到缓存区

git commit -m "提交代码信息"

git commit --amend // 修改提交信息

git checkout abc //切换分支

git branch a //创建分支

git checkout -b abc //创建分支并切换

git reset --hard HEAD  //还原到HEAD

git diff //对比（工作区和上次提交）的区别

git status //状态

git log  // log

git pull //从远程仓库拉取pull = fetch + merge
```

------

# 一些使用场景
## 合并和冲突解决
```
      D---E test  
     /  
A---B---C---F master  
```
### 在master中执行 merge
```
      D--------E  
     /          \  
A---B---C---F----G   test, master
```
### 在master中执行 rebase
```
A---B---D---E---C'---F'   test, master
```

### 在master中执行 cherry-pick
```
A---B---C---F---D'----E'  master
```

### 三方合并(Three-way merge)
```
   |------102
   |
100|------101
```
1. 以父节点做为判断标准

2. 101，102 有不同的文件的改变，留下这些改变。

3. 101，102 有相同的文件的改变，

1）如果改变相同，留下这些改变。

2）如果改变不同，提示冲突让用户去解决。

## 回滚
### 没有push到remote 仓库的回滚
```
git reset --hard commitid
```
### 已经push到remote仓库的回滚
```
git revert commitid 
```
### 定位并回滚到引入bug的版本
```
git bisect start  
git bisect bad  
git bisect good commtid  
git bisect bad  
...  
git bisect good  
git bisect reset
```
## 当前工作被打断
### 保存工作进度
```
git stash  
git stash list  
git stash apply stash@{2}  
```
### 补充提交
```
git commit --amend 
```
## 挽救误操作
分支丢失
```
git reflog show
```

# .git文件夹结构及git内部原理
## git-stage 暂存区
![](/uploads/git-stage.jpg)

## git-checkout 检出
![](/uploads/git-checkout.jpg)

## git-diff 对比差异
![](/uploads/git-diff.jpg)

## git-reset 重置
![](/uploads/git-reset.jpg)

## git-repos-detail 版本库
![](/uploads/git-repos-detail.jpg)

## .git 文件夹结构
HEAD
config
objects
logs
refs
index

------

# 远程仓库的使用及github

------

# 使用github搭建免费博客
