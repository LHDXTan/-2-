<%--
  Created by IntelliJ IDEA.
  User: lx
  Date: 2018/3/26
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Validate On Blur - jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4.2/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4.2/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4.2/demo/demo.css">
    <script type="text/javascript" src="jquery-easyui-1.5.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="jquery-easyui-1.5.4.2jquery.easyui.min.js"></script>
</head>
<body>
<div style="margin:20px 0;"></div>
<form action="student!add" method="post">
<div class="easyui-panel" title="Register" style="width:100%;max-width:400px;padding:30px 60px;">
    <div style="margin-bottom:20px">
        <label for="name" class="label-top">姓名:</label>
        <input id="name" name="student.name" class="easyui-validatebox tb" data-options="required:true,validType:'length[3,10]',validateOnCreate:false,validateOnBlur:true">
    </div>
    <div style="margin-bottom:20px">
        <label for="sex" class="label-top">性别:</label>
        <input id="sex" name="stuent.sex" class="easyui-validatebox tb" data-options="required:true,validType:'email',validateOnCreate:false,validateOnBlur:true">
    </div>
    <div style="margin-bottom:20px">
        <label for="age" class="label-top">年龄:</label>
        <input id="age" name="student.age" class="easyui-validatebox tb" data-options="required:true,validType:'url',validateOnCreate:false,validateOnBlur:true">
    </div>
    <div style="margin-bottom:20px">
        <label for="birthday" class="label-top">生日:</label>
        <input id="birthday" name="student.birthday" class="easyui-validatebox tb" data-options="required:true,validateOnCreate:false,validateOnBlur:true">
    </div>
    <div style="margin-bottom:20px">
        <label for="zhuanye" class="label-top">电话:</label>
        <input id="zhuanye" name="student.zhuanye" class="easyui-validatebox tb" data-options="required:true,validateOnCreate:false,validateOnBlur:true">
    </div>
    <div>
        <input type="submit" value="提交">
    </div>
</div>
</form>
<style scoped="scoped">
    .tb{
        width:100%;
        margin:0;
        padding:5px 4px;
        border:1px solid #ccc;
        box-sizing:border-box;
    }
</style>

</body>
</html>
