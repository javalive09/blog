---
title: adb调试
date: 2019-04-18 19:21:00
tags:
---

# 同步代码调试系统应用
```
adb root && adb remount && adb sync system && adb reboot
```

# 安装程序
## 重新安装
```
adb install com.xx.xx 
```
## 重新安装，保持原程序数据
```
adb install -r com.xx.xx 
```
## 安装到SD卡中
```
adb install -s com.xx.xx 
```

# 卸载程序
## 完全卸载
```
adb uninstall com.xx.xx
```
## 卸载，保留缓存
```
adb uninstall －k com.xx.xxx
```

# log
## 过滤
### 字符串xxx
```
adb logcat | grep xxx
```
### error级
```
adb logcat | grep "^E.123" //tag 123
```
### warning级
```
adb logcat | grep "^W.123" //tag 123
```
### 所有
```
adb logcat | grep "^..123" //tag 123
```
## 清除
```
adb logcat -c && adb logcat
```
## 保存到电脑
```
adb logcat > log.txt 
```
## 保存到设备中
```
logcat -v threadtime --pid 17393 -f /storage/emulated/0/.peter/logs/codebag/codebag.log -r 20480 -n 3 -s *:I
//官方文档：https://developer.android.com/studio/command-line/logcat.html#filteringOutput
```

# kill app
```
am force-stop com.xx.xx 
```

# 列出所有安装包
```
pm list package
```

# 修改host
```
//android
adb shell  
su  
vi /etc/hosts

//mac
vi /private/etc/hosts
```

# 获取app启动时间

```
adb shell am start -W -n packagename/packageName.MainActivity

ThisTime: 355   // 调用有界面 Activity 的 onCreate、onResume。表示一连串启动 Activity 的最后一个 Activity 的启动耗时；表示新应用启动的耗时，包括新进程的启动和 Activity 的启动，但不包括前一个应用 Activity pause 的耗时。
TotalTime: 355  // 启动进程、调用无界面 Activity 的 onCreate() 等、 pause/finish 无界面的 Activity。 
WaitTime: 365  //AMS 创建 ActivityRecord 记录块和选择合理的 Task、将当前Resume 的 Activity 进行 pause。 就是总的耗时，包括前一个应用 Activity pause 的时间和新应用启动的时间；开发者一般只要关心 TotalTime 即可，这个时间才是自己应用真正启动的耗时。 

```

# 打电话
拨打10086

```
adb shell am start -a android.intent.action.CALL -d tel:10086

```

# 打开网页
打开http://www.baidu.com

```
adb shell am start -a android.intent.action.VIEW -d http://www.baidu.com
```

# 打开设置
```
adb shell am start -n com.android.settings/com.android.settings.Settings
am start -a android.settings.SETTINGS

```

# 打开原生launcher
```
adb shell am start -n com.android.launcher3/com.android.launcher3.Launcher
```

# 打开入口程序列表
```
adb shell am start -a "android.intent.action.MAIN"  
```

# 获取分辨率
```
adb shell wm size
```

# 设置分辨率
```
adb shell wm size 540x960
```

# 还原分辨率
```
adb shell wm size reset
```

# 获取屏幕密度
```
adb shell wm density  
```

# 设置屏幕密度
```
adb shell wm density 320  
```

# 还原屏幕密度
```
adb shell wm density reset  
```

# 删除wif配置

```
adb shell rm /data/misc/wifi/*.conf
adb reboot
```

# 打开wifi开关
```
svc wifi enable
```

# 关闭wifi开关
```
svc wifi disable
```

# 查看IP
```
adb shell ifconfig wlan0

```

# “Read-only file system”解决办法
```
adb remount
```

# 修改系统时间
```
adb shell toybox date

adb shell toolbox date

//use YYYYMMDD.HHmmss format:
adb shell "su 0 toolbox date -s 20161231.235959"

//MMDDhhmm[[CC]YY][.ss] format:
adb shell "su 0 toybox date 123123592016.59"
```

# 调试系统settings

## 关闭网络探测

```
settings put global captive_portal_mode 0 
// 0 disable 
// 1 prompt 
// 2 disconnect 
```

## 获取蓝牙地址
```
adb shell settings get secure bluetooth_address
```

## 查询端口所在进程
```
sudo netstat -tulpn | grep :8000 
```

## kill pid
```
kill -9 <进程 pid>
```

## 查看最大线程数
```
cat /proc/sys/kernel/threads-max  
```

## 查看系统各个限制的数值
```
ulimit -a
```

# 录制gif
android 4.4 以上

## 录制
```
adb shell screenrecord  --bit-rate 2000000 --size 480x800 /sdcard/test.mp4  
```

## 导出
```
adb pull /sdcard/test.mp4 ~/Desktop/test.mp4  
```

# 修改文件所在组
```
sudo chown -R $USER /usr/local 
```
```
sudo chown -R $peter /usr/local
```

# 导出anr文件
anr 数据保存位置：/data/anr/traces.txt  
```
adb pull /data/anr/traces.txt ~/Desktop/    

```

