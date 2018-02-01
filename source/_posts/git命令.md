---
title: git命令
date: 2017-02-13 11:52:11
tags:
---

# 配置
```
git --version  
git config --list
git config --global user.name "first name"
git config --global user.email "javalive09@163.com"  
git config color.ui true 
git config -e //demo/.git/config
git config -e --global // /home/peter/.gitconfig
git config -e --system  // /etc/gitconfig
ssh-keygen -t rsa -C "javalive09@163.com"
clip < ~/.ssh/id_rsa.pub
ssh -T git@github.com 
```
配置多个仓库
```
git touch ~/.ssh/config
```
```
#GitHub  
Host github.com  
  User git  
  HostName github.com  
  IdentityFile ~/.ssh/id_rsa  
  
#Maxthon   
Host mgit    
  User git      
  HostName mgit.maxthon.net  
  Port 22      
  IdentityFile ~/.ssh/id_rsa  
  
#Bitbucket  
Host bitbucket.org  
 User git  
 HostName bitbucket.org  
 IdentityFile ~/.ssh/id_rsa 
```

# 创建和提交
```
git init 
git add -A  //添加到缓存区
git commit -m "提交代码信息"  // 提交代码
git commit --amend // 修改提交信息
```

# 远程仓库
```
git remote -v
git remote add origin https://github.com/javalive09/CodeBag.git //添加远程仓库
git remote set-url origin https://github.com/javalive09/CodeBag.git //修改远程仓库url
git push origin --delete <branchName>  //删除远程分支
git push origin master //推送到远程仓库
git clone https://github.com/javalive09/CodeBag.git // 从远程仓库clone
git pull //从远程仓库拉取pull = fetch + merge
```

# 切换和还原
reset本质：将当前分支HEAD指针指向任意提交点
checkout本质：切换分支
``` 
git checkout develop -f //强制切换分支 （放弃本地修改切换)
git checkout HEAD /Users/peter/git/xui/XuiPSdk/libs/armeabi/libgetuiext.so  //还原单个文件到HEAD
git checkout abbdc /Users/peter/git/xui/XuiPSdk/libs/armeabi/libgetuiext.so  //还原单个文件到abbdc
git checkout <commit> <filepath>  //还原单个文件的某个版本
git checkout 45b92e3 /Users/peter/git/xui/CarClient/assets/video/video.mp4  
git reset --hard master  //还原整个项目到master
git reset --hard HEAD  //还原到HEAD
git reset –hard HEAD^  //还原到HEAD上次提交
```
## 查看仓库状态
```
git status
```

## 查看log
```
git log  
git log --graph 
git log --oneline
git log --oneline --graph 
```
#  tag 标签
```
git tag   
git tag -l  
git show 1.0  
git tag -a v1.0 -m "新加tag"  
git tag -d v1.0  //删除本地标签
git push origin --tags  
git push origin :refs/tags/<tag name>  //删除远程tag
```
## 重命名tag
```
git tag new old
git tag -d old
git push origin :refs/tags/old
git push --tags
```

# 分支
```
git branch  
git branch abc  
git checkout abc  
git push origin abc  
git push origin :abc //删除远程分支
git push origin --delete abc //删除远程分支
git checkout -b abc 
git branch -a   //列出所有分支（本地＋远程）
git checkout -b abc  //创建并且切换分支
git branch -d <branch name> //删除本地分支
git branch -m release_v1.24 release_v1.0.0 //修改分支名字
git remote prune origin //清除本地不存在的远程分支
```

# stash
stash 只和当前branch 绑定 所以如果你切换分支后不会再有之前分支保存的stash信息

## 保存
```
git stash save "peter"
```
## 使用
```
git stash 
git stash list
git stash apply stash@{2}//使用
git stash pop stash@{2}//弹出
```
## 清除
```
git stash clear
```


# 删除
```
git rm --cache path   //忽略已经提交的文件
git rm path  //删除版本库中的文件
git mv welcome.txt README  //修改版本库中的文件名
```
## 出现 modified: .idea/misc.xml 如何解决
修改ignore后输出如下命令：
```
git rm -rf .idea
git commit -m "delete .idea"
git push
```

# 恢复
```
git reflog show 
git branch recover_branch commitid
```

