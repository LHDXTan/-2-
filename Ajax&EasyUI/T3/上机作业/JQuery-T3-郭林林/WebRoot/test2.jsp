<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test2.jsp' starting page</title>
    
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
function checkuser(obj){
	//验证用户是否重名
	var url = "action!yanzheng";
	$.post(url
			,{uname:obj.value}
		,function(data){
		data=$.trim(data);//将空格去掉
		$("#checkuname").html(data);
	}
	);
}
function changePro(){
	var str_stu = [
	               {"uno":"1001","class":"ST1108","uname":"张晓明","usex":"女","birthday":"1995-07-12"}
	               ,{"uno":"1001","class":"ST1108","uname":"张晓明","usex":"女","birthday":"1995-07-12"}
	               ,{"uno":"1001","class":"ST1108","uname":"张晓明","usex":"女","birthday":"1995-07-12"}
	               ,{"uno":"1001","class":"ST1108","uname":"张晓明","usex":"女","birthday":"1995-07-12"}
	               ]
	var stu = eval(str_stu);
	var city= "";
	city = "<select name=\"city\">";
	for(var i =0;i<stu.length;i++){
	   city = city+'<option value="">'+stu[i].uname+'</option>';
	}
	city = city+"</select>";
	$("#citydiv").html(city);
}
</script>
  </head>
  
  <body>
    会员账号:<input type="text" name="uname" onblur="checkuser(this)">
    <font color="red"><span id="checkuname"></span></font><br/>
    所属省份:<select name="pro" onchange="changePro(this)">
    <option value="">————请选择————</option>
    <option value="1">北京市</option>
    <option value="2">湖北市</option>
    <option value="3">河北市</option>
    </select><br/>
    所属城市:
    <div id = "citydiv">
    <select name="pro" onchange="changePro(this)">
    <option value="">————请选择————</option>
    </select>
    </div>
  </body>
</html>