# 广播

```
am broadcast -a duershow.settings.ota.findnewversion

adb shell am broadcast -a com.android.test --es test_string "this is test string" --ei test_int 100 --ez test_boolean true

am broadcast -a com.baidu.duershow.action.SEND_LAUNCHER_VER_INFO --es launcherVersion "1.0" --es DCSVersion "2.0" --es VoiceVersion "3.0"

```

# adb参数

## Intent参数

| 参数        | 意义   |  解释  |
| --------   | :-----  | :----  |
| -a         | &lt;ACTION&gt; |   指定Intent action  实现原理Intent.setAction()    |
| -n         | &lt;COMPONENT&gt;   |   指定组件名  格式为{包名}/.{主Activity名}，实现原理Intent.setComponent(） |
| -d         | &lt;DATA_URI&gt;    |  指定Intent data URI  |
| -t         | &lt;MIME_TYPE&gt;   |  指定Intent MIME Type |
| -c         | &lt;CATEGORY&gt;    |  指定Intent category  实现原理Intent.addCategory()|
| -p         | &lt;PACKAGE&gt;     |  指定包名	  实现原理Intent.setPackage()  |
| -f         | &lt;FLAGS&gt;       |  添加flags 实现原理Intent.setFlags(int )|

```
am start -a android.intent.action.VIEW
am start -n com.gityuan.app/.MainActivity
am start -d content://contacts/people/1
am start -t image/png
am start -c android.intent.category.APP_CONTACTS
```

## Extra参数
### 基本类型

|参数	     | --e/--es   | --esn	    | --ez	| --ei	| --el	| --ef	| --eu	| --ecn |
| :------:  | :-----:  | :-----:  | :----:  | :----:  | :----:  | :----:  | :----: | :----: |
| 类型	     |String   | (String)null  | boolean  |	int	|long	|float	|uri	|component|


```
am start -n com.javalive09.app/.MainActivity --es website 200code.com
// 等价于Intent.putExtra(“website”, 200code.com”);
```


### 数组类型

| 参数	|-esa |	-eia|	-ela|	-efa|
| :------:  | :-----:  | :-----:  |:-----: | :-----:|
|数组类型	|String[]	|int[]	|long[]	| float[] |

```
am start -n com.javalive09.app/.MainActivity --ela weekday 1,2,3,4,5
// 等价于Intent.putExtra(“weekday”, new int[]{1,2,3,4,5});

```


### ArrayList类型

|参数	|-esal	|-eial	|-elal	|-efal|
| :------:  | :-----:  | :-----:  |:-----: | :-----:|
|List类型	|String	|int	|long	|float |

```
am start -n com.javalive09.app/.MainActivity --efal nums 1.2,2.2
// 等价于先构造ArrayList变量，再通过putExtra放入第二个参数

```


### Flag参数
-f <FLAGS>，是通过Intent.setFlags(int )方法，来设置Intent的flags

```
[--grant-read-uri-permission] [--grant-write-uri-permission]
[--grant-persistable-uri-permission] [--grant-prefix-uri-permission]
[--debug-log-resolution]
[--exclude-stopped-packages] [--include-stopped-packages]
[--activity-brought-to-front] [--activity-clear-top]
[--activity-clear-when-task-reset] [--activity-exclude-from-recents]
[--activity-launched-from-history] [--activity-multiple-task]
[--activity-no-animation] [--activity-no-history]
[--activity-no-user-action] [--activity-previous-is-top]
[--activity-reorder-to-front] [--activity-reset-task-if-needed]
[--activity-single-top] [--activity-clear-task]
[--activity-task-on-home]
[--receiver-registered-only] [--receiver-replace-pending]

//发送action=”broadcast.demo”的广播，并且对于forceStopPackage()的应用不允许接收该广播
am broadcast -a broadcast.demo --exclude-stopped-packages
```

------

# debug

## 启动时等待调试
set-debug-app 设置调试
-w: wait

```
adb shell am set-debug-app -w com.peter.util.searcher
```

## 持续调试
--persistent: 每次启动都调试

```
adb shell am set-debug-app -w --persistent com.peter.util.searcher
```

## 清除持续调试
```
adb shell am clear-debug-app
```

# 查询系统版本
```
adb shell getprop ro.build.version.release // 6.0.1
adb shell getprop ro.build.version.sdk // 23
```

# 设置系统属性
```
adb shell setprop ro.duershow.ota.productid 1094
adb shell setprop ro.duershow.ota.productkey ugMgwCwntaXbiKb5ySE1xQ==

```

# 修改系统settings属性
修改对应这几个文件：
```
/data/system/users/0/settings_global.xml
adb shell settings put global <key> <value>
adb shell settings get global <key> <default value>

/data/system/users/0/settings_secure.xml
adb shell settings put secure <key> <value>
adb shell settings get secure <key> <default value>

/data/system/users/0/settings_system.xml
adb shell settings put system <key> <value>
adb shell settings get system <key> <default value>
```

# 获取默认输入法
```
adb shell settings get secure default_input_method

```
# 设置默认输入法
```
adb shell settings put secure default_input_method com.sohu.inputmethod.sogouoem/.SogouIME

```

# 获取亮度是否为自动获取
```
adb shell settings get system screen_brightness_mode
```

# 获取当前亮度值
```
adb shell settings get system screen_brightness
```

# 设置当前亮度值
```
adb shell settings put system screen_brightness 150
```

# 获取屏幕休眠时间
```
adb shell settings get system screen_off_timeout
```

# 更改休眠时间，10分钟
```
adb shell settings put system screen_off_timeout 600000
```

# 获取日期时间选项中通过网络获取时间的状态，1为允许、0为不允许
```
adb shell settings get global auto_time
```

# dumpsys
[官放文档](https://developer.android.com/studio/command-line/dumpsys)
[参考文章](http://gityuan.com/2016/05/14/dumpsys-command/)

1.列出所支持的dump
```
adb shell service list
adb shell dumpsys -l

```

2.查看和power manager service相关的信息，比如屏幕锁信息
```
adb shell dumpsys power
```

3.查询AMS服务相关信息, 比如查看activity栈信息
```
adb shell dumpsys activity
adb shell dumpsys activity activities
```

4.查询CPU情况
```
dumpsys cpuinfo
```

5.查询WMS服务相关信息
```
dumpsys window
```

6.查询内存情况
[官方文档](https://developer.android.com/studio/profile/investigate-ram?hl=zh-cn)
```
dumpsys meminfo

dumpsys meminfo packageName // 查看某个应用的内存占用

```

7.查询PMS服务相关信息，比如查询apk地址
```
adb shell dumpsys package dexopt
```

8.查询gpu每帧处理时间
```
adb shell dumpsys gfxinfo com.baidu.launcher

```

9.查看adj
```
adb shell dumpsys meminfo | grep "duershowsettings"  // 查询pid
cat proc/<pid>/oom_adj 

```

# 调试contentprovider

```
usage: adb shell content [subcommand] [options]

usage: adb shell content insert --uri <URI> [--user <USER_ID>] --bind <BINDING> [--bind <BINDING>...]
  <URI> a content provider URI.
  <BINDING> binds a typed value to a column and is formatted:
  <COLUMN_NAME>:<TYPE>:<COLUMN_VALUE> where:
  <TYPE> specifies data type such as:
  b - boolean, s - string, i - integer, l - long, f - float, d - double
  Note: Omit the value for passing an empty string, e.g column:s:
  Example:
  # Add "new_setting" secure setting with value "new_value".
  adb shell content insert --uri content://settings/secure --bind name:s:new_setting --bind value:s:new_value

usage: adb shell content update --uri <URI> [--user <USER_ID>] [--where <WHERE>]
  <WHERE> is a SQL style where clause in quotes (You have to escape single quotes - see example below).
  Example:
  # Change "new_setting" secure setting to "newer_value".
  adb shell content update --uri content://settings/secure --bind value:s:newer_value --where "name='new_setting'"

usage: adb shell content delete --uri <URI> [--user <USER_ID>] --bind <BINDING> [--bind <BINDING>...] [--where <WHERE>]
  Example:
  # Remove "new_setting" secure setting.
  adb shell content delete --uri content://settings/secure --where "name='new_setting'"

usage: adb shell content query --uri <URI> [--user <USER_ID>] [--projection <PROJECTION>] [--where <WHERE>] [--sort <SORT_ORDER>]
  <PROJECTION> is a list of colon separated column names and is formatted:
  <COLUMN_NAME>[:<COLUMN_NAME>...]
  <SORT_ORDER> is the order in which rows in the result should be sorted.
  Example:
  # Select "name" and "value" columns from secure settings where "name" is equal to "new_setting" and sort the result by name in ascending order.
  adb shell content query --uri content://settings/secure --projection name:value --where "name='new_setting'" --sort "name ASC"

usage: adb shell content call --uri <URI> --method <METHOD> [--arg <ARG>]
       [--extra <BINDING> ...]
  <METHOD> is the name of a provider-defined method
  <ARG> is an optional string argument
  <BINDING> is like --bind above, typed data of the form <KEY>:{b,s,i,l,f,d}:<VAL>

usage: adb shell content read --uri <URI> [--user <USER_ID>]
  Example:
  # cat default ringtone to a file, then pull to host
  adb shell 'content read --uri content://settings/system/ringtone > /mnt/sdcard/tmp.ogg' && adb pull /mnt/sdcard/tmp.ogg

usage: adb shell content gettype --uri <URI> [--user <USER_ID>]
  Example:
  # Show the mime-type of the URI
  adb shell content gettype --uri content://media/internal/audio/media/

```

## call调试
```
adb shell content call --uri content://com.baidu.duer.duershowsettings.provider --method abc --arg abc --extra <KEY>:{b,s,i,l,f,d}:<VAL>

```
