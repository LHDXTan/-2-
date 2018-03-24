<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jquery3.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    
  </head>
  
  <body>
       <script>
             var str_stu=[
             {"uno":"1001","uclass":"ST1108","uname":"小米","usex":"女","ubirthday":"1995-08-20"},
             {"uno":"1001","uclass":"ST1109","uname":"小敏","usex":"女","ubirthday":"1995-09-20"},
             {"uno":"1001","uclass":"ST1110","uname":"甜米","usex":"女","ubirthday":"1995-07-20"},
             {"uno":"1001","uclass":"ST1111","uname":"糯米","usex":"女","ubirthday":"1995-06-20"}
             ]  
            var stu=eval(str_stu);
            for(var i=0;i<stu.length;i++){
               document.write("<br>");
               document.write("student:"+stu[i].uname	+"class:"+stu[i].uclass+"birthday"+stu[i].ubirthday);
            }    
             
        </script>
  </body>
</html>
