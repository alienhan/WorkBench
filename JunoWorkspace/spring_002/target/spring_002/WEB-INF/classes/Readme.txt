
1.测试spring在mvn下改变编译路径，能否成功

2.mvn update project 改变 项目的配置：
	去除 Upate project Configration from pom.xml
	
3. web.xml加载不上spring-servlet.xml文件：
	添加context-param参数
	
4. <mvc:annotation-driven />
	影响json配置
	
5. 添加json应该添加json相应的jar包
	jackson-core-asl
	jackson-mapper-asl