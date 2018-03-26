<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: lx
  Date: 2018/3/26
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>DataGrid Complex Toolbar - jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4.2/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4.2/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4.2/demo/demo.css">
    <script type="text/javascript" src="jquery-easyui-1.5.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="jquery-easyui-1.5.4.2/jquery.easyui.min.js"></script>
    <script>
        function add() {
            var url = "/jquery-easyui-1.5.4.2/demo/validatebox/validateonblur.jsp"; //转向网页的地址;
            var name = "学生添加"; //网页名称，可为空;
            var iWidth = "500"; //弹出窗口的宽度;
            var iHeight = "550"; //弹出窗口的高度;
//window.screen.height获得屏幕的高，window.screen.width获得屏幕的宽
            var iTop = (window.screen.height-30-iHeight)/2; //获得窗口的垂直位置;
            var iLeft = (window.screen.width-10-iWidth)/2; //获得窗口的水平位置;
            window.open(url,name,'height='+iHeight+',,innerHeight='+iHeight+',width='+iWidth+',innerWidth='+iWidth+',top='+iTop+',left='+iLeft+',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
        }
    </script>
</head>
<body>
<h2>学生添加</h2>
<div style="margin:20px 0;"></div>
<table class="easyui-datagrid" title="DataGrid Complex Toolbar" style="width:700px;height:250px"
       data-options="rownumbers:true,singleSelect:true,url:'datagrid_data1.json',method:'get',toolbar:'#tb',footer:'#ft'">
    <thead>
    <tr>
        <th data-options="field:'itemid',width:80">ID</th>
        <th data-options="field:'productid',width:100">姓名</th>
        <th data-options="field:'listprice',width:80,align:'right'">性别</th>
        <th data-options="field:'unitcost',width:80,align:'right'">年龄</th>
        <th data-options="field:'attr1',width:240">生日</th>
        <th data-options="field:'status',width:60,align:'center'">专业</th>
    </tr>
    </thead>
    <s:iterator value="studnetList" var="student" >
    <tr>
            <td data-options="field:'itemid',width:80">${student.id}</td>
            <td data-options="field:'productid',width:100">${student.name}</td>
            <td data-options="field:'listprice',width:80,align:'right'">${student.sex}</td>
            <td data-options="field:'unitcost',width:80,align:'right'">${student.age}</td>
            <td data-options="field:'attr1',width:240">${student.birthday}</td>
            <td data-options="field:'status',width:60,align:'center'">${student.zhuanye}</td>
    </tr>
    </s:iterator>
</table>
<div id="ft" style="padding:2px 5px;">
    <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="add()"></a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="add()"></a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"></a>
</div>
</body>
</html>
