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


