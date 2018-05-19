<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
</head>
<body>
<div style="width:30%;margin:auto;text-align: center;">
<h1>增加用户信息页面</h1>
</div>
<div style="width:80%;margin:auto;text-align: center;">
	<div style="width:40%;margin:auto;border:1px solid blue;text-align: center;">
	 <form class="sui-form form-horizontal" style="padding-top:10px">
  <div class="control-group warning">
    <label for="inputWarning" class="control-label">姓名</label>
    <div class="controls">
      <input type="text"   id="name">
    </div>
  </div>
  <div class="control-group error">
    <label for="inputError" class="control-label">年龄</label>
    <div class="controls">
      <input type="text"  id="age">
    </div>
  </div>
  <div class="control-group success">
    <label for="inputSuccess" class="control-label">手机号</label>
    <div class="controls">
      <input type="text"  id="phone">
    </div>
  </div>
  <div class="control-group info">
    <label for="inputInfo" class="control-label">地址</label>
    <div class="controls">
      <input type="text"  id="address">
    </div>
  </div>
  <div class="control-group warning">
    <label for="inputWarning" class="control-label">套餐</label>
    <div class="controls">
    	<input type="text"  id="menu">
    </div>
  </div>
  <div class="control-group error">
    <label for="inputError" class="control-label">服务密码</label>
    <div class="controls">
    <input type="text"  id="password">
    </div>
  </div>
  <div class="control-group success">
    <label for="inputSuccess" class="control-label">开户工号</label>
    <div class="controls">
    	<input type="text"  id="openernum">
    </div>
  </div>
  <div class="control-group info">
    <label for="inputInfo" class="control-label">备注</label>
    	<div class="controls">
    	<input type="text"  id="note">
    </div>
  </div>
</form>
</div>
	<div style="margin:auto;text-align: center;padding-bottom:10px;padding-top:20px">
		<a onclick="add()" class="sui-btn btn-xlarge btn-primary">确定并返回首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a onclick="addtoadd()" class="sui-btn btn-xlarge btn-warning">确定并继续添加</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <a href="/lixiang/index" class="sui-btn btn-xlarge btn-success">返回首页</a>
	</div>
</div>


</body>
<script type="text/javascript">
	function add(){
		var name=document.getElementById("name").value;
		var age=document.getElementById("age").value;
		var phone=document.getElementById("phone").value;
		var address=document.getElementById("address").value;
		var menu=document.getElementById("menu").value;
		var password=document.getElementById("password").value;
		var openernum=document.getElementById("openernum").value;
		var note=document.getElementById("note").value;
		if(name==''||phone==''){
			alert("姓名和手机不能都为空");
		}else{
			window.location.href="/lixiang/add?to=1&name="+name+"&age="+age+"&phone="+phone+"&address="+address+"&menu="+menu+"&password="+password+"&openernum="+openernum+"&note="+note;
		}
	}
	
	function addtoadd(){
		var name=document.getElementById("name").value;
		var age=document.getElementById("age").value;
		var phone=document.getElementById("phone").value;
		var address=document.getElementById("address").value;
		var menu=document.getElementById("menu").value;
		var password=document.getElementById("password").value;
		var openernum=document.getElementById("openernum").value;
		var note=document.getElementById("note").value;
		if(name==''||phone==''){
			alert("姓名和手机不能都为空");
		}else{
			window.location.href="/lixiang/add?name="+name+"&age="+age+"&phone="+phone+"&address="+address+"&menu="+menu+"&password="+password+"&openernum="+openernum+"&note="+note;
		}
	}
</script>
</html>
