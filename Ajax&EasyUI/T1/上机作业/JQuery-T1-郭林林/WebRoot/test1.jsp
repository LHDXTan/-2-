<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery-1.9.1.js"> </script>
<script type="text/javascript" src="js/json2.js"> </script>
<script>
var str_stu = [
               {"uno":"1001","class":"ST1108","uname":"张晓明","usex":"女","birthday":"1995-07-12"}
               ,{"uno":"1001","class":"ST1108","uname":"张晓明","usex":"女","birthday":"1995-07-12"}
               ,{"uno":"1001","class":"ST1108","uname":"张晓明","usex":"女","birthday":"1995-07-12"}
               ,{"uno":"1001","class":"ST1108","uname":"张晓明","usex":"女","birthday":"1995-07-12"}
               ]
var stu = eval(str_stu);
//循环输出数据
for(var i =0;i<stu.length;i++){
	document.write("<br/>");
	document.write("<table >"+"student:"+stu[i].uname+"class:"+stu[i].class+"birthday"+stu[i].birthday+"</table>");
}
</script>
  </head>
  
  <body>
  </body>
</html>
