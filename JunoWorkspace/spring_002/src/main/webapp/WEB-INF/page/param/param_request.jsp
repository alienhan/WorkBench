<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>param request</title>
</head>
<body>
	<form action="paramrequest" method="post">
		<input type="text" id="paramId" class="paramClass" 
			name="paramName" value="jh" />
		<input type="submit" value="submit">
	</form>
	
	<a href="paramform?paramId=1">paramForm,RequestParam</a><br/>

</body>
</html>