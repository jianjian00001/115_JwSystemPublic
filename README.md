---
### 👉作者QQ ：1556708905 微信：zheng0123Long (支持修改、部署调试、定制毕设)

### 👉接网站建设、小程序、H5、APP、各种系统等

### 👉选题+开题报告+任务书+程序定制+安装调试+ppt 都可以做
---

**博客地址：
[https://blog.csdn.net/2303_76227485/article/details/135274762](https://blog.csdn.net/2303_76227485/article/details/135274762)**

**视频演示：
[https://www.bilibili.com/video/BV1cT4y1x79z/](https://www.bilibili.com/video/BV1cT4y1x79z/)**

**毕业设计所有选题地址：
[https://github.com/zhengjianzhong0107/allProject](https://github.com/zhengjianzhong0107/allProject)**

## 基于Java+Springboot+Vue的教务管理系统(源代码+数据库)115

## 一、系统介绍
本项目前后端分离，本系统分为管理员、教务人员、教师、学生四种角色

### 1、学生：
登录、首页统计、学生选课、成绩查询、个人课表、学生评价、教学计划、培养方案、个人中心、密码修改

### 2、教师：
成绩录入、课程评价查询、选课申请、个人信息、个人课表、成绩统计

### 3、教务人员：
学院管理、专业管理、班级管理、教学计划管理、培养方案管理、教学评价管理、档案管理、结课申请管理、开课申请管理、选课分配管理、学生管理

### 4、管理员：
拥有全部功能的权限、权限管理、角色管理。用户管理

## 二、所用技术

后端技术栈：

- Springboot
- MybatisPlus
- Mysql
- Maven
- Shiro
- SpringSecurity

前端技术栈：

- Vue 
- Vue-router 
- axios 
- elementUi

## 三、环境介绍

基础环境 :IDEA/eclipse, JDK1.8, Mysql5.7及以上,Maven3.6, node14

所有项目以及源代码本人均调试运行无问题 可支持远程调试运行

## 四、页面截图
### 1、学生
![contents](./picture/picture01.png)
![contents](./picture/picture1.png)
![contents](./picture/picture2.png)
![contents](./picture/picture3.png)
![contents](./picture/picture4.png)
![contents](./picture/picture5.png)
![contents](./picture/picture6.png)
![contents](./picture/picture7.png)
![contents](./picture/picture8.png)
![contents](./picture/picture9.png)
![contents](./picture/picture10.png)
![contents](./picture/picture11.png)

### 2、老师
![contents](./picture/picture12.png)
![contents](./picture/picture13.png)
![contents](./picture/picture14.png)
![contents](./picture/picture15.png)
![contents](./picture/picture16.png)
![contents](./picture/picture17.png)
![contents](./picture/picture18.png)
![contents](./picture/picture19.png)
![contents](./picture/picture20.png)
![contents](./picture/picture21.png)

### 3、教务人员
![contents](./picture/picture22.png)
![contents](./picture/picture23.png)
![contents](./picture/picture24.png)
![contents](./picture/picture25.png)
![contents](./picture/picture26.png)
![contents](./picture/picture27.png)
![contents](./picture/picture28.png)
![contents](./picture/picture29.png)
![contents](./picture/picture30.png)

### 4、管理员
![contents](./picture/picture31.png)
![contents](./picture/picture32.png)
![contents](./picture/picture33.png)
![contents](./picture/picture34.png)
![contents](./picture/picture35.png)
![contents](./picture/picture36.png)
![contents](./picture/picture37.png)
![contents](./picture/picture38.png)

## 五、浏览地址

访问地址：http://localhost:8081
- 学生账号/密码：20001/123456
- 教师账号/密码：9/123456
- 教务人员账号/密码：3/123456
- 管理员账号/密码：1/123456

## 六、部署教程
1. 使用Navicat或者其它工具，在mysql中创建对应名称的数据库，并执行项目的sql文件；
2. 使用IDEA/Eclipse导入Jwsystem项目，若为maven项目请选择maven，等待依赖下载完成；
3. 修改application.yml里面的数据库配置和文件路径配置，启动后端项目
4. vscode或idea打开Jwsystem-front项目，
5. 在编译器中打开terminal，执行npm install 依赖下载完成后执行 npm run dev,执行成功后会显示访问地址

