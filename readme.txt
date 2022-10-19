communityserver：   社区健康档案服务平台  ssm整合开发
SSM：SpringMvc + Spring + Mybatis

SpringMVC：视图层，界面层，负责接受请求，显示处理结果。
Spring：业务层，管理service，mapper，工具类对象的。
Mybatis：持久层，访问数据库的。

用户发起请求---SpringMVC接收---Spring中的service对象---Mybatis处理数据
ssm整合中有容器。
第一个容器是SpringMVC容器，负责创建Controller控制器对象。
第二个容器是Spring容器，负责创建service和mapper，工具类对象的。
我们要做的是把使用的对象交给合适的容器创建、管理。
把controller还有web开发的相关对象交给SpringMVC容器，这些对象写在springmvc配置文件中。
把service、mapper对象定义在spring容器中，这些对象写在spring配置文件中。

实现步骤：
0.创建数据库 表 communityserver
1.新建maven web项目
2.添加依赖： springmvc、spring、mybatis三个框架的依赖；jackson依赖，mysql依赖，druid连接池依赖；jsp、servlet依赖
3.写web.xml  1）注册DispatcherServlet中央调度器，目的：1.创建springmvc容器对象才能创建controller对象。2.创建的是servlet，才能接受用户的请求。
             2）注册Spring监听器ContextLoaderListener，目的：创建Spring容器对象，才能创建service、mapper等对象。
             3）注册字符集过滤器：解决post请求乱码等问题。
4.创建包：Controller、Service、Mapper、Entity包创建好
5.写spring、springmvc、mybatis的配置文件
    1）springmvc的配置文件 dispatcherservlet.xml
        a.<!--    组件扫描器-->
              <context:component-scan base-package="com.anan.controller"/>
        b. <!--    视图解析器-->
              <bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
                  <property name="prefix" value="/WEB-INF/jsp/"/>
                  <property name="suffix" value=".jsp"/>
              </bean>
        c. <!--    注解驱动   1.响应ajax  2.解决静态资源的访问问题-->
                  <mvc:resources mapping="/WEB-INF/**" location="/WEB-INF/" />
                  <mvc:annotation-driven />
    2）spring的支配文件 applicationContext.xml
        a.<!--    声明数据源，连接数据库-->
              <context:property-placeholder location="classpath:conf/jdbc.properties"/>
              <bean id = "dataSource" class="com.alibaba.druid.pool.DruidDataSource" init-method="init" destroy-method="close" >
                  <property name="url" value="${jdbc.url}"/>
                  <property name="username" value="${jdbc.username}"/>
                  <property name="password" value="${jdbc.password}"/>
              </bean>
        b.<!--    SqlSessionFactoryBean创建SqlSessionFactory-->
              <bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
                  <property name="dataSource" ref="dataSource"/>
                  <property name="configLocation" value="classpath:conf/mybatis.xml"/>
              </bean>
        c.<!--声明mybatis扫描器，注册mapper对象-->
              <bean class="org.mybatis.spring.mapper.MapperScannerConfigurer">
                  <property name="sqlSessionFactoryBeanName" value="sqlSessionFactory"/>
                  <property name="basePackage" value="com.anan.mapper"/>
              </bean>
        d. <!--声明service的注解@service所在的包名位置-->
              <context:component-scan base-package="com.anan.service"/>
        e.<!--声明事务的配置：1.注解的配置 2.aspectj的配置  -->

    3）mybatis主配置文件
    4）数据库的属性配置文件 jdbc.properties
        jdbc.url = jdbc:mysql://localhost:3306/communitysercer
        jdbc.username = root
        jdbc.password = 1234

6.写代码：mapper接口和mapper文件，service和实现类、controller、实体类等
7.写jsp页面

