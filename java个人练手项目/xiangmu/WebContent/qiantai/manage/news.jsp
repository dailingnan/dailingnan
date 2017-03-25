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
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="../images/logo.gif" /></div>
	<div class="help"><a href="">返回前台页面</a></div>
	<div class="navbar">
		<ul class="clearfix">
				<li><a href="index.jsp">首页</a></li>
			<li><a href="">用户</a></li>
			<li><a href="">商品</a></li>
			<li><a href="">订单</a></li>
			
			<li class="current"><a href="">新闻</a></li>
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
	<c:import url="menu.jsp"></c:import>
	<div class="main">
		<h2>新闻管理</h2>
		<div class="manage">
			<table class="list">
				<tr>
					<th>ID</th>
					<th>新闻标题</th>
					<th>操作</th>
				</tr>
				<tr>
					<td class="first w4 c">1</td>
					<td>迎双旦促销大酬宾</td>
					<td class="w1 c">
						<a href="manage/news-modify.jsp">修改</a> 
						<a href="#" onclick="return confirm('确定删除?')">删除</a>
					</td>
				</tr>
			</table>
			<br/>
			<div style="color:#00C; text-align:center" id="page">
			<a href="">首页</a> 
			<a href="">上一页</a> 
			<a href="">下一页</a> 
			<a href="">尾页</a>
			 ...(当前第1页,共1  页)
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 极客营 All Rights Reserved. 京ICP证801001号
</div>
</body>
</html>
