# VIVO购物商城

#### 1.idea打开项目后 请 自行安装  lombok 插件  百度即可  否则get set 方法 将 会不存在  
#### 也可不使用lombok  自行  构建 get set 方法即可 
#### 2.自行配置 tomcat
#### 3.mysql5.7 版本 如需更换 请 更换jar包为你对应的版本

###  
**软件架构** 
### 主要使用三层架构
数据访问层：DAO设计模式，JDBC，MySQL、BeanUtils（拷贝）前端接收参数
业务层：Service
表现层：JSP、Servlet

开发环境： 环境JDK1.8 开发工具：Idea2020 Web服务器：Tomcat 数据库：MySQL 
### 注意事项: 
1.商品详情选择规格请都要选中
2.注册这里为QQ邮箱发送验证码进行注册---请替换Utils--SendUtils当中的授权码 
3.删除拉取项目下来的tomcat 自己重新创建一个新的tomcat 要不然可能启动失败


### 运行环境
#### 前台首页
``http://localhost:8081``
#### 后台登陆页面  TrouBles/123456   (可自行更改)
``http://localhost:8081/admin/admin_login.jsp``


### 前台模块首页测试结果
![首页](https://oss-yby.yangbuyi.top/blog/%E9%A6%96%E9%A1%B5.png)
![首页下拉条](https://oss-yby.yangbuyi.top/blog/%E9%A6%96%E9%A1%B5%E4%B8%8B%E6%8B%89%E6%9D%A1.png)
![移动端页面 ](https://oss-yby.yangbuyi.top/blog/pc-%E7%A7%BB%E5%8A%A8%E7%AB%AF.png "pc移动端.png")
![移动端页面2 ](https://oss-yby.yangbuyi.top/blog/pc-%E7%A7%BB%E5%8A%A8%E7%AB%AF.png "pc移动端.png")
### 前台登陆页面测试
![登陆页面](https://oss-yby.yangbuyi.top/blog/%E7%99%BB%E9%99%86%E9%A1%B5%E9%9D%A2.png)
![邮箱注册页面](https://oss-yby.yangbuyi.top/blog/%E9%82%AE%E7%AE%B1%E6%B3%A8%E5%86%8C%E9%A1%B5%E9%9D%A2.png)

### 前台商城页面测试 (重点)
![商城页面](https://oss-yby.yangbuyi.top/blog/%E5%95%86%E5%9F%8E%E9%A1%B5%E9%9D%A2.png)
![商城详情](https://oss-yby.yangbuyi.top/blog/image-20201122125247020.png)
### 后台运行效果
![后台登陆](https://oss-yby.yangbuyi.top/blog/%E5%90%8E%E5%8F%B0%E7%99%BB%E9%99%86.png)
### 后台模块商品管理
![后台基本功能](https://oss-yby.yangbuyi.top/blog/%E5%90%8E%E5%8F%B0%E5%9F%BA%E6%9C%AC%E5%8A%9F%E8%83%BD.png)