# 对比文件
```
git diff //对比（工作区和上次提交）的区别
git diff filename  //对比（工作区某个文件和上次提交的这个文件）的区别
git diff --cached  //对比（缓存区和上次提交）的区别
git diff –cached filename //对比（缓存区某个文件和上次提交的这个文件）的区别
git diff ffd98b291e0caa6c33575c1ef465eae661ce40c9 b8e7b00c02b95b320f14b625663fdecf2d63e74c   //对比（某两个版本）的区别
git diff ffd98b291e0caa6c33575c1ef465eae661ce40c9:filename b8e7b00c02b95b320f14b625663fdecf2d63e74c:filename  //对比（某两个版本文件）的区别
```

# 归档
```
git archive -o latest.zip HEAD  //基于最新提交建立归档文件latest.zip
git archive -o partial.tar HEAD src doc  //只将目录src和doc建立到归档partial.tar中
git archive --format=tar --prefix=1.0/ v1.0 | gzip > foo-1.0.tar.gz  //基于里程碑v1.0建立归档，并且为归档中文件添加目录前缀1.0
```

# patch
## 生成path
```
git format-patch -<n> <SHA1>
git format-patch -1 <sha>
```
## 应用patch
```
git am xxx.patch
```
## 错误处理
```
git apply --ignore-space-change --ignore-whitespace mychanges.patch
```
```
git apply --reject --whitespace=fix mychanges.patch
```

# 场景
## 1.合并多次提交为一次提交
```
git reset —soft <commitId>//要合并的起始提交点id
git commit -m "xxx"
```
## 2.剔除某次提交
### 没有push到服务器
#### 方法1：cherry-pick
```
git checkout <commitId-last>//要剔除提交点的上一个提交点id
git cherry-pick <commitId-next>//要剔除提交点的下一个提交点id
... //cherry-pick 其他提交点
git checkout master
git reset --hard <commitId-end>//最后一次cherry-pick的提交点
```
#### 方法2：rebase --onto(如果有冲突会打乱提交历史记录)
```
git rebase --onto <newbase>//要剔除提交点的上一个提交点id <since>//要剔除提交点的id <branch>
```
#### 方法3：rebase -i //推荐
```
git rebase -i <commitId-last> 
修改vim中弹出的信息，把要删除的 commitId 的pick 修改成 d 保存后退出
```
### push到服务器
```
git revert <commitId>
```

## 3.修改提交信息
### 修改最近一条消息
#### 没有push到服务器
```
git commit --amend
```
#### push到服务器
```
git commit --amend
git push -f origin master
```
### 修改以前的消息
```
git rebase -i <commitId-last> 
```
修改vim中弹出的信息，把pick 修改成 r 保存后退出
```
git push -f origin master
```

# submodule
## add  
```
git submodule add git@git.raventech.cn:H1S/common-proto.git /support/src/main/common-proto

git status//检测添加成功

    On branch master
    Changes to be committed:    
        new file:   .gitmodules
        new file:   common-proto
    表示添加成功
```

## modify
在submodule目录下可以进行所有的git子项目操作
```
git status
git add
git commit -m "abc"
git push
```
## update
```
git submodule foreach git pull//项目根目录下
或
git pull//子项目目录下
```

## clone
```
git clone git@git.raventech.cn:H1S/common-proto.git --recursive
或
git submodule init
git submodule update
```

## delete
```
1.
git rm --cached common-proto
rm -rf common-proto
rm .gitmodules

2.
vim .git/config //update config

3.
git commit -a -m 'remove common-proto submodule'
git push

```
## update url 
```
edit .gitmodules
git submodule sync
```


# subtree
假设，你要在各个项目里的/support/src/main/common-proto这个目录对 git@git.raventech.cn:H1S/common-proto.git这个项目做Subtree

1. add remote
```
git remote add proto git@git.raventech.cn:H1S/common-proto.git  

```

2. add subtree
```
cd 项目的路径  
git subtree add --prefix=用来放proto项目的相对路径 proto项目git地址 xxx分支  

git subtree add --prefix=/support/src/main/common-proto proto master
```

3. update
```
git subtree pull --prefix=/support/src/main/common-proto proto master  

```
4. push subtree commit
```
git subtree push --prefix=/support/src/main/common-proto proto hotfix/proto

在common-proto项目中合并hotfix/proto即可

```


# [速查表](https://git-scm.com/docs)

