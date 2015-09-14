<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<head>  

<!--绝对路径  -->
<script type="text/javascript" src="/integration_sh/js/jquery-1.11.3.js"></script>  

<meta http-equiv="Content-Type" content="text/html; charset=utf8">  
<title>ajax</title>  
<script type="text/javascript">  
    function ajaxTest(){ 
    	var name = $("#name").val();
        $.ajax({ 
        	contentType: 'application/json',  
	        data: {
	        	'name' :name
	        },  
	        type: "POST",  
	        dataType: 'json',  
	        url: "ajaxrequest",  
	        success:function(data){  
	        	//data 封装来自后台的json对象
	            alert("success:"+data.msg + data.success);  
	            $("#result").html(data.msg) ;  
	        }, 
	        error:function(data){  
	        	//alert("出错:"+data.success);  
	            alert("出错了:"+data.msg);  
	        }
        });  
    }  
</script>  
</head>  
<body>  
    <input type="text" name="name" id="name"/>  
    <input type="submit" value="登录" onclick="ajaxTest();"/>  
    <div id="result"></div>  
</body>  
</html>  