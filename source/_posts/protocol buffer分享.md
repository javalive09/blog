---
title: protocol buffers分享
date: 2017-06-21 10:32:38
tags:
---


# 搜集到的一些资源
* [protocol buffers官网](https://developers.google.com/protocol-buffers/)

* [protocol buffers源码](https://github.com/google/protobuf)

* [Protobuf性能对比](https://github.com/eishay/jvm-serializers/wiki)

* [Protobuf vs Json](http://www.52im.net/thread-772-1-1.html)

* [netty 官方protocol buffers demo](https://github.com/netty/netty/blob/eb7f751ba519cbcab47d640cd18757f09d077b55/example/src/main/java/io/netty/example/worldclock/WorldClockServerInitializer.java)

* [retrofit对protocol buffers 官方支持文档](https://github.com/square/retrofit/tree/master/retrofit-converters/protobuf)

* [protocol buffers 编码原理](https://developers.google.com/protocol-buffers/docs/encoding)


# 环境配置
## 下载
[github源码](https://github.com/google/protobuf)

## 安装
[mac os](https://github.com/google/protobuf/releases/download/v3.3.0/protoc-3.3.0-osx-x86_64.zip)

## 配置
```
export PATH=$PATH:/Users/peter/Downloads/protoc-3.3.0-osx-x86_64/bin
```
## 验证
```
protoc --version
libprotoc 3.3.0
```

# 消息模型（.proto文件）
```
//1.包名
package protocobuff_Demo;

//2.option选项
option java_package = "com.peter.demo";
option java_outer_classname = "Demo"; 

//3.消息模型
message Person {
  required string name = 1;
  required int32 id = 2;
  optional string email = 3;

  enum PhoneType {
    MOBILE = 0;
    HOME = 1;
    WORK = 2;
  }

  message PhoneNumber {
    required string number = 1;
    optional PhoneType type = 2 [default = HOME];
  }

  repeated PhoneNumber phone = 4;
}

message AddressBook {
  repeated Person person = 1;
}
```
## 包名
防止不同 .proto 项目间命名发生冲突

## option选项
```
option java_package = "com.peter.demo";
// Java包名,指定生成的类应该放在什么Java包名下

option java_outer_classname = "Demo";
// 类名 生成对应.java 文件的类名（不能跟message的类名相同）

option optimize_for = ***;
// 1. SPEED (默认):：protocol buffer编译器将通过在消息类型上执行序列化、语法分析及其他通用的操作。（最优方式）
// 2. CODE_SIZE:：编译器将会产生最少量的类，通过共享或基于反射的代码来实现序列化、语法分析及各种其它操作。
  // 特点：采用该方式产生的代码将比SPEED要少很多， 但是效率较低；
  // 使用场景：常用在 包含大量.proto文件 但 不追求效率 的应用中。
//3.  LITE_RUNTIME:：编译器依赖于运行时 核心类库 来生成代码（即采用libprotobuf-lite 替代libprotobuf）。
  // 特点：这种核心类库要比全类库小得多（忽略了 一些描述符及反射 ）；编译器采用该模式产生的方法实现与SPEED模式不相上下，产生的类通过实现 MessageLite接口，但它仅仅是Messager接口的一个子集。
  // 应用场景：移动手机平台应用 v

optional repeated int32 samples = 4 [packed=true];
// 如果该选项在一个整型基本类型上被设置为真，则采用更紧凑的编码方式

optional int32 old_field = 6 [deprecated=true];
// 判断该字段是否已经被弃用 在java中的注解@Deprecated
```

## message
### 一个.proto文件中可定义多个消息对象
将与某一消息类型对应的响应消息格式 定义到相同的 .proto文件中
```
message SearchRequest {

  required string query = 1;
  optional int32 page_number = 2;
  optional int32 result_per_page = 3;

}
// 与SearchRequest消息类型 对应的 响应消息类型SearchResponse
message SearchResponse {
 …
}
```

### 消息嵌套
```
message Person {
  required string name = 1;
  required int32 id = 2;
  optional string email = 3;

// 定义在 Person消息类型的内部
  message PhoneNumber {
    required string number = 1;
  }
}

<-- 多重嵌套 -->
message Outer {   // Level 0
  message MiddleAA {  // Level 1
    message Inner {   // Level 2
      required int64 ival = 1;
      optional bool  booly = 2;
    }
  }
}
```
## 字段
```
//修饰符   类型   名字   标识号
required string name = 1;

```
### 字段修饰符
设置该字段解析时的规则

| 修饰符        | 赋值   |  备注  |
| --------   | -----:  | :----:  |
| required     | 必须赋值 |   一个格式良好的消息一定要含有1个这种字段 |
|optional|可选|个格式良好的消息可以有0个或1个这种字段（但不超过1个）。当解析一个消息的时候，如果它不包含optional的元素，那么解析出来的对象中的对应字段就被置为默认值。|
| repeated     |    多次赋值    |  在一个格式良好的消息中，这种字段可以重复任意多次（包括0次），重复的值的顺序会被保留。 |


### 字段类型（3种）
### 基本类型字段
| .proto类型  | java类型   |  备注  |
| --------   | -----  | :----:  |
| double     | double |        |
| float        |   float   |      |
| int32        |    int    | 使用可变长编码方式。编码负数时不够高效——如果你的字段可能含有负数，那么请使用sint32。|
| int64        |    long    |用可变长编码方式。编码负数时不够高效——如果你的字段可能含有负数，那么请使用sint64。    |
| uint32        |    int    | 使用可变长编码方式。   |
| uint64        |    long    |使用可变长编码方式。   |
| sint32        |    int    |   使用可变长编码方式。有符号的整型值。编码时比通常的int32高效。|
| sint64        |    long    | 使用可变长编码方式。有符号的整型值。编码时比通常的int64高效。   |
| fixed32        |    int    |总是4个字节。如果数值总是比总是比228大的话，这个类型会比uint32高效。    |
| fixed64        |    long    |总是8个字节。如果数值总是比总是比256大的话，这个类型会比uint64高效。  |
| sfixed32        |    int    |总是4个字节。  |
| sfixed64        |    long    |总是8个字节。  |
| bool        |    boolean    |  |
| string        |    String    | 一个字符串必须是UTF-8编码或者7-bit ASCII编码的文本。 |
| bytes        |    ByteString    | 可能包含任意顺序的字节数据。 |

### 枚举类型字段
为字段指定一个 可能取值的字段集合。 该字段只能从 该指定的字段集合里 取值

### 消息对象类型
#### 内部消息
```
message Person {
  required string name = 1;
  required int32 id = 2;
  optional string email = 3;

// 该消息类型 定义在 Person消息类型的内部
  message PhoneNumber {
    required string number = 1;
  }

  repeated PhoneNumber phone = 4;
  // 直接使用内部消息类型
}
```
#### 外部消息
```
message Person {
  required string name = 1;
  required int32 id = 2;
  optional string email = 3;
}

message AddressBook {
  repeated Person person = 1;
  // 直接使用了 Person消息类型作为消息字段
}
```
#### 使用外部消息的内部消息类型
```
message Person {
  required string name = 1;
  required int32 id = 2;
  optional string email = 3;

  message PhoneNumber {
    required string number = 1;
    optional PhoneType type = 2 [default = HOME];
  }
}

// Parent.Type 的形式去使用
message OtherMessage {
  optional Person.PhoneNumber phonenumber = 1;
// 以 Parent.Type = Person.PhoneNumber  的形式去使用

}
```
#### 使用不同 .proto 文件里的消息类型
```
import "myproject/other_protos.proto"
// 在A.proto 文件中添加 B.proto文件路径的导入声明
// ProtocolBuffer编译器 会在 该目录中 查找需要被导入的 .proto文件
// 如果不提供参数，编译器就在 其调用的目录下 查找
```
#### 更新和扩展
| 类型        | 规则   |  备注  |
| --------   | -----:  | :----:  |
| 修改     | 不要修改已有字段标识符 |        |
| 添加        |  只能是optional或repeated   |   旧的程序解析时只是将新的字段忽略，并未抛弃。|
| 删除        |  只能删除optional或repeated  |  不能重复使用删除的标识符。  |
| 扩展        |  非required字段可以扩展  |  不能重复使用删除的标识符。  |


### 标识号
#### 作用
通过二进制格式唯一标识每个字段
* 一旦开始使用就不能够再改变
* 标识号使用范围：[1,2的29次方 - 1]
* 不可使用 [19000－19999] 标识号， 因为 Protobuf 协议实现中对这些标识号进行了预留。假若使用，则会报错

#### 编码占有内存规则
每个字段在进行编码时都会占用内存，而 占用内存大小 取决于 标识号
范围 [1,15] 标识号的字段 在编码时占用1个字节；
范围 [16,2047] 标识号的字段 在编码时占用2个字节

#### 建议
为频繁出现的 消息字段 保留 [1,15] 的标识号
为将来有可能添加的、频繁出现的 消息字段预留 [1,15] 标识号

## 编译
```
// 在 终端 输入下列命令进行编译
protoc $SRC_DIR --java_out=$DST_DIR

// 参数说明
// 1. $SRC_DIR：指定需要编译的.proto文件目录 (如没有提供则使用当前目录)
// 2. --java_out：java根据需要生成代码的类型进行设置
// 3. $DST_DIR ：编译后代码生成的目录 (通常设置与$SRC_DIR相同)

``` 

# android平台下的使用
## 添加依赖库
要和protocal buffer编译库匹配
```
compile 'com.google.protobuf:protobuf-java:3.3.0'
```

## android studio plug
* [protobuf-gradle-plugin](https://github.com/google/protobuf-gradle-plugin)
* [wire-gradle-plugin](https://github.com/square/wire-gradle-plugin)

