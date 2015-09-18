<%@ page language="java" contentType="text/html; charset=UTF-8"
    isELIgnored="false" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align="center">
		<tr>
			<th>id</th>
			<th>name</th>
		</tr>
		
		<c:forEach var="person" items="${conditionParam.list}">
			<tr>
				<td>
					${person.id }
				</td>
				<td>
					${person.name}
				</td>
			</tr>
		</c:forEach>
	</table>
	<center>
		<div>
			<a href="page?pageNo=${conditionParam.page.pageNo+1}">next</a>
			<a href="page?pageNo=${conditionParam.page.pageNo-1}">prev</a>
			<div>总记录数：${conditionParam.page.count}</div>
		</div>
	</center>
	
</body>
</html>