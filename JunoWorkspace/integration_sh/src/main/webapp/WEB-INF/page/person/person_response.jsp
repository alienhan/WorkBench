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
	<div>
		<c:out value="${person.name}"></c:out>
	</div>
	<table>
		<tr>
			<th>id</th>
			<th>name</th>
		</tr>
		<c:forEach var="person" items="${listPerson}">
			<tr>
				<td>${person.id }</td>
				<td>${person.name }</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>