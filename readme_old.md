# 二次元周边仓库管理系统

## 功能特性
  1. 对于用户和产品的增删改查
  2. 展示用户和商品信息

## 快速开始

### 依赖检查
```maven
   <dependency>
      <groupId>javax.servlet</groupId>
      <artifactId>javax.servlet-api</artifactId>
      <version>4.0.1</version>
    </dependency>
    <dependency>
      <groupId>org.projectlombok</groupId>
      <artifactId>lombok</artifactId>
      <version>1.18.26</version>
    </dependency>
    <dependency>
      <groupId>com.mysql</groupId>
      <artifactId>mysql-connector-j</artifactId>
      <version>8.0.32</version>
    </dependency>
    <dependency>
      <groupId>org.mybatis</groupId>
      <artifactId>mybatis</artifactId>
      <version>3.5.13</version>
    </dependency>
    <dependency>
      <groupId>ch.qos.logback</groupId>
      <artifactId>logback-classic</artifactId>
      <version>1.4.6</version>
      <scope>test</scope>
    </dependency>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>4.13.2</version>
      <scope>test</scope>
    </dependency>
    <dependency>
      <groupId>io.jsonwebtoken</groupId>
      <artifactId>jjwt-api</artifactId>
      <version>0.11.5</version>
    </dependency>
```
### 构建
    acgn-wms
      -java
         -com/notyanzu/acgn_wms   
                            -filter
                            -mapper
                            -pojo
                            -service
                                -impl
                            -util
                            -web
       -resoures
          -jdbc.properties
          -mybatis-config.xml
       -webapp
          -css
          -img
            -head picture
            -product img
          -js
          -jsp
          -WEB-INF
            -web.xml
### 运行
    配置tomcat服务器，引用war包，运行服务器，即可运行项目

## 使用指南
   1. 进入主页后，可以点击图片，会进入对应的网址展示（动漫/美图/手办）
   2. 点击登录，输入对应的账号密码，即可进入管理员界面
      1.  点击注册，输入要注册的账号、密码、名字、权限,注册成功后进入登录界面，进行登录
   3. 进入管理者界面后，可以选择商品管理和管理员管理界面

## 数据库信息
```csv
1,dongdong,123456,0
2,diandian,12345678,0
3,guangnian,123456,1
4,xiaoxin,123456,1
14,diwu,555555,1
15,mengdewucifang,555555,0
16,eauuu,999999,0
17,yanzu,666666,1
18,gggio,123456,1
19,ajie,123456,0
20,muqiu,222222,1
21,Kr,123456,1
22,yiyi,111111,0
23,yunhai,123456,0
31,test,test,1
32,dadada,dadada,1
33,天棒槌,111,1
34,天棒锤,222,1
36,test1,test1,1
37,test2,test2,1
38,test3,test3,1
39,test4,test4,1
40,test5,test5,1
41,qqq,qqq,1
42,zzz,zzz,1
43,ppp,111,1
44,qwer,qwer,1
45,asdf,asdf,1
46,zxcv,zxcv,1
47,ooo,ooo,1
48,mmm,mmm,1
50,111,111,1
51,999,999,1
54,123456,123456,1
55,1234567,1234567,1
57,a,a,1
58,krkr,qq,1
59,yzyz,11111111,1
```

```csv
t_product
1,爆漫王。,作：大场鸫 / 画：小畑健、集英社,漫画,800
2,花牌情缘,末次由纪、讲谈社,漫画,30
3,进击的巨人,谏山创、讲谈社,漫画,139
4,怪医黑杰克的诞生：手冢治虫的创作秘辛,作：宫崎克 / 画：吉本浩二、秋田书店,漫画,50
5,物语系列,西尾维新 / 插画：VOFAN	讲谈社BOX,轻小说,50
6,火星异种,作：贵家悠 / 画：橘贤一、集英社,漫画,1
7,俺物语!!,作：河原和音 / 画：或子、集英社,漫画,20
8,声之形,大今良时、讲谈社,漫画,55
9,龙王的工作！,白鸟士郎、GA文库,轻小说,5
10,Re:从零开始的异世界生活,作：长月达平 / 插画：大冢真一郎、MF文库J,轻小说,28
11,新约魔法禁书目录,作：镰池和马 / 插画：灰村清孝、电击文库,轻小说,85
12,为美好的世界献上祝福！,晓夏目 / 插画：三嶋黑音、角川Sneaker文库,轻小说,5
13,青春猪头少年系列,鸭志田一 / 插画：沟口凯吉、电击文库,轻小说,25
14,在地下城寻求邂逅是否搞错了什么,大森藤野 / 插画：安田典生、GA文库,轻小说,15
15,OVERLORD,丸山黄金 / 插画：so-bin、enterbrain → KADOKAWA,轻小说,88
16,转生成蜘蛛又怎样！,马场翁 / 插画：辉龙司、KADOKAWA BOOKS,轻小说,88
17,关于我转生变成史莱姆这档事,伏濑 / 插画：みっつばー、GC NOVELS,轻小说,88
18,坤坤的背带裤,"",裤子,2333
19,坤坤的篮球,"",篮球,1
20,坤坤的只因,"",食品,8
21,小黑子,Integer.MAX,你干嘛~,2147483647
24,嗷嗷,嗷嗷,嗷嗷,20
25,针不戳,针不戳,针不戳,
```