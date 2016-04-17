<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新功能提示</title>

<script type="text/javascript" src="/test002_jpql/js/jquery-1.11.3.js"></script>
<script type="text/javascript">
	$(document).ready(function(){  
		//setTimeout(closeWindow,2000);
	})
	
	function closeWindow(){
		window.close();
	}
</script>
<style type="text/css">

body{
	width: 550px;
	height: 400px;
	padding: 0px;
}

.black_top{
  background-color: #1E90FF;
  margin-left: -8px;
}

.content{
	padding-left: 20px;
}

.news_close{
	height: 25px;
	width: 550px;
	position:absolute;
	top:90%;
	
}
.new_button{
	height: 25px;
	width: 60px;
	margin-left: 43%;
}
</style>

</head>
<body>
	
	<h3><center>新功能提示</center></h3>
	<div class="black_top"> &nbsp;</div>
	<div class="content">
		<div>
			<span>数据填报功能更改通知</span><br/>
			<span>这次更改主要是添加了提交的状态</span>
		</div>
		
		
	
	</div>	

	<div  class="news_close" >
		<button class="new_button" onclick="closeWindow()">关闭</button>
	</div>
</body>
</html>