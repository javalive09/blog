---
title: Develop工具
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

# valgrind
[官网](http://valgrind.org/)
调试C代码
使用 Valgrind 十分简单，只要执行valgrind theprogram，它就会运行你的程序，随后打印出你的程序运行时出现的所有错误。


安装
```
brew install --HEAD valgrind

```

使用
```
valgrind ./ex11
```

# dex2jar
[官网](https://github.com/pxb1988/dex2jar)
将dex文件转换成Jar包或将apk文件转成jar文件
```
// 将 dex 文件转成 jar 文件
d2j-dex2jar <dex_name> -o <jar_name>
//将apk文件转成jar文件
sh d2j-dex2jar.sh -f <apk_name>
```

# apktool
[官网](https://ibotpeaches.github.io/Apktool/install/)
```
apktool d -f c:\test.apk -o c:\test
```

# JD-GUI
[官网](http://jd.benow.ca/)
将Jar包文件反编译成java源文件
[参考文章](https://www.jianshu.com/p/2bbe7112f940)

# sublime 
[官网](https://www.sublimetext.com)
一个好用的文本编辑器。查看log，markdown比较方便

## 在线安装插件
通过 Package Control 进行在线安装

"View" > "Show Console" 

粘贴如下代码：[以官网为准](https://packagecontrol.io/installation#st3)
```
import urllib.request,os,hashlib; h = '6f4c264a24d933ce70df5dedcf1dcaee' + 'ebe013ee18cced0ef93d5f746d80ef60'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)

```
重启Sublime Text即可。

## 安装markdown插件OmniMarkupPreviewer
preferences > PackageControl > "install Packages" > OmniMarkupPreviewer > 重启即可
使用：右键点击选择preview markdown

## 安装log查看插件
preferences > PackageControl > "install Packages" > "Filter lines" > 重启即可
使用：toolbar : edit > "code Folding" > "Fold with string"


# OmniDiskSweeper
[官网](https://www.omnigroup.com/more)
一个免费的mac磁盘清理工具


# leakcanary
[官网](https://github.com/square/leakcanary)
android监听内存泄漏工具

## 依赖
```
dependencies {
  debugImplementation 'com.squareup.leakcanary:leakcanary-android:1.6.2'
  releaseImplementation 'com.squareup.leakcanary:leakcanary-android-no-op:1.6.2'
  // Optional, if you use support library fragments:
  debugImplementation 'com.squareup.leakcanary:leakcanary-support-fragment:1.6.2'
}
```

## 监听activity泄漏
```
public class MyApplication extends Application {

  @Override 
  public void onCreate() {
    super.onCreate();
    LeakCanary.install(this);
  }
}
```

## 监听其他对象泄漏
```
public class MyApplication extends Application {
    private static RefWatcher sRefWatcher;


    @Override
    public void onCreate() {
        super.onCreate();
        sRefWatcher = LeakCanary.install(this);
    }

    public static RefWatcher getRefWatcher() {
        return sRefWatcher;
    }
}

//在对象肯被回收处添加,如fragment中的onDestory():
MyApplication.getRefWatcher().watch(sLeaky);

```


# 流程图
[ProcessOn](https://www.processon.com/diagrams)
