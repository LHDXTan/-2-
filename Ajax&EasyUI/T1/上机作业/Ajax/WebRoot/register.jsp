<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
  <script type="text/javascript">
  	function checkuser(v_uname){
  		var url="<%=basePath%>test?reqType=checkuser";
  		$.post(url,
  			{reqType:"checkuser"
  			,uname:v_uname.value}
  			,function(msg){
  				$("#checkuname").empty().html(msg);
  			}
  		);
  	}
  	function changePro(v_pro){
  		var city="";
  		$.getJSON("city.json",function(data){
  			city="<select name=\"city\">";
  			$.each(data,function(index,msg){
  				if(msg.pid==v_pro.value){
  					var citys=msg.pcity;
  					for(var i=0;i<citys.length;i++){
  						city=city+'<option value="'+citys[i]+'">'+citys[i]+'</option>';
  					}
  				}
  			});
  			city=city+"</select>"
  			$("#citydiv").html(city);
  		});
  	}
  </script>
  <body>
  <table border=1>
    <tr>
    	<td>会员账号</td>
    	<td>
    		<input type="text" name="uname" onblur="checkuser(this)">
    	</td>
    	<td><font color="red"><span id="checkuname"></span></font></td>
    </tr>
    <tr>
    	<td>账号密码</td>
    	<td>
    		<input type="password" name="password">
    	</td>
    	<td></td>
    </tr>
    <tr>
    	<td>重复密码</td>
    	<td>
    		<input type="password" name="password1">
    	</td>
    	<td><font color="red">*</font></td>
    </tr>
    <tr>
    	<td>所属省份</td>
    	<td>
    		<select name="pro" onchange="changePro(this)">
    			<option value="1">北京市</option>
    			<option value="2">湖北省</option>
    			<option value="3">河北省</option>
    		</select>
    	</td>
    	<td>&nbsp;</td>
    </tr>
    <tr>
    	<td>所属城市</td>
    	<td>
    		<div id="citydiv">
    			<select name="city">
    				<option value="">---请选择---</option>
    			</select>
    		</div>
    	</td>
    	<td><font color="red"><span id="checkcity">*</span></font></td>
    </tr>
    </table>
  </body>
</html>
