<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% Date date = new Date(); pageContext.setAttribute("date", date); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理 - 易买网</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../js/function-manage.js"></script>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="../images/logo.gif" /></div>
	<div class="help"><a href="">返回前台页面</a></div>
	<div class="navbar">
		<ul class="clearfix">
				<li><a href="index.jsp">首页</a></li>
			<li class="current"><a href="">用户</a></li>
			<li><a href="">商品</a></li>
			<li><a href="">订单</a></li>
			<li><a href="">留言</a></li>
			<li><a href="">新闻</a></li>
		</ul>
	</div>
</div>
<div id="childNav">
	<div class="welcome wrap">
		管理员<span style="color:blue; font-size: 15px;">刚哥</span>
		您好，今天是<fmt:formatDate value="${pageScope.date }" pattern="yyyy-MM-dd" />，欢迎回到管理后台。
	</div>
</div>
<div id="position" class="wrap">
	您现在的位置：<a href="index.jsp">易买网</a> &gt; 管理后台
</div>
<div id="main" class="wrap">
	<jsp:include page="menu.jsp" />
	<div class="main">
		<h2>新增用户</h2>
		<div class="manage">
			<form action="" id="myform" method="post">
				<table class="form">
					<tr>
						<td class="field">用户名：</td>
						<td><input type="text" class="text" name="" onblur="" value="" /></td>
						<td><span style="color:red" class=""></span></td>
					</tr>
					<tr>
						<td class="field">姓名：</td>
						<td><input type="text" class="text" name="name"  value="" /></td>
						<td><span style="color:red" class="name"></span></td>
					</tr>
					<tr>
						<td class="field">密码：</td>
						<td><input type="text" class="text" name=""  value="" /></td>
						<td><span style="color:red" class=""></span></td>
					</tr>
					<tr>
						<td class="field">性别：</td>
						<td>
							<input type="radio" name="sex" value="男" checked="checked" />男 
							<input type="radio" name="sex" value="女"  />女
						</td>
					</tr>
					<tr>
						<td class="field">手机号码：</td>
						<td><input type="text" class="text" name="sj" value="" /></td>
						<td><span style="color:red" class="sj"></span></td>
					</tr>
					<tr>
						<td class="field">送货地址：</td>
						<td><input type="text" class="text" name="address" value="" /></td>
						<td><span style="color:red" class="address"></span></td>
					</tr>
					<tr>
						<td class="field">权限设置：</td>
						<td>
							<select name="">
								<option value="2">普通用户</option>
								<option value="1">管理员</option>
							</select>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input type="submit" name="submit" value="提交" /></label></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 极客营 All Rights Reserved. 京ICP证801001号
</div>
</body>
</html>
