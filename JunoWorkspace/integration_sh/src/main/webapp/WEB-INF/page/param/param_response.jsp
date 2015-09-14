<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>param response</title>
</head>
<body>
	<h3>param response</h3>
	<!-- 当页面要使用el表达式时，一定要显示的将是否使用el表达式开关开启  isELIgnored="false"-->
	<div>${userId}</div>
	<!-- 调用jstl需要相应的jstl-jar包， 相应的taglib引用-->
	<c:out value="${userId}" /><br/>
	
	<c:out value="${userName}" /><br/>
	
	<c:out value="${jh}" /><br/>
	
	<!-- 返回list -->
	<c:out value="" />

</body>
</html>