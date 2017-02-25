---
title: .gitignore模版
date: 2016-02-17 09:47:56
tags:
---

[github 模板集合](https://github.com/github/gitignore)

文件 .gitignore 的格式规范如下：

* 所有空行或者以注释符号 ＃ 开头的行都会被 Git 忽略。
* 可以使用标准的 glob 模式匹配。
* 匹配模式最后跟反斜杠（/）说明要忽略的是目录。
* 要忽略指定模式以外的文件或目录，可以在模式前加上惊叹号（!）取反。

所谓的 glob 模式是指 shell 所使用的简化了的正则表达式。星号（*）匹配零个或多个任意字符；[abc] 匹配任何一个列在方括号中的字符（这个例子要么匹配一个 a，要么匹配一个 b，要么匹配一个 c）；问号（?）只匹配一个任意字符；如果在方括号中使用短划线分隔两个字符，表示所有在这两个字符范围内的都可以匹配（比如 [0-9] 表示匹配所有 0 到 9 的数字）。

```
#built application files
*.apk
*.ap_

# files for the dex VM
*.dex

# Java class files
*.class

# generated files
bin/
gen/
out/
build/
#  build/  忽略所有的 build/ 目录下文件
#  /build  只忽略此目录下build文件，子目录的build不忽略

# Local configuration file (sdk path, etc)
local.properties

# Windows thumbnail db
Thumbs.db

# OSX files
.DS_Store

# Eclipse project files
.classpath
.project

# Android Studio
*.iml
.idea

# Local IDEA workspace
.idea/workspace.xml

# Gradle cache
.gradle

#NDK
obj/

.settings/
*.properties

```