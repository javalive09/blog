---
title: 在mac下使用hexo搭建github pages博客
date: 2014-02-07 18:41:21
tags:
---

# 安装homebrew
因为用的是mac环境，所以先安装Homebrew（这是mac下超强的包管理工具）。
homebrew官网：[http://brew.sh/index_zh-cn.html](http://brew.sh/index_zh-cn.html)

``` bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
卸载命令：[参考](http://superuser.com/questions/203707/how-to-uninstall-homebrew-mac-os-x-package-manager)
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"


```


# 安装git

``` bash
brew install git
```

# 安装nodejs

``` bash
brew install node
```

# 安装hexo
hexo 官网： [https://hexo.io/zh-cn/docs/](https://hexo.io/zh-cn/docs/)

``` bash
npm uninstall hexo-cli -g
npm install hexo-cli -g
```

# 初始化hexo

``` bash
hexo init <folder>
cd <folder>
npm install
```

# 配置站点_config.yml
```
# Site
title: 200code
subtitle:
description:
author: peter
language: zh-Hans
timezone: Asia/Shanghai
```

```
## Set per_page to 0 to disable pagination
per_page: 0
```

```
## Themes: https://hexo.io/themes/
theme: next
```

```
# speed up
html_minifier:
  enable: true
  exclude: 
 
css_minifier:
  enable: true
  exclude: 
    - '*.min.css'
 
js_minifier:
  enable: true
  mangle: true
  output:
  compress:
  exclude: 
    - '*.min.js'
 
image_minifier:
  enable: true
  interlaced: false
  multipass: false
  optimizationLevel: 2
  pngquant: false
  progressive: false
```

# 安装 NexT 
NexT 官网： [http://theme-next.iissnan.com/](http://theme-next.iissnan.com/)
```
cd your-hexo-site
git clone https://github.com/iissnan/hexo-theme-next themes/next
```
# 配置主题_config.yml
```
# When running the site in a subdirectory (e.g. domain.tld/blog), remove the leading slash (/archives -> archives)
menu:
  home: /
  #categories: /categories
  #about: /about
  archives: /archives
  #tags: /tags
  #sitemap: /sitemap.xml
  #commonweal: /404.html
```
```
# Sidebar Avatar
# in theme directory(source/images): /images/avatar.jpg
# in site  directory(source/uploads): /uploads/avatar.jpg
avatar: /uploads/avatar.jpg
```

```
# Social Links
# Key is the link label showing to end users.
# Value is the target link (E.g. GitHub: https://github.com/iissnan)
social:
  GitHub: https://github.com/javalive09
  #Wechat: http://7xoxmg.com1.z0.glb.clouddn.com/Wechat-peter.jpeg
  Stack Overflow: http://stackoverflow.com/users/4674672/peter-zhang
  工具网站: /about
```

```
# Automatically Excerpt. Not recommand.
# Please use <!-- more --> in the post to control excerpt accurately.
auto_excerpt:
  enable: true
  length: 150
```

# 添加多说评论
多说官网: [http://200code.duoshuo.com/admin/](http://200code.duoshuo.com/admin/)
1. 在主题_config.yml中加入
```
# Duoshuo ShortName
duoshuo_shortname: 200code
```
2. 还需要修改目录themes/next/layout/_partials/comments.swig下的comments.swig
在原文件中的最后一行 
```
{% endif %} 
```
之上加入代码如下:
```
<!-- 多说评论框 start -->
        <div class="ds-thread" data-thread-key="<%- page.path %>" data-title="<%- page.title %>" data-url="<%- page.permalink %>"></div>
<!-- 多说评论框 end -->
<!-- 多说公共JS代码 end -->
```

# 添加百度统计
百度统计官网：[http://tongji.baidu.com/web/18525219/homepage/index](http://tongji.baidu.com/web/18525219/homepage/index)
1. 在主题_config.yml中加入
```
baidu_analytics: your-analytics-id
```
2. 找到themes/hexo-theme-next-master/layout/_partials路径，新建baidu_analytics.swig文件，并将百度统计代码复制上去，然后便可以到百度统计查看是否代码安装成功了。
```
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?afd325d3333e718fc607b569c45d57a4";
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();
</script>
```
3. 添加百度统计的bug
很多文章的html代码中并未生成相应的百度统计js代码经仔细检查发现，这些文章都是有tags内容的。这说明生成云tag标签和添加百度统计js代码起了冲突。

# 加速
1. 使用[hexo-all-minifier](https://github.com/chenzhutian/hexo-all-minifier)
```
npm install hexo-all-minifier --save
```
然后在站点_config.yml 文件中加入如下代码:
```
html_minifier:
  enable: true
  exclude: 
 
css_minifier:
  enable: true
  exclude: 
    - '*.min.css'
 
js_minifier:
  enable: true
  mangle: true
  output:
  compress:
  exclude: 
    - '*.min.js'
 
image_minifier:
  enable: true
  interlaced: false
  multipass: false
  optimizationLevel: 2
  pngquant: false
  progressive: false
```



