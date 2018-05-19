<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
</head>
<body>
<div style="width:80%;margin:auto;padding-top:50px">
	<p>
	<input type="text" placeholder="请输入姓名" value="" id="findname" class="input-medium search-query">
  	<button type="submit"  class="sui-btn btn-primary" onclick="findbyname()">姓名查询</button>
	
	<input type="text" placeholder="请输入手机号" id="findphone" value="" class="input-medium search-query">
  	<button type="submit"  class="sui-btn btn-primary" onclick="findbyphone()">手机号查询</button>
  	
  	<input type="text" placeholder="请输入开户工号" id="findopenernum" value="" class="input-medium search-query">
  	<button type="submit" class="sui-btn btn-primary" onclick="findbyopennum()">开户工号查询</button>
  	
  	<input type="text" placeholder="请输入套餐" id="findmenu" value="" class="input-medium search-query">
  	<button type="submit" class="sui-btn btn-primary" onclick="findbymenu()">套餐查询</button>
  	</p>
</div>
<div style="width: 80%;margin:auto;text-align: right;padding-bottom:10px;padding-top:10px">
	<a href="/lixiang/toadd" class="sui-btn btn-bordered btn-xlarge btn-danger"><b>添加用户信息</b></a>
</div>


<div style="width:80%;margin:auto">
<table class="sui-table table-primary">
  <thead>
    <tr>
      <th>姓名</th>
	  <th>年龄</th>
	  <th>地址</th>
	  <th>服务密码</th>
	  <th>手机号</th>
	  <th>开户工号</th>
	  <th>套餐</th>
	  <th>备注</th>
	  <th>编辑</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${users}" var="u">
	  <tr style="border:1px solid red">
	  	<td>${u.name }</td>
	  	<td>${u.age }</td>
	  	<td>${u.address }</td>
	  	<td>${u.password }</td>
	  	<td>${u.phone }</td>
	  	<td>${u.openernum }</td>
	  	<td>${u.menu }</td>
	  	<td>${u.note }</td>
	  	<td>
	  		<a href="/lixiang/tomodify?id=${u.id}" class="sui-btn btn-success">编辑</a>
	  		<a href="/lixiang/delete?id=${u.id}" class="sui-btn btn-danger">删除</a>
	  	</td>
	  </tr>
	</c:forEach>
  </tbody>
</table>
</div>


</body>
<script type="text/javascript">
	function findbyname(){
		var name=document.getElementById("findname").value;
		if(name==""){
			window.location.href="/lixiang/index";
		}else{
			window.location.href="/lixiang/findbyname?name="+name;
		}
	}
	
	function findbyphone(){
		var phone=document.getElementById("findphone").value;
		if(phone==""){
			window.location.href="/lixiang/index";
		}else{
			window.location.href="/lixiang/findbyphone?phone="+phone;
		}
	}
	
	function findbyopennum(){
		var openernum=document.getElementById("findopenernum").value;
		if(openernum==""){
			window.location.href="/lixiang/index";
		}else{
			window.location.href="/lixiang/findbyopenernum?openernum="+openernum;
		}
	}
	
	function findbymenu(){
		var menu=document.getElementById("findmenu").value;
		if(menu==""){
			window.location.href="/lixiang/index";
		}else{
			window.location.href="/lixiang/findbymenu?menu="+menu;
		}
	}
	
</script>
</html>
