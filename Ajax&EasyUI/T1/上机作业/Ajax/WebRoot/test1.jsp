<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>test4</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <script type="text/javascript">
  	var str_stu=[
  	   {"uno":"1001","uclass":"ST1108","uname":"张晓明","usex":"女","ubirthday":"1995-07-12"},
  	   {"uno":"1002","uclass":"ST1108","uname":"王程远","usex":"男","ubirthday":"1995-07-12"},
  	   {"uno":"1003","uclass":"ST1108","uname":"赵爱民","usex":"男","ubirthday":"1995-07-12"},
  	   {"uno":"1004","uclass":"ST1108","uname":"杨有福","usex":"女","ubirthday":"1995-07-12"}
  	]  
	  	var stu=eval(str_stu);
	  	for (var i=0;i<stu.length;i++){
	  		document.write("<br>");
	  		document.write("sno:"+stu[i].uno+"&nbsp;&nbsp;"+"class:"+stu[i].uclass+"&nbsp;&nbsp;"+
	  		"student:"+stu[i].uname+"&nbsp;&nbsp;"+"sex:"+stu[i].usex+"&nbsp;&nbsp;"+"birthday:"+stu[i].ubirthday);
	  	}
  </script>
  <script type="text/javascript" url="js/jquery-1.9.1.js"></script>
</html>
