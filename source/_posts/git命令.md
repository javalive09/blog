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
git remote add origin https://github.com/javalive09/CodeBag.git
git push origin --delete <branchName>  //删除远程仓库
git push origin master //推送到远程仓库
git clone https://github.com/javalive09/CodeBag.git // 从远程仓库clone
git pull //从远程仓库拉取pull = fetch + merge
```

# 切换和还原
``` 
git checkout develop -f //强制切换分支 （放弃本地修改切换)
git checkout HEAD /Users/peter/git/xui/XuiPSdk/libs/armeabi/libgetuiext.so  //还原单个文件到HEAD
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
git tag -d v1.0  
git push origin --tags  
git push origin :refs/tags/<tag name>  
```

# 分支
```
git branch  
git branch abc  
git checkout abc  
git push origin abc  
git push origin :abc 
git checkout -b abc 
git branch -a   //列出所有分支（本地＋远程）
git checkout -b abc  //创建并且切换分支
git branch -d <branch name> //删除本地分支
git branch -m release_v1.24 release_v1.0.0 //修改分支名字
```

# stash
```
git stash 
git stash list
git stash apply stash@{2}
```

# 删除
```
git rm --cache path   //忽略已经提交的文件
git rm path  //删除版本库中的文件
git mv welcome.txt README  //修改版本库中的文件名
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

