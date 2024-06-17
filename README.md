# 1. 系统概述   

## 1.1 设计目的
本设计旨在开发一个功能完善的网络商城系统，专注于二次元周边商品的管理和销售。
系统需具备吸引二次元文化爱好者的界面设计，同时实现高效的商品管理、订单处理以及用户交互功能，以提升用户体验和促进商品流通。

## 1.2 项目概况
- 用户管理：支持用户注册、登录、个人信息修改及删除账户等功能。
- 商品管理：包括商品添加、编辑、删除及分类展示，支持上传商品图片、描述及库存管理。
# 2. 系统分析         

## 2.1 系统规划
前后端分离，总体功能需要支持用户注册、登录

## 2.2 运行环境规定
| 依赖项               | 版本           |
| -------------------- | -------------- |
| JUnit - 单元测试库   | 3.8.1          |
| Java Servlet JSP API | 2.3.3          |
| Java Servlet API     | 4.0.1          |
| Lombok               | 1.18.26        |
| MySQL Connector/J    | 8.0.32         |
| MariaDB Java Client  | 3.3.3          |
| MyBatis              | 3.5.13         |
| Logback Classic      | 1.4.6 (test)   |
| Spring Context       | 5.2.10.RELEASE |
| Druid                | 1.1.22         |
| Spring JDBC          | 5.2.10.RELEASE |
| MyBatis-Spring       | 2.0.7          |
| Java Annotation API  | 1.2            |

## 2.3 需求分析
可以
## 2.4 可行性分析

# 3. 概要（总体）设计

## 3.1 系统功能设计

## 3.2 系统结构设计

## 3.3 数据库设计

# 4. 系统主要模块实现

## 4.1 登录验证

## 4.2 功能

## 4.3 编辑信息

# 5．前台主要功能模块设计与实现

# 6.系统后台设计与实现

## 6.1设计数据库连接类

该类主要。

主要代码如下：
```sql
CREATE TABLE `t_product` (
	`pid` INT(11) NOT NULL,
	`productName` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
	`productDesc` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
	`productCat` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
	`productCount` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`pid`) USING BTREE
)
```
## 6.2设计Servlet类

首先。

主要代码如下：

## 6.3设计xxx处理页面

该页面主要有xxx功能，xxx。

主要代码如下：~~
