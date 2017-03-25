<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% Date date = new Date(); pageContext.setAttribute("date", date); %>
<!DOCTYPE html>
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
	<div class="help"><a href="../goIndex">返回前台页面</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="index.jsp">首页</a></li>
			<li><a href="../selectUser">用户</a></li>
			<li class="current"><a href="../selectSP">商品</a></li>
			<li><a href="../selectDD">订单</a></li>
			<li><a href="../selectComment">留言</a></li>
			<li><a href="../selectNewsHT">新闻</a></li>
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
		<h2>分类管理</h2>
		<div class="manage">
			<table class="list">
				<tr>
					<th>分类名称</th>
					<th>操作</th>
				</tr>
					<tr >
						<td colspan="2">
							<details style="padding-left:50px; ">
								<summary>一级分类名称
									<span style="float: right;">
									<a href="">修改</a>
							 		<a href="" onclick="">删除</a>
							 		</span>
								</summary>
								<p>二级..
									<span style="float: right;">
									<a href="">修改</a>
							 		<a href="" onclick="">删除</a>
							 		</span>
								</p>
								<p>二级..
									<span style="float: right;">
									<a href="">修改</a>
							 		<a href="" onclick="">删除</a>
							 		</span>
								</p>
							</details>
						</td>
					</tr>
			</table>
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
