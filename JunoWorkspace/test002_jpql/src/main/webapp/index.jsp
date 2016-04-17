<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>新消息提示</title>
		<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
		<script type="text/javascript">
	function news() {
		window.open('/test002_jpql/page/news.jsp', '新消息提示',
		 'height=400, width=550 top=170,left=400');
	}
</script>
	</head>
	<body onload="news()">
		<a href="/test002_jpql/page/news.jsp">news,jsp</a>
	</body>
</html>
